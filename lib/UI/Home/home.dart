import 'package:e_commerce_2/network/response/list/List.dart';
import 'package:e_commerce_2/shared/colors/colors.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor().darkBlue,
      body: FutureBuilder(
        future: ListAPI().getApiDate(),
        builder: (context,snapShot){
        if(snapShot.hasData){
            return Container(
              child: Center(
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 20,
                      crossAxisCount: 2,
                      childAspectRatio: (.7/1)
                    ),
                    itemCount: snapShot.data!.products.length,
                    itemBuilder: (BuildContext context,int index){
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.network("https://${snapShot.data!.products[index].imageUrl}",height: 200,),
                          Text("data",style: TextStyle(color: MyColor().white),),
                        ],
                      );
                    }
                ),
                )
            );
          }
          if(snapShot.hasError){
            print(snapShot.error);
          }
          return Center(
              child: Container(
                  width:100,
                  height: 100,
                  child: Container(width: 50,height: 50,color: Colors.red,),
              ),
          );
        },
      ),
    );
  }
}
