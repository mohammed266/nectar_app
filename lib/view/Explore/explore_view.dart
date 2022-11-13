import 'package:flutter/material.dart';
import 'package:mido_app/constants.dart';
import 'package:mido_app/widgets/my_text.dart';
import 'package:mido_app/widgets/search_field.dart';

class ExploreView extends StatefulWidget {
  const ExploreView({Key? key}) : super(key: key);

  @override
  State<ExploreView> createState() => _ExploreViewState();
}

class _ExploreViewState extends State<ExploreView> {
   bool isSearchBar = false;
  late bool onTap;

  @override
  void initState() {
    setState(() {
      isSearchBar = !isSearchBar;
       onTap = false;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          MyText(
            verticalMargin: 25,
            data: 'Find Products',
            color: kBlackColor,
            fontSize: 15,
            fontWeight: FontWeight.w600,
          ),
          Row(
            children: [
              Expanded(
                child: SearchField(
                  isSearch: false,
                  onTap: () {
                   if(onTap == false){
                     setState(() {
                       isSearchBar = false;
                     });
                   }else {
                     setState(() {
                       isSearchBar = true;
                     });
                   }
                  },
                ),
              ),
              if (onTap == true) const Icon(Icons.tune),
            ],
          ),
          Expanded(
            child: GridView.builder(
              itemCount: 6,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 6,
                crossAxisSpacing: 6,
                // childAspectRatio: 0.9,
              ),
              itemBuilder: (context, int index) => Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: kGrayColor.withOpacity(0.5)),
                  color: kLightGrayColor,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image(image: AssetImage(getAsset('coca'))),
                    MyText(
                      data: 'Beverages',
                      fontSize: 17,
                      color: kBlackColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
