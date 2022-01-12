import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: Scaffold(appBar: AppBar(title: Text('Details Page'),
      ),
     body: Column(children: [
       Expanded(child: SvgPicture.asset('assets/images/svgpic.svg')),
     ],),
    ),
    );
  }
}