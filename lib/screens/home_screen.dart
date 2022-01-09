import 'package:boi_pustok_app_ui/screens/dhadha_screen.dart';
import 'package:boi_pustok_app_ui/screens/english_conver_screen.dart';
import 'package:boi_pustok_app_ui/screens/hadis_golpo_screen.dart';
import 'package:boi_pustok_app_ui/screens/islamic_name_screen.dart';
import 'package:boi_pustok_app_ui/screens/jokes_screen.dart';
import 'package:boi_pustok_app_ui/screens/namaz_sura_doa_screen.dart';
import 'package:boi_pustok_app_ui/screens/sms_screen.dart';
import 'package:boi_pustok_app_ui/widgets/appbar_leading.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget 
{
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> 
{

  bool textSelect = true;
  var selectedText = 0;

  List screensList = [

    const DhaDhaScreen(),
    const SMSScreen(),
    const EnglishConverScreen(),
    const JokesScreen(),
    const IslamicNameScreen(),
    const HadisGolpoScreen(),
    const NamazSuraDoaScreen(),
  ];

  List<String> textList = [

    "মজার মজার ধাঁধা",
    "এস.এম.এস",
    "ইংরেজী\nকথোপকথন",

    "জোকস",
    "ইসলামিক নাম",
    "হাদিসের গল্প",

    "নামাজের সূরা ও\nদোয়া",
    "আইন কানুন",
    "গণিতের সূত্র",

    "সফল হওয়ার\nউপায়",
    "জীবন পরিবর্তন হওয়ার বাণী",
    "শিশুদের\nরূপকথার গল্প",

    "ইংরেজি শেখার\nপদ্ধতি",
    "ইচ্ছাশক্তি বাড়াবেন\nযেভাবে",
    "স্মার্টফোনের\nসমস্যার সমাধান",

    "রহস্যময় পৃথিবী",
    "বই পুস্তক সম্পর্কে",
    "বই\nপুস্তক সম্পর্কে",
  ];
  List<String> imageList= [

    "assets/images/dhadha.png",
    "assets/images/sms.png",
    "assets/images/conversation.png",

    "assets/images/jokes.png",
    "assets/images/islamic-name.png",
    "assets/images/hadis.png",

    "assets/images/namaz.png",
    "assets/images/law.png",
    "assets/images/math-formula.png",

    "assets/images/success.png",
    "assets/images/success.png",
    "assets/images/rupkothar-golpo.png",

    "assets/images/learn-english.png",
    "assets/images/iccha-shokti.png",
    "assets/images/smart-phone.png",

    "assets/images/earth.png",
    "assets/images/boi-pustok.png",
    "assets/images/manob-deho.png",
  ];

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

                elevation: 0, focusElevation: 0, hoverElevation: 0, highlightElevation: 0,
                color: Theme.of(context).primaryColor,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                onPressed: (){},
                child: const Text(
                  
                  "বইয়ের তালিকা", 
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.bold)),
              ),
            ),
          )
        ]
      ),

      body: Padding(

        padding: const EdgeInsets.all(5.0),

        child: GridView.builder(

            physics: const BouncingScrollPhysics(),
            itemCount: 18,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, crossAxisSpacing: 8, mainAxisSpacing: 8),
            itemBuilder: (constext, index){

            return Container(

                    height: 500.0, width: 150.0,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                
                      borderRadius: BorderRadius.circular(10.0), border: Border.all(color: Theme.of(context).primaryColor, width: 2.0)
                    ),
                
                    child: Center(

                      child: Column(
                
                        children: [
                          
                          const SizedBox(height: 10.0),

                          Container(
                              
                              height: 65.0, width: 65.0,
                              decoration: BoxDecoration(
                              
                                borderRadius: BorderRadius.circular(10.0),
                                border: Border.all(color: Colors.red, width: 1.0)
                              ),
                              child: ClipRRect(
                              
                                borderRadius: BorderRadius.circular(10.0),
                                child: Image.asset(imageList[index], fit: BoxFit.fill),
                              ),
                          ),

                          const SizedBox(height: 8.0),

                          GestureDetector(
                            
                            onTap: (){

                              if(selectedText == index)
                              {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => screensList[index]));
                              }
                              setState(() {
                                
                                selectedText = index;
                              });
                            },

                            child: Text(

                              textList[index], 
                              textAlign: TextAlign.center, 
                              style: selectedText == index ? TextStyle(color: Theme.of(context).primaryColor) : const TextStyle(color: Colors.black)
                            ) 
                          ),
                        ],
                      ),
                    ),
            
            );
          },
        ),
      ),
    );
  }
}