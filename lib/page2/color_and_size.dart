import 'package:flutter/material.dart';

import '../Constants.dart';
import '../productsCart.dart';

class ColorAndSize extends StatelessWidget {
  const ColorAndSize({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product? product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
     Expanded(
       child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Text('color'),
        Row(
          children: 
            [
              ColorDot(color:Color(0xFF356C95 ),isSelected: true,),
              ColorDot(color:Color(0xFFF8C078 )),
              ColorDot(color:Color(0xFFA29B9B )),
            ],
        )
        ]
        ),
     ),
      Expanded(
        child: RichText(text:
        TextSpan(
          style: TextStyle(
            color:kTextColor
          ),
          children: [
                TextSpan(text: 'size\n'),
                TextSpan(text: '${product!.size}cm',
                style: Theme.of(context).textTheme.headline5?.copyWith(fontWeight: FontWeight.bold),
                )
        ])
        ),
      )
    ],);
  }
}

class ColorDot extends StatelessWidget {
   Color color=Color(0xFF356C95 );
  final bool? isSelected;
   ColorDot({
    Key? key,  required this.color, this.isSelected=false,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5,right: 10),
      padding: EdgeInsets.all(2.5),
      width: 24,height: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
       // color: (isSelected!? color:(Colors.transparent))
        )
      ),
     child: DecoratedBox(decoration: BoxDecoration(
      shape: BoxShape.circle,
      color:color
     )),
    );
  }
}

