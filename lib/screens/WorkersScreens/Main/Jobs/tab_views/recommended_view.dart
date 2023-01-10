import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RecommendedView extends StatelessWidget {
  const RecommendedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height,
      width: Get.width,
    child: ListView.separated(
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
    ),
    );
  }
}