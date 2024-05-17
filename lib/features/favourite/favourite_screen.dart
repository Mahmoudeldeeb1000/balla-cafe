import 'package:billa/features/home/models/food_model.dart';
import 'package:flutter/material.dart';

class FavouriteScreen extends StatefulWidget {
   FavouriteScreen({super.key});
  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}
class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    List<FoodModel>favlist=foods.where((element) => element.fav==true).toList();
    return Scaffold(

      body: ListView.builder(
        padding: EdgeInsets.all(8),
        itemCount: favlist.length,
        itemBuilder:(context, index) {
          return Card(
            color: Colors.white,
            child: ListTile(
              title: Text(favlist[index].foodName,
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),),
              subtitle: Text("${favlist[index].price} \$",
              style:  TextStyle(
                color: Colors.orange
              ),),
              leading: Image.asset(favlist[index].images),
              trailing: GestureDetector(
                onTap: () {
                  setState(() {
                    favlist[index].fav=false;
                  });
                },
                child: CircleAvatar(
                  backgroundColor: Color(0xffFFF2E5),
                   child: Icon(Icons.favorite,color: Colors.red,),
                ),
              ),
            ),
          );
        } ,



      ),
    );
  }
}
