import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// height: MediaQuery.of(context).size.height,
// width: MediaQuery.of(context).size.width,
class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Padding(
        padding: EdgeInsets.all(18),
      child:Column(
        children: [
          SizedBox(height: 30,),
          Container(
            height: 300,
            width: 300,
            decoration:BoxDecoration(

            image:DecorationImage(
              image: AssetImage("assets/images/m3.jpeg"),
              fit: BoxFit.cover
            ),
            ),
          ),
          // Container(
          //   child: ListView.builder(
          //     itemCount: 5,
          //    // itemBuilder: ,
          //
          //   ),
          // ),
          Spacer(),
          Container(
            decoration: BoxDecoration(
              color: Colors.black26,
              borderRadius: BorderRadius.circular(20),
            ),
            padding: EdgeInsets.all(10),
            child: Column(
            children: [ Row(children: [
              Text("About Us", style: TextStyle(
                  fontSize: 20,
                  color: Colors.black87
              ),),
              SizedBox(height: 20,),
            ],),
              SizedBox(height: 20,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Dairy",style: TextStyle(
                          fontSize: 22,
                          color: Colors.black54
                      ),),SizedBox(height: 15,),
                      Text("We sell pure\n and fresh\nproduct",style: TextStyle(
                          fontSize: 14,
                          color: Colors.black54
                      ),),
                    ],
                  ),
                  SizedBox(width: 15,),
                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Address",style: TextStyle(
                          fontSize: 17,
                          color: Colors.black54
                      ),),SizedBox(height: 15,),
                      Text("v3 Corner,\nLP savani circle,\nSurat.",style: TextStyle(
                          fontSize: 14,
                          color: Colors.black54
                      ),),
                    ],
                  ),
                  SizedBox(width: 15,),
                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Contact Us",style: TextStyle(
                          fontSize: 17,
                          color: Colors.black54
                      ),),SizedBox(height: 15,),
                      Text("no.9888989011\nemail:dairy@gmail.com",style: TextStyle(
                          fontSize: 14,
                          color: Colors.black54
                      ),),
                    ],
                  ),
                ],
              ),
            ],
          ),),
        ],
      ),
      ),
    );
  }
}
