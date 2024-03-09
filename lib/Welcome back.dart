import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Welcome Back!",
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              "Fill your details or continue \n with social media",
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 20.0),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Email Address',
                prefixIcon: Icon(Icons.email),
              ),
            ),
            SizedBox(height: 20.0),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                prefixIcon: Icon(Icons.lock),
                suffixIcon: Icon(Icons.visibility_off),
              ),
            ),
            SizedBox(height: 10.0),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  // Add forget password functionality
                },
                child: Text('Forget Password?'),
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Add login functionality
              },
              child: Text('Login'),
            ),
            SizedBox(height: 10.0),
            ElevatedButton.icon(
              onPressed: () {
                // Add continue with Google functionality
              },
              icon: Icon(Icons.g_translate),
              label: Text('Continue with Google'),
            ),
            SizedBox(height: 10.0),
            ElevatedButton.icon(
              onPressed: () {
                // Add continue with Facebook functionality
              },
              icon: Icon(Icons.facebook),
              label: Text('Continue with Facebook'),
            ),
            SizedBox(height: 20.0),
            Align(
              alignment: Alignment.center,
              child: InkWell(
                onTap: () {
                  // Add create account functionality
                },
                child: Text(
                  'New user? Create account',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                      fontWeight: FontWeight.bold

                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
