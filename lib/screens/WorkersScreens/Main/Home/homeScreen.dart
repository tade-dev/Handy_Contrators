import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:handy_contractors/routes/app_route_names.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 20,),
                Row(
                  children: [
                    Expanded(
                      flex: 17,
                      child: Container(
                        child: Row(
                          children: [
                            Expanded(
                              flex: 3,
                              child: Container(
                                alignment: Alignment.centerLeft,
                                child: const CircleAvatar(
                                  radius: 20,
                                ),
                              )
                            ),
                            Expanded(
                              flex: 14,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    "Good morning,",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 12,
                                      fontFamily: "PoppinsMedium"
                                    ),
                                  ),
                                  Text(
                                    "Akintade Oluwaseun",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontFamily: "PoppinsSemiBold"
                                    ),
                                  ),
                                ],
                              )
                            ),
                          ],
                        ),
                      )
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: InkWell(
                          onTap: () {
                            Get.toNamed(notificationScreen);
                          },
                          child: const Icon(
                            Iconsax.notification,
                            color: Colors.black,
                            size: 25,
                          ),
                        ),
                      )
                    ),
                  ],
                ),
                const SizedBox(height: 30,),
                Container(
                  height: 60,
                  width: Get.width,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.search,
                        color: Colors.grey,
                        size: 25,
                      ),
                      SizedBox(width: 10,),
                      Text(
                        "Search for jobs, contractors ...",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                          fontFamily: "PoppinsMedium"
                        ),
                      ),                      
                    ],
                  ),
                ),
                const SizedBox(height: 20,),
                Flexible(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Recommended",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: "PoppinsSemiBold"
                            ),
                          ),     
                          TextButton(
                            onPressed: (() {
                              
                            }),
                            child: const Text(
                              "Show all",
                              style: TextStyle(
                                color: Color(0xff1B5299),
                                fontSize: 12,
                                fontFamily: "PoppinsMedium"
                              ),
                            ),
                          ),                  
                        ],
                      ),
                      SizedBox(
                        height: 200,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemCount: 6,
                          itemBuilder: ((context, index) {
                            return InkWell(
                              onTap: (() {
                                Get.toNamed(jobDetailScreen);
                              }),
                              child: Container(
                                height: 200,
                                width: 300,
                                padding: const EdgeInsets.symmetric(horizontal: 20),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: const [
                                            CircleAvatar(
                                              radius: 25,
                                            ),
                                            SizedBox(height: 10,),
                                            Text(
                                              "Akintade Oluwaseun",
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 12,
                                              ),
                                            ),  
                                          ],
                                        ),
                                        Flexible(
                                          child: Container(
                                            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                                            decoration: BoxDecoration(
                                              color: const Color(0xff1B5299).withOpacity(0.2),
                                              borderRadius: BorderRadius.circular(10)
                                            ),
                                            child: const Text(
                                              "N400/hr",
                                              style: TextStyle(
                                                color: Color(0xff1B5299),
                                                fontSize: 12,
                                              ),
                                            ),
                                          )
                                        )
                                      ],
                                    ),
                                    const SizedBox(height: 5,),
                                    const Text(
                                      "Help to make 4 Italian chairs for a mordern home",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontFamily: "PoppinsSemiBold"
                                      ),
                                    ),      
                                    const SizedBox(height: 5,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text(
                                          "Abuja, Nigeria",
                                          style: TextStyle(
                                            color: Color(0xff1B5299),
                                            fontSize: 12,
                                            fontFamily: "PoppinsMedium"
                                          ),
                                        ),    
                                        InkWell(
                                          onTap: (() {
                                            
                                          }),
                                          child: const Icon(
                                            Icons.bookmark_outline_rounded,
                                            color: Colors.grey,
                                          ),
                                        )     
                                      ],
                                    )                           
                                  ],
                                ),
                              ),
                            );
                          }),
                          separatorBuilder: ((context, index) {
                            return const SizedBox(width: 10,);
                          }),
                        ),
                      )
                    ],
                  )
                ),
                const SizedBox(height: 10,),
                Flexible(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Popular Jobs",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: "PoppinsSemiBold"
                            ),
                          ),     
                          TextButton(
                            onPressed: (() {
                              
                            }),
                            child: const Text(
                              "Show all",
                              style: TextStyle(
                                color: Color(0xff1B5299),
                                fontSize: 12,
                                fontFamily: "PoppinsMedium"
                              ),
                            ),
                          ),                  
                        ],
                      ),
                      SizedBox(
                        height: 200,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          
                          itemCount: 6,
                          itemBuilder: ((context, index) {
                            return Container(
                              height: 200,
                              width: 300,
                              padding: const EdgeInsets.symmetric(horizontal: 20),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: const [
                                          CircleAvatar(
                                            radius: 25,
                                          ),
                                          SizedBox(height: 10,),
                                          Text(
                                            "Balogun Shola",
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 12,
                                            ),
                                          ),  
                                        ],
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
                                  const SizedBox(height: 5,),
                                  const Text(
                                    "An office setting, Carpenter needed!!!",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontFamily: "PoppinsSemiBold"
                                    ),
                                  ),      
                                  const SizedBox(height: 5,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        "Kaduna, Nigeria",
                                        style: TextStyle(
                                          color: Color(0xff1B5299),
                                          fontSize: 12,
                                          fontFamily: "PoppinsMedium"
                                        ),
                                      ),    
                                      InkWell(
                                        onTap: (() {
                                          
                                        }),
                                        child: const Icon(
                                          Icons.bookmark_outline_rounded,
                                          color: Colors.grey,
                                        ),
                                      )     
                                    ],
                                  )                           
                                ],
                              ),
                            );
                          }),
                          separatorBuilder: ((context, index) {
                            return const SizedBox(width: 10,);
                          }),
                        ),
                      )
                    ],
                  )
                ),
                const SizedBox(height: 10,),
                Flexible(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Nearby Jobs",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: "PoppinsSemiBold"
                            ),
                          ),     
                          TextButton(
                            onPressed: (() {
                              
                            }),
                            child: const Text(
                              "Show all",
                              style: TextStyle(
                                color: Color(0xff1B5299),
                                fontSize: 12,
                                fontFamily: "PoppinsMedium"
                              ),
                            ),
                          ),                  
                        ],
                      ),
                      ListView.separated(
                        scrollDirection: Axis.vertical,
                        primary: false,
                        shrinkWrap: true,
                        itemCount: 3,
                        itemBuilder: ((context, index) {
                          return Container(
                            height: 120,
                            width: Get.width,
                            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 3,
                                  child: Container(
                                    alignment: Alignment.topLeft,
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
                                        Text(
                                          "Abuja, Nigeria",
                                          style: TextStyle(
                                            color: Color(0xff1B5299),
                                            fontSize: 10,
                                            fontFamily: "PoppinsMedium"
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ),
                                Expanded(
                                  flex: 5,
                                  child: Container(
                                    // color: Colors.purple,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        InkWell(
                                          onTap: (() {
                                            
                                          }),
                                          child: const Icon(
                                            Icons.bookmark_outline_rounded,
                                            color: Colors.grey,
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
                                  )
                                ),
                              ],
                            ),
                          );
                        }),
                        separatorBuilder: ((context, index) {
                          return const SizedBox(height: 20,);
                        }),
                      )
                    ],
                  )
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}