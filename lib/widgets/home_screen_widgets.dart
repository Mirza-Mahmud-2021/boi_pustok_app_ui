import 'package:boi_pustok_app_ui/models/homescreen_data.dart';
import 'package:flutter/material.dart';

class HomeScreenWidgets extends StatelessWidget {

  //const HomeScreenWidgets({Key? key}) : super(key: key);

  final HomeScreenData dataInfo;
  
  HomeScreenWidgets(this.dataInfo);

  @override
  Widget build(BuildContext context) {

    return  Row(

      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [

        Expanded(

          child: Container(

            height: 200.0, width: 150.0,
            alignment: Alignment.center,
            decoration: BoxDecoration(

              borderRadius: BorderRadius.circular(10.0), border: Border.all(color: Theme.of(context).primaryColor, width: 2.0)
            ),

            child: Column(

              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                Container(

                  height: 120.0, width: 120.0,
                  decoration: BoxDecoration(

                    borderRadius: BorderRadius.circular(30.0),
                    border: Border.all(color: Colors.red, width: 2.0)
                  ),
                  child: ClipRRect(

                    borderRadius: BorderRadius.circular(30.0),
                    child: Image.asset(dataInfo.image, fit: BoxFit.cover),
                  ),
                )
              ],
            ),
          )
        ),

        const SizedBox(width: 10.0),

        Expanded(

          child: Container(

            height: 200.0, width: 150.0,
            alignment: Alignment.center,
            decoration: BoxDecoration(

              borderRadius: BorderRadius.circular(10.0), border: Border.all(color: Theme.of(context).primaryColor, width: 2.0)
            ),

            child: Column(

              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                Container(

                  height: 120.0, width: 120.0,
                  decoration: BoxDecoration(

                    borderRadius: BorderRadius.circular(30.0),
                    border: Border.all(color: Colors.red, width: 2.0)
                  ),
                  child: ClipRRect(

                    borderRadius: BorderRadius.circular(30.0),
                    child: Image.asset(dataInfo.image, fit: BoxFit.cover),
                  ),
                )
              ],
            ),
          )
        ),

        const SizedBox(width: 10.0),

        Expanded(

          child: Container(

            height: 200.0, width: 150.0,
            alignment: Alignment.center,
            decoration: BoxDecoration(

              borderRadius: BorderRadius.circular(10.0), border: Border.all(color: Theme.of(context).primaryColor, width: 2.0)
            ),

            child: Column(

              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                Container(

                  height: 120.0, width: 120.0,
                  decoration: BoxDecoration(

                    borderRadius: BorderRadius.circular(30.0),
                    border: Border.all(color: Colors.red, width: 2.0)
                  ),
                  child: ClipRRect(

                    borderRadius: BorderRadius.circular(30.0),
                    child: Image.asset(dataInfo.image, fit: BoxFit.cover),
                  ),
                )
              ],
            ),
          )
        ),

        const SizedBox(width: 10.0),
      ],
    );
  }
}