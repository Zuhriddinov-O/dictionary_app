import 'package:dictionary/data/network/api_service.dart';
import 'package:dictionary/data/model/model.dart';
import 'package:flutter/material.dart';

import '../../core/constants/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isLoading = false;
  Dictionary? dictionary;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            _buildSearchWidget(),
            if (isLoading)
              const LinearProgressIndicator()
            else if (dictionary != null)
              _successField()
            else
              const Center(child: Text("No Data"))
          ],
        ),
      ),
    );
  }

  _buildSearchWidget() {
    return SearchBar(
      hintText: "Search meaning...",
      onSubmitted: (value) {
        _getDef(value);
      },
    );
  }

  _getDef(String words) async {

  }

  _successField() {
    return Container(
      width: double.infinity,
      height: 750,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Type :${dictionary?.fl ?? ""}"),
          Container(
            height: 400,
            child: ListView.builder(
              itemCount: dictionary!.def!.length,
              itemBuilder: (context, index) {
                final definitions = dictionary!.def![index];
                return Text("${definitions.sseq ?? "🔥"}" );
              },
            ),
          )
        ],
      ),
    );
  }
}
