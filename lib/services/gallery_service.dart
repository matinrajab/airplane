import 'package:cloud_firestore/cloud_firestore.dart';

class GalleryService {
  final CollectionReference _galleryReference =
      FirebaseFirestore.instance.collection('galleries');

  Future<List<String>> fetchGalleries() async {
    try {
      QuerySnapshot result = await _galleryReference.get();

      List<String> galleries = [];

      result.docs.map((e) => galleries.add(e['imageUrl'])).toList();

      return galleries;
    } catch (e) {
      rethrow;
    }
  }
}
