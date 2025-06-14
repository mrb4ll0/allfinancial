import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SendMoneyScreen extends StatefulWidget {
  const SendMoneyScreen({super.key});

  @override
  State<SendMoneyScreen> createState() => _SendMoneyScreenState();
}

class _SendMoneyScreenState extends State<SendMoneyScreen> {
  var showAccBalance = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Row(
                 children: [IconButton(onPressed: ()
                 {
                   Navigator.pop(context);
                 }, icon: Icon(Icons.arrow_back)),
                   Text("Send Money", style: TextStyle(color:Color(0xFF0C2D57),fontSize: 18, fontWeight: FontWeight.bold),),],
               ),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: const Color(0xFF0C2D57),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Balance:', style: TextStyle(color: Colors.white)),
                    Row(
                      children: [
                         Text(showAccBalance?'N350,000.00':"***", style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                        )),
                        SizedBox(width: 30,),
                        IconButton(onPressed:
                        ()
                        {
                               setState(() {
                                 showAccBalance= !showAccBalance;
                               });
                            },
                        icon:Icon( showAccBalance? Icons.visibility: Icons.visibility_off, color: Colors.white,))
                      ],
                    ),
                    const SizedBox(height: 8),
                     Text("Book Balance: ${showAccBalance? "N45,000.00" : "****"}",
                    style: TextStyle(color: Colors.white),),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Beneficiaries(s)', style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Color(0xFF0C2D57)
                  )),
                  TextButton(
                    onPressed: () {},
                    child: const Text('See more', style: TextStyle(color: Colors.blueGrey),),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              SizedBox(
                height: 130,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                  children: [
                    _buildBeneficiaryCircle('MS', 'Mubarak...'),
                    _buildBeneficiaryCircle('TD', 'Tactical...'),
                    _buildBeneficiaryCircle('SA', 'Segun AL...'),
                    _buildBeneficiaryCircle('TI', 'Tacti'),
                  ],
                ),
              ),
              const SizedBox(height: 25),
              Padding(
                padding: EdgeInsets.only(left: 45),
                  child: Text("Designated Bank")),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.house_siding_sharp,color: Colors.black54,),
                  hintText: 'Select Bank',
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black26)
                  ),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)
                  )
                ),
                value: 'Microbiz MFB',
                items: ['Microbiz MFB', 'Other Bank 1', 'Other Bank 2']
                    .map((bank) => DropdownMenuItem(
                  value: bank,
                  child: Text(bank),
                ))
                    .toList(),
                onChanged: (value) {},
              ),
              const SizedBox(height: 24),
              Padding(
                padding: const EdgeInsets.only(left: 45),
                child: const Text('Beneficiary Account Number')),

              TextFormField(
                decoration: InputDecoration(
                  hintText: '234567891',
                  prefixIcon: Icon(Icons.person, color: Colors.black54,),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black26)
                  ),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)
                  )
                ),
                keyboardType: TextInputType.number,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Text('Sharafadeen Mubarak', style: TextStyle(
              ))),
               Padding(
                 padding: const EdgeInsets.only(left: 45),
                 child: Text('Amount',),
               ),
              TextFormField(
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  prefixText: '\$',
                  hintText: '70,000.00',
                  prefixIcon: Icon(Icons.savings,color: Colors.black54,),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black26)
                    ),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)
                    )
                ),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 4),
              const Align(
                alignment: Alignment.centerRight,
                child: Text('Maximum: \$5,000,000.00', style: TextStyle(color: Colors.black)),
              ),
              const SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.only(left: 45),
                child: Text('Remark',),
              ),
              const SizedBox(height: 8),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Test Payment',
                    prefixIcon: Icon(Icons.description, color: Colors.black54,),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black26, )
                    ),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)
                    )
                ),
              ),
              const SizedBox(height: 40),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF0C2D57)),
                  onPressed: () {},
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Confirm',style: TextStyle(color: Colors.white),),
                      SizedBox(width: 8),
                      Icon(Icons.arrow_forward, color: Colors.white, size: 20),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBeneficiaryCircle(String initials, String name) {
    return SizedBox(
      height: 100,
      width: 100,
      child: Card(
         color: Color(0x220C2D57),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
                    children: [
            SizedBox(
              height: 60,
              width: 60,
              child: CircleAvatar(
                backgroundColor: const Color(0xFFE9F0FF),
                child: Text(initials, style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF0C2D57),
                )),
              ),
            ),
            const SizedBox(height: 20),
            Text(name),
                    ],
                  ),
          )),
    );
  }
}