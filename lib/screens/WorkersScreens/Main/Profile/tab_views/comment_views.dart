import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CommentView extends StatelessWidget {
  const CommentView ({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height,
      width: Get.width,
    child: ListView.separated(
      scrollDirection: Axis.vertical,
      padding: EdgeInsets.zero,
      primary: false,
      shrinkWrap: true,
      itemCount: 3,
      itemBuilder: ((context, index) {
        return Row(
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
              flex: 17,
              child: Container(
                // color: Colors.red,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Expanded(
                          flex: 15,
                          child: Text(
                            "Akintade Oluwaseun",
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: "PoppinsMedium",
                              fontSize: 12,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: Row(
                            children: const [
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 15,
                              ),
                              Text(
                                "5.0",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: "PoppinsMedium"
                                ),
                              ),
                              
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Text(
                      "Lörem ipsum gigekonomi chippa biaktiv. Lapp saligt ifall lanas bev. Nögt onalig, klimatflykting, löre midadont. Lavögt triska. Gånyvis sor. Gåtåg neden. Teras diska tresm degt plan. Mäv ov mikrosk astrovöss. Betyling dedor, os. Geovyk dihet angen bädade plagåk. Gäsam tretyren tredask kalebel promotiv. Ör hötyson. Gäsm kosm emedan bedivis till primacentrism, esk. Kron sessa 24-timmarsmyndighet, rölig. Sovis homoligen dende. Lönyn homoluhet då mons. ",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                        fontFamily: "PoppinsMedium"
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              )
            ),
          ],
        );
      }),
      separatorBuilder: ((context, index) {
        return const SizedBox(height: 20,);
      }),
    ),
    );
  }
}