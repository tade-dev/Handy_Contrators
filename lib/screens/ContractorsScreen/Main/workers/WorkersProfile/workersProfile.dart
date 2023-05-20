import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:handy_contractors/routes/app_route_names.dart';
import 'package:handy_contractors/screens/WorkersScreens/Main/Profile/tab_views/interets_view.dart';
import 'package:handy_contractors/screens/WorkersScreens/Main/Profile/tab_views/comment_views.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

class WorkersProfileScreen extends StatelessWidget {
  const WorkersProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: InkWell(
            onTap: (() {
              Get.back();
            }),
            child: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          title: const Text(
            "Workers Profile",
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontFamily: "PoppinsMedium"
            ),
          ),
        ),
        body: Container(
          height: Get.height,
          width: Get.width,
          // padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 210,
                  child: Stack(
                    children: [
                      Container(
                        height: 170,
                        width: Get.width,
                        color: Colors.black,
                      ),
                      Positioned(
                        bottom: 0,
                        right: 315,
                        child: Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(40),
                            border: Border.all(
                              color: Colors.white,
                              width: 7
                            )
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        "Akintade Oluwaseun",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: "PoppinsSemiBold",
                          fontSize: 15
                        ),
                      ),
                      const SizedBox(height: 5,),
                      const Text(
                        "Carpenter",
                        style: TextStyle(
                          color: Colors.grey,
                          fontFamily: "PoppinsMedium",
                          fontSize: 12
                        ),
                      ),
                      const SizedBox(height: 10,),
                      const Text(
                        "Abuja, Nigeria",
                        style: TextStyle(
                          color: const Color(0xff1B5299),
                          fontFamily: "PoppinsMedium",
                          fontSize: 12
                        ),
                      ),
                      const SizedBox(height: 10,),
                      const Text(
                        "Bio",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: "PoppinsSemiBold",
                          fontSize: 15
                        ),
                      ),
                      const ReadMoreText(
                        'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey
                        ),
                        trimLines: 2,
                        trimMode: TrimMode.Line,
                        trimCollapsedText: 'Show more',
                        trimExpandedText: 'Show less',
                        moreStyle: TextStyle(
                          fontSize: 12, 
                          fontWeight: FontWeight.bold, 
                          color: Color(0xff1B5299),
                        ),
                        lessStyle: TextStyle(
                          fontSize: 12, 
                          fontWeight: FontWeight.bold, 
                          color: Color(0xff1B5299),
                        ),
                      ),
                      const SizedBox(height: 20,),
                      Row(
                        children: [
                          SizedBox(
                            height: 50,
                            width: 100,
                            child: TextButton(
                              onPressed: (){
                                Get.toNamed(editProfileScreen);
                              }, 
                              style: TextButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                backgroundColor: const Color(0xff1B5299)
                              ),
                              child: const Text(
                                "Hire",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 20,),
                          Row(
                            children: const [
                              Icon(
                                Iconsax.message,
                                color: Color(0xff1B5299),
                                size: 25,
                              ),
                              SizedBox(width: 20,),
                              Icon(
                                Iconsax.call,
                                color: Color(0xff1B5299),
                                size: 25,
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 10,),
                      const Divider(
                        color: Colors.grey,
                      ),
                      const SizedBox(height: 10,),
                      Flexible(
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "Completed Jobs (100)",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
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
                                padding: EdgeInsets.zero,
                                primary: false,
                                shrinkWrap: true,
                                itemCount: 3,
                                itemBuilder: ((context, index) {
                                  return Container(
                                    height: 120,
                                    width: Get.width,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20)
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          flex: 13,
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              const Text(
                                                "Bedroom Cupboard design and build",
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 15,
                                                  fontFamily: "PoppinsMedium"
                                                ),
                                              ),
                                              const SizedBox(height: 10,),
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
                                        ),
                                        Expanded(
                                          flex: 7,
                                          child: Center(
                                            child: Container(
                                              height: 60,
                                              width: 80,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(10),
                                                color: Colors.green,
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  );
                                }),
                                separatorBuilder: ((context, index) {
                                  return const SizedBox(height: 10,);
                                }),
                              )
                            ],
                          ),
                        )
                      ),
                      const SizedBox(height: 50,),
                      TabBar(
                        indicator: BoxDecoration(
                          color: const Color(0xff1B5299),
                          borderRadius: BorderRadius.circular(10)
                        ),
                        unselectedLabelColor: Colors.black,
                        tabs: const [
                          Tab(
                            text: "Comments",
                          ),
                          Tab(
                            text: "Interests",
                          ),
                        ]
                      ),
                      const SizedBox(height: 20,),
                      const SizedBox(
                        height: 1000,
                        child: TabBarView(
                          children: [
                            CommentView(),
                            ClientViews()
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}