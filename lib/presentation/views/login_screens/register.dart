

import 'package:flutter/material.dart';
import 'package:pqr/presentation/components/TButton.dart';
import 'package:pqr/presentation/components/checkbox.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFfeece3),
      appBar: AppBar(
        title:  Text('Sing Up', style: TextStyle(color: Colors.black.withOpacity(0.7), fontWeight: FontWeight.bold,fontSize: 22)),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Text("Create an account to continue", style: TextStyle(color: Colors.black.withOpacity(0.7), fontSize: 18)),
                  const SizedBox(height: 20),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Name',
                      hintStyle: TextStyle(color: Colors.black.withOpacity(0.7)),
                      prefixIcon: Icon(Icons.person, color: Colors.black.withOpacity(0.7)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(color: Colors.white.withOpacity(0.1), width: 0.1),
                      ),
                      filled: true,
                      fillColor: Colors.white
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Email',
                      hintStyle: TextStyle(color: Colors.black.withOpacity(0.7)),
                      prefixIcon: Icon(Icons.email, color: Colors.black.withOpacity(0.7)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(color: Colors.white.withOpacity(0.1), width: 0.1),
                      ),
                      filled: true,
                      fillColor: Colors.white
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
          children: [
            Expanded(
        flex: 3, // %30 genişlik
        child: TextFormField(
          decoration: InputDecoration(
            hintText: '+90',
            hintStyle: TextStyle(color: Colors.black.withOpacity(0.7)),
            prefixIcon: Icon(Icons.arrow_drop_down, color: Colors.black.withOpacity(0.7)),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(color: Colors.white.withOpacity(0.1), width: 0.1),
            ),
            filled: true,
            fillColor: Colors.white,
          ),
        ),
            ),
            SizedBox(width: 8), // TextField'ler arası boşluk
            Expanded(
        flex: 7, // %70 genişlik
        child: TextFormField(
          decoration: InputDecoration(
            hintText: 'Mobile Number',
            hintStyle: TextStyle(color: Colors.black.withOpacity(0.7)),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(color: Colors.white.withOpacity(0.1), width: 0.1),
            ),
            filled: true,
            fillColor: Colors.white,
          ),
        ),
            ),
          ],
        ),
        
                  const SizedBox(height: 20),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Confirm Password',
                      hintStyle: TextStyle(color: Colors.black.withOpacity(0.7)),
                      prefixIcon: Icon(Icons.lock, color: Colors.black.withOpacity(0.7)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(color: Colors.white.withOpacity(0.1), width: 0.1),
                      ),
                      filled: true,
                      fillColor: Colors.white
                    ),
                  ),
                  const SizedBox(height: 20),
                OptCheckbox(
                  title: "exampleexampleexampleexampleexampleexampleexampleexampleexampleexampleexampleexample",
                ),
                OptCheckbox(
                  title: "exampleexampleexampleexampleexampleexampleexampleexampleexampleexampleexampleexample",
                ),
                OptCheckbox(
                  title: "exampleexampleexampleexampleexampleexampleexampleexampleexampleexampleexampleexample",
                ),
          ],
          ),
          ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min, // Ekleme: Column'un minimum boyutta olmasını sağlar
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TButton(
                onTap: () {},
                title: "Register",
              ),
              const SizedBox(height: 10), // Ekleme: Butonlar arasında biraz boşluk bırakmak için
              Text("Have an account? "),
            ],
          )
      ),
    );
  }
}