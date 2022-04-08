import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  static final String id="home_page";
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isLogin=true;
  @override
  Widget build(BuildContext  context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/party.jpeg'),
            fit: BoxFit.cover
          )
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(0.5),
                Colors.black.withOpacity(0.2),
              ]
            )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(right: 20,left: 20),
                    child:Text('Find the best parties near you.',style: TextStyle(color: Colors.yellow[800],fontSize: 38),textAlign: TextAlign.left),
                  ),
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.only(right: 20,left: 20),
                    child:Text('Let us find you a tutorial for your interest',style: TextStyle(color: Colors.greenAccent,fontSize: 24),textAlign: TextAlign.left),
                  ),
                  SizedBox(height: 350),

                  _isLogin?
                  Container(
                    padding: EdgeInsets.only(right: 20,left: 20),
                    height: 50,
                    width: double.infinity,
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.yellow[800]
                      ),
                      child: Text("Start",style: TextStyle(color: Colors.white,fontSize: 20),textAlign: TextAlign.center,),
                    ),
                  )
                  :
                  Container(
                    color: Colors.transparent,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            padding: EdgeInsets.only(right: 15,left: 15),
                            height: 60,
                            child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.greenAccent
                              ),
                              child: Text('Google',style: TextStyle(color: Colors.white),textAlign: TextAlign.center,),
                            )
                        )),

                        Expanded(
                          flex: 1,
                          child: Container(
                            padding: EdgeInsets.only(right: 15),
                            height: 60,
                            child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.red
                              ),
                              child: Text('Facebook   ',style: TextStyle(color: Colors.white),textAlign: TextAlign.center),
                            )
                        ))
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
