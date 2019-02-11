import 'package:flutter/material.dart';
import './fourth.dart';

class Fifth extends StatefulWidget {

  final name;
  final number;

  Fifth({
    this.name,
    this.number
  });

  @override
  _FifthState createState() => _FifthState();
}

class _FifthState extends State<Fifth> {

  var a = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SETTINGS'),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
            colors: [const Color(0xFF10A881),const Color(0x8010A881)]
          ),
          ),
        ),
      ),
      body: Container(
        color: Colors.grey[200],
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 10.0),
              child:Card(
                child: ListTile(
                  // leading: Text('USER NAME'),
                  title: Text(
                      "${widget.name}",
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  subtitle: Text(
                    '${widget.number}',
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    trailing: Icon(Icons.keyboard_arrow_right,),
                    onTap: (){
                      Navigator.pushNamed(context, '/useraccount');
                    },
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.0),
              child:Card(
                child: ListTile(
                  // leading: Text('USER NAME'),
                  title: Text(
                      a,
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  subtitle: Text(
                    '88646864646464',
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  
}

class UserAccount extends StatefulWidget {
  @override
  _UserAccountState createState() => _UserAccountState();
}

class _UserAccountState extends State<UserAccount> {

  var b = '';


  TextEditingController _nameController = TextEditingController();
  TextEditingController _addressController = TextEditingController();
  TextEditingController _numberController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _addressController.dispose();
    _numberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MY ACCOUNT'),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
            colors: [const Color(0xFF10A881),const Color(0x8010A881)]
            ),
          ),
        ),
      ),
      body: Form(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: ListView(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 2,bottom: 15),
                child: TextField(
                  controller: _nameController,
                  keyboardType: TextInputType.text,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                    // height: 2.0
                  ),
                  decoration: InputDecoration(
                    labelText: 'NAME',
                    hintText: 'Enter Your Name',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      
                    ),
                    labelStyle: TextStyle(
                      decorationStyle: TextDecorationStyle.solid,
                    )
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 2,bottom: 15),
                child: TextField(
                  controller: _addressController,
                  keyboardType: TextInputType.text,
                  maxLines: 10,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    labelText: 'ADDRESS',
                    hintText: 'Enter Your Address',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0)
                    ),
                    labelStyle: TextStyle(
                      decorationStyle: TextDecorationStyle.solid,
                    )
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 2,bottom: 15),
                child: TextField(
                  controller: _numberController,
                  keyboardType: TextInputType.number,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                    // height: 2.0
                  ),
                  decoration: InputDecoration(
                    labelText: 'MOBILE NUMBER',
                    hintText: 'Enter Your Mobile Number',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      
                    ),
                    labelStyle: TextStyle(
                      decorationStyle: TextDecorationStyle.solid,
                    )
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 90),
                child: InkWell(
                  onTap: (){
                    Navigator.pushReplacement(context, 
                    MaterialPageRoute(builder: (context)=>Fifth(name: _nameController.text, number: _numberController.text,)));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      gradient: LinearGradient(
                        colors: [const Color(0xFF10A881),const Color(0x8010A881)]
                      )
                    ),
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Edit Details',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white                        
                      ),
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