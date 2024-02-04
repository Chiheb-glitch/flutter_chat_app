import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:chat_app/chat_app/views/pages/chat_page.dart';
import 'package:chat_app/chat_app/views/widgets/chat_row_widget.dart';
import 'package:chat_app/core/core.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

import '../widgets/top_chat_section.dart';




class image_page extends StatefulWidget {

  @override
  _image_page createState() => _image_page();
}

class _image_page extends State<image_page> with TickerProviderStateMixin {

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
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [

              Text(

                "Images",

                style: TextStyle(

                  color: Colors_app["sample_text"], // Set the text color

                  fontFamily:

                  'Poppins', // Set the font family

                  fontWeight: FontWeight.w500, // Set the font weight

                  fontSize: 12, // Set the font size

                ),

              ),
              Container(width: MediaQuery.of(context).size.width,

                color: Color.fromARGB(50, 153, 157, 168),),

              Stack(

                children: [

                  Container(

                    height: MediaQuery.of(context).size.height *0.85,

                          margin: EdgeInsets.fromLTRB(20,0,20,0),

                   

                     child: SingleChildScrollView(child: Column(

                      
                 
                         

                      children: [
                         for (var k =0 ;k<images_link.length ; k ++)
                         (k % 3  == 0) ?
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                           
                            for (var i =0 ;i<3 ; i ++)
                           ( (i+k) < (images_link.length))?
                                                Container(
                                                
                                         height:  MediaQuery.of(context).size.height *0.13,
                                         width:MediaQuery.of(context).size.width *0.25,
                                         decoration: BoxDecoration(
                                           borderRadius: BorderRadius.circular(10.0),
                                           boxShadow: [
                                             BoxShadow(
                                               blurRadius: 8, // Set the blur radius
                                               // Set the spread radius
                                               offset: Offset(0, 2), // Set the offset
                                             ),
                                           ],
                                           image: DecorationImage(
                                             image: NetworkImage("${images_link[k+i]}"),
                                             fit: BoxFit.cover,
                                           ),
                                         )):SizedBox(),
                          
                          ],),
                        ): SizedBox()

                       


                       

               
               
               ]),),
             ),
          
           ],
         ),
        
  ],)),
      
    ));
  }
}