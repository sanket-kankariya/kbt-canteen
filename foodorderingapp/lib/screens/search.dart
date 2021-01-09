import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  // TextEditingController _searchcontroller = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // _searchcontroller.selection.start.;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SafeArea(
                      child: Padding(
            padding: EdgeInsets.only(left: 16, right: 16 , top: 10),
            child: Hero(
              tag: 'searchfied',
              child: TextField(
                // controller: _searchcontroller,
                autofocus: true,
                // enabled: false,
                decoration: InputDecoration(
                  hintText: "Search",
                  hintStyle: TextStyle(color: Colors.grey),
                  prefixIcon: GestureDetector(
                    onTap: () => Navigator.pop(context),
                                      child: Icon(
                      Icons.arrow_back,
                      size: 20,
                      color: Colors.redAccent,
                    ),
                  ),
                  contentPadding: EdgeInsets.all(8),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                      borderSide: BorderSide(color: Colors.grey)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                      borderSide: BorderSide(color: Colors.redAccent)),
                ),
              ),
            ),
        ),
          ),
        ],
      ),
    );
  }
}
