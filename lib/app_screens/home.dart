import 'package:flutter/material.dart';


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    
        return Center(child:  Container(
          padding: EdgeInsets.only(left: 10.0,top: 40.0),
          alignment : Alignment.topCenter,
          color: Colors.deepPurple,
          margin: EdgeInsets.only(left: 0.0),
          child: Column(
            children: <Widget>[
             Row(
            children: <Widget>[
            Expanded(child :Text(
                "Air India",
                textDirection: TextDirection.ltr,
                style: TextStyle(decoration: TextDecoration.none,
                fontSize: 35.0,
                fontFamily: 'OpenSans',
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.normal,
                )
                ),
            ),
                
                Expanded(child :Text(
                "Nagpur to Jaipur",
                textDirection: TextDirection.ltr,
                style: TextStyle(decoration: TextDecoration.none,
                fontSize: 25.0,
                fontFamily: 'OpenSans',
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.italic
                )
                ),
                ),
                ],
            ),
               Row(
            children: <Widget>[
            Expanded(child :Text(
                "Air India",
                textDirection: TextDirection.ltr,
                style: TextStyle(decoration: TextDecoration.none,
                fontSize: 35.0,
                fontFamily: 'OpenSans',
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.normal,
                )
                ),
            ),
                
                Expanded(child :Text(
                "Jaipur to Nagpur",
                textDirection: TextDirection.ltr,
                style: TextStyle(decoration: TextDecoration.none,
                fontSize: 25.0,
                fontFamily: 'OpenSans',
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.italic
                )
                ),
                ),
                ],
            ),
                FlightImageAsset(),
                FlightBookButton()
            ],
          ),
          ),
          );
          
  }
}
          class FlightImageAsset extends StatelessWidget{

            @override
            Widget build(BuildContext context){
              AssetImage assetImage = AssetImage("images/S.png") ;
              Image image = Image(image: assetImage, width: 500.0 , height: 200.0 );
              return Container(child: image,
                                padding: EdgeInsets.all(20.0));
                                           
                                }
          }
          
          
         
         
         
         class FlightBookButton extends StatelessWidget{
          @override
         Widget build(BuildContext context) {
          return Container(
            margin: EdgeInsets.only(top: 30.0),
            width: 250.0,
            height: 100.0,
            child: RaisedButton(color: Colors.deepOrange,
                                
                                child: Text(
                                              "Book Your Flight",
                                              style: TextStyle(color: Colors.white,
                                                               fontSize: 20.0 ),),
                                elevation: 6.0,

                                onPressed: (){
                                  bookFlight(context);

                                },
                                ),
                                );
  }
         }
         void bookFlight(BuildContext context){
           var alertDailog = AlertDialog(
             title: Text("Flight Booked Successfully"),
             content: Text("Have a Pleasant Flight")
             ,);
              showDialog(
                context: context,
                builder: (BuildContext context){
                  return alertDailog;
                }
              );
         }