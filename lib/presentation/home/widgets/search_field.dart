import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchField extends StatefulWidget {
  const SearchField({super.key});

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  @override
  Widget build(BuildContext context) {
   return Padding(
     padding: const EdgeInsets.symmetric(horizontal: 12),
     child: TextField(
        cursorColor: Colors.black,
        keyboardType: TextInputType.visiblePassword,
        decoration: InputDecoration(
          isDense: true,
          contentPadding: EdgeInsets.symmetric(vertical: 24),
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.white, width: 0.5),borderRadius: BorderRadius.circular(24)),
          focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.white, width: 0.5),borderRadius: BorderRadius.circular(24)),
       hintText: "Поиск",
          hintStyle: TextStyle(color: Colors.white,fontSize: 12),
          prefixIcon: SvgPicture.asset("assets/images/search_catalog.svg",height: 24,width: 24,),
          suffixIcon:const Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Icon(Icons.settings,color: Colors.white,),
          ),
      ),
     )
   );
    // return  Container(
    //
    //   margin: const EdgeInsets.symmetric(horizontal: 12),
    //   height: 64,
    //
    //   decoration: BoxDecoration(
    //       color: Colors.red,
    //       border: Border.all(color: Colors.white, width: 1),
    //       borderRadius: BorderRadius.circular(24)),
    //   child: Center(
    //     child: TextField(
    //       // onChanged: (query) => searchProduct(query),
    //       // controller: productSearchController,
    //       textCapitalization: TextCapitalization.sentences,
    //       decoration: InputDecoration(
    //         contentPadding: const EdgeInsets.all(0),
    //         hintText: 'Поиск',
    //         hintStyle: const TextStyle(
    //           color: Color(0xff949494),
    //           fontSize: 18,
    //         ),
    //         prefixIcon: Container(
    //           padding: const EdgeInsets.only(
    //             top: 8,
    //             bottom: 10,
    //             left: 16,
    //             right: 8,
    //           ),
    //           width: 20,
    //           child: SvgPicture.asset(
    //             'assets/images/search_catalog.svg',
    //             height: 20,
    //             color: const Color(0xff949494),
    //           ),
    //         ),
    //       ),
    //     ),
    //   ),
    // );
  }
}
