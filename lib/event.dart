import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
class Event extends StatefulWidget {
  const Event({Key? key}) : super(key: key);
  @override
  State<Event> createState() => _EventState();
}

class _EventState extends State<Event> with SingleTickerProviderStateMixin{
  late TabController? _controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        backgroundColor: const Color(0xFF21242B),
        iconTheme: IconThemeData(color: Colors.white),
        leading: Icon(
          Icons.arrow_back_ios,
        ),
      ),*/
        backgroundColor: const Color(0xFF21242B),
      body: Column(
        children: [Padding(
          padding: const EdgeInsets.all(50),

          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              SizedBox(height: 10,),
              Icon(
                Icons.arrow_back_ios,color: Colors.white,
              ),
              SizedBox(height: 16,),
              Row(

              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Solo Dance",style: TextStyle(fontSize:22,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Cabin',
                    color: Color(0xFFFFFFFF),
                ),
                ),SizedBox(height: 5,),
                  Text("Footloose",style: TextStyle(fontSize:13,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Cabin',
                  color: Color(0xFF9B9B9B),
                ),
                ),

  ]
              ),
SizedBox(width: 89,),
                NeumorphicButton(

                child: Text(
                "Register".toUpperCase(),
                style: TextStyle(fontSize: 13,fontWeight: FontWeight.w400,
                  fontFamily: 'Cabin',
                  color: Color(0xFFFFFFFF),)
                ),
                    style: NeumorphicStyle(
                      shape: NeumorphicShape.flat,
                      color: const Color(0x21242B),
                      shadowDarkColor: const Color(0xFF454954),
                      shadowLightColor: const Color(0xFF454954),
                      boxShape: NeumorphicBoxShape.roundRect(
                        BorderRadius.circular(100),
                      ),
                    ),

                    onPressed: () => null

                ),
              ],
            ),
            ],
          ),
        ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(50),

              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color(0XFF2C303A),
                borderRadius: BorderRadius.only(topRight: Radius.circular(60),topLeft: Radius.circular(60)),
              ),
              child:Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    width: 100,
                    child: Text(
                      "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium aghsygdn doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit.",
                      maxLines: 7,
                      style: TextStyle(color: Colors.white,
                          fontSize: 13,
                        fontFamily: 'Cabin',
                        fontWeight: FontWeight.w400,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(
                    height: 21,
                  ),
                  Text("Team Size: 1 - 2", style: TextStyle(color: Colors.white,
                    fontSize: 13,
                    fontFamily: 'Cabin',
                    fontWeight: FontWeight.w400,decoration: TextDecoration.underline,
                  ),),
                  SizedBox(
                    height: 20,
                  ),
                  Text("Location", style: TextStyle(color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                  ),),
                  SizedBox(
                    height: 20
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: Row(
                      children: [
                        Image.asset('assets/Picture 1.png',
                        width: 20,
                        height: 20,),
                        SizedBox(
                          width: 17,
                        ),
                        Text("Academic Block 3", style: TextStyle(color: Colors.white,
                          fontSize: 13,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500,
                        ),),
                      ],
                    ),
                  ),
                  SizedBox(
                      height:40
                  ),
                  const Divider(
                    thickness: 1,
                    endIndent: 0,
                    color: Colors.white,
                  ),SizedBox(
                      height:25
                  ),
                  Text("Delegate Card: General",style: TextStyle(color: Colors.white,
                    fontSize: 18,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600,
                  ),
                    textAlign: TextAlign.center,),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 60,
                      ),

                      SizedBox(
                        width: 184,
                        height: 45,
                        child: NeumorphicButton(
                          padding: const EdgeInsets.all(10),
                            child: Center(
                              child: Text(
                                  "Register now".toUpperCase(),
                                  style: TextStyle(fontSize: 13,fontWeight: FontWeight.w400,
                                    fontFamily: 'Monstserrat',
                                    color: Color(0xFFFFFFFF),)
                              ),
                            ),
                            style: NeumorphicStyle(
                              shape: NeumorphicShape.flat,
                              color: const Color(0xFF4D5465),
                              shadowDarkColor: const Color(0xFF454954),
                              shadowLightColor: const Color(0xFF454954),
                              boxShape: NeumorphicBoxShape.roundRect(
                                BorderRadius.circular(100),
                              ),
                            ),

                            onPressed: () => null

                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
    ]
      ),

    );
  }
}
