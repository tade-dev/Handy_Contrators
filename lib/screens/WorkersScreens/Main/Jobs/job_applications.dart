import 'package:flutter/material.dart';
import 'package:get/get.dart';

class JobApplicationScreen extends StatelessWidget {
  const JobApplicationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: InkWell(
          onTap: (() {
            Get.back();
          }),
          child: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        title: const Text(
          "Job Applications",
          style: TextStyle(
            color: Colors.black,
            fontSize: 15,
            fontFamily: "PoppinsMedium"
          ),
        ),
      ),
      body: Container(
        height: Get.height,
        width: Get.width,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SafeArea(
          child: ListView.separated(
            scrollDirection: Axis.vertical,
            padding: const EdgeInsets.only(top: 20),
            primary: false,
            shrinkWrap: true,
            itemCount: 6,
            itemBuilder: ((context, index) {
              return Container(
                height: 180,
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                width: Get.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: Container(
                            // alignment: Alignment.topLeft,
                            // color: Colors.green,
                            child: const CircleAvatar(
                              radius: 20,
                            ),
                          )
                        ),
                        Expanded(
                          flex: 12,
                          child: Container(
                            // color: Colors.red,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Akintade Oluwaseun",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 10,
                                  ),
                                ),
                                Text(
                                  "Help to make 4 Italian chairs for a mordern home",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 13,
                                    fontFamily: "PoppinsSemiBold"
                                  ),
                                ),
                              ],
                            ),
                          )
                        ),
                        Expanded(
                          flex: 3,
                          child: Container(
                            // alignment: Alignment.topLeft,
                            // color: Colors.green,
                            child: InkWell(
                              onTap: () {
                                
                              },
                              child: const Icon(
                                Icons.more_vert,
                                color: Colors.black,
                                size: 20,
                              ),
                            )
                          )
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 50,
                          width: 100,
                          child: TextButton(
                            onPressed: (){
                              // Get.toNamed(editProfileScreen);
                            }, 
                            style: TextButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              backgroundColor: Colors.grey.withOpacity(0.2)
                            ),
                            child: const Text(
                              "Delivered",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                            decoration: BoxDecoration(
                              color: const Color(0xff1B5299).withOpacity(0.2),
                              borderRadius: BorderRadius.circular(10)
                            ),
                            child: const Text(
                              "N1000/hr",
                              style: TextStyle(
                                color: Color(0xff1B5299),
                                fontSize: 12,
                              ),
                            ),
                          )
                        ) 
                      ],
                    ),
                  ],
                ),
              );
            }),
            separatorBuilder: ((context, index) {
              return const SizedBox(height: 20,);
            }),
          ),
        ),
      ),
    );
  }
}