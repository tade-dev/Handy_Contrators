import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AvailableView extends StatelessWidget {
  const AvailableView({super.key});

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
          height: 100,
          width: Get.width,
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
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
                          "Contractor",
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
                      Icons.star,
                      color: Colors.amber,
                      size: 13,
                    ),
                    Text(
                     "4.5",
                     style: TextStyle(
                       color: Colors.black,
                       fontSize: 13,
                       fontFamily: "PoppinsMedium"
                     ),
                        )
                  ],
                ),
              ),
            ],
          )
        );
      }),
      separatorBuilder: ((context, index) {
        return const SizedBox(height: 20,);
      }),
    ),
    );
  }
}