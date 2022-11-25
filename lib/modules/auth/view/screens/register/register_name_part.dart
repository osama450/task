import 'package:flutter/material.dart';
import 'package:task/modules/auth/view/widget/have_account_widget.dart';
import 'package:task/modules/home/screens/main_screen.dart';

class RegisterNamePartScreen extends StatelessWidget {
  RegisterNamePartScreen({super.key});
  TextEditingController name = TextEditingController();
  TextEditingController surName = TextEditingController();


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: const HaveAccountWidget(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'What’s your name ?',
                  style: Theme.of(context).textTheme.headline3!.copyWith(
                        fontSize: 28,
                      ),
                ),
                SizedBox(
                  height: size.height * 0.1,
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: name,
                        decoration: InputDecoration(
                          hintText: 'Name',
                          hintStyle: Theme.of(context).textTheme.headline4!.copyWith(
                                fontSize: 16,
                                color: Colors.black54,
                              ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.06,
                    ),
                    Expanded(
                      child: TextFormField(
                        controller: surName,
                        decoration: InputDecoration(
                          hintText: 'Surname',
                          hintStyle: Theme.of(context).textTheme.headline4!.copyWith(
                                fontSize: 16,
                                color: Colors.black54,
                              ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                (name.text == '' || surName.text == '')
                    ? SizedBox(
                        width: size.width * 0.5,
                        child: Text(
                          'If you use your real name, it will be easier for friends to find you.',
                          style: Theme.of(context).textTheme.headline2!.copyWith(
                                fontSize: 14,
                                color: Colors.black38,
                              ),
                          textAlign: TextAlign.center,
                        ),
                      )
                    : MaterialButton(
                        height: 40,
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (_) => MainScreen(
                                userCredential: null,
                              ),
                            ),
                          );
                        },
                        color: const Color(0xff0F7BDD),
                        child: Text(
                          'Next',
                          style: Theme.of(context).textTheme.headline3!.copyWith(
                                fontSize: 18,
                                color: Colors.white,
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
