import 'package:fit/pages/login/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fit/app/app_route.dart';
import 'package:fit/utils/extension.dart';
import '../utils/constants.dart';
import '../utils/custom_text_box.dart';

class RegisterPage extends StatefulWidget {
  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    bool checkMe = true;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  'Hey there',
                  style: GoogleFonts.ubuntu(
                    fontSize: 15,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  'Create Account',
                  style: GoogleFonts.ubuntu(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              CustomTextBox(
                controller: firstNameController,
                labelText: 'First Name',
                icon: Icons.man,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'First Name is required';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 20,
              ),
              CustomTextBox(
                controller: lastNameController,
                labelText: 'Last Name',
                icon: Icons.man,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Last Name is required';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 20,
              ),
              CustomTextBox(
                controller: emailController,
                labelText: 'Email',
                icon: Icons.email,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Email is required';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 20,
              ),
              CustomTextBox(
                controller: passwordController,
                labelText: 'Password',
                isPassword: true,
                icon: Icons.lock,
              ),
              SizedBox(height: 5),
              // Row(
              //   children: [
              //     InkWell(
              //       onTap: () {
              //         setState(() {
              //           checkMe = true;
              //         });
              //       },
              //       child: Checkbox(
              //         value: false,
              //         onChanged: (value) {
              //         setState(() {
              //           checkMe = value!;
              //           if (value == true) {
              //             (checkMe = true);
              //           } else {
              //             (checkMe = false);
              //           }
              //         });
              //         },
              //       ),
              //     ),
              //     Text('Agreed'),
              //   ],
              // ),
              // Checkbox(
              //   Text('Agreed'),
              // ),
              Spacer(),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Constants.primaryColor,
                  fixedSize: const Size(
                    350,
                    50,
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: Colors.black,
                      thickness: 1,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('OR'),
                  ),
                  Expanded(
                    child: Divider(
                      color: Colors.black,
                      thickness: 1,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      child: Center(
                          child: Image.asset(
                        'images/google.png',
                        height: 60,
                        width: 60,
                      )),
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      child: Center(
                          child: Image.asset(
                        'images/facebook.png',
                        height: 60,
                        width: 60,
                      )),
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already Have An Account?",
                        style: GoogleFonts.ubuntu(
                          fontSize: 15,
                        ),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginPage(),
                              ),
                            );
                          },
                          child: Text(
                            'Login',
                            style: GoogleFonts.ubuntu(
                              color: Colors.blue,
                              fontSize: 15,
                            ),
                          )),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
