import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class JobDetailScreen extends StatelessWidget {
  const JobDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
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
          "Job Details",
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
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 20,),
                const Text(
                  "Help to make 4 Italian chairs\nfor a mordern home",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: "PoppinsSemiBold"
                  ),
                ),               
                const SizedBox(height: 20,),
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 25,
                    ),
                    const SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Akintade Oluwaseun",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontFamily: "PoppinsMedium"
                          ),  
                        ),
                        Text(
                          "Abuja, Nigeria",
                          style: TextStyle(
                            color: Color(0xff1B5299),
                            fontSize: 12,
                            fontFamily: "PoppinsMedium"
                          ),
                        ),                
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 20,),
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
                ),
                const SizedBox(height: 20,),
                Row(
                  children: [
                    Expanded(
                      flex: 17,
                      child: SizedBox(
                        height: 50,
                        child: TextButton(
                          onPressed: (){}, 
                          style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            backgroundColor: const Color(0xff1B5299)
                          ),
                          child: const Text(
                            "Apply",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontFamily: "PoppinsMedium"
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10,),
                    Expanded(
                      flex: 3,
                      child: SizedBox(
                        height: 50,
                        child: TextButton(
                          onPressed: (){}, 
                          style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            backgroundColor: const Color(0xffF2F2F2)
                          ),
                          child: const Icon(
                            Iconsax.share,
                            color: Colors.black,
                          )
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20,),
                const Text(
                  "Job Description",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontFamily: "PoppinsMedium"
                  ),
                ),
              ],
            ),
          )
        ),
      ),
    );
  }
}