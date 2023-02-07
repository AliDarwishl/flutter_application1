// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pop(context, '/');
          },
          child: const Icon(Icons.home),
        ),

        appBar: AppBar(
          // ignore: prefer_const_constructors
          title: Text(
            "Log in",
            style: TextStyle(fontSize: 27),
          ),
          backgroundColor: Colors.purple[300],
          centerTitle: true,
        ),

        // ignore: prefer_const_literals_to_create_immutables
        body: Container(
          width: double.infinity,
          child: (Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 204, 98, 133),
                    borderRadius: BorderRadius.circular(10)),
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "username",
                    prefixIcon: Icon(Icons.person),
                    border: InputBorder.none,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 1),
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 213, 115, 148),
                    borderRadius: BorderRadius.circular(10)),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: "Email",
                    hintStyle: TextStyle(fontSize: 19),
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.email),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 204, 98, 133),
                    borderRadius: BorderRadius.circular(10)),
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "Password",
                    prefixIcon: Icon(Icons.lock),
                    border: InputBorder.none,
                    suffixIcon: Icon(Icons.visibility),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.purple),
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(vertical: 10, horizontal: 90)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25))),
                ),
                child: Text(
                  "sign up",
                  style: TextStyle(fontSize: 19),
                ),
              ),
            ],
          )),
        ),
      ),
    );
  }
}
