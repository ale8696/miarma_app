part of 'register_bloc.dart';

@immutable
abstract class RegisterEvent extends Equatable {
  const RegisterEvent();

  @override
  List<Object?> get props => [];

}

class DoRegisterEvent extends RegisterEvent {
  final FormData formData;

  const DoRegisterEvent(this.formData);
  
}
