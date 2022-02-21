import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({ Key? key }) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Form(
              key: _formKey,
              child: TextFormField()
            ),
            SizedBox(
              height: 900,
              child: GridView.count(
                crossAxisCount: 3,
                children: [
                  Image.asset('assets/icecream.jpg', fit: BoxFit.cover,),
                  Image.asset('assets/icecream.jpg', fit: BoxFit.cover,),
                  Image.asset('assets/icecream.jpg', fit: BoxFit.cover,),
                  Image.asset('assets/icecream.jpg', fit: BoxFit.cover,),
                  Image.asset('assets/icecream.jpg', fit: BoxFit.cover,),
                  Image.asset('assets/icecream.jpg', fit: BoxFit.cover,),
                  Image.asset('assets/icecream.jpg', fit: BoxFit.cover,),
                  Image.asset('assets/icecream.jpg', fit: BoxFit.cover,),
                  Image.asset('assets/icecream.jpg', fit: BoxFit.cover,),
                  Image.asset('assets/icecream.jpg', fit: BoxFit.cover,),
                  Image.asset('assets/icecream.jpg', fit: BoxFit.cover,),
                  Image.asset('assets/icecream.jpg', fit: BoxFit.cover,),
                  Image.asset('assets/icecream.jpg', fit: BoxFit.cover,),
                  Image.asset('assets/icecream.jpg', fit: BoxFit.cover,),
                  Image.asset('assets/icecream.jpg', fit: BoxFit.cover,),
                  Image.asset('assets/icecream.jpg', fit: BoxFit.cover,),
                  Image.asset('assets/icecream.jpg', fit: BoxFit.cover,),
                  Image.asset('assets/icecream.jpg', fit: BoxFit.cover,),
                  Image.asset('assets/icecream.jpg', fit: BoxFit.cover,),
                  Image.asset('assets/icecream.jpg', fit: BoxFit.cover,),
                  Image.asset('assets/icecream.jpg', fit: BoxFit.cover,),
                  Image.asset('assets/icecream.jpg', fit: BoxFit.cover,),
                  Image.asset('assets/icecream.jpg', fit: BoxFit.cover,),
                  Image.asset('assets/icecream.jpg', fit: BoxFit.cover,),
                  Image.asset('assets/icecream.jpg', fit: BoxFit.cover,),
                  Image.asset('assets/icecream.jpg', fit: BoxFit.cover,)
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}