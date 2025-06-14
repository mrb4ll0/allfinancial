import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var showPassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: Color(0xFF0C2D57),
        leadingWidth: 120,
        leading: Row(
          mainAxisSize: MainAxisSize.min,
    children: [
      const SizedBox(width: 8,),
      IconButton(
          icon: const Icon(Icons.arrow_back,color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
      Text("Back", style: TextStyle(color: Colors.white)
        ,overflow: TextOverflow.ellipsis,
      softWrap: false,)], ),
      ),
      body: SafeArea(
          child: LayoutBuilder(builder: (context, constraints)
          {
            return SingleChildScrollView(
                child: Padding(
                padding: const EdgeInsets.only(bottom: 24.0,left: 24.0,right: 24.0 ,top: 15),
                child:  ConstrainedBox(constraints: BoxConstraints(minHeight:constraints.maxHeight),
                  child:
                  IntrinsicHeight(
            child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Sign in', style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF0C2D57)
                    )),
                    const SizedBox(height: 16),
                    const Text('Welcome back. Securely sign in to your All Financial account',
                      style: TextStyle(fontSize: 16, color: Color(0xFF0C2D57)),
                    ),
                    const SizedBox(height: 30),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0x220C2D57),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintText: 'Enter your email',
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(vertical: 16,horizontal: 20)
                        ),
                        keyboardType: TextInputType.emailAddress,
                      ),
                    ),
                    const SizedBox(height: 15),
                    Container(
                      decoration: BoxDecoration(
                          color: Color(0x220C2D57),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: TextFormField(
                        obscureText: showPassword,
                        decoration: InputDecoration(
                          hintText: 'Enter your password',
                          border: InputBorder.none,
                          focusedBorder:InputBorder.none,
                          suffixIcon:  IconButton(
                              onPressed: ()
                              {
                                setState(()
                                {
                                  showPassword = !showPassword;
                                });
                              },
                              icon: showPassword? Icon(Icons.visibility_off):Icon(Icons.visibility)),
                            contentPadding: EdgeInsets.symmetric(vertical: 16,horizontal: 20)
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Align(
                      alignment: Alignment.center,
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                            'Forgot Password?',style: TextStyle(
                            color: Color(0xFF0C2D57))),
                      ),
                    ),
                    const SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            IconButton(
                              icon: const Icon(Icons.fingerprint, size: 40),
                              onPressed: () {},
                            ),
                            const Text('Touch ID', textAlign: TextAlign.center),
                          ],
                        ),
                        const SizedBox(width: 40),
                        Column(
                          children: [
                            IconButton(
                              icon: const Icon(Icons.face, size: 40),
                              onPressed: () {},
                            ),
                            const Text('Face ID', textAlign: TextAlign.center),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 170,),
                    Row(
                      children: [
                        Expanded(
                          child: OutlinedButton(
                            onPressed: () => Navigator.pushNamed(context, '/register'),
                            style: OutlinedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(vertical: 16),
                              side: const BorderSide(color: Color(0xFF0C2D57),
                              width: 2),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                            ),
                            child: const Text('Sign Up',
                            style: TextStyle(color: Color(0xFF0C2D57)),),
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF0C2D57)),
                            onPressed: () => Navigator.pushNamed(context, '/home'),
                            child: const Text('Sign in', style: TextStyle(color: Colors.white),),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    const Center(
                      child: Text('Create New Bank Account',
                        style: TextStyle(
                          color: Color(0xFF0C2D57),
                          fontSize: 15
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )));
          })

    ));
  }
}