

import 'package:flutter/material.dart';

class ResponsiveCard extends StatelessWidget {
  const ResponsiveCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final oriantation=MediaQuery.of(context).orientation;
    return Scaffold(
      backgroundColor: Colors.black,
      body:Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch ,
            children: [
              Padding(
                padding: const EdgeInsets.all(18),
                child: Text("Your Card",style: TextStyle(fontSize: 23,color: Colors.white),),
              ),

              Expanded(


                child:
                AnimatedSwitcher(
                  duration: Duration(seconds: 3),
                  transitionBuilder: (widget,animation){
                    return   ScaleTransition(
                      scale: animation,child: widget,
                    );
                  },

                  child:
                  oriantation==Orientation.portrait?
                ListView.builder(
                      itemCount: 20,
                      itemBuilder: (context,index){
return Center(
    child: _cardItem(color:Colors.primaries[index %Colors.primaries.length]));

                  }
                  )
                :  GridView.builder(

                    itemCount: 20,
                    itemBuilder: (context,index){
                      return Container(
                          height:200,child: Center(child: _cardItem(color:Colors.primaries[index %Colors.primaries.length])));

                    },

                  gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2

                  ),)
                ,
              )
              )
            ],

          ),
        ),
      )
    );
  }
}
class _cardItem extends StatelessWidget {
final Color color;
_cardItem({required this.color});
  @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding: const EdgeInsets.all(
            8.0),
        child: Container(
        height: 160,
        width:double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color.withOpacity(.3),
              color
            ]
          ),
          borderRadius: BorderRadius.circular(32),
          color: color
        ),
        child:
        Padding(
          padding: const EdgeInsets.all(23.0),
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              Row(
                children: [
                  Text("\$15,872"
                  ,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                  Spacer(),
                  Container(
                    height: 35,
                      width: 35,
                      child: Image.asset("images/mastercard.png"))
                ],
              ),
              Spacer(),
              Text("4020 **** ****2455",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
              Text("ESRAA MAHER SAAD",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
            ],
          ),
        ),
    ),
      );
  }
}
