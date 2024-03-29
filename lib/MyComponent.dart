import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ritul/My_CostomButton.dart';
import 'dart:io';
import 'package:shared_preferences/shared_preferences.dart';

import 'Mycostem_texform.dart';

class MyComponrt extends StatefulWidget {
  const MyComponrt({Key? key}) : super(key: key);

  @override
  State<MyComponrt> createState() => _MyComponrtState();
}

class _MyComponrtState extends State<MyComponrt> {
  File? file1;
  bool Password = false;
  List<String> list = [];
  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    TextEditingController Name = TextEditingController();
    TextEditingController Number = TextEditingController();
    TextEditingController Email = TextEditingController();
    return Scaffold(
      backgroundColor: Color(0xff404258),
      body: SafeArea(
        child: Column(
          children: [
            Form(
              key: formkey,
              child: SingleChildScrollView(
                child: Container(
                  margin: EdgeInsets.only(
                    top: 30,
                    right: 15,
                    left: 15,
                  ),
                  child: Column(
                      children: [

                   MyText(
                        hint: "Name",
                        validator: (Name) {
                            if(Name == null || Name.trim().isEmpty)
                            {
                              return "Pless Enter Name";

                            }
                            else
                              {
                                return null;
                              }
                        },
                        prefixIcon: Icon(
                          Icons.account_circle,
                        ),
                        keyboardType: TextInputType.name,
                        controller: Name,
                   ),
                    SizedBox(
                      height: 20,
                    ),
                        MyText(
                        hint: "Number",
                        maxLength: 10,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(
                              RegExp("[0-9]"
                          ),),
                        ],

                        validator: (phone) {
                          if(phone == null || phone.trim().isEmpty)
                            {
                                  return "Pless Enter Number";

                            }
                          else
                            {
                              if(phone.trim().length!=10 )
                                {
                                  return "Pless Enter Valid Number";
                                }
                              else if( phone.startsWith("0"))
                                {

                                  return "Number Not Startwith '0'" ;
                                }
                              else
                                {
                                  return null;
                                }
                            }
                                },
                        prefixIcon: Icon(Icons.call),
                        keyboardType: TextInputType.number,
                        controller: Email),
                        SizedBox(
                          height: 20,
                        ),
                        MyText(
                            hint: "Email",
                            prefixIcon: Icon(Icons.email),

                            validator: (Email) {
                              if(Email == null || Email.trim().isEmpty)
                                {
                                  return "Pless Enter Email";
                                }
                              else
                                {
                                  Pattern pattern =
                                      r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?";
                                   RegExp regexp =RegExp(pattern.toString());
                                    if(regexp.hasMatch(Email.trim()))
                                      {
                                      return null;
                                      }
                                    else
                                      {
                                        return "Pless Enter Valid Email";
                                      }

                                }
                            },
                            keyboardType: TextInputType.emailAddress,
                            controller: Number),
                        SizedBox(
                          height: 20,
                        ),
                        MyText(
                            hint: "Password",
                             obscureText: Password,
                            errorMaxLines: 3,
                            validator: (Password) {
                              if(Password == null || Password.isEmpty)
                                {
                                  return "Pless Enter Email";
                                }
                              else
                                {
                                  // if()
                                  //   {
                                  //     return ""
                                  //   }

                                  Pattern pattern =
                                      r"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$";
                                  RegExp regExp = RegExp(pattern.toString());
                                  if(regExp.hasMatch(Password))
                                    {
                                      return null;
                                    }
                                  else
                                    {
                                      return '''Minimum eight characters, at least one uppercase letter, one lowercase letter, one number and one special character''';
                                    }
                                }
                            },
                            suffixIcon:  IconButton(onPressed: (){
                              Password =!Password;
                              setState(() {});
                            }, icon: Password? Icon(Icons.visibility):Icon(Icons.visibility_off)),
                            prefixIcon: Icon(Icons.password),
                            keyboardType: TextInputType.visiblePassword,

                        ),
                    SizedBox(
                      height: 20,
                    ),
                    Align(

                      alignment: Alignment.bottomRight,
                      child: Mybutton(onPressed: (){
                        if(formkey.currentState!.validate())
                          {
                              print("validet");
                            //setState(() {});
                          }
                        // else{
                        //   print('object');
                        // }
                      }, name: "Login"),
                    ),
                  ]),
                ),
              ),
            ),

            // if(formkey.currentState!=null && formkey.currentState!.validate())
              Card(
                  child: Column(
                    children: [
                      Text("${Name.text}",style: TextStyle(color: Colors.amber)),
                      Text("${Email.text}",style: TextStyle(color: Colors.amber)),
                      Text("${Number.text}",style: TextStyle(color: Colors.amber)),
                    ],
                  ),
                ),

          ],
        ),
      ),
    );
  }
}