import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:job_finder/provider/settings.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomeState();
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: _buildBody(),
      appBar: _buildAppBar(),
    );
  }

  Widget _buildBody() {
    return Column(
      children: [
        _buildProfile(),
        SizedBox(
          height: 20,
        ),
        _buildJobs(),
        SizedBox(
          height: 25,
        ),
        _buildTopCompany()
      ],
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      backgroundColor: Theme.of(context).primaryColor,
      elevation: 0,
      actions: [
        Container(
          margin: EdgeInsets.only(right: 20),
          child: IconButton(
              icon:Icon(Provider.of<Settings>(context, listen: false).isDarkMode ? Icons.lightbulb:Icons.lightbulb_outline,color:Theme.of(context).accentColor,) ,
              onPressed: () {
                changeTheme(
                  Provider.of<Settings>(context, listen: false).isDarkMode ? false : true,
                  context
                );
              }),
        )
      ],
    );
  }

  Widget _buildProfile() {
    return Container(
      margin: EdgeInsets.only(left: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Align(
              child: Text(
                "Profile",
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                textAlign: TextAlign.start,
              ),
              alignment: Alignment.topLeft,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.only(right: 30),
            height: 180,
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: [
                Expanded(
                    flex: 4,
                    child: Container(
                        decoration: BoxDecoration(
                          color: Theme.of(context).accentColor,
                          borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        ),
                        child: Container(
                          margin:
                              EdgeInsets.only(left: 15, right: 15, bottom: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/images/avatar.png',
                                scale: 4,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "George Tomson",
                                style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: Theme.of(context).primaryColor),
                                textAlign: TextAlign.start,
                              ),
                              SizedBox(height: 5),
                              Text(
                                "UI/UX Designer",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey),
                                textAlign: TextAlign.start,
                              ),
                            ],
                          ),
                        ))),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                    flex: 2,
                    child: Container(
                      margin: EdgeInsets.only(top: 40),
                      decoration: BoxDecoration(
                        color: Theme.of(context).accentColor,
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      ),
                      child: Container(
                        margin:
                            EdgeInsets.only(left: 15, right: 15, bottom: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.star_rounded,
                              size: 35,
                              color: Theme.of(context).primaryColor,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "4.98",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold,color:Theme.of(context).primaryColor),
                              textAlign: TextAlign.start,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Rate",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey),
                              textAlign: TextAlign.start,
                            ),
                          ],
                        ),
                      ),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildJobs() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
            margin: EdgeInsets.only(left: 30),
            child: Align(
              alignment: Alignment.topLeft,
              child: RichText(
                text: TextSpan(
                    text: 'Jobs ',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).accentColor),
                    children: <InlineSpan>[
                      TextSpan(
                        text: 'recently added',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            color: Colors.grey),
                      )
                    ]),
              ),
            )),
        SizedBox(
          height: 20,
        ),
        Container(
          child: SingleChildScrollView(
            physics: AlwaysScrollableScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                _buildJob("UX Design","Wireframes","1h ago","Fixed","32"),
                SizedBox(
                  width: 10,
                ),
                _buildJob("UI Design","Landing page","3h ago","From","24"),
                SizedBox(
                  width: 10,
                ),
                _buildJob("Mobile Developer","Fixing bugs","15h ago","From","51"),
                SizedBox(
                  width: 10,
                ),
                _buildJob("Web Expert","One Single Web Page","30m ago","Fixed","3200"),
                SizedBox(
                  width: 30,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
  Widget _buildJob(String title,String subtitle,String hour,String type,String price,) {
    return Container(
        height: 180,
        width: 180,
        decoration: BoxDecoration(
          color: Theme.of(context).accentColor,
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
        ),
        child: Container(
          margin: EdgeInsets.only(left: 15, right: 15, bottom: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                title,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey),
                textAlign: TextAlign.start,
              ),
              SizedBox(height: 10),
              Text(
                subtitle,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Theme.of(context).primaryColor),
                textAlign: TextAlign.start,
              ),
              SizedBox(height: 10),
              Text(
                hour,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey),
                textAlign: TextAlign.start,
              ),
              Spacer(flex: 1,),
              Row(
                children: [
                  Text(
                    type,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Theme.of(context).primaryColor),
                    textAlign: TextAlign.start,
                  ),
                  Spacer(),
                  Text(
                    "\$$price/h",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context).primaryColor),
                    textAlign: TextAlign.start,
                  ),
                ],
              )
            ],
          ),
        ));
  }

  Widget _buildTopCompany() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 30),
        height: 110,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Theme.of(context).accentColor,
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
        ),
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Image.asset(
                'assets/images/star.png',
                scale: 2,
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Work with top company",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context).primaryColor),
                    textAlign: TextAlign.start,
                  ),
                  RichText(
                      text: TextSpan(
                          text: "100,000 ",
                          style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w700),
                          children: <InlineSpan>[
                            TextSpan(
                                text: "customers",
                                style: TextStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400)),
                          ])),
                ],
              )
            ],
          ),
        ));
  }
  void changeTheme(bool set, BuildContext context) {
    Provider.of<Settings>(context, listen: false).setDarkMode(set);
  }
}
