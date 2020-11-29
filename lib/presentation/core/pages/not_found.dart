import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NotFoundPage extends StatelessWidget {
  final String path;
  final String text;
  const NotFoundPage({Key key, this.path, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      alignment: Alignment.center,
      child: Column(
        children: [
          SvgPicture.asset(path,height : 200),
          // Image.asset(
          //   path,
          //   height: 300,
          // ),
          const SizedBox(height: 20),
          Text(
            text,
            maxLines: 2,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline5,
          )
        ],
      ),
    );
  }
}
