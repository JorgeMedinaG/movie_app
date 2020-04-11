import 'package:flutter/material.dart';

class SmallCard extends StatelessWidget {
  const SmallCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
          height: 120.0,
          width: 200.0,
          child: Container(
            padding: EdgeInsets.all(10.0),
            child: ClipRRect(
              borderRadius: BorderRadius.only(topRight : Radius.circular(20.0), bottomLeft : Radius.circular(20.0)),
              child: FadeInImage(
                    fit: BoxFit.fill,
                    image: NetworkImage("https://www.infobae.com/new-resizer/NAslJcxDO6HxPs_HmAjMvLJ2DyU=/750x0/filters:quality(100)/arc-anglerfish-arc2-prod-infobae.s3.amazonaws.com/public/AERXHKDICVBOXNJF4EJE2RXYJ4.jpg"),
                    placeholder: NetworkImage("https://i.pinimg.com/originals/a2/dc/96/a2dc9668f2cf170fe3efeb263128b0e7.gif"),
                  ),
             
              // Stack(
              //     children: <Widget>[
              //        FadeInImage(
              //           fit: BoxFit.fill,
              //           image: NetworkImage("https://www.infobae.com/new-resizer/NAslJcxDO6HxPs_HmAjMvLJ2DyU=/750x0/filters:quality(100)/arc-anglerfish-arc2-prod-infobae.s3.amazonaws.com/public/AERXHKDICVBOXNJF4EJE2RXYJ4.jpg"),
              //           placeholder: NetworkImage("https://i.pinimg.com/originals/a2/dc/96/a2dc9668f2cf170fe3efeb263128b0e7.gif"),
              //           ),
              //       // Container(
              //       //   color: Colors.red,
              //       // ),
              //       Container(
              //         padding: EdgeInsets.all(15.0),
              //         child: Column(
              //           mainAxisAlignment: MainAxisAlignment.end,
              //           crossAxisAlignment: CrossAxisAlignment.start,
              //           children: <Widget>[
              //             Text("Titulo"), 
              //             Text("Subtitulo")
              //           ],
              //         ),
              //       ),
              //     ],
              //   ),
            ),
          )
        );

    // return Container(
    //       height: 120.0,
    //       width: 200.0,
    //       child: Container(
    //         padding: EdgeInsets.all(15.0),
    //         child: Stack(
    //           children: <Widget>[
    //             Container(
    //               decoration: BoxDecoration(),
    //               child: Image(
    //                 fit: BoxFit.fill,
    //                 image: NetworkImage("https://www.infobae.com/new-resizer/NAslJcxDO6HxPs_HmAjMvLJ2DyU=/750x0/filters:quality(100)/arc-anglerfish-arc2-prod-infobae.s3.amazonaws.com/public/AERXHKDICVBOXNJF4EJE2RXYJ4.jpg",))
    //             ),
    //             Column(
    //               mainAxisAlignment: MainAxisAlignment.end,
    //               crossAxisAlignment: CrossAxisAlignment.start,
    //               children: <Widget>[
    //                 Text("Titulo"), 
    //                 Text("Subtitulo")
    //               ],
    //             ),
    //           ],
    //         ),
    //       ),
    //       decoration: BoxDecoration(
    //         color: Colors.red,
    //         borderRadius: BorderRadius.only(topRight : Radius.circular(20.0), bottomLeft : Radius.circular(20.0))
    //       ),
    //     );       
  }
}