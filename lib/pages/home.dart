// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:ohctech/utils/routes.dart';
import 'package:pricing_cards/pricing_cards.dart';
import 'package:ohctech/widgets/drawer.dart';
import 'package:fluid_action_card/FluidActionCard/fluid_action_card.dart';
import 'package:heroicons/heroicons.dart';

// class dyshantr extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return  Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//     PricingCards(
//     pricingCards: [
//     PricingCard(
//     title: 'Monthly',
//       price: '\$ 9.99',
//       subPriceText: '\/mo',
//       billedText: 'Billed monthly',
//       onPress: () {
//         // make your business
//       },
//     ),
//     PricingCard(
//     title: 'Monthly',
//     price: '\$ 59.99',
//     subPriceText: '\/mo',
//     billedText: 'Billed anually',
//     mainPricing: true,
//     mainPricingHighlightText: 'Save money',
//     onPress: () {
//     // make your business
//     },
//     )
//     ],
//     ),
//     ],
//     );
//
//   }
// }


class HomePage extends StatelessWidget {
  moveToOpd(BuildContext context) async {
    await Future.delayed(Duration(seconds: 1));
    await Navigator.pushNamed(context, MyRoutes.opdRoute);
  }

  moveToInjury(BuildContext context) async {
    await Future.delayed(Duration(seconds: 1));
    await Navigator.pushNamed(context, MyRoutes.injuryRoute);
  }

  moveToMedExam(BuildContext context) async {
    await Future.delayed(Duration(seconds: 1));
    await Navigator.pushNamed(context, MyRoutes.medExamRoute);
  }

  moveToReports(BuildContext context) async {
    await Future.delayed(Duration(seconds: 1));
    await Navigator.pushNamed(context, MyRoutes.reportsRoute);
  }

