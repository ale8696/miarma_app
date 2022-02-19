import 'package:flutter/material.dart';
import 'package:miarma_app/utils/styles.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({ Key? key }) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: Styles.profileHeader,
                child: Row(
                  children: [
                    Flexible(
                      flex: 1,
                      child: Image.asset('assets/profile_photo.png', height: 100)
                    ),
                    Flexible(
                      flex: 4,
                      child: Padding(
                        padding: Styles.profileHeaderSpaces,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  children: [
                                    Text('123K', style: Styles.profileNum),
                                    Text('posts', style: Styles.profileNumDesc)
                                  ]
                                ),
                                Column(
                                  children: [
                                    Text('123K', style: Styles.profileNum),
                                    Text('followers', style: Styles.profileNumDesc)
                                  ]
                                ),
                                Column(
                                  children: [
                                    Text('123K', style: Styles.profileNum),
                                    Text('following', style: Styles.profileNumDesc)
                                  ]
                                ),
                              ],
                            ),
                            ElevatedButton(
                              style: ButtonStyle(
                                fixedSize: MaterialStateProperty.all(const Size(1000, 10))
                              ),
                              onPressed: () {},
                              child: const Text('Follow')
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('NOMBRE DE PERFIL', style: Styles.profileName),
                    Text('Personal Blog', style: Styles.profileSubheader),
                    Text('Esto es una descripcion del perfil blaakdsjsajfbalsjfbasñldjfbalsdjffblasjdfbalsdjffbalsdfblasdfhblawufhalsiufhlasudfhlsaidfasdhfalñsidhfasdfaasdfasdfasdfasdf', style: Styles.profileDescription),
                  ],
                ),
              ),
              Divider(thickness: 1, indent: 5, endIndent: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text('Email', style: TextStyle(color: Colors.blue)),
                  VerticalDivider(thickness: 1),
                  Text('Direcctions', style: TextStyle(color: Colors.blue))
                ],
              ),
              Divider(thickness: 1, indent: 5, endIndent: 5),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: const [
                  Flexible(
                    fit: FlexFit.tight,
                    flex: 1,
                    child: Icon(Icons.grid_on_rounded)
                  ),
                  Flexible(
                    fit: FlexFit.tight,
                    flex: 1,
                    child: Icon(Icons.list)
                  ),
                  Flexible(
                    fit: FlexFit.tight,
                    flex: 1,
                    child: Icon(Icons.photo_size_select_actual_outlined)
                  )
                ],
              ),
              SizedBox(
                height: 1000,
                child: GridView.count(
                  physics: NeverScrollableScrollPhysics(),
                  crossAxisCount: 3,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      child: const Text("He'd have you all unravel at the"),
                      color: Colors.teal[100],
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      child: const Text('Heed not the rabble'),
                      color: Colors.teal[200],
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      child: const Text('Sound of screams but the'),
                      color: Colors.teal[300],
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      child: const Text('Who scream'),
                      color: Colors.teal[400],
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      child: const Text('Revolution is coming...'),
                      color: Colors.teal[500],
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      child: const Text('Revolution, they...'),
                      color: Colors.teal[600]
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      child: const Text("He'd have you all unravel at the"),
                      color: Colors.teal[100],
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      child: const Text('Heed not the rabble'),
                      color: Colors.teal[200],
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      child: const Text('Sound of screams but the'),
                      color: Colors.teal[300],
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      child: const Text('Who scream'),
                      color: Colors.teal[400],
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      child: const Text('Revolution is coming...'),
                      color: Colors.teal[500],
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      child: const Text('Revolution, they...'),
                      color: Colors.teal[600]
                    )
                  ],

                ),
              )
            ],
          )
        ),
      )
    );
  }
}