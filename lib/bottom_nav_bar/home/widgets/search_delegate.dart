import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project/data/model/expo.dart';
import 'package:project/extension/extension_size.dart';
import 'package:project/widgets/basket_widget.dart';

class ProductSearchDelegate extends SearchDelegate {
  ProductInfo product = ProductInfo.initial();
  List<String> searchProduct = [
    'product.name',
    'product.barcode',
    'product.article',
    'product.measure',
    'product.category',
    'product.brend',
  ];

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: const Icon(Icons.clear))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: const Icon(Icons.arrow_circle_left));
  }

  @override
  Widget buildResults(BuildContext context) {
    List<ProductInfo> queryProduct = [];
    for (var element in searchProduct){
      if(element.toLowerCase().contains(query.toLowerCase())){
        queryProduct.add(element as ProductInfo);
      }
    }

    return  GridView.builder(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 0.7.h,
        crossAxisSpacing: 5,
        mainAxisSpacing: 20,
    ),
    itemCount: queryProduct.length,
      itemBuilder: (BuildContext context, int index) {
          var result =queryProduct[index];
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
                    result.image,
                    height: 100.h,
                    width: 150.w,
                  ),
                ),
                Text('name: ${result.name}',overflow: TextOverflow.ellipsis,),
                Text('category:${result.category}'),
                Text('price:${result.price}\$'),
                Text('count:${result.measure}'),
                10.ph,
                AddBasketWidget(callback: () {},)
              ],
            ),
          );
      },

    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<ProductInfo> queryProduct = [];
    for (var element in searchProduct){
      if(element.toLowerCase().contains(query.toLowerCase())){
        queryProduct.add(element as ProductInfo);
      }
  }
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 0.7.h,
        crossAxisSpacing: 5,
        mainAxisSpacing: 20,
      ),
      itemCount: queryProduct.length,
      itemBuilder: (BuildContext context, int index) {
        var result =queryProduct[index];
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
                  result.image,
                  height: 100.h,
                  width: 150.w,
                ),
              ),
              Text('name: ${result.name}',overflow: TextOverflow.ellipsis,),
              Text('category:${result.category}'),
              Text('price:${result.price}\$'),
              Text('count:${result.measure}'),
              10.ph,
              AddBasketWidget(callback: () {},)
            ],
          ),
        );
      },

    );
}}
