import 'package:flutter/material.dart';

class Data extends StatefulWidget {
  const Data({Key key}) : super(key: key);

  @override
  _DataState createState() => _DataState();
}

class _DataState extends State<Data> {
int i=00;

  @override
  Widget build(BuildContext context) {
    dynamic Data = ModalRoute.of(context).settings.arguments as List;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white54,
        appBar: AppBar(
          title: Text("${Data[2]}",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
          ),
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
        ),
        body: Container(
          child: Column(
            children: [
              SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  Container(
                  height: 330,
                  width: 330,
                  child: Image.asset("${Data[0]}",
                    fit: BoxFit.cover,
                  ),
                ),
              ],
              ),

              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding:
                    const EdgeInsets.only(top: 8, left: 15),
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

                    const EdgeInsets.only(top: 8, right: 15),
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
              SizedBox(height: 25,),
              Container(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10,left: 20,right: 20,bottom: 10),
                  child: Text("${Data[3]}"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18),
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Text("Quantity",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15
                  ),),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: (){
                        setState(() {
                          i--;
                        });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 30,
                        width: 30,

                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white10,
                            border: Border.all(
                                color: Colors.blueAccent
                            )
                        ),

                        child: Icon(Icons.remove,color: Colors.blueAccent,),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 30,
                      child: Text("$i",style: TextStyle(
                          color: Colors.blueAccent
                      ),),
                    ),
                    InkWell(
                      onTap: (){
                        setState(() {
                          i++;
                        });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 30,
                        width: 30,

                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.blueAccent
                        ),
                        child: Icon(Icons.add,color: Colors.white,),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [

                      Padding(
                        padding:
                          const EdgeInsets.only(top: 8, left: 15),
                          child: Text("${Data[1]}",style: TextStyle(
                          fontSize: 21,color: Colors.blueAccent,
                          fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 8, right: 15),
                        child: Container(
                          alignment: Alignment.center,
                          height: 35,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(23),
                            color: Colors.blueAccent,
                          ),
                          child: Text("Add to cart",style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),),
                        ),
                      ),
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
}
