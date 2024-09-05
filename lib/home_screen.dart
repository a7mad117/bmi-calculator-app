import 'package:bmi_calculator_app/bmi_result_screen.dart';
import 'package:flutter/material.dart';

class BMIScreen extends StatefulWidget {
  const BMIScreen({Key? key}) : super(key: key);

  @override
  State<BMIScreen> createState() => _BMIScreenState();
}

class _BMIScreenState extends State<BMIScreen> {
  bool isMale = true;
  double height = 180;
  int weight = 80;
  int age = 28;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF090F1C),
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: const Color(0xFF090F1C),
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        isMale = true;
                      });
                    },
                    child: Container(
                      decoration:  BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: isMale?  const Color(0x351A1B2D): const Color(0xFF1A1B2D),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:  [
                          const Icon(Icons.male,
                          size: 90,
                          color: Colors.white,),
                          const SizedBox(
                            height: 15,
                          ),
                          Text('MALE',
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 20,),
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        isMale = false;
                      });
                    },
                    child: Container(
                      decoration:  BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: !isMale?  const Color(0x351A1B2D): const Color(0xFF1A1B2D),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:  [
                          const Icon(Icons.female,
                          size: 90,
                          color: Colors.white,),
                          const SizedBox(
                            height: 15,
                          ),
                          Text('FEMALE',
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
          Expanded(child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child:Container(
              decoration:  BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xFF1A1B2D)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('HEIGHT',
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),),
                  const SizedBox(height: 5,),

                  Row(
                    textBaseline: TextBaseline.alphabetic,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                       Text('${height.round()}',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize:50,
                          fontWeight: FontWeight.bold,
                        ),),
                      Text('cm',
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),),
                    ],
                  ),
                  Slider(value: height,
                    max: 220,
                    min: 80,
                    thumbColor: const Color(0xFFE6144B),
                    activeColor:   Colors.grey[600],
                    onChanged: (double value){
                    setState(() {
                      height = value;
                    });
                  },
                  )
                ],
              ),
            ),
          )),
          Expanded(child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration:  BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFF1A1B2D)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('WEIGHT',
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),),
                         Text('$weight',
                          style:  const TextStyle(
                            color: Colors.white,
                            fontSize:50,
                            fontWeight: FontWeight.bold,
                          ),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(onPressed: (){
                              setState(() {
                                weight--;
                              });
                            },
                              backgroundColor: Colors.grey.withOpacity(0.3),
                              child: const Icon(Icons.remove),
                            ),
                            const SizedBox(width: 10,),
                            FloatingActionButton(onPressed: (){
                              setState(() {
                                weight++;
                              });                            },
                              backgroundColor: Colors.grey.withOpacity(0.3),
                              child: const Icon(Icons.add),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 20,),
                Expanded(
                  child: Container(
                    decoration:  BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFF1A1B2D)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('AGE',
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),),
                         Text('$age',
                          style:  const TextStyle(
                            color: Colors.white,
                            fontSize:50,
                            fontWeight: FontWeight.bold,
                          ),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(onPressed: (){
                              setState(() {
                                age--;
                              });
                            },
                              backgroundColor: Colors.grey.withOpacity(0.3),
                              child: const Icon(Icons.remove),
                            ),
                            const SizedBox(width: 10,),
                            FloatingActionButton(onPressed: (){
                              setState(() {
                                age++;
                              });
                            },
                              backgroundColor: Colors.grey.withOpacity(0.3),
                              child: const Icon(Icons.add),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )),
          Container(
              width: double.infinity,
              color: const Color(0xFFE6144B),
              child: MaterialButton(
                height: 60,
                onPressed: () {
                  var result =(weight / height/ height)*10000;
                  Navigator.push(context,
                  MaterialPageRoute(
                      builder:(context) =>BMIResultScreen(
                        age: age,
                        isMale: isMale,
                        result: result,
                      )
                  ));
                },
                child:  const Text(
                  'CALCULATE',
                  style: TextStyle(color: Colors.white, fontSize: 18,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1),
                ),
              ))
        ],
      ),
    );
  }
}
