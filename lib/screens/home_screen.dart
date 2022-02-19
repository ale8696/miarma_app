import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 60,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Column(
                      children: [
                        Image.asset('assets/profile_photo.png', height: 40,),
                        const Text('Manolito', style: TextStyle(fontSize: 10),)
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset('assets/profile_photo.png', height: 40,),
                        const Text('Manolito', style: TextStyle(fontSize: 10),)
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset('assets/profile_photo.png', height: 40,),
                        const Text('Manolito', style: TextStyle(fontSize: 10),)
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset('assets/profile_photo.png', height: 40,),
                        const Text('Manolito', style: TextStyle(fontSize: 10),)
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset('assets/profile_photo.png', height: 40,),
                        const Text('Manolito', style: TextStyle(fontSize: 10),)
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset('assets/profile_photo.png', height: 40,),
                        const Text('Manolito', style: TextStyle(fontSize: 10),)
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset('assets/profile_photo.png', height: 40,),
                        const Text('Manolito', style: TextStyle(fontSize: 10),)
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset('assets/profile_photo.png', height: 40,),
                        const Text('Manolito', style: TextStyle(fontSize: 10),)
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset('assets/profile_photo.png', height: 40,),
                        const Text('Manolito', style: TextStyle(fontSize: 10),)
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset('assets/profile_photo.png', height: 40,),
                        const Text('Manolito', style: TextStyle(fontSize: 10),)
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset('assets/profile_photo.png', height: 40,),
                        const Text('Manolito', style: TextStyle(fontSize: 10),)
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset('assets/profile_photo.png', height: 40,),
                        const Text('Manolito', style: TextStyle(fontSize: 10),)
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset('assets/profile_photo.png', height: 40,),
                        const Text('Manolito', style: TextStyle(fontSize: 10),)
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset('assets/profile_photo.png', height: 40,),
                        const Text('Manolito', style: TextStyle(fontSize: 10),)
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset('assets/profile_photo.png', height: 40,),
                        const Text('Manolito', style: TextStyle(fontSize: 10),)
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset('assets/profile_photo.png', height: 40,),
                        const Text('Manolito', style: TextStyle(fontSize: 10),)
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset('assets/profile_photo.png', height: 40,),
                        const Text('Manolito', style: TextStyle(fontSize: 10),)
                      ],
                    ),
                  ],
                ),
              ),
              Divider(thickness: 1, indent: 2, endIndent: 2, color: Colors.grey),
              SizedBox(
                height: 10000,
                child: ListView(
                  children: [
                    //POSTS
                  ],
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}