import '/screens/home_screen.dart';
import '/screens/bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestorm/cloud_firestorm.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignInScreen extends StatefulWidget {

  static String route = 'SignInScreen';
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {

  late bool _passwordVisible=false;
  TextEditingController user_name_controller= TextEditingController();
  TextEditingController user_mail_controller= TextEditingController();
  TextEditingController user_password_controller= TextEditingController();
  TextEditingController user_confirm_password_controller= TextEditingController();
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: SafeArea(

        child: Container(
          color: const Color(0xffe3dbd3),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 4,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(

                    decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: AssetImage("assets/images/logo.JPG"),fit: BoxFit.contain
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    width: double.infinity,
                    height:50,
                    padding: const EdgeInsets.only(left:20,right:20),
                  ),
                ),
              ),


              Padding(
                  padding: const EdgeInsets.only(left:16.0,right:16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          padding: const EdgeInsets.only(left:10,right:10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all( color: const Color(0xffa17e66),width: 2,),
                          color: const Color(0xffe3dbd3),
                        ),
                          child: TextFormField(

                               controller: user_mail_controller,
                               decoration: const InputDecoration(
                               hintText: "Mail",
                               prefixIcon: Icon(Icons.mail),
                               border: InputBorder.none,
                             ),
                          ),
                        ),

                      const SizedBox(height:10),

                       Container(
                          padding: const EdgeInsets.only(left:10,right:10),
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(10),
                           border: Border.all( color: const Color(0xffa17e66),width: 2,),
                           color: const Color(0xffe3dbd3),
                         ),
                          child: TextFormField(
                            controller: user_password_controller,

                            keyboardType: TextInputType.text,

                            obscureText: !_passwordVisible,

                            decoration: InputDecoration(
                              hintText: "Password",
                              prefixIcon: const Icon(Icons.lock),
                              suffixIcon: IconButton(
                                icon: Icon(

                                  _passwordVisible
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  color: Theme.of(context).primaryColorDark,
                                ),
                                onPressed: () =>

                                  setState(() {
                                    _passwordVisible = !_passwordVisible;
                                  }),

                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),

                    ],
                  ),
                ),


              Padding(
                padding: const EdgeInsets.only(top:20.0),
                child: ElevatedButton(

                    onPressed: (){
                      print(user_mail_controller.text);
                      print(user_password_controller.text);


                    },
                    child :const Text('Login',style:const TextStyle(color: Color(0xffa17e66),fontWeight: FontWeight.w700,fontSize: 18),
                    ),
                  ),
              ),


              Expanded(
                flex: 2,
                child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                            image: const DecorationImage(
                              image: AssetImage("assets/images/fb_logo.png"),
                            )
                        ),
                        height:50,
                        width: 50,
                  ),
                  const SizedBox(width: 10),
                  Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: const DecorationImage(
                          image: AssetImage("assets/images/google_logo.png"),
                        )
                      ),
                      height:50,
                      width: 50,
                  )
                ],
              ),
              ),

              Expanded(
                  flex: 1,
                  child: InkWell(
                    child: const Text("Guest Login",style:const TextStyle(color:Colors.blueGrey)),
                    onTap:(){
                      Navigator.pushNamed(context, BottomBar.route);
                    },
                  )
              ),


            ],
          ),
        ),
      ),
    );
  }
}
