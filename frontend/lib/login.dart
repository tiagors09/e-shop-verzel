import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          color: Colors.amber,
        ),
        Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width / 2,
            height: MediaQuery.of(context).size.height / 2,
            child: Card(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('E Shop Verzel', style: TextStyle(fontSize: 50.0)),
                customTextField(email, false, Icons.email, "Email"),
                customTextField(password, true, Icons.password, "Password"),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('Login',
                          style: TextStyle(fontSize: 15.0))),
                )
              ],
            )),
          ),
        )
      ],
    ));
  }

  Widget customTextField(TextEditingController textEditingController,
      bool isObscured, IconData icon, String label) {
    return Padding(
      padding:
          const EdgeInsets.only(left: 24.0, top: 8.0, right: 24.0, bottom: 8.0),
      child: TextField(
        obscureText: isObscured,
        controller: textEditingController,
        decoration: InputDecoration(icon: Icon(icon), labelText: label),
      ),
    );
  }
}
