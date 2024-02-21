import 'package:eat_g/utils/build_context_extension.dart';
import 'package:flutter/material.dart';

class DetailCardItem extends StatelessWidget {
  final String content;
  const DetailCardItem({
    super.key,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width * 0.9,
      margin: EdgeInsets.symmetric(horizontal: context.width * 0.05),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.5),
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: NetworkImage(
            content,
            scale: 1.1,
          ),
        ),
      ),
      // child: Image.network(content, fit: BoxFit.contain,),
    );
  }
}
