import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:lottie/lottie.dart';

class Accounts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 10.0,),
                //الشريط الاعلي
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'HELLO,',
                            style: TextStyle(
                                color: HexColor('32313a'),
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text('Hospital Accounts',
                              style: TextStyle(
                color: HexColor('32313a'),
                 fontSize: 25.0,
                fontWeight: FontWeight.bold)),
                        ],
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.grey[400],
                        backgroundImage: AssetImage('asset/image/1.jpg'),
                        radius: 25.0,
                      )
                    ],
                  ),
                ),
                //رسمة
                Container(
                  width: double.infinity,
                  height: 400.0,
                  child: Lottie.network(
                      'https://assets6.lottiefiles.com/packages/lf20_kdopdotf.json'),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Text(
                        'Statistics for the year',
                        style: TextStyle(
                color: HexColor('32313a'),
                 fontSize: 25.0,
                fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Revenues',
                            style:  TextStyle(
                color: HexColor('32313a'),
                 fontSize: 25.0,
                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '230%',
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Expenses',
                            style: TextStyle(
                color: HexColor('32313a'),
                 fontSize: 25.0,
                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '-98%',
                            style: TextStyle(
                                color: Colors.red,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Salaries',
                            style: TextStyle(
                color: HexColor('32313a'),
                 fontSize: 25.0,
                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '-60%',
                            style: TextStyle(
                                color: Colors.red,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Finances',
                            style:  TextStyle(
                color: HexColor('32313a'),
                 fontSize: 25.0,
                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '150%',
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Equipment ',
                            style:  TextStyle(
                color: HexColor('32313a'),
                 fontSize: 25.0,
                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '-30%',
                            style: TextStyle(
                                color: Colors.red,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Pharmacy',
                            style:  TextStyle(
                color: HexColor('32313a'),
                 fontSize: 25.0,
                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '110%',
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Tools ',
                            style: TextStyle(
                color: HexColor('32313a'),
                 fontSize: 25.0,
                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '-10%',
                            style: TextStyle(
                                color: Colors.red,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(height: 15,),
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color:Colors.deepPurple[100],
                          borderRadius: BorderRadius.circular(15),
                         ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'TOTAL PROFIT',
                              style: TextStyle(
                                  color: HexColor('32313a'),
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '290%',
                              style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )
        ),
      ),
    );
  }
}
