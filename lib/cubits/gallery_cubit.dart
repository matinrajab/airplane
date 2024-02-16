import 'package:airplane/services/gallery_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GalleryCubit extends Cubit<List<String>> {
  GalleryCubit() : super([]);

  void fetchGallery() async {
    List<String> destinations = await GalleryService().fetchGalleries();
    emit(destinations);
  }
}
