part of 'image_pick_bloc.dart';

abstract class ImagePickEvent extends Equatable {
  const ImagePickEvent();

  @override
  List<Object> get props => [];
}

class SelectImageEvent extends ImagePickEvent {
  final ImageSource source;

  const SelectImageEvent(this.source);

  @override
  List<Object> get props => [source];
}

class ConfirmImageEvent extends ImagePickEvent {
  final XFile pickedFile;

  const ConfirmImageEvent(this.pickedFile);

  @override
  List<Object> get props => [pickedFile];
  
}