import 'package:flutter/material.dart';


class CardBadge extends StatelessWidget {
  final Widget icon;
  final String count;
  final TextStyle countStyle;
  CardBadge({
   Key key,
   this.count,
   this.countStyle,
   this.icon
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
    width: 48,
    height: 48,
    color: Colors.green,
    child:  Stack(
      children: [
        InkWell(
          onTap: (){},
          child: Container(
            height: 48,
            width: 48,
            child: icon ?? Icon(Icons.shopping_cart),
          ),
        ),
        Positioned(
          right: 8,
          top: 8,
            child: Container(
            width: 12,
            height: 12,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: Colors.red
            ),
            child: Center(child: Text("${count ?? 0}", style: TextStyle(fontSize: 10))
            ),
          ),
        )
       ],
     ),
    );
  }
}
