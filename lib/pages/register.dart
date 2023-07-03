//import 'dart:ffi';

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:game/function/authfunction.dart';

class Register extends StatefulWidget {
  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool isLogedIn = false;
  String email = '';
  String password = '';
  String rePassword = '';
  String userName = '';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.grey[300],
          body: Form(
            key: _formKey,
            child: Container(
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(20),
              color: Colors.grey[100],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  !isLogedIn
                      ? const Text(
                          'Create Acount',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        )
                      : Column(
                        children: [
                          Image.asset('assets/day.png',
                          height: 200,
                          width: 300,),
                          const Text(
                              'Login to Your account',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                        ],
                      ),
                  const SizedBox(
                    height: 20,
                  ),
                  !isLogedIn
                      ? TextFormField(
                          key: const ValueKey('name'),
                          decoration: InputDecoration(
                            labelText: 'Full Name',
                            prefixIcon: const Icon(Icons.person),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30)),
                          ),
                          maxLength: 30,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please Enter User Name';
                            } else if (value.toString().length < 3) {
                              return 'User Name is to Small';
                            } else {
                              return null;
                            }
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
                    decoration: InputDecoration(
                      labelText: 'Email',
                      prefixIcon: const Icon(Icons.email),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                    ),
                   
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please Enter Your Email';
                      } else if (!(value.toString().contains('@'))) {
                        return 'Invalid Email';
                      } else {
                        return null;
                      }
                    },
                    onSaved: (value) {
                      setState(() {
                        email = value!;
                      });
                    },
                  ),
                 const SizedBox(height: 15,),
                  TextFormField(
                    key: const ValueKey('password'),
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      suffixIcon: const Icon(Icons.remove_red_eye),
                      prefixIcon: const Icon(Icons.lock),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please Enter Password';
                      } else if (value.toString().length < 6) {
                        return 'password is so small';
                      } else {
                        return null;
                      }
                    },
                    onSaved: (value) {
                      setState(() {
                        password = value!;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  !isLogedIn
                      ? TextFormField(
                          key: const ValueKey('rePassword'),
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: 'Confirm',
                            suffixIcon: const Icon(Icons.remove_red_eye),
                            prefixIcon: const Icon(Icons.lock),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30)),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please Confirm password';
                            } else if (password != rePassword) {
                              return 'please confirm correct password';
                            }
                            return null;
                          },
                          onSaved: (value) {
                            setState(() {
                              rePassword = value!;
                            });
                          },
                        )
                      : Container(),
                  const SizedBox(
                    height: 14,
                  ),
                  OutlinedButton(
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30))),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        padding: MaterialStateProperty.all(
                            const EdgeInsets.fromLTRB(120, 0, 120, 0)),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.black)),
                    onPressed: () {
                      //_showDialog(context);
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                        isLogedIn
                            ? signIn(email, password)
                            : signup(email, password);
                      }
                    },
                    child:
                        isLogedIn ? const Text('LogIn') : const Text('SignUp'),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextButton(
                      onPressed: () {
                        setState(() {
                          isLogedIn = !isLogedIn;
                        });
                        // Navigator.pushNamed(context, '/login');
                      },
                      child: isLogedIn
                          ? const Text('Dont have an account? SignUp',
                          style: TextStyle(color: Color.fromARGB(255, 61, 11, 243),
                          fontSize: 16,
                          fontWeight: FontWeight.bold),)
                          : const Text('Already Signed up? Login',
                             style: TextStyle(color: Color.fromARGB(255, 61, 11, 243),
                          fontSize: 16,
                          fontWeight: FontWeight.bold),))
                ],
              ),
            ),
          )),
    );
  }
}

Future<void> _showDialog(BuildContext context) async {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Icon(Icons.error_outline, size: 100),
          content: SingleChildScrollView(
            child: ListBody(children: [Text('Please Submit All Information ')]),
          ),
          actions: [
            Center(
                child: ElevatedButton(
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30))),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.black)),
                    onPressed: () {
                      Navigator.pushNamed(context, '/');
                    },
                    child: const Text(
                      'Ok',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    )))
          ],
        );
      });
}
