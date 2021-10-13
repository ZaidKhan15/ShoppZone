import 'package:catalog_app/utils/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Loginpage extends StatefulWidget {
  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {

String name = "";
bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      child:SingleChildScrollView(
        child: Column(
      children: <Widget>[
       SizedBox(
          height: 40,
        ),
      
        Image.asset(
          "assets/images/login.png",
          fit: BoxFit.cover,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'Welcome $name',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
         SizedBox(
          height: 24,
        ),
        Text(
          'Login to Continue',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
          SizedBox(
          height: 20,
        ),
        Padding(
          //padding: const EdgeInsets.all(32.0),
          padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 32.0),
          child: Column(
            children: <Widget>[
              TextFormField(
            decoration: InputDecoration(
              hintText: "Enter Username",
              labelText: "Username",
            ),
            onChanged: (value){
              name = value;
              setState(() {
                
              });
            },
          ),
           TextFormField(
             obscureText: true,
            decoration: InputDecoration(
              hintText: "Enter Password",
              labelText: "Password",
            ),
          ),
              SizedBox(
          height: 20,
        ),
        InkWell(
          onTap: () async { 
            setState(() {
              changeButton = true;
            });
            await Future.delayed(Duration(seconds: 1));
            Navigator.pushNamed(context, MyRoute.homeRoute);
          },
          child: AnimatedContainer(
            duration: Duration(seconds: 1),

            height: 50,
            width: changeButton? 50 : 150,
            alignment: Alignment.center,
            child:changeButton?Icon(Icons.done,color: Colors.white,): Text('Login',style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            ),
            decoration: BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(changeButton?50:8)
            ),
          ),
        ),
          // ElevatedButton(onPressed: (){
          //   Navigator.pushNamed(context, MyRoute.homeRoute);
          // }, child: 
          // Text('Login'),
          // style: TextButton.styleFrom(
          //   minimumSize: Size(120, 40)
          // ),
          
          // ),
            ],
          ),
        )
      ],
    )
      ),
        );
  }
}
