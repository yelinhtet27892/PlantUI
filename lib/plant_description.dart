import 'package:flutter/material.dart';

class PlantDescription extends StatefulWidget {
  PlantDescription({
    required this.text1,
    required this.text2,
    required this.text3,
    required this.img,
  });

  final String text1;

  final String text2;

  final String text3;

  final String img;

  @override
  State<PlantDescription> createState() => _PlantDescriptionState();
}

class _PlantDescriptionState extends State<PlantDescription>
    with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    right: 15.0,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 35,
                        ),
                        child: IconButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            icon: Icon(Icons.keyboard_backspace)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 40,
                          bottom: 40,
                          left: 15.0,
                        ),
                        child: Card(
                            elevation: 20,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            child: IconButton(
                                onPressed: () {},
                                color: Colors.green,
                                highlightColor: Colors.white,
                                iconSize: 40,
                                icon: Icon(Icons.light_mode_outlined))),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          bottom: 40,
                          left: 15.0,
                        ),
                        child: Card(
                            elevation: 20,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            child: IconButton(
                                onPressed: () {},
                                color: Colors.green,
                                highlightColor: Colors.white,
                                iconSize: 40,
                                icon: Icon(Icons.water_drop_outlined))),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          bottom: 40,
                          left: 15.0,
                        ),
                        child: Card(
                            elevation: 20,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            child: IconButton(
                                onPressed: () {},
                                color: Colors.green,
                                highlightColor: Colors.white,
                                iconSize: 40,
                                icon: Icon(Icons.thermostat))),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          bottom: 40,
                          left: 15.0,
                        ),
                        child: Card(
                            elevation: 20,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            child: IconButton(
                                onPressed: () {},
                                color: Colors.green,
                                highlightColor: Colors.white,
                                iconSize: 40,
                                icon: Icon(Icons.wind_power_outlined))),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        bottomLeft: Radius.circular(50)),
                    child: Image.asset(
                      widget.img,
                      height: 550,
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40, right: 20, left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.text1,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    widget.text2,
                    style: TextStyle(fontSize: 20, color: Colors.green),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Row(
                children: [
                  Text(
                    widget.text3,
                    style: TextStyle(fontSize: 25, color: Colors.green),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: SizedBox(
            height: 70,
            child: TabBar(
              indicator: BoxDecoration(
                color: Colors.blue,
              ),
              tabs: [
                Tab(
                  child: Text(
                    "Buy Now",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ),
                Tab(
                  child: Text(
                    "Description",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                )
              ],
              controller: controller,
            ),
          ),
        ),
      ),
    );
  }
}