  moveToSickness(BuildContext context) async {
    await Future.delayed(Duration(seconds: 1));
    await Navigator.pushNamed(context, MyRoutes.sicknessRoute);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: Text(
          "OHC TECH - Daily Statistics",
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
SizedBox(
              height: 10,
            ),

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Expanded(
                  flex: 2,
                  child: Container(
                    width: 300,
                    height: 200,
                    padding: new EdgeInsets.all(10.0),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      color: Color(0xfff8683a),
                      elevation: 10,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          ListTile(
                            // leading: HeroIcon(HeroIcons.calendar,style: HeroIconStyle.outline, color: Colors.black,size: 30,),
                            horizontalTitleGap: 50,
                            leading: Image.asset(
                              "assets/images/st1.png",
                              fit: BoxFit.contain,
                              height: 100,
                              width: 70,
                            ),
                            title: Text(
                              'OPD',
                              textAlign: TextAlign.left,
                              style:
                                  TextStyle(fontSize: 45, color: Colors.white),
                            ),
                            subtitle: Text(
                                'Approved Case: ( 5 )     Pending Case: ( 150 ) ',
                                style: TextStyle(fontSize: 18.0)),
                          ),
                          ButtonBar(
                            children: <Widget>[
                              ElevatedButton(
                                child: Text(
                                  'Approved ',
                                  textAlign: TextAlign.center,
                                ),
                                onPressed: () {
                                  print("Approved Click");
                                },
                              ),
                              ElevatedButton(
                                child: Text(
                                  'Pendding ',
                                  textAlign: TextAlign.center,
                                ),
                                onPressed: () {
                                  print("Pending Click");
                                  moveToOpd(context);
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
],
            ),
            //
            //
            //
            //        Container(
            //  margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
            //  child: Row(
            //  children: <Widget>[
            //    Container(
            //    margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
            //    width: 160,
            //    height: 80,
            //    child: ElevatedButton(
            //      child: const Text("Approved OPD",
            //        textAlign: TextAlign.right,
            //        style: TextStyle(
            //            fontSize: 19, color: Colors.white),
            //      ),
            //      onPressed: () {
            //
            //      },
            //      style: ElevatedButton.styleFrom(
            //        primary: Color(0xfff8683a),
            //
            //        // padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
            //        shape: RoundedRectangleBorder(
            //            borderRadius: BorderRadius.circular(20)),
            //      ),
            //    ),
            //  ),
            //
            //
            //    Image.asset( "assets/images/st1.png",
            //      fit: BoxFit.contain,
            //      height: 50,
            //      width: 70,
            //    ),
            //
            //
            //
            //    Container(
            //      // color: Color(0xfff8683a),
            //      margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
            //      width: 160,
            //      height: 80,
            //      child: ElevatedButton(
            //        child: const Text("Pending OPD",
            //          textAlign: TextAlign.right,
            //                                  style: TextStyle(
            //                                      fontSize: 20, color: Colors.white),
            //        ),
            //        onPressed: () {
            //
            //        },
            //        style: ElevatedButton.styleFrom(
            //          primary: Color(0xfff8683a),
            //
            //          // padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
            //          shape: RoundedRectangleBorder(
            //              borderRadius: BorderRadius.circular(20)),
            //        ),
            //      ),
            //    ),
            //
            //  ],),
            // ),

            //
            //     PricingCards(
            // pricingCards: [
            // PricingCard(
            // title: 'Monthly',
            //   price: 'Case:     ',
            //   subPriceText: '',
            //   billedText: '',
            //   mainPricing: true,
            //   mainPricingHighlightText: 'Approved OPD',
            //   onPress: () {
            //    print("app Clicked");
            //   },
            // ),
            // PricingCard(
            // title: 'Monthly',
            // price: 'Case:     ',
            // subPriceText: '',
            // billedText: '',
            // mainPricing: true,
            // mainPricingHighlightText: 'Pending OPD',
            // onPress: () {
            // // make your business
            // },
            // ),
            //     ],
            //   ),
            // Row(
            //   crossAxisAlignment: CrossAxisAlignment.start,
            //   children: [
            //     Expanded(
            //         flex: 2,
            //         child: InkWell(
            //           onTap: () => moveToOpd(context),
            //           child: Container(
            //             width: 200,
            //             height: 100,
            //             margin: EdgeInsets.all(20),
            //             child: Column(
            //               children: [
            //                 Padding(
            //                   padding: const EdgeInsets.all(25.0),
            //                   child: Row(
            //                     children: [
            //                       Image.asset(
            //                         "assets/images/st1.png",
            //                         fit: BoxFit.contain,
            //                         height: 50,
            //                         width: 70,
            //                       ),
            //                       SizedBox(width: 60),
            //                       Text(
            //                         "OPD",
            //                         textAlign: TextAlign.right,
            //                         style: TextStyle(
            //                             fontSize: 25, color: Colors.white),
            //                       ),
            //                     ],
            //                   ),
            //                 )
            //               ],
            //             ),
            //             decoration: BoxDecoration(
            //               borderRadius: BorderRadius.circular(10),
            //               // ignore: prefer_const_literals_to_create_immutables
            //               boxShadow: [
            //                 BoxShadow(
            //                   color: Color(0x3f000000),
            //                   blurRadius: 4,
            //                   offset: Offset(0, 4),
            //                 ),
            //               ],
            //               color: Color(0xfff8683a),
            //             ),
            //           ),
            //         )),
            //   ],
            // ),


            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Expanded(
                  flex: 2,
                  child: Container(
                    width: 300,
                    height: 200,
                    padding: new EdgeInsets.all(10.0),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      color: Color.fromARGB(255, 189, 3, 3),
                      elevation: 10,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          ListTile(
                            // leading: HeroIcon(HeroIcons.calendar,style: HeroIconStyle.outline, color: Colors.black,size: 30,),
                            leading: Image.asset(
                              "assets/images/injury1.png",
                              fit: BoxFit.contain,
                              height: 100,
                              width: 70,
                            ),
                            title: Text(
                              'INJURY',
                              textAlign: TextAlign.left,
                              style:
                                  TextStyle(fontSize: 40, color: Colors.white),
                            ),
                            subtitle: Text(
                                'Approved Case: ( 5 )     Pending Case: ( 150 ) ',
                                style: TextStyle(fontSize: 18.0)),
                          ),
                          ButtonBar(
                            children: <Widget>[
                              ElevatedButton(
                                child: Text(
                                  'Approved ',
                                  textAlign: TextAlign.center,
                                ),
                                onPressed: () {
                                  print("Approved Click");
                                },
                              ),
                              ElevatedButton(
                                child: Text(
                                  'Pendding ',
                                  textAlign: TextAlign.center,
                                ),
                                onPressed: () {
                                  print("Pending Click");
                                  moveToInjury(context);
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),

            //
            // Row(
            //   crossAxisAlignment: CrossAxisAlignment.start,
            //   children: [
            //     Expanded(
            //         flex: 1,
            //         child: InkWell(
            //           onTap: () => moveToInjury(context),
            //           child: Container(
            //             width: 106,
            //             height: 100,
            //             margin: EdgeInsets.all(20),
            //             child: Column(
            //               children: [
            //                 Padding(
            //                   padding: const EdgeInsets.all(25.0),
            //                   child: Row(
            //                     children: [
            //                       Image.asset(
            //                         "assets/images/injury1.png",
            //                         fit: BoxFit.contain,
            //                         height: 50,
            //                         width: 70,
            //                       ),
            //                       SizedBox(width: 40),
            //                       Text(
            //                         "INJURY",
            //                         textAlign: TextAlign.right,
            //                         style: TextStyle(
            //                             fontSize: 25, color: Colors.white),
            //                       ),
            //                     ],
            //                   ),
            //                 )
            //               ],
            //             ),
            //             decoration: BoxDecoration(
            //               borderRadius: BorderRadius.circular(10),
            //               boxShadow: [
            //                 BoxShadow(
            //                   color: Color(0x3f000000),
            //                   blurRadius: 4,
            //                   offset: Offset(0, 4),
            //                 ),
            //               ],
            //               color: Color.fromARGB(255, 189, 3, 3),
            //             ),
            //           ),
            //         )),
            //   ],
            // ),

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Expanded(
                  flex: 2,
                  child: Container(

                    width: 300,
                    height: 200,
                    padding: new EdgeInsets.all(10.0),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      color: Color.fromARGB(255, 49, 130, 222),
                      elevation: 10,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          ListTile(
                            // leading: HeroIcon(HeroIcons.calendar,style: HeroIconStyle.outline, color: Colors.black,size: 30,),
                            leading: Image.asset(
                              "assets/images/medexam.png",
                              height: 100,
                              width: 70,
                            ),
                            title: Text(
                              'EXAMINATION',
                              textAlign: TextAlign.left,
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white),
                            ),
                            subtitle: Text(
                                'Approved Case: ( 5 )     Pending Case: ( 150 ) ',
                                style: TextStyle(fontSize: 18.0)),
                          ),
                          ButtonBar(
                            children: <Widget>[
                              ElevatedButton(
                                child: Text(
                                  'Approved ',
                                  textAlign: TextAlign.center,
                                ),
                                onPressed: () {
                                  print("Approved Click");
                                },
                              ),
                              ElevatedButton(
                                child: Text(
                                  'Pendding ',
                                  textAlign: TextAlign.center,
                                ),
                                onPressed: () {
                                  print("Pending Click");
                                  moveToMedExam(context);
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),

            //
            // Row(
            //   crossAxisAlignment: CrossAxisAlignment.start,
            //   children: [
            //     Expanded(
            //       flex: 2,
            //       child: InkWell(
            //         onTap: () => moveToMedExam(context),
            //         child: Container(
            //           width: 106,
            //           height: 100,
            //           margin: EdgeInsets.all(20),
            //           child: Column(
            //             children: [
            //               Padding(
            //                 padding: const EdgeInsets.all(25.0),
            //                 child: Row(
            //                   children: [
            //                     Image.asset(
            //                       "assets/images/medexam.png",
            //                       fit: BoxFit.contain,
            //                       height: 50,
            //                       width: 50,
            //                     ),
            //                     SizedBox(width: 20),
            //                     Text(
            //                       "EXAMINATION",
            //                       textAlign: TextAlign.right,
            //                       style: TextStyle(
            //                           fontSize: 25, color: Colors.white),
            //                     ),
            //                   ],
            //                 ),
            //               )
            //             ],
            //           ),
            //           decoration: BoxDecoration(
            //             borderRadius: BorderRadius.circular(10),
            //             boxShadow: [
            //               BoxShadow(
            //                 color: Color(0x3f000000),
            //                 blurRadius: 4,
            //                 offset: Offset(0, 4),
            //               ),
            //             ],
            //             color: Color.fromARGB(255, 49, 130, 222),
            //           ),
            //         ),
            //       ),
            //     ),
            //   ],
            // ),


            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Expanded(
                  flex: 2,
                  child: Container(
                    width: 300,
                    height: 200,
                    padding: new EdgeInsets.all(10.0),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      color: Color.fromARGB(255, 25, 170, 17),
                      elevation: 10,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          ListTile(
                            // leading: HeroIcon(HeroIcons.calendar,style: HeroIconStyle.outline, color: Colors.black,size: 30,),
                            leading: Image.asset(
                              "assets/images/fittt.png",
                              fit: BoxFit.contain,
                              height: 100,
                              width: 70,
                            ),
                            title: Text(
                              'FITNESS',
                              textAlign: TextAlign.left,
                              style:
                                  TextStyle(fontSize: 35, color: Colors.white),
                            ),
                            subtitle: Text(
                                'Approved Case: ( 5 )     Pending Case: ( 150 ) ',
                                style: TextStyle(fontSize: 18.0)),
                          ),
                          ButtonBar(
                            children: <Widget>[
                              ElevatedButton(
                                child: Text(
                                  'Approved ',
                                  textAlign: TextAlign.center,
                                ),
                                onPressed: () {
                                  print("Approved Click");
                                },
                              ),
                              ElevatedButton(
                                child: Text(
                                  'Pendding ',
                                  textAlign: TextAlign.center,
                                ),
                                onPressed: () {
                                  print("Pending Click");
                                  moveToSickness(context);
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),

                ),
              ],
            ),

            //
            // Row(
            //   crossAxisAlignment: CrossAxisAlignment.start,
            //   children: [
            //     Expanded(
            //         flex: 1,
            //         child: InkWell(
            //           onTap: () => moveToSickness(context),
            //           child: Container(
            //             width: 106,
            //             height: 100,
            //             margin: EdgeInsets.all(20),
            //             child: Column(
            //               children: [
            //                 Padding(
            //                   padding: const EdgeInsets.all(25.0),
            //                   child: Row(
            //                     children: [
            //                       Image.asset(
            //                         "assets/images/fittt.png",
            //                         fit: BoxFit.contain,
            //                         height: 50,
            //                         width: 70,
            //                       ),
            //                       SizedBox(width: 30),
            //                       Text(
            //                         "FITNESS",
            //                         textAlign: TextAlign.right,
            //                         style: TextStyle(
            //                             fontSize: 25, color: Colors.white),
            //                       ),
            //                     ],
            //                   ),
            //                 )
            //               ],
            //             ),
            //             decoration: BoxDecoration(
            //               borderRadius: BorderRadius.circular(10),
            //               boxShadow: [
            //                 BoxShadow(
            //                   color: Color(0x3f000000),
            //                   blurRadius: 4,
            //                   offset: Offset(0, 4),
            //                 ),
            //               ],
            //               color: Color.fromARGB(255, 25, 170, 17),
            //             ),
            //           ),
            //         )),
            //   ],
            // ),


            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Expanded(
                  flex: 2,
                  child: Container(
                    width: 300,
                    height: 200,
                    padding: new EdgeInsets.all(10.0),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      color: Color.fromARGB(255, 9, 61, 5),
                      elevation: 10,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          ListTile(
                            // leading: HeroIcon(HeroIcons.calendar,style: HeroIconStyle.outline, color: Colors.black,size: 30,),
                            leading: Image.asset(
                              "assets/images/report.png",
                              fit: BoxFit.contain,
                              height: 100,
                              width: 70,
                            ),
                            title: Text(
                              'REPORTING',
                              textAlign: TextAlign.left,
                              style:
                                  TextStyle(fontSize: 28, color: Colors.white),
                            ),
                            subtitle:
                                Text('', style: TextStyle(fontSize: 18.0)),
                          ),
                          ButtonBar(
                            children: <Widget>[
                              ElevatedButton(
                                child: Text(
                                  'Approved ',
                                  textAlign: TextAlign.center,
                                ),
                                onPressed: () {
                                  print("Approved Click");
                                },
                              ),
                              ElevatedButton(
                                child: Text(
                                  'Pendding ',
                                  textAlign: TextAlign.center,
                                ),
                                onPressed: () {
                                  print("Pending Click");
                                  moveToReports(context);
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),


            // Row(
            //   crossAxisAlignment: CrossAxisAlignment.start,
            //   children: [
            //     Expanded(
            //         flex: 2,
            //         child: InkWell(
            //           onTap: () => moveToReports(context),
            //           child: Container(
            //             width: 300,
            //             height: 100,
            //             margin: EdgeInsets.all(20),
            //             child: Column(
            //               children: [
            //                 Padding(
            //                   padding: const EdgeInsets.all(25.0),
            //                   child: Row(
            //                     children: [
            //                       Image.asset(
            //                         "assets/images/report.png",
            //                         fit: BoxFit.contain,
            //                         height: 50,
            //                         width: 70,
            //                       ),
            //                       SizedBox(width: 30),
            //                       Text(
            //                         "REPORTING",
            //                         textAlign: TextAlign.right,
            //                         style: TextStyle(
            //                             fontSize: 25, color: Colors.white),
            //                       ),
            //                     ],
            //                   ),
            //                 )
            //               ],
            //             ),
            //             decoration: BoxDecoration(
            //               borderRadius: BorderRadius.circular(10),
            //               boxShadow: [
            //                 BoxShadow(
            //                   color: Color(0x3f000000),
            //                   blurRadius: 4,
            //                   offset: Offset(0, 4),
            //                 ),
            //               ],
            //               color: Color.fromARGB(255, 9, 61, 5),
            //             ),
            //           ),
            //         )),
            //   ],
            // ),
          ],
        ),
      ),
      drawer: MyDrawer(
        text: '',
      ),
    );
  }
}
