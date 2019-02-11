import 'package:flutter/material.dart';
import './second.dart';

class PlaceOrder extends StatefulWidget {
  final productDetailImage;
  final productDetailName;
  final productDetailCategory;
  final productDetailPrice;

  PlaceOrder({
    this.productDetailImage,
    this.productDetailName,
    this.productDetailCategory,
    this.productDetailPrice
  });

  @override
  _PlaceOrderState createState() => _PlaceOrderState();
}

class _PlaceOrderState extends State<PlaceOrder> {
  var quantity = 1;
  
  @override
  Widget build(BuildContext context) {
    var totalPrice = widget.productDetailPrice;
    return Scaffold(
      appBar: AppBar(
        title: Text('NASTA PLAZA'),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
            colors: [const Color(0xFF10A881),const Color(0x8010A881)]
          ),
          ),
        ),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Image.asset(widget.productDetailImage,), 
            Padding(           
            padding: EdgeInsets.only(left: 8,top: 5),
            child:Text(
              'Your choice: ${widget.productDetailName}',
              style: TextStyle(
                fontSize: 20.0,
                // fontWeight: FontWeight.bold
              ),
            )),
             Padding(           
            padding: EdgeInsets.only(left: 8,top: 15),
            child:Text(
              'Category:      ${widget.productDetailCategory}',
              style: TextStyle(
                fontSize: 20.0,
                // fontWeight: FontWeight.bold
              ),
            )),
            Padding(
              padding: EdgeInsets.only(left: 8,top: 15),
              child: Text(
                'Price:             ${widget.productDetailPrice}',
                style: TextStyle(
                  fontSize: 20.0
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8,top: 0),
              child: Row(
                children: <Widget>[
                  Text(
                    'Quantity:  ',
                    style: TextStyle(
                      fontSize: 20.0
                    ),
                  ),
                  
                  IconButton(
                    iconSize: 30,
                    icon: Icon(Icons.keyboard_arrow_left),
                    onPressed: (){
                      setState(() {
                        if(quantity == 1)
                        {
                          quantity = 1;
                        }
                       else{
                         quantity -= 1;
                       } 
                      });
                    },
                  ),
                  Text(
                      '$quantity',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  IconButton(
                    iconSize: 30,
                    icon: Icon(Icons.keyboard_arrow_right),
                    onPressed: (){
                      setState(() {
                        quantity += 1;
                        
                      });
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8,top: 0),
              child: Text(
                'Total Price:  ${totalPrice = totalPrice * quantity}',
                style: TextStyle(
                  fontSize: 20.0
                ),
              ),
            ),
            Container(
              child:Padding(
                padding: EdgeInsets.only(top: 10),
              child:Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      flex:6,
                      child:RaisedButton(
                      elevation: 6,
                      color: Colors.green,
                      // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      padding: EdgeInsets.only(top: 13,bottom: 13),
                      child: Text(
                        'Place Order',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                        ),
                      ),
                      onPressed: (){
                        setState(() {
                         quantity = totalPrice + quantity;
                        });
                      },
                    )),
                    Container(width: 1,),
                    Expanded(
                      flex:4,
                      child:OutlineButton(
                      borderSide: BorderSide(
                        color: Colors.orange,width: 2
                      ),
                      // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      padding: EdgeInsets.only(top: 13,bottom: 13),
                      child: Text(
                        'Add Cart',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                        ),
                      ),
                      onPressed: (){},
                    )),
                ],
              ),
            )))
          ],
        )
      ),
    );
  }
}