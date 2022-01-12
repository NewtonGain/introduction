import 'package:flutter/material.dart';
import 'package:introduction/details.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main()=>runApp(MyApp());
class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('Responsive '),
          ),
      body: SafeArea(
        child: IntroductionScreen(
          pages: [
          PageViewModel(
            title: 'this is the of on ',
          body: 'this is the title',
        image: Image.asset('assets/images/1.png'),),
           PageViewModel(
            title: 'this is the of on ',
          body: 'this is the title',
          image: Image.asset('assets/images/undraw_Happy_news_re_tsbd.png'),),
           PageViewModel(
             footer: ElevatedButton(onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsPage())),
             child: Text('Let Start'),),
            title: 'this is the of on ',
          body: 'this is the title',
          image: SvgPicture.asset('assets/images/svgpic.svg')),
          
        ],
        showSkipButton: true,
        
        done: Text('Done'),
        skip: Text('skip'),
        dotsDecorator: DotsDecorator(size: Size.square(10),
        activeSize: Size(20.0,10.0),
        activeColor: Colors.red,activeShape:
         RoundedRectangleBorder(borderRadius: BorderRadius.circular(26.0),),),
         globalBackgroundColor: Colors.amberAccent,
        next: Icon(Icons.arrow_forward),
        onDone: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsPage())),),
        
       ),
    );
  }
}