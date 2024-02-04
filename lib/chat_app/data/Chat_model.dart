

class ChatModel{
     
    String user_id;
    String user_name;
    String user_body;
    String content_quote;
    int index_no_readed;

    ChatModel({

        required this.user_id,
        required this.user_name,
        required this.user_body,
        required this.content_quote,
        required this.index_no_readed,

    });



}



class MessageModel{ 
    String user_id;
    String user_name;
    String user_body;
    bool  way;
    String  date;


    MessageModel({
        required this.user_id,
        required this.user_name,
        required this.user_body,
        required this.way,
        required this.date,
        });


}



