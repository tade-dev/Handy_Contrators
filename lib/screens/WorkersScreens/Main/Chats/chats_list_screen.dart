import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:handy_contractors/routes/app_route_names.dart';
import 'package:iconsax/iconsax.dart';

class ChatListScreen extends StatelessWidget {
  const ChatListScreen({super.key});

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
          "Chats",
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
          child: Column(
            children: [
              const SizedBox(height: 20,),
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
                      "Search for chats...",
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
              Expanded(
                child: ListView.separated(
                  itemCount: 5,
                  itemBuilder: ((context, index) {
                    return Container(
                      height: 80,
                      width: Get.width,
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Container(
                              // color: Colors.green,
                              child: const CircleAvatar(
                                radius: 20,
                              ),
                            )
                          ),
                          const SizedBox(width: 10,),
                          Expanded(
                            flex: 12,
                            child: Container(
                              // color: Colors.red,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text(
                                    "Akintade Oluwaseun",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 13,
                                      fontFamily: "PoppinsMedium"
                                    ),
                                  ),
                                  Text(
                                    "Hey, when can u be free",
                                    style: TextStyle(
                                      color: Colors.grey,
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
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    "2:45pm",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 12,
                                    ),
                                  ),
                                  const SizedBox(height: 10,),
                                  Flexible(
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 2),
                                      decoration: BoxDecoration(
                                        color: const Color(0xff1B5299),
                                        borderRadius: BorderRadius.circular(10)
                                      ),
                                      child: const Text(
                                        "1",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 10,
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
                  separatorBuilder: (context, index) {
                    return const SizedBox(height: 20,);
                  },
                )
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          
        },
        backgroundColor: const Color(0xff1B5299),
        child: const Icon(
          Iconsax.message,
          color: Colors.white,
        ),
      ),
    );
  }
}