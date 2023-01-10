import 'package:flutter/material.dart';
import 'package:form_validator/form_validator.dart';
import 'package:get/get.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          "Edit Profile",
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
        child: Column(
          children: [
            Expanded(
              flex: 18,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                            child: Container(
                              width: Get.width,
                              alignment: Alignment.center,
                              child: Stack(
                                children: [
                                  Container(
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
                                  Positioned(
                                    right: 0,
                                    bottom: 0,
                                    child: Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                        color: const Color(0xff1B5299),
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      child: const Icon(
                                        Icons.edit,
                                        color: Colors.white,
                                        size: 15,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Form(
                        child: Column(
                          children: [
                            const SizedBox(height: 50,),
                            TextFormField(
                              keyboardType: TextInputType.name,
                              onChanged: (value) {
                                
                              },
                              validator: ValidationBuilder().minLength(3).email().build(),
                              decoration: const InputDecoration(
                                labelText: "Fullname",
                                floatingLabelBehavior: FloatingLabelBehavior.always,
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xff1B5299)
                                  )
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xff1B5299)
                                  )
                                ),
                              ), 
                            ),
                            const SizedBox(height: 50,),
                            DropdownButtonFormField(
                              onChanged: (value) {
                                
                              },
                              decoration: const InputDecoration(
                                labelText: "Work interest",
                                floatingLabelBehavior: FloatingLabelBehavior.always,
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xff1B5299)
                                  )
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xff1B5299)
                                  )
                                ),
                              ), 
                              items: [],
                            ),         
                            const SizedBox(height: 50,),
                            Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: TextFormField(
                                    keyboardType: TextInputType.name,
                                    onChanged: (value) {
                                      
                                    },
                                    validator: ValidationBuilder().minLength(3).email().build(),
                                    decoration: const InputDecoration(
                                      labelText: "Location",
                                      floatingLabelBehavior: FloatingLabelBehavior.always,
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xff1B5299)
                                        )
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xff1B5299)
                                        )
                                      ),
                                    ), 
                                  ),
                                ),
                                const SizedBox(width: 20,),   
                                Expanded(
                                  flex: 1,
                                  child: TextFormField(
                                    keyboardType: TextInputType.name,
                                    onChanged: (value) {
                                      
                                    },
                                    validator: ValidationBuilder().minLength(3).email().build(),
                                    decoration: const InputDecoration(
                                      labelText: "Phone",
                                      floatingLabelBehavior: FloatingLabelBehavior.always,
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xff1B5299)
                                        )
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xff1B5299)
                                        )
                                      ),
                                    ), 
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 50,),
                            TextFormField(
                              keyboardType: TextInputType.multiline,
                              onChanged: (value) {
                                
                              },
                              maxLength: 100,
                              maxLines: 6,
                              validator: ValidationBuilder().minLength(3).email().build(),
                              decoration: const InputDecoration(
                                labelText: "Bio",
                                floatingLabelBehavior: FloatingLabelBehavior.always,
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xff1B5299)
                                  )
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xff1B5299)
                                  )
                                ),
                              ), 
                            ),

                          ],
                        )
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Center(
                  child: SizedBox(
                    height: 50,
                    width: Get.width,
                    child: TextButton(
                      onPressed: (){
                        
                      }, 
                      style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        backgroundColor: const Color(0xff1B5299)
                      ),
                      child: const Text(
                        "Save",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}