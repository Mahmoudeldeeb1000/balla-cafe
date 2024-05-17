import 'package:billa/core/utils/app_images.dart';
import 'package:billa/features/home/models/food_model.dart';
import 'package:billa/features/home/widgets/food_home_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class HomeBody extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child:  ClipRRect(
                   borderRadius: BorderRadius.circular(20),
                       child:
                          Image.asset(AppImages.banner,
                          height: MediaQuery.of(context).size.height*.22,
                          fit: BoxFit.cover,
                            )
                      ),
          ),
          SliverGrid.builder(
            itemCount: foods.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,

          ),
              itemBuilder: (context, index) {
                return FoodHomeWidget(
                  index: index,
                );
              },
          )
        ],
      ),
    );
  }
}
