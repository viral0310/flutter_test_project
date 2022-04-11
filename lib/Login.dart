import 'package:flutter/material.dart';
import 'package:kartik/Creat.dart';
import 'package:kartik/Forgate.dart';

class Login extends StatefulWidget {
  const Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  dynamic name;
  dynamic pas;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              child: Image.network(
                "data:image/png;base64,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",
                fit: BoxFit.cover,
              ),
            ),
            Row(

              mainAxisAlignment: MainAxisAlignment.center,

              children: [

                Align(
                  alignment: Alignment(0.0,-0.7),
                  child: Text("KK Shoping",style: TextStyle(
                    fontSize: 45,
                    color: Colors.black12,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 3,

                  ),),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 250,right: 30,left: 30,bottom: 150),
              child: Center(
                child: Container(
                  alignment: Alignment.topCenter,
                  height: double.infinity,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white70,
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                alignment: Alignment.topCenter,

                                child: Image.asset(
                                  "assets/k1.png",
                                  fit: BoxFit.cover,
                                ),

                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.only(right: 15,left: 15),
                                child: TextField(
                                  decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: (BorderSide(color: Colors.blue, width: 3)),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: (BorderSide(color: Colors.black, width: 3)),
                                    ),
                                    labelText: "Username",
                                    prefixIcon: Icon(Icons.account_circle_sharp),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Container(
                                padding: EdgeInsets.all(15),
                                child: TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: (BorderSide(color: Colors.blue, width: 3)),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: (BorderSide(color: Colors.black, width: 3)),
                                    ),
                                    labelText: "Password",
                                    prefixIcon: Icon(Icons.lock),
                                    suffixIcon: Icon(Icons.visibility_off),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: (){
                                  setState(() {
                                    Navigator.push(context,
                                      MaterialPageRoute(builder: (contaxt)=> Forgot(),),
                                    ) ;
                                  });
                                },
                                child: Container(
                                  padding: EdgeInsets.only(right: 15),
                                  alignment: Alignment.centerRight,
                                  child: Text("Forgot password",
                                    style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      color: Colors.blue,
                                      fontSize: 10,

                                    ),

                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: (){
                                  setState(() {
                                     Navigator.pushNamed(context, '/Home');
                                  });
                                },
                                child: Container(
                                  height: 40,
                                  width: 100,

                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color: Colors.cyan,
                                  ),
                                  child: Center(
                                    child: Text("Log in",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w900
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                child: Row(
                                  children: [

                                  ],
                                ),
                              ),
                              InkWell(
                                onTap: (){
                                  setState(() {
                                    Navigator.push(context,
                                      MaterialPageRoute(builder: (contaxt)=> Creat(),),
                                    ) ;
                                  });
                                },
                                child: Container(
                                  padding: EdgeInsets.only(top: 10),
                                  alignment: Alignment.center,
                                  child: Text("Create a new account",
                                    style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
