import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({ Key? key }) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            shrinkWrap: true,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: Image.network(
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e7/Instagram_logo_2016.svg/768px-Instagram_logo_2016.svg.png',
                  height: 100),
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                          border: OutlineInputBorder(borderSide: BorderSide(width: 1, color: Colors.blue))
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                          border: OutlineInputBorder(borderSide: BorderSide(width: 1, color: Colors.blue))
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ButtonStyle(fixedSize: MaterialStateProperty.all(Size(415, 60))),
                      onPressed: null,
                      child: const Text('Log', style: TextStyle(fontSize: 20)),
                    )
                  ],
                ),
              ),
              RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  style: TextStyle(color: Colors.black),
                  text: 'Has ',
                  children: <TextSpan>[
                    TextSpan(text: 'olvidado la contraseña', style: TextStyle(color: Colors.blue)),
                    TextSpan(text: ' o '),
                    TextSpan(text: 'no estas registrado', style: TextStyle(color: Colors.blue)),
                    TextSpan(text: '?')
                  ]
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}