// ignore_for_file: sort_child_properties_last
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int couter = 0;
  int couterAsosiy = 0;
  int zikrcounter = 0;

  List<Widget> contenerList1 = [];
  List<Widget> contenerList2 = [];
  List<Widget> contenerList3 = [];
  List<String> zikr = [ 'Subhan-\nAlloh','Alhamdu-\nli-lloh', 'Allohu-\nAkbar'];

  void nullBoottom() {
    couter = 0;
    couterAsosiy = 0;
    zikrcounter = 0;
    contenerList1.clear();
    contenerList2.clear();
    contenerList3.clear();
    setState(() {});
  }

  void increment() {
    couter++;
    couterAsosiy++;

    if (couter == 34) {
      couter = 1;
      zikrcounter++;

      if (zikrcounter > 2) {
        zikrcounter = 0;
      }
      contenerList1.clear();
      contenerList2.clear();
      contenerList3.clear();
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        decoration:const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/img2.png'),
            fit: BoxFit.cover,
          ),
        ),
        child:SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: contenerList1,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: contenerList2,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: contenerList3,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    height: 60,
                    width: 90,
                    child: Text('${zikr[zikrcounter]} '),
                    decoration: BoxDecoration(
                      
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black),
                      color: Colors.amber,
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      increment();
                      if (couter > 0 && couter <= 11) {
                        contenerList1.add(
                          Container(
                            margin: const EdgeInsets.all(5),
                            alignment: Alignment.center,
                            height: 50,
                            width: 50,
                            child: Text(
                              '$couter',
                              style: const TextStyle(fontSize: 30),
                            ),
                            decoration: BoxDecoration(
                              color: Colors.amber,

                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.black,
                                width: 2,
                                strokeAlign: BorderSide.strokeAlignCenter,
                                style: BorderStyle.solid,
                              ),
                            ),
                          ),
                        );
                      } else if (couter >= 12 && couter <= 22) {
                        contenerList2.add(
                          Container(
                            margin: const EdgeInsets.all(5),
                            alignment: Alignment.center,
                            height: 50,
                            width: 50,
                            child: Text(
                              '$couter',
                              style: const TextStyle(fontSize: 30),
                            ),
                            decoration: BoxDecoration(
                              color: Colors.amber,

                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.black,
                                width: 2,
                                strokeAlign: BorderSide.strokeAlignCenter,
                                style: BorderStyle.solid,
                              ),
                            ),
                          ),
                        );
                      } else if (couter >= 23 && couter <= 33) {
                        contenerList3.add(
                          Container(
                            margin: const EdgeInsets.all(5),
                            alignment: Alignment.center,
                            height: 50,
                            width: 50,
                            child: Text(
                              '$couter',
                              style: const TextStyle(fontSize: 30),
                            ),
                            decoration: BoxDecoration(
                              color: Colors.amber,
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.black,
                                width: 2,
                                strokeAlign: BorderSide.strokeAlignCenter,
                                style: BorderStyle.solid,
                              ),
                            ),
                          ),
                        );
                      }
                    },
                    child: Text(
                      couterAsosiy.toString(),
                      style: const TextStyle(fontSize: 52, shadows: [
                        Shadow(
                          blurRadius: 50,
                        )
                      ]),
                    ),
                    color: Colors.blueAccent,
                    height: 110,
                    minWidth: 200,
                    shape: const CircleBorder(
                        side: BorderSide(width: 2, color: Colors.black)),
                    elevation: 20,
                  ),
                  MaterialButton(
                    onPressed: () {
                      nullBoottom();
                    },
                    color: Colors.redAccent,
                    shape: const StadiumBorder(),
                    child: const Icon(
                      Icons.restart_alt,
                    ),
                    elevation: 20,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      ),
      
    );
  }
}
