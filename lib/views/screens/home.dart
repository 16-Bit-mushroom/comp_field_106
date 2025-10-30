import 'package:flutter/material.dart';
import 'package:comp_field/views/components/album_search.dart';
import 'package:comp_field/views/components/home_text_content.dart';
import 'package:comp_field/views/components/recent_cards.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        backgroundColor: Color(0xfffffff0),

        appBar: AppBar(
          title: Text('My App'),
          centerTitle: true,
          backgroundColor: Color(0xfffffff0),
        ),

        body: Padding(
          padding: EdgeInsets.all(10),

          child: Column(
            
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,

                children: [GreyBox(), GreyBox(), GreyBox()],
              ),

              const SizedBox(height: 40,),

              Center(child: FieldCompText(),),

              const SizedBox(height: 40,),

              Center(child: AlbumSearchSection(),)



            ],
          ),
        ),
      ),
    );
  } 
}
