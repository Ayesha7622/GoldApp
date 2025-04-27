import 'package:flutter/material.dart';

class Goldclass extends StatefulWidget {
  const Goldclass({super.key});

  @override
  State<Goldclass> createState() => _GoldclassState();
}

class _GoldclassState extends State<Goldclass> {
  int priceOfTola = 0;
  int quantityOfTolaGold = 0;
  int quantityOfMashaGold = 0;
  int quantityOfRattiGold = 0;
  int quantityOfPointGold = 0;
  double priceMasha = 0;
  double priceratti = 0;
  double pricePoint = 0;
  int totalPtice = 0;

  // double total_masha_price = 0;
  // double total_ratti_price = 0;
  // double total_point_price = 0;

  TextEditingController priceOfTolaController = TextEditingController();
  TextEditingController quantityOfTolagoldController = TextEditingController();
  TextEditingController quantityOfMashaGoldController = TextEditingController();
  TextEditingController quantityOfRattiGoldController = TextEditingController();
  TextEditingController quantityOfPointGoldController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //background , appbar, body,
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            // FloatingActionButton(
            //     shape: CircleBorder(),
            //     onPressed: () {
            //       priceOfTolaController.clear();
            //       quantityOfTolagoldController.clear();
            //     }),
            // SizedBox(
            //   width: 10,
            // ),
            // FloatingActionButton(onPressed: () {})
          ],
        ),
        backgroundColor: const Color.fromARGB(255, 20, 20, 20),
        appBar: AppBar(
          backgroundColor: Colors.amber.shade400,
          title: Text(
            'Jwellery App',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          leading: Icon(Icons.calculate),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FloatingActionButton(
                  backgroundColor: Colors.black,
                  onPressed: () {
                    priceOfTolaController.clear();
                    quantityOfTolagoldController.clear();
                    quantityOfMashaGoldController.clear();
                    quantityOfRattiGoldController.clear();
                    quantityOfPointGoldController.clear();
                    priceOfTola = 0;
                    quantityOfTolaGold = 0;
                    quantityOfMashaGold = 0;
                    quantityOfRattiGold = 0;
                    quantityOfPointGold = 0;
                    priceMasha = 0;
                    priceratti = 0;
                    pricePoint = 0;
                    totalPtice = 0;

                    setState(() {});
                  },
                  child: Icon(
                    Icons.refresh,
                    color: Colors.yellow,
                  ) //Text('Clear'),
                  ),
            ),
          ],
        ),
        body: SingleChildScrollView(
            child: Column(children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 5),
            child: Container(
              decoration: BoxDecoration(
                //color: Colors.amber,
                border: Border.all(width: 2, color: Colors.amber),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  controller: priceOfTolaController,
                  style: TextStyle(color: Colors.yellow),
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Price Of Tola=',
                      hintStyle: TextStyle(color: Colors.yellow)),
                ),
              ),
            ),
          ),
          // Card(

          //   child: ListTile(
          //     leading: CircleAvatar(),
          //     title: Text('USer name'),
          //     subtitle: Text('last message'),
          //     trailing: Text('data'),
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 5),
            child: Container(
              decoration: BoxDecoration(
                  //color: Colors.amber,
                  border: Border.all(width: 2, color: Colors.amber),
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  controller: quantityOfTolagoldController,
                  style: TextStyle(color: Colors.yellow),
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Quantity Of Tola gold=',
                      hintStyle: TextStyle(color: Colors.yellow)),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 5),
            child: Container(
              decoration: BoxDecoration(
                  //color: Colors.amber,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 2, color: Colors.amber)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  controller: quantityOfMashaGoldController,
                  style: TextStyle(color: Colors.yellow),
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Quantity Of Masha gold=',
                      hintStyle: TextStyle(color: Colors.yellow)),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 5),
            child: Container(
              decoration: BoxDecoration(
                //color: Colors.amber,
                border: Border.all(width: 2, color: Colors.amber),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  controller: quantityOfRattiGoldController,
                  style: TextStyle(color: Colors.yellow),
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Quantity Of Ratti gold=',
                      hintStyle: TextStyle(color: Colors.yellow)),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 5),
            child: Container(
              decoration: BoxDecoration(
                //color: Colors.amber,
                border: Border.all(width: 2, color: Colors.amber),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  controller: quantityOfPointGoldController,
                  style: TextStyle(color: Colors.yellow),
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Quantity Of Point gold=',
                      hintStyle: TextStyle(color: Colors.yellow)),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //   FloatingActionButton(
              //       backgroundColor: Colors.amber,
              //       onPressed: () {
              //         if (priceOfTolaController.text == "") {
              //           print('Price must be entered');
              //         } else {
              //           if (quantityOfTolagoldController.text == "") {
              //             quantityOfTolagoldController.text = "0";
              //           }
              //           if (quantityOfMashaGoldController.text == "") {
              //             quantityOfMashaGoldController.text = "0";
              //           }
              //           if (quantityOfRattiGoldController.text == "") {
              //             quantityOfRattiGoldController.text = "0";
              //           }
              //           if (quantityOfPointGoldController.text == "") {
              //             quantityOfPointGoldController.text = "0";
              //           }

              //           priceOfTola = int.parse(priceOfTolaController.text);
              //           quantityOfTolaGold =
              //               int.parse(quantityOfTolagoldController.text);
              //           quantityOfMashaGold =
              //               int.parse(quantityOfMashaGoldController.text);

              //           quantityOfRattiGold =
              //               int.parse(quantityOfRattiGoldController.text);
              //           quantityOfPointGold =
              //               int.parse(quantityOfPointGoldController.text);

              //           // if (priceOfTola == "" &&
              //           //     quantityOfTolaGold == "" &&
              //           //     quantityOfMashaGold == "" &&
              //           //     quantityOfRattiGold == "" &&
              //           //     quantityOfPointGold == "") {

              //           //formula for price per masha
              //           priceMasha = quantityOfTolaGold / 12;
              //           double totalMashaPrice =
              //               priceMasha * quantityOfMashaGold;

              //           //formula for price per ratti
              //           priceratti = quantityOfMashaGold / 96;
              //           double totalRattiPrice =
              //               priceratti * quantityOfRattiGold;

              //           //formula for price per point
              //           pricePoint = quantityOfPointGold / 100;
              //           double totalPointPrice =
              //               pricePoint * quantityOfPointGold;

              //           totalPtice = (priceOfTola * quantityOfTolaGold) +
              //               quantityOfMashaGold +
              //               quantityOfRattiGold +
              //               quantityOfPointGold;
              //           print('Total Price=$totalPtice');
              //           setState(() {});
              //         }

              //         //}
              //       },
              //       child: Icon(Icons.calculate)
              //       //     Text(
              //       //   'Calculate',
              //       // )
              //       ),
              // SizedBox(width: 20),
              // Container(
              //   decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(10),
              //       color: Colors.amber),
              //   child: TextButton(
              //       onPressed: () {},
              //       child: Text(
              //         'Calculate',
              //         style: TextStyle(color: Colors.black),
              //       )),
              // ),
              // SizedBox(
              //   width: 10,
              // ),
              // FloatingActionButton(
              //     backgroundColor: Colors.amber,
              //     onPressed: () {
              //       int priceOfTola = 0;
              //       int quantityOfTolaGold = 0;
              //       int quantityOfMashaGold = 0;
              //       int quantityOfRattiGold = 0;
              //       int quantityOfPointGold = 0;
              //       int totalPtice = 0;

              //       setState(() {});
              //     },
              //     child: Icon(Icons.refresh) //Text('Clear'),
              //     ),
            ],
          ),
          // FloatingActionButton(
          //   onPressed: () {},
          //   child: Text('Clear'),
          // ),

          // FloatingActionButton(
          //   onPressed: () {},
          //   child: Text('Clear'),
          // ),
          SizedBox(
            height: 30,
          ),
          Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Total Price Of Rs.$totalPtice',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: Colors.amber.shade400),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Quantity of Tola Gold =$quantityOfTolaGold',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: Colors.amber.shade400),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Quantity of Masha Gold =$quantityOfMashaGold',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: Colors.amber.shade400),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Quantity of Ratti gold =$quantityOfRattiGold',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: Colors.amber.shade400),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Quantity of POint Gold =$quantityOfPointGold',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: Colors.amber),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Price per Masha =$priceMasha',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: Colors.amber),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Price per Ratti =$priceratti',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: Colors.amber),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Price per Point =$pricePoint',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: Colors.amber),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FloatingActionButton(
                      backgroundColor: Colors.amber,
                      onPressed: () {
                        if (priceOfTolaController.text == "") {
                          print('Price must be entered');
                        } else {
                          if (quantityOfTolagoldController.text == "") {
                            quantityOfTolagoldController.text = "0";
                          }
                          if (quantityOfMashaGoldController.text == "") {
                            quantityOfMashaGoldController.text = "0";
                          }
                          if (quantityOfRattiGoldController.text == "") {
                            quantityOfRattiGoldController.text = "0";
                          }
                          if (quantityOfPointGoldController.text == "") {
                            quantityOfPointGoldController.text = "0";
                          }

                          priceOfTola = int.parse(priceOfTolaController.text);
                          quantityOfTolaGold =
                              int.parse(quantityOfTolagoldController.text);
                          quantityOfMashaGold =
                              int.parse(quantityOfMashaGoldController.text);

                          quantityOfRattiGold =
                              int.parse(quantityOfRattiGoldController.text);
                          quantityOfPointGold =
                              int.parse(quantityOfPointGoldController.text);

                          // if (priceOfTola == "" &&
                          //     quantityOfTolaGold == "" &&
                          //     quantityOfMashaGold == "" &&
                          //     quantityOfRattiGold == "" &&
                          //     quantityOfPointGold == "") {

                          //formula for price per masha
                          priceMasha = quantityOfTolaGold / 12;
                          double totalMashaPrice =
                              priceMasha * quantityOfMashaGold;

                          //formula for price per ratti
                          priceratti = quantityOfMashaGold / 96;
                          double totalRattiPrice =
                              priceratti * quantityOfRattiGold;

                          //formula for price per point
                          pricePoint = quantityOfPointGold / 100;
                          double totalPointPrice =
                              pricePoint * quantityOfPointGold;

                          totalPtice = (priceOfTola * quantityOfTolaGold) +
                              quantityOfMashaGold +
                              quantityOfRattiGold +
                              quantityOfPointGold;
                          print('Total Price=$totalPtice');
                          setState(() {});
                        }

                        //}
                      },
                      child: Icon(Icons.calculate)
                      //     Text(
                      //   'Calculate',
                      // )
                      ),

                  // Padding(
                  //   padding: const EdgeInsets.all(8.0),
                  //   child: Text(
                  //     'Quantity of Tola Gold =',
                  //     style: TextStyle(
                  //         fontSize: 24,
                  //         fontWeight: FontWeight.w500,
                  //         color: Colors.amber),
                  //   ),
                  // ),
                  // Padding(
                  //   padding: const EdgeInsets.all(8.0),
                  //   child: Text(
                  //     'Quantity of Masha Gold =',
                  //     style: TextStyle(
                  //         fontSize: 24,
                  //         fontWeight: FontWeight.w500,
                  //         color: Colors.amber),
                  //   ),
                  // ),
                  // Padding(
                  //   padding: const EdgeInsets.all(8.0),
                  //   child: Text(
                  //     'Quantity of Ratti gold =',
                  //     style: TextStyle(
                  //         fontSize: 24,
                  //         fontWeight: FontWeight.w500,
                  //         color: Colors.amber),
                  //   ),
                  // ),
                  // Padding(
                  //   padding: const EdgeInsets.all(8.0),
                  //   child: Text(
                  //     'Quantity of POint Gold =',
                  //     style: TextStyle(
                  //         fontSize: 24,
                  //         fontWeight: FontWeight.w500,
                  //         color: Colors.amber),
                  //   ),
                  // ),
                ],
              ),
            ),
          ]),
        ])));
  }
}
