//import 'package:boi_pustok_app_ui/screens/home_screen.dart';
import 'package:flutter/material.dart';

class StartScreenButtons 
{

  colorChangeButton()
  {

    return Container(

        width: 120.0, height: 40.0,
        alignment: Alignment.center,
        padding: const EdgeInsets.all(2.0),
        decoration: BoxDecoration(

          color: Colors.white, 
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(color: Colors.amber, width: 2.0)
        ),
        child: FlatButton(

          onPressed: (){},
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          height: 40.0, minWidth: 120.0,
          color: Colors.amber,
          child: const Align(

            alignment: Alignment.center,
            child: Text("রং পরিবর্তন", style: TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.w600)),
          ),
        )
      );
  }

  bookListButton()
  {
    return Container(

      width: 200.0, height: 40.0,
      alignment: Alignment.center,
      padding: const EdgeInsets.all(2.0),
      decoration: BoxDecoration(

        color: Colors.white, 
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(color: Colors.amber, width: 2.0)
      ),
      child: FlatButton(

        onPressed: (){

          
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        height: 40.0, minWidth: 200.0,
        color: Colors.amber,
        child: const Align(

          alignment: Alignment.center,
          child: Text("বইয়ের তালিকা", style: TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.w600)),
        ),
      )
    );
  }

  rowButtons()
  {
    return Padding(

      padding: const EdgeInsets.symmetric(horizontal: 50.0),
      child: Row(

        children: [

          Expanded(

            child: Container(

              width: 100.0, height: 40.0,
              alignment: Alignment.center,
              padding: const EdgeInsets.all(2.0),
              decoration: BoxDecoration(

                color: Colors.white, 
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(color: Colors.blue, width: 2.0)
              ),
              child: FlatButton(

                onPressed: (){},
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                minWidth: 100.0,
                color: Colors.blue,
                child: const Align(

                  alignment: Alignment.center,
                  child: Text("আরো অ্যাপস", style: TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.w600)),
                ),
              )
            ),
          ),

          const SizedBox(width: 5.0),

          Expanded(

            child: Container(

              width: 100.0, height: 40.0,
              alignment: Alignment.center,
              padding: const EdgeInsets.all(2.0),
              decoration: BoxDecoration(

                color: Colors.white, 
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(color: Colors.red, width: 2.0)
              ),
              child: FlatButton(

                  onPressed: (){},
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                  minWidth: 100.0,
                  color: Colors.red,
                  child: const Align(

                    alignment: Alignment.center,
                    child: Text("রেটিং দিন", style: TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.w600)),
                  ),
                ),
              )
          ),
        ],
      ),
    );
  }
  
}