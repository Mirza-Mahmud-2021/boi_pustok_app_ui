import 'package:boi_pustok_app_ui/models/homescreen_data.dart';
import 'package:boi_pustok_app_ui/widgets/appbar_leading.dart';
import 'package:boi_pustok_app_ui/widgets/home_screen_widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget 
{
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> 
{

  final dataList = HomeScreenData.generateDataFunction();

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(

        elevation: 0,
        backgroundColor: Colors.white,
        leading: const Padding(

          padding: EdgeInsets.all(8.0),
          child: AppBarLeading(),
        ),
        actions: [

          Container(

            width: 150.0,
            margin: const EdgeInsets.all(8.0),
            padding: const EdgeInsets.all(2.0),
            alignment: Alignment.center,
            decoration: BoxDecoration(

              borderRadius: BorderRadius.circular(10.0), 
              border: Border.all(color: Theme.of(context).primaryColor, width: 2.0)
            ),
            child: SizedBox(

              width: 150.0, height: 30.0,
              child: MaterialButton(

                elevation: 0,
                color: Theme.of(context).primaryColor,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                onPressed: (){},
                child: const Text("বইয়ের তালিকা", style: TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.w600)),
              ),
            ),
          )
        ]
      ),

      body: Container(

        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(15.0),

        child: ListView.separated(

          itemCount: 6,
          separatorBuilder: (_, index) => const SizedBox(height: 10.0),
          itemBuilder: (constext, index){

            return HomeScreenWidgets(dataList[index]);
          },
        ),
      ),
    );
  }
}