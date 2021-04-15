import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/src/commons/theme.dart';
import 'package:flutter_web_dashboard/src/model/menu.dart';
import 'package:flutter_web_dashboard/src/widget/menu_item_tile.dart';

class SideBarMenu extends StatefulWidget {
  @override
  _SideBarMenuState createState() => _SideBarMenuState();
}

class _SideBarMenuState extends State<SideBarMenu>
    with SingleTickerProviderStateMixin {
  double maxWidth = 250;
  double minWidgth = 70;
  bool collapsed =true;
  int selectedIndex = 0;

  AnimationController _animationController;
  Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 100));

    _animation = Tween<double>(begin: maxWidth, end: minWidgth)
        .animate(_animationController);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (BuildContext context, Widget child) {
        return Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(blurRadius: 10, color: Colors.teal, spreadRadius: 2)
            ],
            color: drawerBgColor,
          ),
          width: _animation.value,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                // padding:const EdgeInsets.only(20.0)
                children: <Widget>[
                  collapsed
                      ?Container(
                          padding: const EdgeInsets.all(22),
                          child: Text(
                            "DeepLineFeels",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ))
                      : Container(),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    child: InkWell(
                onTap: () {
                   
                 
                  setState(() {
                    collapsed = !collapsed;

                    collapsed
                        ? _animationController.reverse()
                        : _animationController.forward();
                    // print("${collapsed}");
                  });
                },
                child: AnimatedIcon(
                  icon: AnimatedIcons.close_menu,
                  progress: _animationController,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              

                  ),

                  SizedBox(
                    height: 100,
                  )
                ],
              ),

              // the avater container
              const Divider(
            height: 10,
            thickness: 1,
            indent: 0,
            // endIndent: 23,
            color:Colors.grey
          ),
              Container(
                
                height: 80,
                decoration: BoxDecoration(
                    color: drawerBgColor,
                    // image: DecorationImage(
                    //   image: NetworkImage(
                    //     // "jhjkl"
                    //       'https://backgrounddownload.com/wp-content/uploads/2018/09/google-material-design-background-6.jpg'
                    //       ),
                    //   fit: BoxFit.cover,
                    // )
                    ),
                child: Container(
                  padding: EdgeInsets.all(10),
                  height: 100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          // CircleAvatar(
                          //   backgroundImage: NetworkImage(
                          //       'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRI4JuatGP6M5_Q0wYSkx2jAVzJff1FBaPYXV7zFbMngh5RV6J7'),
                          //       //  backgroundImage: NetworkImage(
                          //       // 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRI4JuatGP6M5_Q0wYSkx2jAVzJff1FBaPYXV7zFbMngh5RV6J7'),
                          //   backgroundColor: Colors.white,
                          //   radius: _animation.value >= 250 ? 30 : 20,
                          // ), 
                          Container(
                            padding: const EdgeInsets.only(top:3,),
                            child:Row(children:[ Icon(Icons.perm_identity_rounded, size: 50, color: Colors.white),
                          SizedBox(
                            width: _animation.value >= 250 ? 20 : 0,
                          ),
                          (_animation.value >= 250)
                              ? Text('Yasin ilhan',
                                  style: menuListTileDefaultText)
                              : Container(),])
                            
                          )
                        ],
                      ),
                    
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: ListView.separated(
                  separatorBuilder: (context, counter) {
                    return Divider(
                      height: 2,
                    );
                  },
                  itemCount: menuItems.length,
                  itemBuilder: (BuildContext context, int index) {
                    return MenuItemTile(
                      title: menuItems[index].title,
                      icon: menuItems[index].icon,
                      animationController: _animationController,
                      isSelected: selectedIndex == index,
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                    );
                  },
                ),
              ),
             
            ],
          ),
        );
      },
    );
  }
}
