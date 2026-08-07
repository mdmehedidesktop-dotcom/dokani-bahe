import 'package:flutter/material.dart';
import 'package:project_3/utils/colors.dart';
import 'package:project_3/view/custom_widget/text.dart';
class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: Icon(Icons.arrow_back),),
      body: SafeArea(child: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(text: "Verify OTP",fontWeight: FontWeight.bold,fSize: 23,),
                CustomText(text: "Enter the 6-digit code sent to",color: Colors.black87,fSize: 18,),
                CustomText(text: "+880 01640143246",color: AppColor.primaryColor,fSize: 18,),
                SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 100,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.grey.shade300)
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomText(text: "1",fSize: 22,fontWeight: FontWeight.bold,)
                              ],
                              
                            ),
                          ),
                          SizedBox(width: 3,),
                          Row(
                            children: [
                              Container(
                                height: 100,
                                width: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: Colors.grey.shade300)
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomText(text: "2",fSize: 22,fontWeight: FontWeight.bold,)
                                  ],

                                ),

                              ),
                              SizedBox(width: 3,),
                              Row(
                                children: [
                                  Container(
                                    height: 100,
                                    width: 50,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(color: Colors.grey.shade300)
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        CustomText(text: "3",fSize: 22,fontWeight: FontWeight.bold,)
                                      ],

                                    ),

                                  ),
                                  SizedBox(width: 3,),
                                  Row(
                                    children: [
                                      Container(
                                        height: 100,
                                        width: 50,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            border: Border.all(color: Colors.grey.shade300)
                                        ),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            CustomText(text: "4",fSize: 22,fontWeight: FontWeight.bold,)
                                          ],

                                        ),

                                      ),
                                      SizedBox(width: 3,),
                                      Row(
                                        children: [
                                          Container(
                                            height: 100,
                                            width: 50,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(10),
                                                border: Border.all(color: Colors.grey.shade300)
                                            ),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                CustomText(text: "5",fSize: 22,fontWeight: FontWeight.bold,)
                                              ],

                                            ),
                                          ),
                                          SizedBox(width: 3,),
                                          Row(
                                            children: [
                                              Container(
                                                height: 100,
                                                width: 50,
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(10),
                                                    border: Border.all(color: Colors.grey.shade300)
                                                ),
                                                child: Column(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    CustomText(text: "6",fSize: 22,fontWeight: FontWeight.bold,)
                                                  ],

                                                ),

                                              )
                                            ],
                                          )
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomText(text: "Didn't receive code?",fSize: 16,),
                    CustomText(text: "Resend OTP",color: AppColor.primaryColor,fSize: 18,)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(text: "(00:25)",color: Colors.grey.shade500,),
                    CustomText(text: "(00:25)",color: Colors.grey.shade500,)
                  ],
                ),
                SizedBox(height: 25,),
                Container(
                  height: 60,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.deepOrange,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(text: "Verify OTP",fSize: 18,color: Colors.white,)
                    ],
                  ),
                )
              ],
              
            ),
          ),
        ),
      )),
    );
  }
}

