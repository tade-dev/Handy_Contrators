import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class CreateJobScreen extends StatelessWidget {
  CreateJobScreen({super.key});

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: (() {
            Get.back();
          }),
          child: const Icon(
            Iconsax.arrow_left,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Create Job",
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
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 20,),
                DropdownButtonFormField(
                  items: [], 
                  onChanged: (value){},
                  decoration: const InputDecoration(
                    hintText: "Job Type",
                    contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black
                      )
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black
                      )
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  // keyboardType: TextInputType.emailAddress,
                  onChanged: (value) {
                    // controller.updateEmail(value);
                  },
                  // validator: ValidationBuilder().minLength(3).email().build(),
                  decoration: const InputDecoration(
                    hintText: "Job name",
                    contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black
                      )
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black
                      )
                    ),
                  ), 
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  // keyboardType: TextInputType.emailAddress,
                  onChanged: (value) {
                    // controller.updateEmail(value);
                  },
                  // validator: ValidationBuilder().minLength(3).email().build(),
                  decoration: const InputDecoration(
                    hintText: "No. of Experience",
                    contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black
                      )
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black
                      )
                    ),
                  ), 
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  minLines: 5,
                  maxLines: 20,
                  onChanged: (value) {
                    // controller.updateEmail(value);
                  },
                  // validator: ValidationBuilder().minLength(3).email().build(),
                  decoration: const InputDecoration(
                    hintText: "Description",
                    contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black
                      )
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black
                      )
                    ),
                  ), 
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Add Images",
                      style: TextStyle(
                        color: Color(0xFF000000),
                        fontSize: 12,
                        fontFamily: "PoppinsMedium"
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                image: AssetImage("images/default_image.png")
                              )
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                image: AssetImage("images/default_image.png")
                              )
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                image: AssetImage("images/default_image.png")
                              )
                            ),
                          ),
                        ),
                      ],
                    ),

                  ],
                ),
                const SizedBox(height: 20,),
                TextFormField(
                  // keyboardType: TextInputType.emailAddress,
                  onChanged: (value) {
                    // controller.updateEmail(value);
                  },
                  // validator: ValidationBuilder().minLength(3).email().build(),
                  decoration: const InputDecoration(
                    hintText: "Location",
                    contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black
                      )
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black
                      )
                    ),
                  ), 
                ),
                const SizedBox(height: 20,),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: TextFormField(
                        // keyboardType: TextInputType.emailAddress,
                        onChanged: (value) {
                          // controller.updateEmail(value);
                        },
                        // validator: ValidationBuilder().minLength(3).email().build(),
                        decoration: const InputDecoration(
                          hintText: "Price",
                          contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black
                            )
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black
                            )
                          ),
                        ), 
                      ),
                    ),
                    const SizedBox(width: 20,),
                    Expanded(
                      flex: 1,
                      child: TextFormField(
                        // keyboardType: TextInputType.emailAddress,
                        onChanged: (value) {
                          // controller.updateEmail(value);
                        },
                        // validator: ValidationBuilder().minLength(3).email().build(),
                        decoration: const InputDecoration(
                          hintText: "/hour",
                          contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black
                            )
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black
                            )
                          ),
                        ), 
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}