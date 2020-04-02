import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final pWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Widget'),
      ),
      body: Center(
        child: Card(
          elevation: 10,
          margin: EdgeInsets.all(20),
          child: ClipPath(
            clipper: ShapeBorderClipper(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            child: Container(
              width: double.infinity,
              height: 250,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(color: Colors.tealAccent, width: 3),
                  bottom: BorderSide(color: Colors.black12, width: 1),
                  right: BorderSide(color: Colors.black12, width: 1),
                  left: BorderSide(color: Colors.black12, width: 1),
                ),
              ),
              child: Column(
                children: <Widget>[
                  Expanded(
                    flex: 3,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 20,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Icon(Icons.airplanemode_active),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "treva.",
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text("127543319A83"),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(Icons.filter_none),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Stack(
                      children: <Widget>[
                        Container(
                          width: double.infinity,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(
                                  border: Border(
                                    top: BorderSide(
                                        width: 1, color: Colors.black38),
                                    right: BorderSide(
                                        width: 1, color: Colors.black38),
                                    bottom: BorderSide(
                                        width: 1, color: Colors.black38),
                                  ),
                                ),
                                width: pWidth * 0.44,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Text(
                                      "New York",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text("21A St-31"),
                                  ],
                                ),
                              ),
                              Container(
                                width: pWidth * 0.44,
                                decoration: BoxDecoration(
                                  border: Border(
                                    top: BorderSide(
                                        width: 1, color: Colors.black38),
                                    left: BorderSide(
                                        width: 1, color: Colors.black38),
                                    bottom: BorderSide(
                                        width: 1, color: Colors.black38),
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Text(
                                      "Riyadh",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text("21A St-31"),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: 30, vertical: 30),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              border:
                                  Border.all(width: 1, color: Colors.black38),
                            ),
                            child: Center(
                                child: Icon(
                              Icons.arrow_forward,
                              size: 20,
                              color: Colors.lightBlue,
                            )),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 20,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('30/03/2020'),
                          Text('1 day ago'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
