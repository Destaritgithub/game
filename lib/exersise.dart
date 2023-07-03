// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:game/function/authfunction.dart';

class Exc extends StatefulWidget {
  @override
  State<Exc> createState() => _ExcState();
}

class _ExcState extends State<Exc> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool isMember = false;
  String email = '';
  String password = '';
  String userName = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text('Excersise'),
        centerTitle: true,
      ),
      body: Form(
        key: _formKey,
        child: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              !isMember
                  ? TextFormField(
                      key: ValueKey('name'),
                      decoration:
                          const InputDecoration(hintText: "Enter user name"),
                      validator: (value) {
                        if (value.toString().length < 3) {
                          return ' User Name is so Small';
                        } else
                          return null;
                      },
                      onSaved: (value) {
                        setState(() {
                          userName = value!;
                        });
                      },
                    )
                  : Container(),
              TextFormField(
                key: const ValueKey('email'),
                decoration: const InputDecoration(hintText: "Enter Email"),
                validator: (value) {
                  if (!(value.toString().contains('@'))) {
                    return 'Invalid Email';
                  } else
                    return null;
                },
                onSaved: (value) {
                  setState(() {
                    email = value!;
                  });
                },
              ),
              TextFormField(
                key: const ValueKey('password'),
                obscureText: true,
                decoration: const InputDecoration(hintText: "Enter pasword"),
                validator: (value) {
                  if (value.toString().length < 6) {
                    return ' Password is so Small';
                  } else
                    return null;
                },
                onSaved: (value) {
                  setState(() {
                    password = value!;
                  });
                },
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                        isMember
                            ? signIn(email, password)
                            : signup(email, password);
                      }
                    },
                    child: isMember ? Text('Login') : Text("Signup")),
              ),
              SizedBox(
                height: 10,
              ),
              TextButton(
                  onPressed: () {
                    setState(() {
                      isMember = !isMember;
                    });
                  },
                  child: isMember
                      ? Text('Dont have an account? SignUp')
                      : Text('Already Signed up? Login'))
            ],
          ),
        ),
      ),
    );
  }
}
