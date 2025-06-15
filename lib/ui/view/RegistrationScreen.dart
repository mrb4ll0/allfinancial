import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool isChecked=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
    [
              SizedBox(height: 20,),
              const Text('All Financial', style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0C2D57),
              )),
              const Text('Microfinance Bank Ltd', style: TextStyle(
                fontSize: 16,
                color: Color(0xFF7F8C9A),
              )),
              const SizedBox(height: 25),
              const Text("Let's Register you!", style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0C2D57)
              )),
              const Text('Your information is safe with us',
                style: TextStyle(fontSize: 16, color: Color(0xFF7F8C9A)),
              ),
              const SizedBox(height: 40),
              const Text('Bank Verification Number (BVN)',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              TextFormField(

                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black54)
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black)
                  ),
                  hintText: '23456789123',
                  suffixIcon: const Icon(Icons.verified, color: Colors.green),
                ),
                keyboardType: TextInputType.number,
              ),
              SizedBox(
                width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Checkbox(
                            value: isChecked, onChanged: (checked)
                        {
                          setState(() {
                            isChecked = checked!;
                          });
                        }),

                        Expanded(
                            child:Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 10,),
                            const Text('By creating account, you agree to our'),
                                   GestureDetector(
                                     onTap:()
                                       {

                                       },
                                       child: const Text('Terms and Conditions',style: TextStyle(color: Colors.blue),)),

                            ]
                        ))],)),
              Spacer(),
              SizedBox(
                width: 400,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF0C2D57),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
                  onPressed: () => Navigator.pushNamed(context, '/home'),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Submit',style: TextStyle(color: Colors.white),),
                      SizedBox(width: 8),
                      Icon(Icons.arrow_forward, size: 20,color: Colors.white,),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Center
              (
                child: TextButton(
                  onPressed: () => Navigator.pushNamed(context, '/login'),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Already have an Account? ',style: TextStyle(color: Color(0xFF0C2D57))),
                      const Text("Login",style: TextStyle(color: Colors.blue),),
                    ],
                  )),
                ),

        ]),

  )));
  }
}
