import 'package:demo/presentation/History/History.dart';
import 'package:demo/presentation/Screen/Add_Monay/AddMonay.dart';
import 'package:demo/screens/qr_info/qr_info.dart';
import 'package:demo/screens/splash_qr/splash_qr.dart';
import 'package:flutter/material.dart';
import 'package:demo/Shared/Style/icon_broken.dart';
import 'package:hexcolor/hexcolor.dart';

import '../resources/assets_manager.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, top: 60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    radius: 34,
                    backgroundImage: AssetImage(ImageAssets.onBoardingLogo12),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Good morning",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.w500)),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Abdelrahman Arafat",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Poppins'),
                        )
                      ],
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          IconBroken.Notification,
                          size: 30,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: IconButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const QrInfoView()));

                        },
                        icon: const Icon(
                          Icons.qr_code,
                          size: 30,
                          color: Colors.blueGrey,
                        )),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 30),
                child: SizedBox(
                  width: double.infinity,
                  height: 173,
                  child: Card(
                    color: HexColor('#FF7A00'),
                    child: Padding(
                      padding: const EdgeInsets.all(0),
                      child: Stack(alignment: Alignment.topRight, children: [
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Account Balance',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const SizedBox(
                                height: 2,
                              ),
                              Row(
                                children: const [
                                  Text(
                                    '9758.00',
                                    style: TextStyle(
                                        fontSize: 32,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'EGP',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                ],
                              ),
                              const Spacer(),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    const Text(
                                      'Add Money',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white),
                                    ),
                                    SizedBox(
                                        width: 25,
                                        height: 28,
                                        child: IconButton(
                                            onPressed: () {
                                              Navigator.push(context, MaterialPageRoute(builder: (context)=>const AddMonay()));
                                            },
                                            icon: const Icon(
                                              Icons.add,
                                              color: Colors.white,
                                            )))
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        const Positioned(
                         bottom: 70,
                          left: 279,
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 10,left: 10),
                            child: Image(
                                image: AssetImage(ImageAssets.onBoardingLogo66),
                                height: 85,
                                width: 85,
                                alignment: Alignment.topRight),
                          ),
                        ),
                      ]),

                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 30),
                child: SizedBox(
                  width: double.infinity,
                  height: 100,
                  child: Card(
                      color: HexColor('#FF7A00'),
                      child: Row(
                        children: [
                          Expanded(
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Icon(
                                  Icons.arrow_downward_sharp,
                                  color: Colors.white,
                                  size: 50,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Text(
                                        'Received',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white),
                                      ),

                                      Row(
                                          children: const [
                                            Text(
                                              '4 K',
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.white),
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              'EGP',
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.white),
                                            ),
                                          ],
                                        ),

                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 60,
                              width: 5,
                              color: Colors.white,
                            ),
                          ),
                          Expanded(
                            child: Row(

                              children: [
                                const Icon(
                                  Icons.arrow_upward_outlined,
                                  color: Colors.white,
                                  size: 50,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(0),
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Text(
                                        'send',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white),
                                      ),
                                      const SizedBox(
                                        height: 2,
                                      ),
                                      Row(
                                        children: const [
                                          Text(
                                            '1.5 K',
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            'EGP',
                                            style: TextStyle(
                                                fontSize: 11,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      )),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "services",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.orangeAccent, Colors.white],
                        end: Alignment.centerLeft,
                        begin: Alignment.centerRight),
                  ),
                  width: double.infinity,
                  height: 200,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SizedBox(
                                    height: 77,
                                    width: 77,
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      child: const Image(
                                          image: AssetImage(
                                              ImageAssets.onBoardingLogo77),
                                          width: 30,
                                          height: 30),
                                    )),
                              ),
                              const Text(
                                'Transfer',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w900,
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SizedBox(
                                    height: 77,
                                    width: 77,
                                    child: ElevatedButton(
                                        onPressed: () {},
                                        child: const Text(
                                          '\$',
                                          style: TextStyle(
                                              fontSize: 30,
                                              fontWeight: FontWeight.w800),
                                        ))),
                              ),
                              const Text(
                                'Withdraw',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w900),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SizedBox(
                                    height: 77,
                                    width: 77,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const History()));
                                      },
                                      child: const Image(
                                          image: AssetImage(
                                              ImageAssets.onBoardingLogo99),
                                          width: 30,
                                          height: 30),
                                    )),
                              ),
                              const Text(
                                'History',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w900,
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SizedBox(
                                    height: 77,
                                    width: 77,
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      child: const Image(
                                          image: AssetImage(
                                              ImageAssets.onBoardingLogo100),
                                          width: 30,
                                          height: 30),
                                    )),
                              ),
                              const Text(
                                ' expenses',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w900,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  const Text(
                    'Last Transaction',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          "See All",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        )),
                  )
                ],
              ),
              const Text(
                "Today",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        const CircleAvatar(
                          radius: 25,
                          backgroundImage:
                              AssetImage(ImageAssets.onBoardingLogo12),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: const [
                            Text(
                              "Ahmad",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Cairo",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        const Spacer(),
                        const Text(
                          "\$100",
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        const CircleAvatar(
                          radius: 25,
                          backgroundImage:
                              AssetImage(ImageAssets.onBoardingLogo12),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: const [
                            Text(
                              "Omar",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Cairo",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        const Spacer(),
                        const Text(
                          "-\$10",
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
