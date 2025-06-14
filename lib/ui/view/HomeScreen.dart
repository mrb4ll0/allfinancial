import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  var showAccBalance = true;
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 70,
                width: double.infinity,
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(
                      backgroundImage: NetworkImage("https://res.cloudinary.com/dvpwdi3yn/image/upload/fl_preserve_transparency/v1749647853/Confident_LinkedIn_Portrait_for_Women_Urban_Business_Photo_in_Amsterdam_wwt9vh.jpg"),
                    ),
                    Spacer(),
                    Column(
                      children: [Text("All Financial",
                        style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold, color: Color(0xFF0C2D57)),),
                        Text("Micro Finance Bank Ltd",style: TextStyle(fontSize: 10, color: Color(0xFF0C2D57)),)],
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: const Color(0xFF0C2D57),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Saving Account',style: TextStyle(color: Colors.white),),
                    const SizedBox(height: 8),
                    const Text('234567891',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.white)),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                       Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [ Text('Balance:',style: TextStyle(color: Colors.white)),
                           Text(showAccBalance?'¥350,000.00':"***", style: TextStyle(
                               fontWeight: FontWeight.bold,
                               fontSize: 18,
                               color: Colors.white
                           )),],
                       ),
                        SizedBox(
                          width: 50,
                        ),
                        IconButton(onPressed: ()
                            {
                              setState(() {
                                showAccBalance = !showAccBalance;
                              });
                            }, icon: Icon(Icons.visibility, color: Colors.blue,))
                      ],
                    ),

                    const SizedBox(height: 8),
                     Row(
                      children: [
                        Text('Book Balance:',style: TextStyle(color: Colors.white)),
                        SizedBox(width: 5,),
                        Text(showAccBalance?'¥45,000.00':"***", style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white
                        )),
                      ],
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Text("Shortcuts",
              style: TextStyle(color: Color(0xFF0C2D57),fontWeight: FontWeight.bold),),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: ()
                      {
                         Navigator.pushNamed(context, "/send-money");
                      },
                    child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: const Color(0xFF0C2D57),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      children: [ Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _buildShortcut(Icons.send, 'Transfer'),

                        ],
                      ),],
                    )
                    ,
                  )),
                  Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: const Color(0xFF0C2D57),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: _buildShortcut(Icons.receipt, 'Pay Bills')),
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: const Color(0xFF0C2D57),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      children: [
                        _buildShortcut(Icons.account_balance_wallet, 'Fund Me'),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Recent Transactions', style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Color(0xFF0C2D57)
                  )),
                  TextButton(
                    onPressed: () {},
                    child: const Text('See more', style:TextStyle(color: Color(0xFF0C2D57))),
                  ),
                ],
              ),
              _buildTransactionItem(
                '09:30 AM - 12 Apr 2023',
                'Payout / Godwin...',
                'Inter-Bank Transfer',
                '- ¥34,500',
              ),
              const SizedBox(height: 16),
              const Text('Update' ,style: TextStyle(color: Color(0xFF0C2D57),
                  fontSize:18,fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.only(top: 16,bottom: 16, left: 4),
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          height: 50,
                          width: 50,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              CircularProgressIndicator(
                                value: 0.7,
                                strokeWidth: 6,
                                backgroundColor: Colors.grey[300],
                                color: Theme.of(context).secondaryHeaderColor,
                              )
                              ,
                              Text("70%",style: TextStyle(color: Colors.white),)
                            ],
                          ),
                        ),
                            SizedBox(width: 15,),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [const Text('Complete Verification',
                                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
                                  const SizedBox(height: 8),
                                  const Text('We need some information to complete account verification.',
                                  overflow: TextOverflow.clip,
                                  style: TextStyle(fontSize: 13,color: Colors.white),),
                                  const SizedBox(height: 16),],
                              ),
                            ),
                        Icon(Icons.navigate_next,color:Colors.white),
                        SizedBox(width: 5,)
                      ],
                    ),


                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Color(0xFF0C2D57),
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.history), label: 'History'),
          BottomNavigationBarItem(icon: Icon(Icons.credit_card), label: 'Loans'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }

  Widget _buildShortcut(IconData icon, String label) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: const Color(0xFFE9F0FF),
          child: Icon(icon, color: const Color(0xFF0C2D57)),
        ),
        const SizedBox(height: 8),
        Text(label,style: TextStyle(color: Colors.white)),
      ],
    );
  }

  Widget _buildTransactionItem(String date, String title, String subtitle, String amount) {
    return Card(
      color: Color(0x220C2D57),
    child:
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
        contentPadding: EdgeInsets.zero,
        leading: const CircleAvatar(
          backgroundColor: Color(0x220C2D57),
          child: Icon(Icons.arrow_upward, color: Color(0xFF0C2D57)),
        ),
        title: Text(date, style: const TextStyle(color: Colors.white, fontSize: 12)),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: const TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold,)),
            Text(subtitle),
          ],
        ),
        trailing: Text(amount, style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.red,
        )),
            ),
      ));
  }
}