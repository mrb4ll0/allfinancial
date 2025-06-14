import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('MICROBIZ', style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0C2D57),
              )),
              const Text('Microfinance Bank Ltd', style: TextStyle(
                fontSize: 16,
                color: Color(0xFF7F8C9A),
              )),
              const SizedBox(height: 40),
              const Text("Let's Register you!", style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              )),
              const SizedBox(height: 16),
              const Text('Lorem ipsum dolor sit amet consectetur.\nVel velit nisl mattis id.',
                style: TextStyle(fontSize: 16, color: Color(0xFF7F8C9A)),
              ),
              const SizedBox(height: 40),
              const Text('Bank Verification Number (BVN)',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              TextFormField(
                decoration: InputDecoration(
                  hintText: '23456789123',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  suffixIcon: const Icon(Icons.verified, color: Colors.green),
                ),
                keyboardType: TextInputType.number,
              ),
              const Spacer(),
              Row(
                children: [
                  const Text('By creating account, you agree to our'),
                  TextButton(
                    onPressed: () {},
                    child: const Text('Terms and Conditions'),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Navigator.pushNamed(context, '/home'),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Submit'),
                      SizedBox(width: 8),
                      Icon(Icons.arrow_forward, size: 20),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Center(
                child: TextButton(
                  onPressed: () => Navigator.pushNamed(context, '/login'),
                  child: const Text('Already have an Account? Login'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
