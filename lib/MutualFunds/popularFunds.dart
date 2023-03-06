import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../provider/MutualFundsProvider.dart';

class PopularFunds extends StatelessWidget {
  const PopularFunds({super.key});

  @override
  Widget build(BuildContext context) {
     final mfprovider = Provider.of<MutualFundsProvider>(context);
    return Container(
        height: MediaQuery.of(context).size.height * 0.16,
        // color: Colors.red,
         child: ListView.separated(
          itemCount: mfprovider.numOfFunds.length ,
          itemBuilder: (context, index) {
            return fundCard(context,index);
          },
          separatorBuilder: (cosntext, index) {
            return SizedBox(
               width: MediaQuery.of(context).size.width*0.05,
            );
          },
          scrollDirection: Axis.horizontal
         )
    );
  }
}

Widget fundCard(BuildContext context,int index){
  final mfprovider = Provider.of<MutualFundsProvider>(context);
   return Container( 
    
     height: MediaQuery.of(context).size.height * 0.12,
     width: MediaQuery.of(context).size.width*0.85,
    decoration: BoxDecoration(
      // border: Border.all(color: Colors.grey),
      borderRadius: BorderRadius.circular(10),
      color: Color.fromARGB(255, 46, 45, 45)

    ),  
    child: Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.04,
          top: MediaQuery.of(context).size.height*0.018,),
          child: Row(
            children: [
              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white
                  
                ),
                child: Image.asset("${mfprovider.numOfFunds[index].image}",height: 30,width: 30,),)
            ],
          ),
        
        ),
        SizedBox(
           height: MediaQuery.of(context).size.height*0.005,
        ),
        Padding(
          padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.05),
          child: Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width*0.55,
                // color: Colors.amber,
                child: Text("${mfprovider.numOfFunds[index].fundName}",
                          style: GoogleFonts.roboto(
                 fontSize: 14,
                 fontWeight: FontWeight.w500,
                          )
                          ,overflow: TextOverflow.fade,),
              ),
            SizedBox(
              width: MediaQuery.of(context).size.width*0.035,
            ),
            Container(
              width: MediaQuery.of(context).size.width*0.2,
              height: MediaQuery.of(context).size.height*0.05,
              // color: Colors.amber,
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text("${mfprovider.numOfFunds[index].percentage}",style: TextStyle(fontWeight: FontWeight.w500),),
                  Text("${mfprovider.numOfFunds[index].returnyears}"),
                ],
              ),
            ),
            ],
          ),
        ),
         SizedBox(
          height: MediaQuery.of(context).size.height*0.01,
        ),
        Padding(
          padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.06),
          child: Row(children: [
             Text("${mfprovider.numOfFunds[index].equityName}",style: GoogleFonts.roboto(
              fontSize: 14,
              fontWeight: FontWeight.w400,
             ),)
          ],),
        ),

      ],
    ),
   );
}
