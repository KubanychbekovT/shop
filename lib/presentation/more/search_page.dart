import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController _searchController = TextEditingController();
  String _searchText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Center(child: Text('Поиск', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),)),
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.person_outline_outlined, color: Colors.black, size: 32,),
            onPressed: () {},
          ),
          actions: [
            IconButton(
              splashRadius: 22,
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_none_outlined,
                color: Colors.black,
                size: 32,
              ),
            ),
          ],
          backgroundColor: Colors.white,
        ),
        body: Column(
          children: [
            SizedBox(height: 24),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    TextField(
                      controller: _searchController,
                      style: const TextStyle(color: Colors.black),
                      textInputAction: TextInputAction.search,
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        filled: true,
                        prefixIcon: IconButton(
                          icon: const Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                          onPressed: () {},
                        ),
                        hintStyle: const TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                        ),
                        hintText: 'Поиск',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Colors.grey,
                            width: 3,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Colors.grey,
                            width: 3,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Colors.grey,
                            width: 2,
                          ),
                        ),
                      ),
                      cursorColor: Colors.grey,
                      //   onSubmitted: (value) {
                      //     searchCity(value);
                      //     _hideSuggestions();
                      //   },
                      // ),
                      // if (_isSuggestionsVisible && citySuggestions.isNotEmpty)
                      //   Container(
                      //     height: 100,
                      //     color: Color(0xffecf3fe),
                      //     child: ListView.builder(
                      //      // itemCount: citySuggestions.length,
                      //       itemBuilder: (context, index) {
                      //         return ListTile(
                      //           title: Text(citySuggestions[index]),
                      //           onTap: () {
                      //             _searchController.text = citySuggestions[index];
                      //             searchCity(citySuggestions[index]);
                      //             _hideSuggestions();
                      //           },
                      //         );
                      //       },
                      //     ),
                      //   ),
                    )],
                ),
              ),
            ),
          ],
        )
    );
  }
}
