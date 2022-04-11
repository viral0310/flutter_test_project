import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List i1 = [
    "assets/blutud.jpeg",
    "assets/what.jpeg",
    "assets/blu.png",
    "assets/hen.png",
    "pho.jpeg",
    "noki.jpeg"
  ];

  List dis1 = ["AirPods are wireless Bluetooth earbuds designed by Apple Inc. They were first announced on September 7, 2016 alongside the iPhone 7. Within two years, they became Apple's most popular accessory. They are Apple's entry-level wireless headphones, sold alongside the AirPods Pro and AirPods Max.",
    "Apple Watch is a wearable smartwatch that allows users to accomplish a variety of tasks, including making phone calls, sending text messages and reading email. ... In addition to using a Bluetooth connection, the watch can also connect with an iPhone if it is on the same Wi-Fi network.",
    "Bluetooth is a wireless communication technology that can be used for close-range data transmission from one digital device to another. Bluetooth is essentially a one-to-one wireless connection that uses 2.4 GHz-band radio waves. ... When connecting Bluetooth devices for the first time, registration is required.",
    "earphone, small loudspeaker held or worn close to the listener's ear or within the outer ear. Common forms include the hand-held telephone receiver; the headphone, in which one or two earphones are held in place by a band worn over the head; and the plug earphone, which is inserted in the outer opening of the ear.",
    "Oppo Mobile Price List 2022 PPO is one of those few brands that took the offline market with a storm when it entered the Indian market. OPPO understood that the heart of the Indian smartphone industry lies in the offline segment. The company has introduced numerous smartphones that only looked stylish, but packed some top-of-the-line features. There is a long list of OPPO smartphones at different price points. The OPPO A-series and OPPO K-series mobiles are meant for the budget-segment and deliver some good smartphones with competitive specifications. The OPPO F-series is synonymous with high-quality selfie cameras along with some premium design language. We then have the Reno series that focuses on the mid-range segment. Lastly, comes the Find series that gives stiff competition to the likes of Samsung and Apple in the premium segment. The series is the pinnacle of the latest and greatest technologies from OPPO. So, if you are looking for an OPPO smartphone then this is the right place for you. The OPPO mobile price list provides you with all the information you need on its range of smartphones. The OPPO phone price list also informs you about the lowest prices available.",
    "The Nokia 105 comes with a 1.8 inches display for clear and vibrant visual experience on your phone. The phone comes in three color variants and has a compact size. It has a single SIM card setup.",
  ];
  List r1 = ["Rs-1590/-", "Rs-4590/-", "Rs-3890/-", "Rs-999/-","Rs-15999/-","Rs-2500/-"];
  List n1 = ["Airpods", "Apple Whtch", "Bluetooth", "Earphone","Oppo mobile","Nokia mobile "];
  List D1 = [];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          leading: Icon(Icons.home),
          title: Text(
            "Explore Product",
            style: TextStyle(
              fontSize: 25,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.black,
        ),
        body: Stack(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(top: 15, left: 15, right: 10),
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Center(
                          child: Row(
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.search,
                                color: Colors.black54,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Apple Product",
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w700,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15, left: 10, right: 15),
                      height: 50,
                      width: 65,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Icon(
                        Icons.camera_alt_outlined,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15, right: 35),
                        child: Text(
                          "Cards",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Text(
                        "List",
                        style: TextStyle(
                          color: Colors.white54,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              height: double.infinity,
              width: double.infinity,
              margin: EdgeInsets.only(top: 120),
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemCount: i1.length,
                  itemBuilder: (context, index)

                  {
                    return InkWell(
                      onTap: () {
                        setState(() {
                          D1.clear();
                          D1.add(i1[index]);
                          D1.add(r1[index]);
                          D1.add(n1[index]);
                          D1.add(dis1[index]);
                          Navigator.pushNamed(context, '/Data',arguments: D1);
                        });
                      },
                      child: Container(
                        height: 900,
                        width: 250,
                        margin: EdgeInsets.all(10),
                        color: Colors.white,
                        child: Center(
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(top: 8, left: 8),
                                    child: Container(
                                      height: 45,
                                      width: 45,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(30),
                                          color: Colors.blue.shade100),
                                      child: Icon(
                                        Icons.favorite,
                                        color: Colors.blue,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(top: 8, right: 8),
                                    child: Container(
                                      height: 45,
                                      width: 45,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(30),
                                          color: Colors.blueAccent),
                                      child: Icon(
                                        Icons.shopping_cart_outlined,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Container(

                                    child: Image.asset(i1[index]),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 20,bottom: 20,),
                                child: Text(r1[index],style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [

                                  Padding(
                                    padding: const EdgeInsets.only(left: 20,),
                                    child: Container(

                                      child: Text(n1[index],style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blueAccent,
                                      ),),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children:[
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15,top: 2),
                                    child: Container(
                                    height: 28,
                                    width: 90,
                                    child: Image.asset("assets/star.jpeg",
                                    fit: BoxFit.cover,
                                    ),
                                ),
                                  ),
                          ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20,top: 30,),
                                    child: Container(
                                      child: Text("See the derails >",style: TextStyle(
                                        fontSize: 10,

                                        color: Colors.blueAccent,
                                      ),),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
