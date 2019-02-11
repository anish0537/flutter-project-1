import 'package:flutter/material.dart';
// import './second.dart';
import './third.dart';
import './fourth.dart';
import './fifth.dart';
import './placeorder.dart';

class Second extends StatefulWidget {

  @override
  _SecondState createState() => _SecondState();
}

class _SecondState extends State<Second> {


//created a list of items
var prd_list = [
  {
    'foodimg':'images/chicken.jpg',
    'foodname':'Spicy Grilled Chicken',
    'foodcategory':'Non-veg',
    'price':600,
  },
  {
    'foodimg':'images/pizza.jpg',
    'foodname':'Paneer pan pizza',
    'foodcategory':'Veg',
    'price':400
  },{
    'foodimg':'images/hamburger.jpg',
    'foodname':'Veg Hamburger',
    'foodcategory':'Veg',
    'price':100
  },{
    'foodimg':'images/kebab.jpg',
    'foodname':'Grilled kabaab with vegies',
    'foodcategory':'Non-veg',
    'price':500
  }
];

var breakfast_list = [
  {
    'foodimg':'images/chicken.jpg',
    'foodname':'Spicy Grilled Chicken',
    'foodcategory':'veg',
    'price':700
  },
  {
    'foodimg':'images/pizza.jpg',
    'foodname':'Paneer pan pizza',
    'foodcategory':'veg',
    'price':300
  },{
    'foodimg':'images/hamburger.jpg',
    'foodname':'Veg Hamburger',
    'foodcategory':'veg',
    'price':300
  },{
    'foodimg':'images/kebab.jpg',
    'foodname':'Grilled kabaab with vegies',
    'foodcategory':'veg',
    'price':700
  }
];

var veg_list = [
  {
    'foodimg':'images/chicken.jpg',
    'foodname':'Spicy Grilled Chicken',
    'foodcategory':'Veg',
    'price':200
  },
  {
    'foodimg':'images/pizza.jpg',
    'foodname':'Paneer pan pizza',
    'foodcategory':'Veg',
    'price':200
  },{
    'foodimg':'images/hamburger.jpg',
    'foodname':'Veg Hamburger',
    'foodcategory':'Veg',
    'price':200
  },{
    'foodimg':'images/kebab.jpg',
    'foodname':'Grilled kabaab with vegies',
    'foodcategory':'Veg',
    'price':200
  }
];

var non_veg_list = [
  {
    'foodimg':'images/chicken.jpg',
    'foodname':'Spicy Grilled Chicken',
    'foodcategory':'Non-veg',
    'price':200
  },
  {
    'foodimg':'images/pizza.jpg',
    'foodname':'Paneer pan pizza',
    'foodcategory':'Non-veg',
    'price':200
  },{
    'foodimg':'images/hamburger.jpg',
    'foodname':'Veg Hamburger',
    'foodcategory':'Non-veg',
    'price':200
  },{
    'foodimg':'images/kebab.jpg',
    'foodname':'Grilled kabaab with vegies',
    'foodcategory':'Non-veg',
    'price':200
  }
];



//Carousel list items function
  // Widget _listitem(String imagename, String textname){
  //   return Container(
  //     padding: EdgeInsets.only(left: 5,right: 5),
  //       child: Stack(
  //         children: <Widget>[
  //           Image.asset(
  //             imagename,
  //             width: 250,
  //             height: 250,
  //             color: Colors.black45,
  //             colorBlendMode: BlendMode.darken,
  //           ),
  //           Padding(
  //             padding: EdgeInsets.only(top:150),
  //             child:Text(
  //             textname,
  //             style: TextStyle(
  //               color: Colors.white,
  //               fontSize: 20.0,
  //               fontWeight: FontWeight.w900,
  //               fontStyle: FontStyle.italic
  //             ),
  //           )
  //         )
  //       ],
  //     ),
  //   );
  // }


