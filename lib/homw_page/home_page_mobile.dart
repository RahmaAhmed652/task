import 'package:flutter/material.dart';

class HomePageMobile extends StatelessWidget {
  const HomePageMobile({super.key});

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      body:Column(
        children: [

          Expanded(child:
          Row(
            children: [
             Container(
                ),
              Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.only(end: 8, top: 8),
                    child: Container(
                        color: Colors.cyan[900],
                        child:Center(child:Text('Body' , style: TextStyle(color: Colors.red,fontSize: 14),),)
                    ),
                  )
              )],
          ),
          ),


            Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Container(
                    width: MediaQuery.sizeOf(context).width,
                    height: 60,
                    color: Colors.cyan[00],
                    child:Center(child: Text('Bottom NavBar' , style: TextStyle(color: Colors.red,fontSize: 13),) ,)
                ))


        ],
      ) ,
    );

  }
}
