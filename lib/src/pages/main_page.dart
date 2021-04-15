import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/src/commons/theme.dart';
import 'package:flutter_web_dashboard/src/widget/card_tile.dart';
import 'package:flutter_web_dashboard/src/widget/chart_card_tile.dart';
import 'package:flutter_web_dashboard/src/widget/comment_widget.dart';
import 'package:flutter_web_dashboard/src/widget/profile_Widget.dart';
import 'package:flutter_web_dashboard/src/widget/project_widget.dart';
import 'package:flutter_web_dashboard/src/widget/quick_contact.dart';
import 'package:flutter_web_dashboard/src/widget/responsive_widget.dart';
import 'package:flutter_web_dashboard/src/widget/sidebar_menu..dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _media = MediaQuery.of(context).size;
    print(_media);
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {

        if (constraints.maxWidth <= 800) {
          return Center(
            child: Text('Mobile User welcome'),
          );
        } else if (constraints.maxWidth <= 1280 &&
            constraints.maxWidth >= 800) {
          return Center(
            child: Text('welcome'),
          );
        } else if (constraints.maxWidth >= 1280) {
          return Material(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ResponsiveWidget.isLargeScreen(context)
                    ? SideBarMenu()
                    : Container(),
                Flexible(
                  fit: FlexFit.loose,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 100,
                        width: _media.width,
                        child: Center(child:Row(children: <Widget>[Expanded(child:  AppBar(
                         
                          elevation: 10,
                          centerTitle: true,
                          title: Text(
                            "DeepLineFeels",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          backgroundColor: drawerBgColor,
                        ),)],)
                       )
                      ),
                      SizedBox(height:50),
                      Expanded(
                        child: ListView(
                          // padding: EdgeInsets.only(
                          //     top: 20, left: 20, right: 20, bottom: 20),
                          children: <Widget>[
                            IntrinsicHeight(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Column(
                                    children: <Widget>[
                                      IntrinsicHeight(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: <Widget>[

                            SizedBox(width: 20),

                             ChartCardTile(
                                                  cardColor: Color(0xFF7560ED),
                                                  cardTitle: 'Page Visit',
                                                  subText: 'April 2021',
                                                  icon: Icons.track_changes,
                                                  typeText: '3,9989',
                                                ),
                                                SizedBox(
                                                  width: 20,
                                                ),
                                                ChartCardTile(
                                                  cardColor: Color(0xFF25C6DA),
                                                  cardTitle: 'Comments',
                                                  subText: 'April 2012',
                                                  icon: Icons.add_comment_sharp,
                                                  typeText: '500',
                                                ),
                                              SizedBox(
                                                  width: 20,
                                                ),
                                                ChartCardTile(
                                                  cardColor: Color(0xFF25deDA),
                                                  cardTitle: 'Wallet',
                                                  subText: 'April 2021',
                                                  icon: Icons.money_off_csred_rounded,
                                                  typeText: '35487',
                                                ),
                                            // CardTile(
                                            //   // the mediaquery hieght and size is divided by the height and width
                                            //   // provided for  cardTile respectively
                                             
                                            //   iconBgColor: Colors.pinkAccent,
                                            //   cardTitle: 'page Visits',
                                            //   icon: Icons.show_chart,
                                            //   subText:
                                            //       'Tracked from Google Analytics',
                                            //   mainText: '3.560',
                                            // ),
                                            // SizedBox(width: 20),
                                            // CardTile(
                                            //   iconBgColor: Colors.green,
                                            //   cardTitle: 'pay',
                                            //   icon: Icons.home,
                                            //   subText: 'Last 24 Hours',
                                            //   mainText: '2500',
                                            // ),
                                            // SizedBox(width: 20),
                                            // CardTile(
                                            //   iconBgColor:
                                            //       Colors.lightBlueAccent,
                                            //   cardTitle: 'Followors',
                                            //   icon: Icons.unfold_less,
                                            //   subText: 'Last 24 Hours',
                                            //   mainText: '112',
                                            // ),
                                            ],),
                                         
                                      ),
                                      SizedBox(
                                        height: 50,
                                      ),
                                      IntrinsicHeight(
                                        child: Column(
                                          mainAxisAlignment:MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: <Widget>[
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: <Widget>[
                                                Row(
                                                  mainAxisAlignment:MainAxisAlignment.center,
                                                  children:<Widget>[ 
                                                   ChartCardTile(
                                                  cardColor: Color(0xFF8560AD),
                                                  cardTitle: 'Mp4 Download',
                                                  subText: 'April 2021',
                                                  icon: Icons.download_outlined,
                                                  typeText: '1,002',
                                                ),
                                                SizedBox(
                                                  width: 20,
                                                ),
                                                ChartCardTile(
                                                  cardColor: Color(0xFF25A6DA),
                                                  cardTitle: 'mp3 Download',
                                                  subText: 'April 2021',
                                                  icon: Icons.download_outlined,
                                                  typeText: '35487',
                                                ),
                                              SizedBox(
                                                  width: 20,
                                                ),
                                                ChartCardTile(
                                                  cardColor: Color(0xFF25C6DA),
                                                  cardTitle: 'Download count',
                                                  subText: 'March 2017',
                                                  icon: Icons.download_outlined,
                                                  typeText: '35487',
                                                ),]),
                                              
                                                SizedBox(
                                                  width: 20,
                                                ),
                                                
                                              ],
                                            ),
                                            SizedBox(
                                              width: 30,
                                            ),
                                            // ProjectWidget(media: _media),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      IntrinsicHeight(
                                        child:Column(children: <Widget>[
                                          Row(children:[Container(width:200,height:100,child:Column(children:<Widget>[
                                            Icon(Icons.cloud_upload, size: 50, color: Colors.blue),
                                         Text("Upload", style:TextStyle(fontSize: 20, color: Colors.black, fontStyle: FontStyle.italic) )]) )])],)
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  // QuickContact(media: _media)
                                ],
                              ),
                            ),
                            IntrinsicHeight(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  // CommentWidget(media: _media),
                                  // SizedBox(
                                  //   width: 20,
                                  // ),
                                  // ProfileWidget(media: _media),
                                ],
                              ),
                            ),
                            SizedBox(height: 20),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        }
        return Container();
      },
    );
  }
}
