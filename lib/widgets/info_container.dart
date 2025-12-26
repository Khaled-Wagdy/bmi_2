import 'package:flutter/material.dart';
class InfoContainer extends StatelessWidget {
  final String title;
  final int number;
   final Function()? increaseOntap;
   final Function()? decreaseOntap;
  const InfoContainer({super.key, required this.title, required this.number, this.increaseOntap, this.decreaseOntap});

  @override
  Widget build(BuildContext context) {
    return  Expanded(
                  child: Container(
                   padding: EdgeInsets.only(top: 15,bottom: 21),
                    width: 155,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0xff24263B),
                  
                    ),
                    child: Column(
                      children: [
                        
                       Text(title,style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w300),),
                       SizedBox(height: 5,),
                        Text(number.toString(),style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.w400),),
                        SizedBox(height: 21,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            FloatingActionButton.small(onPressed: decreaseOntap,
                            backgroundColor: Color(0xff8B8C9E),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100),
                            
                              
                            ),
                            child: Icon(Icons.remove,color: Colors.white,),
                  
                            
                            ),
                            
                             FloatingActionButton.small(onPressed:increaseOntap,
                            backgroundColor: Color(0xff8B8C9E),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100),
                            
                              
                            ),
                            child: Icon(Icons.add,color: Colors.white,),
                  
                            
                            )
                          ],
                        )
                      ],
                    ),
                  
                  ),
                );
  }
}