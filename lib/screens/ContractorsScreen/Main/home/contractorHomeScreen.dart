import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:handy_contractors/routes/app_route_names.dart';
import 'package:iconsax/iconsax.dart';

class ContractorHomeScreen extends StatelessWidget {
  const ContractorHomeScreen({super.key});

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
                Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            height: 100,
                            width: Get.width,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  "Created Jobs",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12,
                                  ),
                                ),
                                Text(
                                  "150",
                                  style: TextStyle(
                                    color: Color(0xff1B5299),
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            height: 100,
                            width: Get.width,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)
                            ),
                            child:  Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  "Hired Workers",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12,
                                  ),
                                ),
                                Text(
                                  "23",
                                  style: TextStyle(
                                    color: Color(0xff1B5299),
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 100,
                      width: Get.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child:  Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "Overall Rating",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            "5.0",
                            style: TextStyle(
                              color: Color(0xff1B5299),
                              fontSize: 30,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
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
                      ListView.separated(
                        itemCount: 6,
                        primary: false,
                        shrinkWrap: true,
                        itemBuilder: ((context, index) {
                          return InkWell(
                            onTap: (() {
                              Get.toNamed(workersProfileScreen);
                            }),
                            child: Container(
                              height: 100,
                              width: Get.width,
                              padding: const EdgeInsets.symmetric(horizontal: 20),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 7,
                                    child: Row(
                                      children: [
                                        const CircleAvatar(
                                          radius: 25,
                                        ),
                                        const SizedBox(width: 10,),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.center,
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
                                              "Plumber",
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 12,
                                              ),
                                            ),  
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: const [
                                        Icon(
                                          Iconsax.message,
                                          color: Color(0xff1B5299),
                                          size: 20,
                                        ),
                                        SizedBox(width: 20,),
                                        Icon(
                                          Iconsax.call,
                                          color: Color(0xff1B5299),
                                          size: 20,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )
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