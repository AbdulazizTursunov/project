import 'package:flutter/material.dart';

class AddBasketWidget extends StatelessWidget {
  const AddBasketWidget({super.key, required this.callback});

  final VoidCallback callback;

  @override
  Widget build(BuildContext context) => InkWell(
        onTap: () async {
          callback.call();
        },
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: const LinearGradient(
              begin: Alignment.topLeft,
              colors: [
                Color(0xff6BBD3F),
                Color(0xff2CA465),
                Color(0xff148F82),
                Color(0xff0276A2),
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 9),
            child: Text(
              'Savat',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .copyWith(color: Colors.white, fontWeight: FontWeight.w500),
            ),
          ),
        ),
      );
}
