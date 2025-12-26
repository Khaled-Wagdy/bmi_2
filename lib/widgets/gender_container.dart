import 'package:flutter/material.dart';
class GenderContainer extends StatelessWidget {
  final String title; 
   final IconData icons;
   final void Function()? onTap;
   final Color? color;
  const GenderContainer({super.key,required this.icons,required this.title, this.onTap, this.color});
 
  @override
  Widget build(BuildContext context) {
    return Expanded(
                   child: InkWell(
                    onTap:onTap,
                     child: Container(
                        height: 180, 
                        width: 155,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color:color ,//Color(0XFF24263B)
                                 
                     
                        ),
                        child: Column(
                          children: [
                            Icon(icons,color: Color(0xffFFFFFF),size: 144,),
                            Text(title,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 20),),
                          ],
                     
                        ),
                        
                        
                      ),
                   ),
                 );
  }
}