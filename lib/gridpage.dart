 import 'package:flutter/material.dart';
import 'package:gridview_task5_router/model_grid.dart';

class GridFooter extends StatelessWidget {
  const GridFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List GridItems=[
      ModelGrid(img:"images/79876.jpg", Tex1: 'Philippines', Tex2: 'Beta ca deta', ico:Icons.star, ),
      ModelGrid(img:"images/Beautiful-Hill-1-400x321.jpg", Tex1: 'Italy', Tex2: 'Coresole reale', ico: Icons.star ),
      ModelGrid(img:"images/hills-2836301__340.jpg", Tex1: 'Somewhere', Tex2: 'Beautiful mountains', ico:Icons.star  ),
      ModelGrid(img:"images/images.jpeg", Tex1: 'A place', Tex2: 'Beautiful hills', ico: Icons.star ),
      ModelGrid(img:"images/images (2).jpeg", Tex1: 'Newzealand', Tex2: 'view from the van', ico: Icons.star ),
      ModelGrid(img:"images/images (3).jpeg", Tex1: 'Autumn', Tex2: 'The golden season', ico: Icons.star),
      ModelGrid(img:"images/79876.jpg", Tex1: 'clouds', Tex2: 'Beautiful scenery', ico:  Icons.star ),
      ModelGrid(img:"images/images.jpeg", Tex1: 'Earth', Tex2: 'Heavenly ', ico:  Icons.star ),

    ];

    return Scaffold(
    body: GridView.builder(
        itemCount: GridItems.length,
        gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,

        ),


        itemBuilder: (context,index){

      return GridTile(
          footer: GridTileBar(
            backgroundColor: Colors.black54,
          title:Text(GridItems[index].Tex1,style: TextStyle(fontSize: 20,
              fontWeight: FontWeight.bold),),
            subtitle:Text(GridItems[index].Tex2,style:TextStyle(fontSize: 15),),
          trailing:Icon(GridItems[index].ico),

          ),


          child:Padding(
            padding: const EdgeInsets.all(3.0),
            child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
            image:DecorationImage(
              image: AssetImage(GridItems[index].img),
              fit: BoxFit.cover,
            ),
        ),

      ),
          ),
      );
        },
    ),

    );
  }
}
