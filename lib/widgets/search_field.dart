import 'package:flutter/material.dart';

import '../constants.dart';

class SearchField extends StatefulWidget {
  const SearchField({
    Key? key,
    required this.onTap,
    required this.isSearch,
  }) : super(key: key);

  final VoidCallback onTap;
  final bool isSearch;

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  late bool isSearch;

  @override
  void initState() {
    isSearch = widget.isSearch;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        fillColor: kLightGrayColor,
        filled: true,
        hintText: 'Search Store',
        hintStyle: TextStyle(
          color: kGrayColor,
          fontSize: 14,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
          borderSide: BorderSide.none,
        ),
        prefixIcon: Icon(
          Icons.search,
          color: kPrimaryColor,
        ),
        // ignore: unrelated_type_equality_checks
        suffixIcon:
            widget.onTap == true ? const Icon(Icons.tune) : const SizedBox(),
      ),
      onTap: widget.onTap,
      cursorColor: kPrimaryColor,
    );
  }
}
