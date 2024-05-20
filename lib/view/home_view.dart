import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  //static String idScreen = "home";

  @override
  State<HomeView> createState() => _HomeScreenState();
}

// final FireStoreService fs = FireStoreService();
// final TextEditingController txc = TextEditingController();

class _HomeScreenState extends State<HomeView> {
  // void openNoteBox(String? docId) {
  //   showDialog(
  //     context: context,
  //     builder: (context) => AlertDialog(
  //       content: TextField(
  //         controller: txc,
  //       ),
  //       actions: [
  //         ElevatedButton(
  //           onPressed: () {
  //             if (docId == null) {
  //               fs.addNote(txc.text);
  //             } else {
  //               fs.updateNode(docId, txc.text);
  //             }
  //             txc.clear();
  //             Navigator.pop(context);
  //           },
  //           child: const Text("Add"),
  //         )
  //       ],
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        verticalDirection: VerticalDirection.up,
        children: [
          Container(
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.only(left: 20, top: 30),
            child: InkWell(
              onTap: () {},
              child: const Icon(
                Icons.arrow_back,
                color: Color.fromARGB(255, 252, 249, 249),
              ),
            ),
          ),
          // Container(
          //   alignment: Alignment.topLeft,
          //   margin: const EdgeInsets.only(left: 20, top: 20),
          //   child: const Text(
          //     "Purchase Bottles",
          //     style: TextStyle(
          //         fontSize: 20,
          //         fontWeight: FontWeight.bold,
          //         color: Colors.white),
          //   ),
          // ),
          // listMenu(),
          // Container(
          //   alignment: Alignment.topLeft,
          //   margin: const EdgeInsets.only(left: 20),
          //   child: const Text(
          //     "Recommended Products",
          //     style: TextStyle(
          //         fontSize: 25,
          //         fontWeight: FontWeight.bold,
          //         color: Colors.white38),
          //   ),
          // ),
          const SizedBox(height: 20),
          secondDemo(),
          promo(),
          demo()
        ],
      ),
    );
  }

  Container promo() {
    return Container(
      alignment: Alignment.bottomLeft,
      margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
      height: 75,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Center(
            child: Card(
              child: SizedBox(
                width: 300,
                child: ListTile(
                  onTap: () {},
                  leading: const CircleAvatar(
                    backgroundColor: Color.fromARGB(154, 70, 37, 6),
                    child: Icon(
                      Icons.percent,
                    ),
                  ),
                  title: const Text(
                    "25% off on first purchase",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: const Text("use coupon code 'sment'"),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Container demo() {
    return Container(
      alignment: Alignment.bottomLeft,
      margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
      height: 350,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 7,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {},
            child: Container(
              margin: const EdgeInsets.only(right: 10.0),
              child: Card(
                shadowColor: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: SizedBox(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: DecoratedBox(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        verticalDirection: VerticalDirection.down,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(right: 90, bottom: 10),
                            child: Text(
                              "Molding Machine",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(20, 0, 0, 20),
                            child: Row(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(right: 5),
                                  child: const Icon(
                                    Icons.safety_check,
                                    color: Color.fromARGB(255, 58, 31, 31),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(right: 100),
                                  child: const Text(
                                    "Dhaka, Bangladesh",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                                Container(
                                    margin: const EdgeInsets.only(
                                      right: 5,
                                    ),
                                    child: const Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                    )),
                                Container(
                                  margin: const EdgeInsets.only(right: 10),
                                  child: const Text(
                                    "4.7",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      position: DecorationPosition.background,
                      decoration: const BoxDecoration(
                        color: Colors.transparent,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("images/machine_07.jpg"),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Container secondDemo() {
    return Container(
      alignment: Alignment.bottomLeft,
      margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
      height: 350,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 7,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {},
            child: Container(
              margin: const EdgeInsets.only(right: 10.0),
              child: Card(
                shadowColor: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: SizedBox(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: DecoratedBox(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        verticalDirection: VerticalDirection.down,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(right: 90, bottom: 10),
                            child: Text(
                              "Injection Maker",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(20, 0, 0, 20),
                            child: Row(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(right: 5),
                                  child: const Icon(
                                    Icons.safety_check,
                                    color: Color.fromARGB(255, 58, 31, 31),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(right: 100),
                                  child: const Text(
                                    "Dhaka, Bangladesh",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                                Container(
                                    margin: const EdgeInsets.only(
                                      right: 5,
                                    ),
                                    child: const Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                    )),
                                Container(
                                  margin: const EdgeInsets.only(right: 10),
                                  child: const Text(
                                    "4.7",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      position: DecorationPosition.background,
                      decoration: const BoxDecoration(
                        color: Colors.transparent,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("images/machine_06.jpg"),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  // Container listMenu() {
  //   return Container(
  //     margin: const EdgeInsets.only(left: 35, right: 35, top: 20, bottom: 20),
  //     child: Row(
  //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //       children: [
  //         InkWell(
  //           onTap: () {
  //             //openNoteBox(null);
  //           },
  //           child: const Column(
  //             children: [
  //               CircleAvatar(
  //                 radius: 30,
  //                 backgroundColor: Color.fromARGB(255, 222, 150, 236),
  //                 child: Icon(
  //                   Icons.add,
  //                   color: Colors.white,
  //                 ),
  //               ),
  //               SizedBox(height: 5),
  //               Text(
  //                 "Add bottles",
  //                 style: TextStyle(
  //                   fontWeight: FontWeight.bold,
  //                   fontSize: 12,
  //                   color: Color.fromARGB(137, 236, 108, 108),
  //                 ),
  //               ),
  //             ],
  //           ),
  //         ),
  //         InkWell(
  //           onTap: () {
  //            // Navigator.of(context).pushNamed("/products");
  //           },
  //           child: const Column(
  //             children: [
  //               CircleAvatar(
  //                 radius: 30,
  //                 backgroundColor: Color.fromARGB(255, 222, 150, 236),
  //                 child: Icon(
  //                   Icons.production_quantity_limits,
  //                   color: Colors.white,
  //                 ),
  //               ),
  //               SizedBox(height: 5),
  //               Text(
  //                 "Products",
  //                 style: TextStyle(
  //                   fontWeight: FontWeight.bold,
  //                   fontSize: 12,
  //                   color: Color.fromARGB(137, 236, 108, 108),
  //                 ),
  //               ),
  //             ],
  //           ),
  //         ),
  //         InkWell(
  //           onTap: () {},
  //           child: const Column(
  //             children: [
  //               CircleAvatar(
  //                 radius: 30,
  //                 backgroundColor: Color.fromARGB(255, 222, 150, 236),
  //                 child: Icon(
  //                   Icons.playlist_add_circle,
  //                   color: Colors.white,
  //                 ),
  //               ),
  //               SizedBox(height: 5),
  //               Text(
  //                 "",
  //                 style: TextStyle(
  //                   fontWeight: FontWeight.bold,
  //                   fontSize: 12,
  //                   color: Color.fromARGB(137, 236, 108, 108),
  //                 ),
  //               ),
  //             ],
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }

  // BottomNavigationBar bottomNavigation() {
  //   return BottomNavigationBar(
  //     items: const <BottomNavigationBarItem>[
  //       BottomNavigationBarItem(
  //         icon: Icon(
  //           Icons.home,
  //           color: Colors.black,
  //         ),
  //         label: "",
  //       ),
  //       BottomNavigationBarItem(
  //         icon: Icon(
  //           Icons.phone,
  //           color: Colors.black,
  //         ),
  //         label: "",
  //       ),
  //       BottomNavigationBarItem(
  //         icon: Icon(
  //           Icons.mail,
  //           color: Colors.black,
  //         ),
  //         label: "",
  //       ),
  //       BottomNavigationBarItem(
  //         icon: Icon(
  //           Icons.person,
  //           color: Colors.black,
  //         ),
  //         label: "",
  //       ),
  //     ],
  //   );
  // }
}
