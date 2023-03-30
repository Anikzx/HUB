import 'package:eternal/models/product.dart';
import 'package:flutter/material.dart';

class ProductListItem extends StatefulWidget {
  static String route = "ProductListItem";


  final Product product;
  const ProductListItem({Key? key,required this.product}): super(key: key);

  @override
  State<ProductListItem> createState() => _ProductListItemState();
}

class _ProductListItemState extends State<ProductListItem> {

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            flex:6,
            child: Padding(
              padding: const EdgeInsets.only(left:1.0,right:1.0),
              child: Container(
                width:double.infinity*.5,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(widget.product.productImage!),
                      fit: BoxFit.cover,
                      opacity: .8,
                    ),
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(4),
                        topRight: Radius.circular(4)
                    )
                ),
              ),
            ),
          ),
          const SizedBox(height:5),
          Flexible(
            flex:1,
            child: Container(

              width:double.infinity*.5,
              padding: const EdgeInsets.only(left:8,right:8,),
              child: Text(widget.product.productLabel.toString(),style: const TextStyle(color: Color(0xffc9a697),fontWeight: FontWeight.w500,fontSize: 14)),
// color: Colors.green,
            ),
          ),
          const SizedBox(height:5),
          Flexible(
            flex:1,
            child: Container(
// padding: EdgeInsets.only(top:10),
              width:double.infinity*.5,
              padding: const EdgeInsets.only(left:8,right:8,),
// color: Colors.orange,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(widget.product.productPrevPrice.toString() ,
                      style: const TextStyle(decoration: TextDecoration.lineThrough,color: Color(0xffbcbfc1),fontWeight: FontWeight.w700)
                  ),
                  Text(widget.product.productDiscPrice.toString() ,
                      style: const TextStyle(color: Color(0xffc9a697),fontWeight: FontWeight.w700)
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height:5),
          Flexible(
            flex: 1,
            child: Container(
              alignment: Alignment.centerLeft,
              width:double.infinity*.75,
              padding: const EdgeInsets.only(left:8,right:8),
// color: Colors.blue,

              height:35,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Flexible(
                    flex:1,
                    child: Container(
                      height:40,
                      alignment: Alignment.centerLeft,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount:widget.product.productRating!.floor(),
                          itemBuilder: (content,index){

                            return const Icon(Icons.star_rate,color:Colors.orange,size: 15,);
                          }
                      ),
                    ),
                  ),
                  Flexible(
                    flex:1,
                    child: SizedBox(
                      height:40,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width:20,
                            child: IconButton(
                              splashRadius:12,
                              padding: const EdgeInsets.all(0),
                              alignment: Alignment.center,
                              onPressed: (){
                                setState(() {

                                  // currentlySelectedProduct= availableProducts[index];
                                  // if(currentlySelectedProduct!=null){
                                  //   _showAddToCartBottomSheet=true;
                                  // }

                                });
                              },
                              icon: const Icon(Icons.add_circle_outline,
                                color:Color(0xffc9a697),size: 15,),
                            ),
                          ),

                          Container(
                              padding: const EdgeInsets.all(0),
                              width: 40,
                              child: const Text("00.00",style: TextStyle(fontSize: 13,color:Color(0xffc9a697),fontWeight: FontWeight.w700),textAlign: TextAlign.center,)
                          ),

                          SizedBox(
                            width:20,
                            child: IconButton(
                              splashRadius:12,
                              visualDensity: VisualDensity.compact,
                              padding: const EdgeInsets.all(0),
                              color: Colors.blue,
                              alignment: Alignment.center,
                              onPressed: (){
                              },
                              icon: const Icon(Icons.remove_circle_outline,
                                color:Color(0xffc9a697),size: 15,),
                            ),
                          ),


                        ],),
                    ),
                  ),

                ],
                crossAxisAlignment: CrossAxisAlignment.center,
              ),
            ),
          ),
          const SizedBox(height:10),
          InkWell(
            onTap: (){
            },
            child: Container(

                  width:double.infinity*.5,
                  padding: const EdgeInsets.all(6.0),
                  decoration: const BoxDecoration(
                    color:Color(0xffc4a494),
                    borderRadius: BorderRadius.only(bottomLeft:Radius.circular(4),bottomRight:Radius.circular(4)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 1,
                        offset: Offset(2, 3), // Shadow position
                      ),
                      BoxShadow(
                        color: Color(0xffe3dbd3),
                        blurRadius: 3,
                        offset: Offset(-1, 0), // Shadow position
                      ),
                    ],

                  ),

                  child: const Text("Add To Cart",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 14,),textAlign: TextAlign.center,)
            ),
          ),

        ],
      ),
    );
  }

}