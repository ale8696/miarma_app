import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:miarma_app/bloc/register_bloc/register_bloc.dart';
import 'package:miarma_app/model/register/register_dto.dart';
import 'package:miarma_app/repository/register_repository/register_repository.dart';
import 'package:miarma_app/repository/register_repository/register_repository_impl.dart';
import 'package:miarma_app/screens/home_screen.dart';
import 'package:miarma_app/utils/styles.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  late RegisterRepository repository;

  TextEditingController nickController = TextEditingController();
  TextEditingController nombreController = TextEditingController();
  TextEditingController apellidosController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController password2Controller = TextEditingController();
  TextEditingController fechaController = TextEditingController();
  bool isPrivate = false;

  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    repository = RegisterRepositoryImpl();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider (create: (context) => RegisterBloc(repository))
      ],
      child: _createBody(context),
    );
  }

  _createBody(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: BlocConsumer<RegisterBloc, RegisterState>(
            listenWhen: (context, state) {
              return state is RegisterSuccessState || state is RegisterErrorState;
            },
            listener: (context, state) {
              if (state is RegisterSuccessState) {

                // SharedPreferences aqui!!

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              } else if (state is RegisterErrorState) {
                _showSnackbar(context, state.message);
              }
            },
            buildWhen: (context, state) {
              return state is RegisterInitialState || state is RegisterLoadingState;
            },
            builder: (context, state) {
              if (state is RegisterInitialState) {
                return _buildForm(context);
              } else if (state is RegisterLoadingState) {
                return const CircularProgressIndicator();
              } else {
                return _buildForm(context);
              }
            },
          ),
        ),
      ),
    );
  }

  _buildForm(BuildContext context) {
    return ListView(
              shrinkWrap: true,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: Image.network(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e7/Instagram_logo_2016.svg/768px-Instagram_logo_2016.svg.png',
                      height: 100),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: Text(
                    'Registro',
                    style: Styles.registerTitle,
                    textAlign: TextAlign.center,
                  ),
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: TextFormField(
                          controller: nickController,
                          decoration: const InputDecoration(
                              labelText: 'Nick',
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 10),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1, color: Colors.blue))),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: TextFormField(
                          controller: nombreController,
                          decoration: const InputDecoration(
                              labelText: 'Nombre',
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 10),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1, color: Colors.blue))),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: TextFormField(
                          controller: apellidosController,
                          decoration: const InputDecoration(
                              labelText: 'Apellidos',
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 10),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1, color: Colors.blue))),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: TextFormField(
                          controller: emailController,
                          decoration: const InputDecoration(
                              labelText: 'Email',
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 10),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1, color: Colors.blue))),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: TextFormField(
                          controller: passwordController,
                          decoration: const InputDecoration(
                              labelText: 'Contraseña',
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 10),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1, color: Colors.blue))),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: TextFormField(
                          controller: password2Controller,
                          decoration: const InputDecoration(
                              labelText: 'Repita la contraseña',
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 10),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1, color: Colors.blue))),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: TextFormField(
                          controller: fechaController,
                          decoration: const InputDecoration(
                              labelText: 'Fecha de nacimiento',
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 10),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1, color: Colors.blue))),
                        ),
                      ),
                      Row(
                        children: [
                          const Text('Es privado: '),
                          Checkbox(
                              value: isPrivate,
                              onChanged: (bool? value) {
                                setState(() {
                                  isPrivate = value!;
                                });
                              }),
                        ],
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                            fixedSize:
                                MaterialStateProperty.all(Size(415, 60))),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            final registerDto = RegisterDto(
                              nick: nickController.text,
                              nombre: nombreController.text,
                              apellidos: apellidosController.text,
                              email: emailController.text,
                              password: passwordController.text,
                              password2: password2Controller.text,
                              fechaDeNacimiento: fechaController.text,
                              isPrivado: isPrivate,
                            );
                            BlocProvider.of<RegisterBloc>(context)
                                .add(DoRegisterEvent(registerDto));
                          }
                        },
                        child:
                            const Text('Log', style: TextStyle(fontSize: 20)),
                      )
                    ],
                  ),
                ),
              ],
            );
  }

  void _showSnackbar(BuildContext context, String message) {
    final snackBar = SnackBar(
      content: Text(message),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
