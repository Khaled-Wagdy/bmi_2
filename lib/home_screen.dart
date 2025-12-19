import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C2135),
      appBar: AppBar(
        backgroundColor: Color(0xff24263B),
        title: Text("BMI Calculator",style: TextStyle(color: Color(0xffFFFFFF),fontSize: 20,fontWeight: FontWeight.w600,),),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 21,vertical: 20),
        child: Column(
          children: [
            // gender now
            Row(
              children: [
                
                 Expanded(
                   child: Container(
                      height: 180, 
                      width: 155,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color(0XFF24263B),
                               
                   
                      ),
                      child: Column(
                        children: [
                          Icon(Icons.male,color: Color(0xffFFFFFF),size: 144,),
                          Text("Male",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 20),),
                        ],
                   
                      ),
                      
                      
                    ),
                 ),
                 SizedBox(width: 9,),
                 Expanded(
                   child: Container(
                      height: 180, 
                      width: 155,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color(0XFF24263B),
                               
                   
                      ),
                      child: Column(
                        children: [
                          Icon(Icons.female,color: Color(0xffFFFFFF),size: 144,),
                          Text("Female",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 20),),
                        ],
                   
                      ),
                   ),
                 ),
              ],
          
            ),
            //hight container
            SizedBox(height: 25,),
            Container(
              height: 189,
             width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Color(0xff333244),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Height",style: TextStyle(color:Colors.white,fontSize: 20,fontWeight: FontWeight.w300),),
                  Text.rich(TextSpan( 
                    children: [
                      TextSpan(
                        text: "150",
                        style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 40),
                      
                      ),
              
                      TextSpan(
                        text: "cm",
                        style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w400)

                      ),
                     
                    
                    ]
                  )),
                  Slider 
                  
                  (
                    max: 300,
                    min: 0,
                    activeColor: Colors.red,
                    value: 100, onChanged:(value){
                    

                  } ,),
                ],
              ),
            ),
            SizedBox(height:29 ,),
           // age and width
            Row(
             
              
              children: [

                Expanded(
                  child: Container(
                   padding: EdgeInsets.only(top: 15,bottom: 21),
                    width: 155,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0xff24263B),
                  
                    ),
                    child: Column(
                      children: [
                        
                       Text("Weight",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w300),),
                       SizedBox(height: 5,),
                        Text("60",style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.w400),),
                        SizedBox(height: 21,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            FloatingActionButton.small(onPressed: (){},
                            backgroundColor: Color(0xff8B8C9E),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100),
                            
                              
                            ),
                            child: Icon(Icons.remove,color: Colors.white,),
                  
                            
                            ),
                            
                             FloatingActionButton.small(onPressed: (){},
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
                ),
                SizedBox(width: 9,),
                Expanded(
                  child: Container(
                   padding: EdgeInsets.only(top: 15,bottom: 21),
                    width: 155,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0xff24263B),
                  
                    ),
                    child: Column(
                      children: [
                        
                       Text("age",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w300),),
                       SizedBox(height: 5,),
                        Text("26",style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.w400),),
                        SizedBox(height: 21,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            FloatingActionButton.small(onPressed: (){},
                            backgroundColor: Color(0xff8B8C9E),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100),
                            
                              
                            ),
                            child: Icon(Icons.remove,color: Colors.white,),
                  
                            
                            ),
                            
                             FloatingActionButton.small(onPressed: (){},
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
                )
              ],
           
           
            ),

          ],
        ),
      ),
      bottomNavigationBar: MaterialButton(
        onPressed: () {
          
          
        },
        color: Color(0xffE83D67),
        height: 100,
        child: Text(
          'Calculate',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Color(0xffFFFFFF),
          ),
        ),
      ),
      
    );
  }
}