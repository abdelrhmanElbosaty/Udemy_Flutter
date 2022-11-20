import 'package:flutter/material.dart';
import 'package:flutter_study/shared/components/default_button.dart';


class LoginScreen extends StatefulWidget {

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailTextController = TextEditingController();

  var passwordController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  var passwordShown = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Form(
                  key: formKey,
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                          height: 24,
                      ),
                      // Container(
                      //   height: 50,
                      //   child: TextFormField(
                      //     controller: emailTextController,
                      //     keyboardType: TextInputType.emailAddress,
                      //     onFieldSubmitted: (value) {
                      //       print(value);
                      //     },
                      //     onChanged: (value) {
                      //       print(value);
                      //     },
                      //     validator: (value){
                      //       if (value!.isEmpty) {
                      //         return 'Please enter an email';
                      //       }
                      //       return null;
                      //     },
                      //     decoration: const InputDecoration(
                      //       // hintText: 'Email',
                      //       labelText: 'Email',
                      //       border: OutlineInputBorder(
                      //         borderRadius: BorderRadius.all(Radius.circular(8)),
                      //       ),
                      //      // prefixIcon: Icon(
                      //      //     Icons.email_outlined,
                      //      // ),
                      //     ),
                      //   ),
                      // ),
                      defaultTextField(
                        verticalContentPadding: 10,
                          horizontalContentPadding: 10,
                          controller: emailTextController,
                          keyboardType: TextInputType.emailAddress,
                          validate: (value){
                            if (value!.isEmpty) {
                              return 'Please enter an email';
                            }
                            return null;
                          },
                          labelName: 'Email',
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      // Container(
                      //   height: 50,
                      //   child: TextFormField(
                      //     controller: passwordController,
                      //     onFieldSubmitted: (value) {
                      //       print('Value');
                      //     },
                      //     onChanged: (value) {
                      //       print(value);
                      //     },
                      //     validator: (value) {
                      //       if (value!.isEmpty) {
                      //         return 'please enter password';
                      //       }
                      //       return null;
                      //     },
                      //     keyboardType: TextInputType.visiblePassword,
                      //     obscureText: true,
                      //     decoration: const InputDecoration(
                      //       labelText: 'Password',
                      //       border: OutlineInputBorder(
                      //         borderRadius: BorderRadius.all(Radius.circular(8)),
                      //       ),
                      //       suffixIcon: Icon(
                      //         Icons.remove_red_eye_outlined,
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      defaultTextField(
                        horizontalContentPadding: 10,
                          verticalContentPadding: 10,
                          controller: passwordController,
                          keyboardType: TextInputType.visiblePassword,
                          validate: (String value) {
                            if (value.isEmpty) {
                              return 'Please enter an password';
                            }
                            return null;
                          },
                          labelName: 'Password',
                        isPassword: passwordShown,
                        suffixIconButton: IconButton(
                            onPressed: (){
                              setState(() {
                                passwordShown = !passwordShown;
                              });
                            },
                            icon: passwordShown ?  const Icon(Icons.visibility) : const Icon(Icons.visibility_off),
                        ),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      // Container(
                      //   width: double.infinity,
                      //   // color: Colors.blue,
                      //   clipBehavior: Clip.antiAliasWithSaveLayer,
                      //   decoration:const BoxDecoration(
                      //     borderRadius: BorderRadius.all(Radius.circular(8)),
                      //     color: Colors.blue,
                      //   ),
                      //   child: MaterialButton(onPressed: () {
                      //       print(
                      //         emailTextContrller.text
                      //       );
                      //       print(
                      //           passwordConntroller.text
                      //       );
                      //     },
                      //     child: const Text(
                      //       'Login',
                      //       style: TextStyle(
                      //         fontSize: 24,
                      //         fontWeight: FontWeight.bold,
                      //         color: Colors.white
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      defaultButton(
                        width: double.infinity,
                          function: () {
                          if (formKey.currentState!.validate()) {
                            print(emailTextController);
                            print(passwordController);
                          }
                          },
                          title: 'Login',
                          buttonColor: Colors.redAccent,
                        borderRadius: 8,
                        height: 40
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'don\'t have an account?'
                          ),
                          TextButton(onPressed: (){}, child: Text('Register')),
                        ],
                      ),
                    ],
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
