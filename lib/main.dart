import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meu App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meu App'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 20),
              Text(
                'Bem Vindo!',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Sign in',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _usernameController,
                decoration: InputDecoration(
                  labelText: 'User Name',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    // Lógica de "Forgot Password"
                  },
                  child: Text(
                    'Forgot Password',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  // Navegação para a próxima tela
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                },
                child: Text('Login'),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Does not have account?"),
                  TextButton(
                    onPressed: () {
                      // Lógica de "Sign in"
                    },
                    child: Text(
                      'Sign in',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: Text(
          'Bem-vindo à Home!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
