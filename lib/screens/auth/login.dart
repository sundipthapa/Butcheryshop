import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _emailcontroller = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  bool _obscureTextPassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Image.asset(
              "logo.png",
              height: 100,
              width: 100,
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: _emailcontroller,
              keyboardType: TextInputType.emailAddress,
              style: const TextStyle(
                fontFamily: 'WorkSansSemiBold',
                fontSize: 18,
                color: Colors.black,
              ),
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                border: InputBorder.none,
                prefixIcon: Icon(
                  Icons.email,
                  color: Colors.black,
                  size: 22.0,
                ),
                hintText: 'Email Address',
                hintStyle: TextStyle(fontFamily: 'WorkSansSemiBold'),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: _passwordController,
              obscureText: _obscureTextPassword,
              style: const TextStyle(
                fontFamily: "WorkSansSemiBold",
                fontSize: 16.0,
                color: Colors.black,
              ),
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                prefixIcon: const Icon(
                  Icons.lock,
                  size: 22.0,
                  color: Colors.black,
                ),
                hintText: 'Password',
                hintStyle: const TextStyle(
                  fontFamily: "WorkSansSemiBold",
                  fontSize: 17.0,
                ),
                suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      _obscureTextPassword = !_obscureTextPassword;
                    });
                  },
                  child: Icon(
                    _obscureTextPassword
                        ? Icons.visibility
                        : Icons.visibility_off,
                    size: 20.0,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                "Forgot Password",
                style: TextStyle(color: Colors.blueAccent),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: BorderSide(color: Colors.blueAccent)),
                  ),
                  padding: MaterialStateProperty.all(
                    EdgeInsets.symmetric(vertical: 20),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(
                    color: Colors.blueAccent,
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                      color: Colors.blueAccent,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
