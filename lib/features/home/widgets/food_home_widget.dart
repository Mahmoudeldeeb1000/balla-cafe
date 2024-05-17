import 'package:billa/core/utils/app_images.dart';
import 'package:billa/features/home/models/food_model.dart';
import 'package:flutter/material.dart';


class FoodHomeWidget extends StatefulWidget {
   FoodHomeWidget({super.key, required this.index});
  int index;

  @override
  State<FoodHomeWidget> createState() => _FoodHomeWidgetState();
}

class _FoodHomeWidgetState extends State<FoodHomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
        alignment: Alignment.topRight,
          children:[
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Color(0xffFFFFFF)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  Image.asset(foods[widget.index].images,
                    height: 80,
                    width: 80,),
                  Text(  foods[widget.index].foodName,style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),),
                  Text( "${foods[widget.index].price} \$ ",style: TextStyle(
                    color: Colors.orange
                  ),),



                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              child: GestureDetector(
                onTap: () {

                  setState(() {
                    foods[widget.index].fav =! foods[widget.index].fav;
                  });

                },
                child: CircleAvatar(
                  child:Icon( foods[widget.index].fav==true? Icons.favorite:
                    Icons.favorite_border,

                    color:
                     Color(0xffFF7A00),
                  ),
                  backgroundColor:Color(0xffFFF2E5) ,
                ),
              ),
            ),
          ]
      );
  }
}
