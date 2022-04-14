import 'package:flutter/material.dart';


class FirstDesign extends StatelessWidget {
  const FirstDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: SafeArea(
      child: Container(
        color: Color(0xFFfafbfb),
        child: Column(children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
              Container(
                child: Stack(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(150),
                            bottomRight: Radius.circular(150)),
                      ),
                      height: MediaQuery.of(context).size.height * 0.42,
                      width: MediaQuery.of(context).size.width * 0.65,
                      child: ClipRRect(
                          borderRadius:const  BorderRadius.only(
                              bottomLeft: Radius.circular(150),
                              bottomRight: Radius.circular(150)),
                          child: Image.asset(
                            "lib/assets/erkinkoray.jpg",
                            fit: BoxFit.fitHeight,
                          )),
                    ),
                    Positioned(
                        bottom: height * 0.05,
                        left: width * 0.19,
                        child: const Text(
                          "Erkin Koray",
                          style: TextStyle(
                              fontSize: 21,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        )),
                    Positioned(
                        bottom: height * 0.02,
                        left: width * 0.25,
                        child:const  Text(
                          "İstemem",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        )),
                  ],
                ),
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz)),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          musiclistitem("İstemem", "3:23", width, false),
          musiclistitem("Bir Eylül Akşamı", "3:23", width, true),
          musiclistitem("Tamam Artık", "3:23", width, false),
          musiclistitem("Aşkımız Bitecek", "3:23", width, false),
          musiclistitem("Öyle Bir Geçer Zaman ki", "3:23", width, false),
         const SizedBox(
            height: 10,
          ),
          Expanded(
            child: Container(
              decoration:const BoxDecoration(
                  color: Color(0xFFffffff),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              height: 80,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      const Icon(
                        Icons.keyboard_arrow_up_outlined,
                        size: 45,
                        color: Colors.grey,
                      ),
                      Column(children: const [
                        Text(
                          "Bir Eylül Akşamı",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Text("Erkin Koray"),
                      ]),
                      const SizedBox(
                        width: 100,
                      ),
                      Container(
                          child: Stack(
                        children: const [
                          CircularProgressIndicator(
                            strokeWidth: 4,
                            color: Colors.black,
                            value: 0.4,
                          ),
                          Positioned(
                              left: 4,
                              top: 5,
                              child: Center(child: Icon(Icons.pause))),
                        ],
                      )),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    ));
  }

  Column musiclistitem(
      String musicname, String musiccounter, double width, bool isopen) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(
              width: width * 0.08,
            ),
            isopen == false ? Icon(Icons.play_arrow) : Icon(Icons.pause),
            SizedBox(
              width: width * 0.03,
            ),
            Container(
                width: width * 0.70,
                child: Row(
                  children: [
                    Text(
                      musicname,
                      style: TextStyle(
                          color: Colors.black54,
                          fontWeight: isopen == true ? FontWeight.bold : null),
                    ),
                    SizedBox(
                      width: width * 0.02,
                    ),
                    isopen == true
                        ? Icon(Icons.multitrack_audio_sharp)
                        : SizedBox()
                  ],
                )),
            //SizedBox(width: width*0.55,),
            Text(musiccounter,
                style: TextStyle(
                    color: Colors.black54,
                    fontWeight: isopen == true ? FontWeight.bold : null))
          ],
        ),
        SizedBox(
          height: width * 0.07,
        )
      ],
    );
  }
}
