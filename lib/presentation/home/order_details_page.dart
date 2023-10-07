import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  final Map? data;
  //final String? hero;
  const DetailsPage({Key? key, required this.data, });

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  int sizeSelected = 1;

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 60),
        child: AppBar(
          elevation: 0,
          leading: Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: const CircleAvatar(
              backgroundColor: Colors.white,
              radius: 20,
              child: Icon(
                Icons.chevron_left,
                color: Colors.black,
                size: 26,
              ),
            ),
          ),
          title: const Text(
            "ORDER DETAILS",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          SizedBox(
            width: w,
            height: h,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  // Hero(
                  //   tag: widget.hero!,
                  //   child: Container(
                  //     height: 350,
                  //     color: Colors.black,
                  //     width: w,
                  //     child: InteractiveViewer(
                  //       child: Image.network(widget.data!["image"]),
                  //     ),
                  //   ),
                  // ),
                  const SizedBox(height: 10),
                  Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 14, vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Text(
                                "${widget.data!["name"]}",
                                style: const TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "DESCRIPTION :",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "${widget.data!["descripstion"]}",
                          style: const TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          "SIZE :",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// import 'package:flutter/material.dart';
//
// class DetailsPage extends StatelessWidget {
//   const DetailsPage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.teal,
//     );
//   }
// }