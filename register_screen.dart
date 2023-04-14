import 'package:flutter/material.dart';
import 'package:ieee/view/text_form.dart';

class RegisterScreen extends StatefulWidget {
  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  var nameController =  TextEditingController();

  var emailController =  TextEditingController();

  var passwordController =  TextEditingController();

  bool isPassword =true;

  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text(
        "Register",
        style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:
              [
                const SizedBox(height: 30,),
                const Text(
                  'Create New '
                      'Account',style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                ),
                const SizedBox(height: 60,),
                defaultFormField(
                    controller: nameController,
                    type: TextInputType.text,
                    validator: (value)
                    {
                      if(value!.isEmpty)
                      {
                        return 'please Enter your name';
                      }
                    },
                    labelText: 'Name',
                    prefixIcon: const Icon(Icons.text_format),
                ),
                const SizedBox(height: 30,),
                defaultFormField(
                  controller: emailController,
                  type: TextInputType.emailAddress,
                  validator: (value)
                  {
                    if(value!.isEmpty)
                    {
                      return 'please Enter your email';
                    }
                  },
                  labelText: 'Email',
                  prefixIcon: const Icon(Icons.email),
                ),
                const SizedBox(height: 30,),
                defaultFormField(
                  controller: passwordController,
                  type: TextInputType.visiblePassword,
                  validator: (value)
                  {
                    if(value!.isEmpty)
                    {
                      return 'please Enter your password';
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
                const SizedBox(height: 30,),
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

              ],
            ),
          ),
        ),
      ),
    );
  }
}
