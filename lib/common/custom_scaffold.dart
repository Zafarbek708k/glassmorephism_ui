import 'package:flutter/cupertino.dart';

class CustomScaffold extends StatelessWidget {
  final Widget child;
  const CustomScaffold({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image:  NetworkImage("https://i.pinimg.com/564x/8b/06/47/8b064794638ac72bd4ab96d72184ffee.jpg"),//  AssetImage("assets/images/73c6ea903354cd5a2cd4eb50619fed8d.jpg"),//AssetImage("assets/images/forest.jpg"),
          fit: BoxFit.cover,
        )
      ),
      child: child,
    );
  }
}
