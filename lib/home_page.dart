import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:task1/config_size.dart';
import 'package:task1/responsive.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      body:Column(
        children: [
         Container(
            width: MediaQuery.sizeOf(context).width,
            height: 60,
            color: Colors.red[900],
            child:Center(child: Text('Navbar' , style: TextStyle(color: Colors.orange,fontSize: 13),) ,)
          ),
          Expanded(child:
          Row(
            children: [
              if (ConfigSize.isWeb(context))
              Expanded(child:
              Padding(
          padding: EdgeInsetsDirectional.only(end: 8, top: 8),
              child: Container(
                color: Colors.red[900],

                child:Center(child:Text('sidebar' , style: TextStyle(color: Colors.orange,fontSize: 13),) , )
    )),
              ),
     Expanded(
       flex: 5,
    child: Padding(
      padding: EdgeInsetsDirectional.only(end: 8, top: 8),
      child: Container(
      color: Colors.cyan[900],
      child:Center(child:Text('Body' , style: TextStyle(color: Colors.orange,fontSize: 13),) ,)
                ),
    )
    )],
      ),

          ),
          if (ConfigSize.isWeb(context))
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Container(
                width: MediaQuery.sizeOf(context).width,
                height: 60,
                color: Colors.red[900],
                child:Center(child: Text('Footer' , style: TextStyle(color: Colors.orange,fontSize: 13),) ,)

            ),
          ),

            if (ConfigSize.isMobile(context))
    Padding(
    padding: const EdgeInsets.only(top: 8.0),
    child: Container(
    width: MediaQuery.sizeOf(context).width,
    height: 60,
    color: Colors.red[600],
    child:Center(child: Text('Bottom NavBar' , style: TextStyle(color: Colors.orange,fontSize: 13),) ,)
    ))

      ],
      ) ,
    );

  }
}
