// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

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
            style: const TextStyle(fontSize: 27),
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
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 9),
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 213, 115, 148),
                    borderRadius: BorderRadius.circular(10)),
                // ignore: prefer_const_constructors
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  // ignore: prefer_const_constructors
                  decoration: InputDecoration(
                    hintText: "Email",
                    hintStyle: const TextStyle(fontSize: 19),
                    border: InputBorder.none,
                    prefixIcon: const Icon(Icons.person),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 27, horizontal: 9),
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 204, 98, 133),
                    borderRadius: BorderRadius.circular(10)),
                // ignore: prefer_const_constructors
                child: TextField(
                  keyboardType: TextInputType.number,
                  // ignore: prefer_const_constructors
                  decoration: InputDecoration(
                    hintText: "Password",
                    prefixIcon: const Icon(Icons.lock),
                    border: InputBorder.none,
                    suffixIcon: const Icon(Icons.visibility),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.purple),
                  padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 90)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25))),
                ),
                // ignore: prefer_const_constructors
                child: Text(
                  "log in",
                  style: const TextStyle(fontSize: 19),
                ),
              ),
            ],
          )),
        ),
      ),
    );
  }
}
