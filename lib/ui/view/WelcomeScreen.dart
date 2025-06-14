import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:Stack(
              children: [
                Container(
                  height: double.infinity,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(image: NetworkImage('https://images.unsplash.com/photo-1516541196182-6bdb0516ed27?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8d2hpdGUlMjBiYWNrZ3JvdW5kfGVufDB8fDB8fHww'),
                    fit: BoxFit.cover)
                  ),
                ),
                Column(
                  children: [
                    Stack(
                      children: [
                    Container(
                      height: 450,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                          image: DecorationImage(image: NetworkImage('https://res.cloudinary.com/dvpwdi3yn/image/upload/fl_preserve_transparency/v1749647853/Confident_LinkedIn_Portrait_for_Women_Urban_Business_Photo_in_Amsterdam_wwt9vh.jpg'),
                              fit: BoxFit.cover)
                      ),
                    ),
                    Container(
                      color: Colors.black.withOpacity(0.4),
                    ),
                    ])

                  ],
                ),
                Positioned(
                  top: 390,
                  left: 0,
                  right: 0,
                  bottom: 345,

                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors:[Colors.transparent,Colors.black,Colors.transparent]
                        )
                    ),
                  )),

                Positioned.fill(
                  top: 450,
                  child: SingleChildScrollView(
                      padding: EdgeInsets.all(24.0),
                  child: Column(
                    children: [
                      const Text('ALL FINANCIAL', style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF0C2D57),
                      )),
                      const Text('Microfinance Bank Ltd', style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFF7F8C9A),
                      )),
                      const SizedBox(height: 20,),
                      const Text('Banking Simplified', style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF0C2D57),
                      )),
                      const Text('A platform that offers single customer experience',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 12, color: Color(0xFF7F8C9A))),
                      SizedBox(
                        height: 130,
                        width: double.infinity,
                        child: Row(
                          children: [
                            SizedBox(
                              width: 160,
                              child: Container(
                                height: 55,
                                decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  border: Border.all(width: 2,color: Color(0xFF0C2D57)),
                                  borderRadius: BorderRadius.circular(10)
                                ),
                                child: TextButton(
                                  onPressed: () => Navigator.pushNamed(context, '/register'),
                                  child: const Text('Get Started',
                                  style: TextStyle(color: Color(0xFF0C2D57)),),
                                ),
                              ),
                            ),
                             SizedBox(width: 16),
                            SizedBox(
                              width: 160,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF0C2D57)),
                                onPressed: () => Navigator.pushNamed(context, '/login'),
                                child: const Text('Sign in', style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color:Colors.white
                                )),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 1
                      ),
                      const Text('Create New Bank Account',
                        style: TextStyle(color: Color(0xFF0C2D57),fontSize: 17),
                      )],
                  )),
                )
            ],
          ),
    );
  }
}
