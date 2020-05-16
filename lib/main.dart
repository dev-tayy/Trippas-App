import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:getflutter/getflutter.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.blue, //or set color with: Color(0xFF0000FF)
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Trippas',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          appBarTheme: AppBarTheme(
            color: Colors.white,
            elevation: 0,
            iconTheme: IconThemeData(
              color: Colors.black,
            ),
          )),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (BuildContext context, int index) => (SafeArea()),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => AddTrip()));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class SafeArea extends StatefulWidget {
  SafeArea({Key key}) : super(key: key);

  @override
  _SafeAreaState createState() => _SafeAreaState();
}

class Constants {
  const Constants({this.constantsname});

  final Text constantsname;
}

const List<Constants> constants = <Constants>[
  const Constants(constantsname: Text('Update')),
  const Constants(constantsname: Text('Delete')),
];

class _SafeAreaState extends State<SafeArea> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                'Hello, Arthor',
                style: GoogleFonts.nunito(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                  ),
                ),
              ),
              Expanded(child: SizedBox()),
              GFButton(
                onPressed: () {
                  print('I LOVE FLUTTER');
                },
                shape: GFButtonShape.pills,
                size: GFSize.MEDIUM,
                color: GFColors.PRIMARY,
                child: Text(
                  '20 trips',
                  style: GoogleFonts.nunito(
                      textStyle: TextStyle(color: Colors.white, fontSize: 17)),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                child: Text('Create your\ntrips with us',
                    overflow: TextOverflow.clip,
                    style: GoogleFonts.nunito(
                      textStyle: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w800,
                        fontSize: 40,
                        letterSpacing: -0.24,
                      ),
                    )),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Card(
            elevation: 20,
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Column(
                    children: <Widget>[
                      const ListTile(
                        title: Text(
                          'Lagos',
                          style: TextStyle(
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            letterSpacing: -0.24,
                            height: 2,
                          ),
                        ),
                        subtitle: Text(
                          'Mon, 23 2020\n12:24pm',
                          style: TextStyle(height: 1.5),
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(16, 16, 0, 16),
                            child: Container(
                              padding: EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(3.0)),
                              child: Text('Business',
                                  style: TextStyle(
                                    color: Colors.white,
                                  )),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: <Widget>[
                      Transform.rotate(
                        angle: pi / 2,
                        child: Icon(
                          Icons.airplanemode_active,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: const ListTile(
                          title: Text(
                            'London',
                            style: TextStyle(
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                              letterSpacing: -0.24,
                              height: 2,
                            ),
                          ),
                          subtitle: Text('Mon, 24 2020\n1:24pm',
                              style: TextStyle(height: 1.5)),
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(90, 0, 0, 0),
                            child: PopupMenuButton(
                              itemBuilder: (BuildContext context) {
                                return constants.map((Constants constants) {
                                  return PopupMenuItem(
                                    value: null,
                                    child: ListTile(
                                      title: constants.constantsname,
                                    ),
                                  );
                                }).toList();
                              },
                              elevation: 1.0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Card(
            elevation: 20,
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Column(
                    children: <Widget>[
                      const ListTile(
                        title: Text(
                          'Kenya',
                          style: TextStyle(
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            letterSpacing: -0.24,
                            height: 2,
                          ),
                        ),
                        subtitle: Text(
                          'Mon, 23 2020\n12:24pm',
                          style: TextStyle(height: 1.5),
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(16, 16, 0, 16),
                            child: Container(
                              padding: EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.circular(3.0)),
                              child: Text('Vacation',
                                  style: TextStyle(
                                    color: Colors.white,
                                  )),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: <Widget>[
                      Transform.rotate(
                        angle: pi / 2,
                        child: Icon(
                          Icons.airplanemode_active,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: const ListTile(
                          title: Text(
                            'Rwanda',
                            style: TextStyle(
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                              letterSpacing: -0.24,
                              height: 2,
                            ),
                          ),
                          subtitle: Text('Mon, 24 2020\n1:24pm',
                              style: TextStyle(height: 1.5)),
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(90, 0, 0, 0),
                            child: PopupMenuButton(
                              itemBuilder: (BuildContext context) {
                                return constants.map((Constants constants) {
                                  return PopupMenuItem(
                                    value: null,
                                    child: ListTile(
                                      title: constants.constantsname,
                                    ),
                                  );
                                }).toList();
                              },
                              elevation: 1.0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Card(
            elevation: 20,
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Column(
                    children: <Widget>[
                      const ListTile(
                        title: Text(
                          'Angola',
                          style: TextStyle(
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            letterSpacing: -0.24,
                            height: 2,
                          ),
                        ),
                        subtitle: Text(
                          'Mon, 23 2020\n12:24pm',
                          style: TextStyle(height: 1.5),
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(16, 16, 0, 16),
                            child: Container(
                              padding: EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                  color: Colors.pink,
                                  borderRadius: BorderRadius.circular(3.0)),
                              child: Text('Education',
                                  style: TextStyle(
                                    color: Colors.white,
                                  )),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: <Widget>[
                      Transform.rotate(
                        angle: pi / 2,
                        child: Icon(
                          Icons.airplanemode_active,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: const ListTile(
                          title: Text(
                            'Kampala',
                            style: TextStyle(
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                              letterSpacing: -0.24,
                              height: 2,
                            ),
                          ),
                          subtitle: Text('Mon, 24 2020\n1:24pm',
                              style: TextStyle(height: 1.5)),
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(90, 0, 0, 0),
                            child: PopupMenuButton(
                              itemBuilder: (BuildContext context) {
                                return constants.map((Constants constants) {
                                  return PopupMenuItem(
                                    value: null,
                                    child: ListTile(
                                      title: constants.constantsname,
                                    ),
                                  );
                                }).toList();
                              },
                              elevation: 1.0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Card(
            elevation: 20,
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Column(
                    children: <Widget>[
                      const ListTile(
                        title: Text(
                          'Abuja',
                          style: TextStyle(
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            letterSpacing: -0.24,
                            height: 2,
                          ),
                        ),
                        subtitle: Text(
                          'Mon, 23 2020\n12:24pm',
                          style: TextStyle(height: 1.5),
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(16, 16, 0, 16),
                            child: Container(
                              padding: EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                  color: Colors.teal,
                                  borderRadius: BorderRadius.circular(3.0)),
                              child: Text('Baecation',
                                  style: TextStyle(
                                    color: Colors.white,
                                  )),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: <Widget>[
                      Transform.rotate(
                        angle: pi / 2,
                        child: Icon(
                          Icons.airplanemode_active,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: const ListTile(
                          title: Text(
                            'Santorini',
                            style: TextStyle(
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                              letterSpacing: -0.24,
                              height: 2,
                            ),
                          ),
                          subtitle: Text('Mon, 24 2020\n1:24pm',
                              style: TextStyle(height: 1.5)),
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(90, 0, 0, 0),
                            child: PopupMenuButton(
                              itemBuilder: (BuildContext context) {
                                return constants.map((Constants constants) {
                                  return PopupMenuItem(
                                    value: null,
                                    child: ListTile(
                                      title: constants.constantsname,
                                    ),
                                  );
                                }).toList();
                              },
                              elevation: 1.0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Card(
            elevation: 20,
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Column(
                    children: <Widget>[
                      const ListTile(
                        title: Text(
                          'Abuja',
                          style: TextStyle(
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            letterSpacing: -0.24,
                            height: 2,
                          ),
                        ),
                        subtitle: Text(
                          'Mon, 23 2020\n12:24pm',
                          style: TextStyle(height: 1.5),
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(16, 16, 0, 16),
                            child: Container(
                              padding: EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                  color: Colors.teal,
                                  borderRadius: BorderRadius.circular(3.0)),
                              child: Text('Baecation',
                                  style: TextStyle(
                                    color: Colors.white,
                                  )),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: <Widget>[
                      Transform.rotate(
                        angle: pi / 2,
                        child: Icon(
                          Icons.airplanemode_active,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: const ListTile(
                          title: Text(
                            'Santorini',
                            style: TextStyle(
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                              letterSpacing: -0.24,
                              height: 2,
                            ),
                          ),
                          subtitle: Text('Mon, 24 2020\n1:24pm',
                              style: TextStyle(height: 1.5)),
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(90, 0, 0, 0),
                            child: PopupMenuButton(
                              itemBuilder: (BuildContext context) {
                                return constants.map((Constants constants) {
                                  return PopupMenuItem(
                                    value: null,
                                    child: ListTile(
                                      title: constants.constantsname,
                                    ),
                                  );
                                }).toList();
                              },
                              elevation: 1.0,
                            ),
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
      ),
    );
  }
}

class AddTrip extends StatelessWidget {
  const AddTrip({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Create a trip',
            style: GoogleFonts.nunito(
              textStyle: TextStyle(
                fontWeight: FontWeight.w700,
                color: Colors.black,
                fontSize: 25,
              ),
            ),
          ),
        ),
        body: AddTripForm());
  }
}

class AddTripForm extends StatefulWidget {
  AddTripForm({Key key}) : super(key: key);

  @override
  _AddTripFormState createState() => _AddTripFormState();
}

class _AddTripFormState extends State<AddTripForm> {
  String _value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Flexible(
                child: TextFormField(
                  textCapitalization: TextCapitalization.sentences,
                  style: GoogleFonts.nunito(
                    textStyle: TextStyle(
                      fontSize: 20,
                      letterSpacing: 0.5,
                      height: 2.0,
                    ),
                  ),
                  decoration: InputDecoration(
                    hintText: 'Enter Departure',
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Flexible(
                child: TextFormField(
                  style: GoogleFonts.nunito(
                    textStyle: TextStyle(
                      fontSize: 20,
                      letterSpacing: 0.5,
                      height: 2.0,
                    ),
                  ),
                  decoration: InputDecoration(
                    hintText: 'Enter Date',
                  ),
                ),
              ),
              SizedBox(width: 50),
              Flexible(
                child: TextFormField(
                  style: GoogleFonts.nunito(
                    textStyle: TextStyle(
                      fontSize: 20,
                      letterSpacing: 0.5,
                      height: 2.0,
                    ),
                  ),
                  decoration: InputDecoration(
                    hintText: 'Enter Time',
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: TextFormField(
                  textCapitalization: TextCapitalization.sentences,
                  style: GoogleFonts.nunito(
                    textStyle: TextStyle(
                      fontSize: 20,
                      letterSpacing: 0.5,
                      height: 2.0,
                    ),
                  ),
                  decoration: InputDecoration(
                    hintText: 'Enter Destination',
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Flexible(
                child: TextFormField(
                  style: GoogleFonts.nunito(
                    textStyle: TextStyle(
                      fontSize: 20,
                      letterSpacing: 0.5,
                      height: 2.0,
                    ),
                  ),
                  decoration: InputDecoration(
                    hintText: 'Enter Date',
                  ),
                ),
              ),
              SizedBox(width: 50),
              Flexible(
                child: TextFormField(
                  style: GoogleFonts.nunito(
                    textStyle: TextStyle(
                      fontSize: 20,
                      letterSpacing: 0.5,
                      height: 2.0,
                    ),
                  ),
                  decoration: InputDecoration(
                    hintText: 'Enter Time',
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: DropdownButton<String>(
                  elevation: 2,
                  items: [
                    DropdownMenuItem<String>(
                      child: Text(
                        'Business',
                        style: GoogleFonts.nunito(
                          fontSize: 20,
                          letterSpacing: 0.5,
                          height: 2.0,
                        ),
                      ),
                      value: 'one',
                    ),
                    DropdownMenuItem<String>(
                      child: Text(
                        'Vacation',
                        style: GoogleFonts.nunito(
                          fontSize: 20,
                          letterSpacing: 0.5,
                          height: 2.0,
                        ),
                      ),
                      value: 'two',
                    ),
                    DropdownMenuItem<String>(
                      child: Text(
                        'Baecation',
                        style: GoogleFonts.nunito(
                          fontSize: 20,
                          letterSpacing: 0.5,
                          height: 2.0,
                        ),
                      ),
                      value: 'three',
                    ),
                  ],
                  onChanged: (String value) {
                    setState(() {
                      _value = value;
                    });
                  },
                  hint: Text(
                    'Trip Type',
                    style: GoogleFonts.nunito(
                      fontSize: 20,
                      letterSpacing: 0.5,
                      height: 2.0,
                    ),
                  ),
                  value: _value,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            children: <Widget>[
              Expanded(
                child: RaisedButton(
                  padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                  onPressed: () {},
                  child: Text(
                    'Add Trip',
                    style: GoogleFonts.nunito(
                      textStyle: TextStyle(
                        fontSize: 20,
                        letterSpacing: 0.5,
                        height: 2.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  color: Colors.blue,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
