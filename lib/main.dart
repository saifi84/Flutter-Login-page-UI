import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

      return Scaffold(
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Container(
                  height: 400,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/bgg.png'),
                      fit: BoxFit.fill,
                    )
                  ),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                            left: 30,
                            width: 80,
                            height: 200,
                            child:  Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('assets/images/light-1.png')
                                  )
                              ),
                            )),
                        Positioned(
                            left: 140,
                            width: 80,
                            height: 150,
                            child:  Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('assets/images/light-2.png')
                                  )
                              ),
                            )),
                        Positioned(
                            right: 40,
                            top: 40,
                            width: 80,
                            height: 150,
                            child:  Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('assets/images/clocka.png')
                                  )
                              ),
                            )),
                        Positioned(
                          right: 0,
                          top: 170,
                          width: 250,
                          height: 250,
                          child:  Container(
                              margin: EdgeInsets.all(20),
                              child:  Container(
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('assets/images/clock.png')
                                    )
                                ),
                              )),
                        ),
                      ],
                    ),
                ),
                Padding(
                    padding: EdgeInsets.all(30),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromRGBO(143, 148, 251, .2),
                                  blurRadius: 20.0,
                                  offset: Offset(0, 10)
                              )
                            ]
                        ),
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                border: Border(bottom: BorderSide(color: Colors.black12))
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  prefixIcon: Icon(Icons.people,color:Color(0xFF640F23)),
                                  hintText: "User Name",
                                  hintStyle: TextStyle(color: Colors.grey[400]),

                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.black12))
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  prefixIcon: Icon(Icons.vpn_key_rounded,color:Color(0xFF640F23)),
                                  hintText: "Password",
                                  hintStyle: TextStyle(color: Colors.grey[400]),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 30,),
                      Container(
                        width: 350,
                        child: ClipRect(
                          child: Stack(
                            children: <Widget>[
                              Positioned.fill(
                                child: Container(
                                  decoration: const BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: <Color>[
                                        Color(0xFF640F23),
                                        Color(0xFFad324f),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              TextButton(
                                style: TextButton.styleFrom(
                                  padding: const EdgeInsets.all(16.0),
                                  primary: Colors.white,
                                  textStyle: const TextStyle(fontSize: 20),
                                ),
                                onPressed: (){},
                                child: Center(child: const Text('Login')),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 70,),
                      Text("Forgot Password?", style: TextStyle(color: Color.fromRGBO(143, 148, 251, 1)),),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      );

  }
}
