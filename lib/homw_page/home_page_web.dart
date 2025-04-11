import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:task1/responsive.dart';

class HomePageWeb extends StatelessWidget {
  const HomePageWeb({super.key});

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      body:Column(
        children: [
          Container(
              width: MediaQuery.sizeOf(context).width,
              height: 60,
              color: Colors.cyan[900],
              child:Center(child: Text('Navbar' , style: TextStyle(color: Colors.orange,fontSize: 10),) ,)
          ),
          Expanded(child:
          Row(
            children: [
              Expanded(child:
              Padding(
                  padding: EdgeInsetsDirectional.only(end: 8, top: 8),
                  child: Container(
                      color: Colors.cyan[900],

                      child:Center(child:Text('sidebar' , style: TextStyle(color: Colors.orange),) , )
                  )),
              ),
              Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.only(end: 8, top: 8),
                    child: Container(
                        color: Colors.cyan[900],
                        child:Center(child:Text('Body' , style: TextStyle(color: Colors.orange,fontSize: 8),) ,)
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
                color: Colors.cyan[900],
                child:Center(child: Text('Footer' , style: TextStyle(color: Colors.orange,fontSize: 8),) ,)

            ),
          ),




        ],
      ) ,
    );

  }
}