  @override
  Widget build(BuildContext context) {
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
        child: ListView(
        children: <Widget>[
          // _appbar(),
          Padding(
            padding: EdgeInsets.only(top: 15.0,bottom: 10.0),
            child:Align(
              alignment: Alignment(-0.9, 0.0),
                child:Text(
            'One stop for all your eats.',
            textDirection: TextDirection.ltr,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          )
          ),
          Container(
            height: 200,
            //created a listview to store the prd_list items inside the final variables of Products statelesswidget class
            //and returning the Products statelesswidget class to display the list of items
            child: ListView.builder(
              itemCount: prd_list.length,
              itemBuilder: (BuildContext context,index){
                return Products(
                  prdimg: prd_list[index]['foodimg'],
                  prdname: prd_list[index]['foodname'],
                  prdcategory: prd_list[index]['foodcategory'],
                  prdprice: prd_list[index]['price'],
                );
              },
              scrollDirection: Axis.horizontal,
              // children: <Widget>[
                // GestureDetector(
                //   child:_listitem('images/chicken.jpg', 'Spicy Grilled Chicken'),
                //   onTap: (){
                //       Navigator.push(
                //         context,
                //         MaterialPageRoute(builder: (context) => PlaceOrder()),
                //       );                   
                //   },
                // ),
              //     _listitem('images/pizza.jpg', 'Paneer pan pizza'),
              //     _listitem('images/hamburger.jpg', 'Veg Hamburger'),
              //     _listitem('images/kebab.jpg', 'Grilled kabaab with vegies'),
              // ],
            ),
          ),
          _text('BREAKFAST'),
          Container(
            height: 100,            
              child: ListView.builder(
              itemCount: prd_list.length,
              itemBuilder: (BuildContext context,index){
                return OtherProducts(
                  breakfastimg: breakfast_list[index]['foodimg'],
                  breakfastname: breakfast_list[index]['foodname'],
                  breakfastcategory: breakfast_list[index]['foodcategory'],
                  breakfastprice: breakfast_list[index]['price'],
                );
              },
              scrollDirection: Axis.horizontal,
              // children: <Widget>[
              //   _categories('images/chicken.jpg'),
              //   _categories('images/pizza.jpg'),
              //   _categories('images/hamburger.jpg'),
              //   _categories('images/kebab.jpg'),
              // ],
            ), 
          ),
          _text('Veg Food'),
          Container(
            height: 100,            
              child: ListView.builder(
              itemCount: prd_list.length,
              itemBuilder: (BuildContext context,index){
                return OtherProducts(
                  breakfastimg: veg_list[index]['foodimg'],
                  breakfastname: veg_list[index]['foodname'],
                  breakfastcategory: breakfast_list[index]['foodcategory'],
                  breakfastprice: breakfast_list[index]['price'],
                );
              },
              scrollDirection: Axis.horizontal,
              // children: <Widget>[
              //   _categories('images/chicken.jpg'),
              //   _categories('images/pizza.jpg'),
              //   _categories('images/hamburger.jpg'),
              //   _categories('images/kebab.jpg'),
              // ],
            ), 
          ),
          _text('Non-veg Food'),
          Container(
            height: 100,            
              child: ListView.builder(
              itemCount: prd_list.length,
              itemBuilder: (BuildContext context,index){
                return OtherProducts(
                  breakfastimg: non_veg_list[index]['foodimg'],
                  breakfastname: non_veg_list[index]['foodname'],
                  breakfastcategory: non_veg_list[index]['foodcategory'],
                  breakfastprice: non_veg_list[index]['price'],
                );
              },
              scrollDirection: Axis.horizontal,
              // children: <Widget>[
              //   _categories('images/chicken.jpg'),
              //   _categories('images/pizza.jpg'),
              //   _categories('images/hamburger.jpg'),
              //   _categories('images/kebab.jpg'),
              // ],
            ), 
          ), 
        ],  
      )),
    );
  }

//below code to create app using container and call inside the column
  // Widget _appbar(){
  //   return Container(
  //     height: 70,
  //     width: MediaQuery.of(context).size.width,
  //     decoration: BoxDecoration(
  //       gradient: LinearGradient(
  //         colors: [const Color(0xFF10A881),const Color(0x8010A881)]
  //       ),
  //     ),
  //     child:Padding(
  //       padding: EdgeInsets.only(top: 30,left: 10),
  //       child: Text(
  //       'NASTA PLAZA',
  //       textAlign: TextAlign.start,
        
  //       style:TextStyle(
  //         fontSize: 30,
  //         fontWeight: FontWeight.w900,
  //         color: Colors.white,
  //       ),
  //       ),
  //     ),
  //   );
  // }

//category title text function
  Widget _text(String _text){ 
    return Align(
      alignment: Alignment(-0.9, 0.0),
      child:Container(
            child:Text(
            _text,
            textDirection: TextDirection.ltr,
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          ));
  }

  //Widget for categories
  // Widget _categories(String _images){
  //   return Container(
  //     padding: EdgeInsets.only(left: 5,right: 5),
  //       child: Stack(
  //         children: <Widget>[
  //           Image.asset(
  //             _images,
  //             width: 100,
  //             height: 100,
  //             // color: Colors.black38,
  //             // colorBlendMode: BlendMode.darken,
  //           ),
  //         ],
  //       ),
  //     );
  // }
}

//this class used to design the list items means breakfast_list,veg_list,non_veg_list items and store there values in final variables
class OtherProducts extends StatelessWidget {
  final String breakfastimg;
  final String breakfastname;
  final int breakfastprice;
  final String breakfastcategory;
  OtherProducts({
    this.breakfastimg,
    this.breakfastname,
    this.breakfastcategory,
    this.breakfastprice
  });

  @override
  Widget build(BuildContext context) {
    return Container(
    padding: EdgeInsets.only(left: 5,right: 5),
    child:InkWell(
      onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>PlaceOrder(
            productDetailImage: breakfastimg,
            productDetailName: breakfastname,
            productDetailCategory: breakfastcategory,
            productDetailPrice: breakfastprice,
            )));
        },
        child: Stack(
          children: <Widget>[
            Image.asset(
              breakfastimg,
              width: 100,
              height: 100,
              // color: Colors.black38,
              // colorBlendMode: BlendMode.darken,
            ),
          ],
        ),
      ));
  }
}

//this class used to design the list items means prd_list items and store there values in final variables
class Products extends StatelessWidget {
  
  final String prdimg;
  final String prdname;
  final int prdprice;
  final String prdcategory;

Products({
  this.prdimg,
  this.prdname,
  this.prdcategory,
  this.prdprice
});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 5,right: 5),
      child:InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>PlaceOrder(
            productDetailImage: prdimg,
            productDetailName: prdname,
            productDetailCategory: prdcategory,
            productDetailPrice: prdprice,
            )));
        },
        child: Stack(
          children: <Widget>[
            Image.asset(
              prdimg,
              width: 250,
              height: 250,
              color: Colors.black45,
              colorBlendMode: BlendMode.darken,
            ),
            Padding(
              padding: EdgeInsets.only(top:150),
              child:Text(
              prdname,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.w900,
                fontStyle: FontStyle.italic
              ),
            )
          )
        ],
      )),
    );
  }
}