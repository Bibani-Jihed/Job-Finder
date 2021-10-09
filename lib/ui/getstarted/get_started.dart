import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job_finder/ui/home/home.dart';

class GetStarted extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => GetStartedState();
}

class GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Image.asset(
            'assets/images/get_started.png',
            fit: BoxFit.fill,
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Do it.",
                    style:
                    TextStyle(fontSize: 75, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "When you want.",
                    style:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
                  )
                ],
              ),
            ),
            SizedBox(height: 50,),
            Container(
              margin: EdgeInsets.only(left: 30,bottom: 30),
              child: TextButton(
                onPressed: (){
                  Navigator.pushReplacement(
                    context,MaterialPageRoute(builder: (context) => Home()),);
                },
                child: Stack(
                  children: [
                    Image.asset(
                      'assets/images/get_started_button.png',
                      scale: 1.8,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 25,top: 8),
                      child: Text(
                        "Get Started",
                        style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold),
                        textAlign: TextAlign.start,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
