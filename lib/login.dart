import 'package:flutter/material.dart';
import 'package:welcome_flutter/routes.dart';
class LoginApp extends StatefulWidget {
  const LoginApp({Key? key}) : super(key: key);

  @override
  State<LoginApp> createState() => _LoginAppState();
}

class _LoginAppState extends State<LoginApp> {
  @override
  Widget build(BuildContext context) {
    String name = "";
    return Material(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('img/login.png'),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "Welcome $name",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                  letterSpacing: 1,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        // border: UnderlineInputBorder(),
                        labelText: 'Username',
                        hintText: 'Enter username',
                        labelStyle: TextStyle(
                          color: Colors.blueAccent,
                        ),
                      ),
                      onChanged: (value){
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        // border: UnderlineInputBorder(),
                        labelText: 'Password',
                        hintText: 'Enter password',
                        labelStyle: TextStyle(
                          color: Colors.blueAccent,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 19.0,
                    ),
                    RaisedButton(
                      color: Colors.blueAccent,
                      onPressed: () {
                        Navigator.pushNamed(context, routes.welcome);
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}




// import 'package:flutter/material.dart';
// // import 'package:flutter_catalog/utils/routes.dart';
//
// class LoginPage extends StatefulWidget {
//   @override
//   _LoginPageState createState() => _LoginPageState();
// }
//
// class _LoginPageState extends State<LoginPage> {
//
//   @override
//   Widget build(BuildContext context) {
// //     return Material(
//         color: Colors.white,
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               Image.asset(
//                 "assets/images/login_image.png",
//                 fit: BoxFit.cover,
//               ),
//               SizedBox(
//                 height: 20.0,
//               ),
//               Text(
//                 "Welcome $name",
//                 style: TextStyle(
//                   fontSize: 28,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               SizedBox(
//                 height: 20.0,
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(
//                     vertical: 16.0, horizontal: 32.0),
//                 child: Column(
//                   children: [
//                     TextFormField(
//                       decoration: InputDecoration(
//                         hintText: "Enter username",
//                         labelText: "Username",
//                       ),
//                       onChanged: (value) {
//                         name = value;
//                         setState(() {});
//                       },
//                     ),
//                     TextFormField(
//                       obscureText: true,
//                       decoration: InputDecoration(
//                         hintText: "Enter password",
//                         labelText: "Password",
//                       ),
//                     ),
//                     SizedBox(
//                       height: 40.0,
//                     ),
//
//                     InkWell(
//                       onTap: () async {
//                         setState(() {
//                           changeButton = true;
//                         });
//                         await Future.delayed(Duration(seconds: 1));
//                         Navigator.pushNamed(context, routes.welcome);
//                       },
//                       child: AnimatedContainer(
//                         duration: Duration(seconds: 1),
//                         width: changeButton ? 50 : 150,
//                         height: 50,
//                         alignment: Alignment.center,
//                         child: changeButton
//                             ? Icon(
//                           Icons.done,
//                           color: Colors.white,
//                         )
//                             : Text(
//                           "Login",
//                           style: TextStyle(
//                               color: Colors.white,
//                               fontWeight: FontWeight.bold,
//                               fontSize: 18),
//                         ),
//                         decoration: BoxDecoration(
//                           color: Colors.deepPurple,
//                           borderRadius:
//                           BorderRadius.circular(changeButton ? 50 : 8),
//                         ),
//                       ),
//                     ),
//
//                     // ElevatedButton(
//                     //   child: Text("Login"),
//                     //   style: TextButton.styleFrom(minimumSize: Size(150, 40)),
//                     //   onPressed: () {
//                     //     Navigator.pushNamed(context, MyRoutes.homeRoute);
//                     //   },
//                     // )
//                   ],
//                 ),
//               )
//             ],
//           ),
//         ));
//   }
// }