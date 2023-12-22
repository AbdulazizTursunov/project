import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project/data/model/expo.dart';
import 'package:project/data/db/local_data.dart';
import 'package:project/extension/extension_size.dart';
import 'package:project/widgets/basket_widget.dart';

import 'widgets/search_delegate.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('All Products'),
          actions: [IconButton(onPressed: (){
            showSearch(context: context, delegate: ProductSearchDelegate());
          }, icon:const Icon(Icons.search))],
        ),
        body: Column(
          children: [
            15.ph,
            Expanded(
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    childAspectRatio: 0.7.h,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 20,
                  ),
                  itemCount: products.length,
                  itemBuilder:(context, index){
                    ProductInfo product = products[index];
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 10.w),
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(color: Colors.black54)),
                      child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: Image.network(
                              product.image,
                              height: 100.h,
                              width: 150.w,
                            ),
                          ),
                          Text('name: ${product.name}',overflow: TextOverflow.ellipsis,),
                          Text('category:${product.category}'),
                          Text('price:${product.price}\$'),
                          Text('count:${product.measure}'),
                          10.ph,
                          AddBasketWidget(callback: () {},)
                        ],
                      ),
                    );
                  }),
            ),
          ],
        ));
  }
}
