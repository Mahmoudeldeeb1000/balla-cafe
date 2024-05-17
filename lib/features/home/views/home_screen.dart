import 'package:billa/core/utils/app_images.dart';
import 'package:billa/features/favourite/favourite_screen.dart';
import 'package:billa/features/home/widgets/home_body.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget{
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex=0;

  List<Widget> screens =[
    HomeBody(),
    FavouriteScreen()
  ];

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: Color(0xffF5F5F5),
    appBar:AppBar(
      centerTitle: true,
      title: Image.asset(AppImages.Billa,
        height: MediaQuery.of(context).size.height*.04,
      ),
    ),
    drawer: Drawer(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50,
            left: 20,
            right: 20),
            child: Card(

              margin: EdgeInsets.symmetric(vertical: 25),
              child: Row(
                children: [
                  Icon(Icons.home,size: 50,color: Colors.orange,),
                  Text("Home",style: TextStyle(
                    fontSize: 20
                  ),)
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Card(

              margin: EdgeInsets.symmetric(vertical: 25),
              child: Row(
                children: [
                  Icon(Icons.person,size: 50,color: Colors.orange,),
                  Text("Profile")
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Card(

              margin: EdgeInsets.symmetric(vertical: 25),
              child: Row(
                children: [
                  Icon(Icons.menu,size: 50,color: Colors.orange,),
                  Text("Menu")
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Card(

              margin: EdgeInsets.symmetric(vertical: 25),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {

                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return screens[1];
                      },)
                      );
                    },
                      child: Icon(Icons.favorite,size: 50,color: Colors.orange,)),
                  Text("Favourite")
                ],
              ),
            ),
          ),

        ],
      ),

    ),
    bottomNavigationBar: BottomNavigationBar(
      onTap: (model){
        print(model.toString());
        setState(() {
          currentIndex=model;
        });
      },
      currentIndex: currentIndex,
      selectedItemColor: Colors.green,
      unselectedItemColor: Colors.grey,

      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home"
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: "Favorite"    ,
        ),
      ],
    ),
    body: screens[currentIndex],


  );
  }
}

