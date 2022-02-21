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
                height: 68,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _getStorie(),
                    _getStorie(),
                    _getStorie(),
                    _getStorie(),
                    _getStorie(),
                    _getStorie(),
                    _getStorie(),
                    _getStorie(),
                    _getStorie(),
                    _getStorie(),
                    _getStorie(),
                    _getStorie(),
                    _getStorie(),
                    _getStorie(),
                    _getStorie(),
                    _getStorie(),
                    _getStorie(),
                  ],
                ),
              ),
              Divider(thickness: 1, indent: 2, endIndent: 2, color: Colors.grey),
              SizedBox(
                height: 1000,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    _getPost(),
                    _getPost(),
                    _getPost(),
                    _getPost(),
                    _getPost(),
                    _getPost(),
                    _getPost(),
                    _getPost(),
                    _getPost(),
                    _getPost(),
                    _getPost(),
                    _getPost(),
                    _getPost(),
                    _getPost(),
                    _getPost(),
                    _getPost(),
                    _getPost(),
                    _getPost(),
                    _getPost(),
                  ],
                )
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _getStorie () {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Image.asset('assets/profile_photo.png', height: 40,),
          const Text('Manolito', style: TextStyle(fontSize: 10),)
        ]
      ),
    );
  }

  Widget _getPost () {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset('assets/profile_photo.png', height: 30),
              Text('Manolito'),
              Icon(Icons.menu)
            ],
          ),
          Image.asset('assets/icecream.jpg')
        ],
      ),
    );
  }

}