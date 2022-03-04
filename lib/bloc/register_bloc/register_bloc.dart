

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:image_picker/image_picker.dart';
import 'package:meta/meta.dart';
import 'package:miarma_app/model/register/register_dto.dart';
import 'package:miarma_app/model/register/register_response.dart';
import 'package:miarma_app/repository/register_repository/register_repository.dart';

part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final RegisterRepository repository;


  RegisterBloc(this.repository) : super(RegisterInitialState()) {
    on<DoRegisterEvent>(_doRegisterEvent);
  }

  void _doRegisterEvent(DoRegisterEvent event, Emitter<RegisterState> emit) async {
    emit(RegisterLoadingState());
    try {
      final registerResponse = await repository.register(event.registerDto, event.file);
      emit(RegisterSuccessState(registerResponse));
      return;
    } on Exception catch (e) {
      emit(RegisterErrorState(e.toString()));
    }
  }

}
