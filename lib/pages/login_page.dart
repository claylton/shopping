import 'package:flutter/material.dart';
import 'package:shopping/pages/sign_up_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            padding: const EdgeInsets.only(
              top: 80.0,
              left: 20,
              right: 20,
              bottom: 40,
            ),
            child: Column(
              children: [
                Container(
                  height: 450,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.secondary,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        offset: Offset(1, 2.0),
                        blurRadius: 5,
                        spreadRadius: 1,
                      )
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15, top: 60),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text(
                                  "Welcome",
                                  style: Theme.of(context).textTheme.displaySmall,
                                ),
                                Text(
                                  "Sign in to continue",
                                  style: Theme.of(context).textTheme.titleSmall,
                                ),
                              ],
                            ),
                            TextButton(
                              onPressed: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const SignUpPage(),
                                  )),
                              child: Text(
                                'Sign up',
                                style: TextStyle(color: Theme.of(context).colorScheme.primary),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 60),
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              labelText: "Email",
                              labelStyle: TextStyle(
                                color: Theme.of(context).colorScheme.primary,
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                              )),
                          style: TextStyle(fontSize: 20, color: Theme.of(context).colorScheme.primary),
                        ),
                        const SizedBox(height: 10),
                        TextFormField(
                          keyboardType: TextInputType.text,
                          obscureText: true,
                          decoration: InputDecoration(
                              labelText: "Password",
                              labelStyle: TextStyle(
                                color: Theme.of(context).colorScheme.primary,
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                              )),
                          style: TextStyle(fontSize: 20, color: Theme.of(context).colorScheme.primary),
                        ),
                        Container(
                          height: 40,
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "Forgot your password? ",
                              style: TextStyle(color: Theme.of(context).colorScheme.primary),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.primary,
                            borderRadius: const BorderRadius.all(Radius.circular(5)),
                          ),
                          child: TextButton(
                              onPressed: () {},
                              child: Text(
                                "Sign In",
                                style: TextStyle(color: Theme.of(context).colorScheme.primaryContainer,),
                              )),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: const Text(
                    "- OR -",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2.0,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        SizedBox(
                          height: 24,
                          width: 100,
                          child: Image.asset(
                            "assets/facebook.png",
                          ),
                        ),
                        const Text("Sign In with Facebook"),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2.0,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        SizedBox(
                          height: 24,
                          width: 100,
                          child: Image.asset(
                            "assets/google.png",
                          ),
                        ),
                        const Text("Sign In with Google"),
                      ],
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
