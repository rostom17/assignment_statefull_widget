import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int counter = 0;
  int tShirtCounter = 0;
  int sportcounter = 0;
  int pullPrice = 51;
  int tShirtPrice = 30;
  int sprtPrice = 43;
  int totalPrice = 0;
  String itm1 = "Pullover";
  String itm2 = "T-Shirt";
  String itm3 = "Sport Dress";



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              size: 30,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "My Bag",
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              width: 383,
              height: 440,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 125,
                    width: 383,
                    child: Row(
                      //mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 125,
                              width: 100,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                image: AssetImage('images/1.jpg'),
                              )),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,

                            children: [
                              Text(
                                "Pullover",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text("Color: Black     Size: L"),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                //crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  FloatingActionButton(
                                    onPressed: () {
                                      counter++;
                                      totalPrice += pullPrice;
                                      if(counter >= 5){
                                        showDialog(
                                          context: context,
                                          builder: (BuildContext) {
                                            return CustomAlertDialog(
                                              size: Size(
                                                284,
                                                254,
                                              ),
                                              content: Center(
                                                child: Column(
                                                  children: [
                                                    Text(
                                                      "Congratulations!\n",
                                                      style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight: FontWeight.w600,
                                                      ),
                                                    ),
                                                    Text(
                                                      "You have added",
                                                      style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight: FontWeight.w400,
                                                      ),
                                                    ),
                                                    Text(
                                                      "$counter",
                                                      style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight: FontWeight.w400,
                                                      ),
                                                    ),
                                                    Text(
                                                      "$itm1 on the bag",
                                                      style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight: FontWeight.w400,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            );
                                          },
                                        );
                                      }
                                      //print(counter);
                                      setState(() {});
                                    },
                                    child: const Icon(
                                      Icons.add,
                                    ),
                                  ),
                                  Text(
                                    "$counter",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  FloatingActionButton(
                                    onPressed: () {
                                      counter--;
                                      totalPrice -= pullPrice;
                                      //print(counter);
                                      setState(() {});
                                    },
                                    child: const Icon(
                                      Icons.remove,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 125,
                          width: 120,
                          child: Row(
                            //crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Column(
                                //mainAxisAlignment: MainAxisAlignment.end,
                                //crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon:
                                        Icon(CupertinoIcons.ellipsis_vertical),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    "${pullPrice * counter}\$",
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 125,
                    width: 383,
                    child: Row(
                      //mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 125,
                              width: 100,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                image: AssetImage('images/2.jpg'),
                              )),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "T-Shirt",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text("Color: Gray     Size: L"),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                //crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  FloatingActionButton(
                                    onPressed: () {
                                      tShirtCounter ++;
                                      totalPrice += tShirtPrice;
                                      if(tShirtCounter >= 5){
                                        showDialog(
                                          context: context,
                                          builder: (BuildContext) {
                                            return CustomAlertDialog(
                                              size: Size(
                                                284,
                                                254,
                                              ),
                                              content: Center(
                                                child: Column(
                                                  children: [
                                                    Text(
                                                      "Congratulations!\n",
                                                      style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight: FontWeight.w600,
                                                      ),
                                                    ),
                                                    Text(
                                                      "you have added",
                                                      style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight: FontWeight.w400,
                                                      ),
                                                    ),
                                                    Text(
                                                      "$tShirtCounter",
                                                      style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight: FontWeight.w400,
                                                      ),
                                                    ),
                                                    Text(
                                                      "$itm2 on the bag",
                                                      style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight: FontWeight.w400,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            );
                                          },
                                        );
                                      }

                                      //print(counter);
                                      setState(() {});
                                    },
                                    child: const Icon(
                                      Icons.add,
                                    ),
                                  ),
                                  Text(
                                    "$tShirtCounter",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  FloatingActionButton(
                                    onPressed: () {
                                      tShirtCounter --;
                                      totalPrice -= tShirtPrice;
                                      setState(() {});
                                    },
                                    child: const Icon(
                                      Icons.remove,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 125,
                          width: 120,
                          child: Row(
                            //crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Column(
                                //mainAxisAlignment: MainAxisAlignment.end,
                                //crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon:
                                        Icon(CupertinoIcons.ellipsis_vertical),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    "${tShirtCounter * tShirtPrice}\$",
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 125,
                    width: 383,
                    child: Row(
                      //mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 125,
                              width: 100,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                image: AssetImage('images/3.jpg'),
                              )),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Sport Dress",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text("Color: Black     Size: M"),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                //crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  FloatingActionButton(
                                    onPressed: () {
                                      sportcounter ++;
                                      totalPrice += sprtPrice;
                                      if(sportcounter >= 5){
                                        showDialog(
                                          context: context,
                                          builder: (BuildContext) {
                                            return CustomAlertDialog(
                                              size: Size(
                                                284,
                                                254,
                                              ),
                                              content: Center(
                                                child: Column(
                                                  children: [
                                                    Text(
                                                      "Congratulations!\n",
                                                      style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight: FontWeight.w600,
                                                      ),
                                                    ),
                                                    Text(
                                                      "you have added",
                                                      style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight: FontWeight.w400,
                                                      ),
                                                    ),
                                                    Text(
                                                      "$sportcounter",
                                                      style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight: FontWeight.w400,
                                                      ),
                                                    ),
                                                    Text(
                                                      "$itm3 on the bag",
                                                      style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight: FontWeight.w400,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            );
                                          },
                                        );
                                      }
                                      setState(() {});
                                    },
                                    child: const Icon(
                                      Icons.add,
                                    ),
                                  ),
                                  Text(
                                    "$sportcounter",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  FloatingActionButton(
                                    onPressed: () {
                                      sportcounter --;
                                      totalPrice -= sprtPrice;
                                      setState(() {});
                                    },
                                    child: const Icon(
                                      Icons.remove,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 125,
                          width: 120,
                          child: Row(
                            //crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Column(
                                //mainAxisAlignment: MainAxisAlignment.end,
                                //crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon:
                                        Icon(CupertinoIcons.ellipsis_vertical),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    "${sportcounter * sprtPrice}\$",
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 200,
              width: 383,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [

                        Container(
                          alignment: Alignment.centerLeft,
                          height: 20,
                          width: 182,
                          child: Text("Total Ammount: ",
                          style: TextStyle(
                            color: Colors.grey
                          ),),

                        ),
                        Container(
                          alignment: Alignment.centerRight,
                          height: 40,
                          width: 182,
                          child: Text("$totalPrice\$",
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 24,
                          ),),
                        )
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext) {
                            return CustomAlertDialog(
                              size: Size(
                                284,
                                254,
                              ),
                              content: Center(
                                child: Column(
                                  children: [
                                    Text(
                                      "Congratulations!\n",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Text(
                                      "you have added",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Text(
                                      "5",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Text(
                                      "T shirts on the bag",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.deepOrange,
                          padding: EdgeInsets.symmetric(
                              horizontal: 135, vertical: 15)),
                      child: Text(
                        "CHECK OUT",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,

                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomAlertDialog extends StatelessWidget {
   Size size;
   Widget content;

  CustomAlertDialog({required this.size, required this.content});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.zero,
      insetPadding: EdgeInsets.zero,
      backgroundColor: Colors.white,
      content: Container(
        width: size.width,
        height: size.height,
        //color: Colors.white,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            //Icon(Icons.warning, size: 50, color: Colors.orange),
            SizedBox(height: 20),
            content,
            SizedBox(height: 20),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.redAccent,
                fixedSize: Size(200.0, 40.0),
                // minimumSize:
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text(
                'OKAY',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
