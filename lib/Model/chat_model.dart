import 'package:app01/Model/user_model.dart';

class chat_model{
  String id;
  List<user_model> users=[];
  List user_id=[];
  List chat=[];
  chat_model({required this.id,required this.users,required this.chat,required this.user_id});


  chat_model.from_json(map):this(
    id: map['id'],
    users: map['users'].map<user_model>((e)=>user_model.from.json(e)).toList(),
    chat: map['chat'],
    user_id: map['user_id']
  );
to_json(){
  return{
    'id':id,
    "users":users,
    'chat':chat,
    'user_id':user_id
  };
}






}