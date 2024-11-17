import 'package:flutter/material.dart';
import 'package:pqr/presentation/components/TButton.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFfeece3),
      appBar: AppBar(
        title:  Text('Reset Password', style: TextStyle(color: Colors.black.withOpacity(0.7), fontWeight: FontWeight.bold,fontSize: 22)),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: [
          Text(""),
          const SizedBox(),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Text("Enter your email address and we'll send you a link to reset your password", style: TextStyle(color: Colors.black.withOpacity(0.7), fontSize: 18)),
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
                
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min, // Ekleme: Column'un minimum boyutta olmasını sağlar
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TButton(
                onTap: () {},
                title: "Reset Password",
              ),
              const SizedBox(height: 10), // Ekleme: Butonlar arasında biraz boşluk bırakmak için
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Log In",
                      style: TextStyle(
                        color: Colors.purple.withOpacity(0.7),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),

    );
  }
}