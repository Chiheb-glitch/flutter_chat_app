import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:chat_app/chat_app/views/pages/chat_page.dart';
import 'package:chat_app/chat_app/views/pages/images_page.dart';
import 'package:chat_app/chat_app/views/widgets/chat_row_widget.dart';
import 'package:chat_app/chat_app/views/widgets/top_details_chat_page.dart';
import 'package:chat_app/core/core.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

import '../widgets/top_chat_section.dart';




class Details_chat_page extends StatefulWidget {

  @override
  _Details_chat_page createState() => _Details_chat_page();
}

class _Details_chat_page extends State<Details_chat_page> with TickerProviderStateMixin {

  TextEditingController _textEditingController = TextEditingController();
List<String> items = [
    'Images',
    'Info',
    'Close',
 
  ];
  String? selectedValue;
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
  
    return Scaffold(

  appBar: AppBar(

    backgroundColor: Colors_app["background_color"],

    iconTheme: IconThemeData(

      color: const Color.fromARGB(255, 214, 214, 214), // Set the color of the back arrow

    ),

    actions: [

      Spacer(),

      Padding(

        padding: const EdgeInsets.only(left: 50.0),

        child: Text(

          "Order no",

          style: TextStyle(

            color: Colors.white, 

            fontFamily:

            'Poppins', 

            fontWeight: FontWeight.w400, 

            fontSize: 20, 

          ),

        ),

      ),

      Spacer(),

      Container(

        width: 50,

        child: DropdownButtonHideUnderline(

          child: DropdownButton2<String>(

            isExpanded: true,

            hint: const Row(

              children: [

            

              ],

            ),

            items: items

                .map((String item) => DropdownMenuItem<String>(

                      value: item,

                      child: Text(

                        item,

                        style: const TextStyle(

                          fontSize: 14,

                          fontWeight: FontWeight.bold,

                          color: Colors.white,

                        ),

                        overflow: TextOverflow.ellipsis,

                      ),

                    ))

                .toList(),

            value: selectedValue,

            onChanged: (String? value) {
              print(value);
              if (value == "Images"){
                  Navigator.push(

                                    context,

                                    PageRouteBuilder(

                                      pageBuilder: (context, animation, secondaryAnimation) {

                                        return image_page();

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
              }

              setState(() {

                selectedValue = value;

              });

            },

            buttonStyleData: ButtonStyleData(

              height: 50,

              width: 0,                padding:EdgeInsets.only(right: 20),


              decoration: BoxDecoration(

                borderRadius: BorderRadius.circular(14),

             

                color:  Colors_app["background_color"],

              ),

            ),

            iconStyleData: const IconStyleData(

              icon: Icon(

                BootstrapIcons.three_dots_vertical,

              ),

              iconSize: 24,

              iconEnabledColor: Color.fromARGB(255, 217, 217, 217),

              iconDisabledColor: Colors.grey,

            ),

            dropdownStyleData: DropdownStyleData(

              maxHeight: 200,

              width: 120,

              decoration: BoxDecoration(

                borderRadius: BorderRadius.circular(14),

                color:  Colors_app["background_color"],

              ),

              offset: const Offset(-20, 0),

              scrollbarTheme: ScrollbarThemeData(

                radius: const Radius.circular(40),

                thickness: MaterialStateProperty.all<double>(6),

                thumbVisibility: MaterialStateProperty.all<bool>(true),

              ),

            ),

            menuItemStyleData: const MenuItemStyleData(

              height: 40,

              padding: EdgeInsets.only(left: 14, right: 14),

            ),

          ),

        ),

      ),]),

            backgroundColor: Colors_app["background_color"],


      body: SingleChildScrollView(

        child: Container(

          child: Column(

            children: [

              Container(width: MediaQuery.of(context).size.width,

                color: Color.fromARGB(50, 153, 157, 168),),

              Stack(

                children: [

                  Container(

                    height: MediaQuery.of(context).size.height *0.85,

                          margin: EdgeInsets.fromLTRB(20,0,20,0),

                   

                     child: SingleChildScrollView(child: Column(

                      

                         

                      children: [

                       

                          for(var i=0 ; i<response_detail_chat_example.length; i++)

                       

                        Row(
                      mainAxisAlignment:  response_detail_chat_example[i].way ? MainAxisAlignment.end:  MainAxisAlignment.start,
                crossAxisAlignment: response_detail_chat_example[i].way ? CrossAxisAlignment.end :  CrossAxisAlignment.start  ,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                      padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                    colors: response_detail_chat_example[i].way ?   [Colors.blue, Color.fromARGB(255, 119, 184, 221)] : [Color.fromARGB(34, 34, 37, 53), Color.fromARGB(62, 141, 141, 141)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                          
                          ),
                      width: 250,
                      child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                    
                      Text(
                      "username",
                           style: TextStyle(
                         color: Colors.white, // Set the text color
                        fontFamily:
                      'Poppins', // Set the font family
                           fontWeight: FontWeight.w400, // Set the font weight
                           fontSize: 12, // Set the font size
                                                 ),
                                               ),
                    
                                                Container(
                                                  width: 200,
                                                  child: Text(
                                                              "lbera7 20 w lyoum 30 rabi ykaber fi ta3tolbera7 20 w lyoum 30 rabi ykaber fi ta3tolbera7 20 w lyoum 30 rabi ykaber fi ta3to",
                                                         style: TextStyle(
                                                       color: const Color.fromARGB(132, 255, 255, 255), // Set the text color
                                                      fontFamily:
                                                              'Poppins', // Set the font family
                                                         fontWeight: FontWeight.w400, // Set the font weight
                                                         fontSize: 12, // Set the font size
                                                   ),
                                                                                       ),
                                                ),
                    
                             Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                     children: [
                       Text(
                          "10:50 AM",
                              style: TextStyle(
                            color: Colors.white, // Set the text color
                           fontFamily:
                          'Poppins', // Set the font family
                              fontWeight: FontWeight.w400, // Set the font weight
                              fontSize: 12, // Set the font size
                                                     ),
                                                   ),
                     ],
                             ),                               
                    
                    
                    ]),),
                  ],
                )
               
               
               
               
               ]),),
             ),
          
           ],
         ),
         Container(
                                  padding: const EdgeInsets.only(bottom: 0),
                                  margin: EdgeInsets.fromLTRB(0,2,0,15),
                                  width: MediaQuery.of(context).size.width -40,
                                  height: 37,
                                  decoration: BoxDecoration(
                                    color: Color(0xff2c3242),
                                    borderRadius: BorderRadius.circular(30),
                                   
                                  ),
                                  child: Row(
                                    children: [
                                     SizedBox(width: 10,),
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.only(bottom: 0.0),
                                          child: TextFormField(
                                            controller: _textEditingController,
                                            onChanged: (String value) {},
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 217, 218, 219)),
                                            decoration: InputDecoration(
                                              border: InputBorder.none,
                                              hintText: 'Type Somthing',
                                              hintStyle: TextStyle(
                                                fontWeight: FontWeight.w100,
                                                fontSize: 15,
                                                color: Color.fromARGB(255, 134, 130, 130),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                     Icon(
                BootstrapIcons.file_plus,color: Color.fromARGB(
                                                    190, 217, 218, 219),     size: 20,
              ),
               SizedBox(width: 10,),
                         Icon(
                BootstrapIcons.send,color: Color.fromARGB(190, 217, 218, 219),
                                                    size: 20,
              ),               SizedBox(width: 20,),
              
                                    ],
                                    
                                  ),
                                ),
  ],)),
      
    ));
  }
}