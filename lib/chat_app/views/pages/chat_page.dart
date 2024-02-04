import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:chat_app/chat_app/views/pages/details_chat_page.dart';
import 'package:chat_app/chat_app/views/widgets/chat_row_widget.dart';
import 'package:chat_app/core/core.dart';
import 'package:flutter/material.dart';

import '../widgets/top_chat_section.dart';




class Chat_Page extends StatefulWidget {

  @override
  _Chat_Page createState() => _Chat_Page();
}

class _Chat_Page extends State<Chat_Page> with TickerProviderStateMixin {

  TextEditingController _textEditingController = TextEditingController();

  @override
  void initState() {
   
    super.initState();
  }
  @override
  void dispose() {
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
  
    return  Scaffold(

  appBar: AppBar(

    backgroundColor: Colors_app["background_color"],

    actions: [

      SizedBox(width: 20,),

      Text(

        "Chat",

        style: TextStyle(

          color: Colors_app["sample_text"], // Set the text color

          fontFamily:

          'Poppins', // Set the font family

          fontWeight: FontWeight.w400, // Set the font weight

          fontSize: 20, // Set the font size

        ),

      ),

      Spacer(),

      Icon(BootstrapIcons.x_circle,

        color: Colors_app["sample_text"],),

      SizedBox(width: 20,),

    ],

  ),

  backgroundColor: Colors_app["background_color"],

  body: SingleChildScrollView(

    child: Column(

      mainAxisAlignment: MainAxisAlignment.start,

      crossAxisAlignment: CrossAxisAlignment.start,

      children: [

        Container(width: MediaQuery.of(context).size.width,

          height: 1,

          color: Color.fromARGB(50, 153, 157, 168),),

        Container(

          padding: EdgeInsets.fromLTRB(20, 20, 20, 20),

          child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,

            children: [

              Text(

                "Current orders",

                style: TextStyle(

                  color: Colors_app["sample_text"], // Set the text color

                  fontFamily:

                  'Poppins', // Set the font family

                  fontWeight: FontWeight.w500, // Set the font weight

                  fontSize: 12, // Set the font size

                ),

              ),

              Stack(

                children: [

                  SingleChildScrollView(

                    child: Container(

                      height: MediaQuery.of(context).size.height*0.75 - MediaQuery.of(context).viewInsets.bottom,

                      child: SingleChildScrollView(

                        child: Column(

                          children: [

                            for (var i=0;i<reposne_chat_example.length;i++)

                              GestureDetector(

                                onTap: (){

                                  Navigator.push(

                                    context,

                                    PageRouteBuilder(

                                      pageBuilder: (context, animation, secondaryAnimation) {

                                        return Details_chat_page();

                                      },

                                      transitionsBuilder: (context, animation, secondaryAnimation, child) {

                                        const begin = Offset(1.0, 0.0);

                                        const end = Offset.zero;

                                        const curve = Curves.easeInOutQuart;

                                        var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

                                        var offsetAnimation = animation.drive(tween);

                                        return SlideTransition(

                                          position: offsetAnimation,

                                          child: child,

                                        );

                                      },

                                    ),

                                  );

                                },

                                child: chat_row_widget(chat_model:reposne_chat_example[i], ),

                              ),

                          ],

                        ),

                      ),

                    ),

                  ),
      
 
     
 
  ],
),
 Container(
                                  padding: const EdgeInsets.only(bottom: 0),
                                  margin: EdgeInsets.only(top: 7),
                                  width: MediaQuery.of(context).size.width*0.84,
                                  height: 37,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 34, 37, 53),
                                    borderRadius: BorderRadius.circular(30),
                                   
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        child: Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              10, 2, 0, 0),
                                          child: Icon(
                                            Icons.search,
                                            color: Color.fromARGB(255, 198, 208, 218),
                                            size: 28,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.only(top: 5),
                                          child: TextFormField(
                                            controller: _textEditingController,
                                            onChanged: (String value) {},
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 217, 218, 219)),
                                            decoration: InputDecoration(
                                              border: InputBorder.none,
                                              hintText: 'Search',
                                              hintStyle: TextStyle(
                                                fontWeight: FontWeight.w100,
                                                fontSize: 14,
                                                color: Color.fromARGB(255, 255, 255, 255),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                     
                                    ],
                                  ),
                                ),
   

            ]),
          ),


       ],
     ),

    ));

  }
}