import 'package:flutter/material.dart';
import 'package:ieee/view/text_form.dart';
import 'package:ieee/view/register_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController =  TextEditingController();

  var passwordController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  bool isPassword =true;
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title:const Text(
          "Login",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:   [
                const Text(
                  'LOGIN ',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 80,),
                defaultFormField(
                    controller: emailController,
                    type: TextInputType.emailAddress,
                    validator: (value){
                      if(value!.isEmpty)
                      {
                        return 'please enter your email address';
                      }
                    },
                    labelText: 'email address',
                    prefixIcon: const Icon(Icons.email_outlined),
                ),
                const SizedBox(height: 40,),
                defaultFormField(
                    controller: passwordController,
                    type: TextInputType.visiblePassword,
                    validator: (value){
                      if(value!.isEmpty)
                      {
                        return 'please enter your password';
                      }
                    },
                    labelText: 'password',
                    prefixIcon: const Icon(Icons.password),
                  obscure: isPassword,
                  suffix: isPassword? Icons.visibility :Icons.visibility_off,
                    suffixPressed: ()
                    {
                      setState(() {
                        isPassword = !isPassword;
                      });
                    }
                ),
                const SizedBox(height: 40,),
                MaterialButton(
                  minWidth: double.infinity,
                  color: Colors.teal,
                    onPressed: ()
                    {
                      if(formKey.currentState!.validate())
                      {

                      }
                    },
                   child:const Text(
                     'LOGIN',
                     style: TextStyle(
                       fontWeight: FontWeight.bold,
                       fontSize: 20,
                     ),
                   ),
                ),
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:
                  [
                    const Text('if you do not an account /'),
                    MaterialButton(
                        onPressed: ()
                        {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder:(BuildContext context)
                                  {
                                    return RegisterScreen();
                                  } ));
                        },
                     child: const Text(
                       'SIGN UP',
                     ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }}
