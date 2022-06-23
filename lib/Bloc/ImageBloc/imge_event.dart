part of 'imge_bloc.dart';

@immutable
abstract class ImgeEvent {}
class PutImage extends ImgeEvent{
  String image;
  PutImage(this.image);
}
