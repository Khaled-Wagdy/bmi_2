import 'package:bmi_2/widgets/gender_container.dart';
import 'package:bmi_2/widgets/info_container.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
 
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   bool isMale =false;
  bool isFemale =false;
  int height =50;
  int wight =30;
  int age =20;
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
                GenderContainer(
                  title: "Male",
                  icons: Icons.male,
                  color: isMale?Colors.red:Color(0XFF24263B) ,
                  onTap: () {
                    setState(() {
                      isMale=true;
                      isFemale =false;
                    });
                  },
                ),
                 
                 SizedBox(width: 9,),
                GenderContainer(
                  title: "Female",
                  icons: Icons.female,
                  color:isFemale?Colors.red:Color(0XFF24263B) ,
                  onTap: () {
                    setState(() {
                      isFemale=true;
                      isMale=false;
                    });
                  },
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
                        text: height.toString(),
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
                    value: height.toDouble(), onChanged:(value){
                      setState(() {
                        height =value.toInt();
                      });
                    

                  } ,),
                ],
              ),
            ),
            SizedBox(height:29 ,),
           // age and width
            Row(
             
              
              children: [

                InfoContainer(title: "Weight", number: wight , 
                increaseOntap: (){
                  setState(() {
                    wight++;
                  });
                }, 
                decreaseOntap: (){
                  
                    if (wight>30){
                  
                  setState(() {
                    wight--;
                  });
                    }
                },),
                
            
                SizedBox(width: 9,),
                InfoContainer(title: "age", number: age,
                
                increaseOntap: () {
                  setState(() {
                    age++;
                  });
                  
                },
                decreaseOntap: () {
                  if(age>20){
                  setState(() {
                    age--;
                  });}
                },
                ),
                
              
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