import 'package:flutter/material.dart';

class NewBasket extends StatelessWidget {
  const NewBasket({super.key, required this.callback, required this.title});

  final VoidCallback callback;
  final String title;

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
            // Color(0xff148F82),
            // Color(0xff0276A2),
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 9),
        child: Text(
          title,
          style: Theme.of(context)
              .textTheme
              .titleSmall!
              .copyWith(color: Colors.white, fontWeight: FontWeight.w500),
        ),
      ),
    ),
  );
}
