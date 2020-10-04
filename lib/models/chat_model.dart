class ChatModel {
  final String name;
  final String message;
  final String time;
  final String avatarUrl;

  ChatModel({this.name, this.avatarUrl, this.message, this.time});
}
  List<ChatModel> dummyData = [
    ChatModel(
        name: "Hasan KAYA",
        message: "Bu bir custom avatar arayüz çalışmasıdır ",
        time: "11:18",
        avatarUrl: "https://avatars1.githubusercontent.com/u/15270497?s=400&u=89b93a7a72505e80bf43f0dde7722cf998d480c6&v=4"
    ),
    ChatModel(
        name: "Ömer KAYA",
        message: "Tebrikler ",
        time: "14:23",
        avatarUrl: "https://avatars1.githubusercontent.com/u/15270497?s=400&u=89b93a7a72505e80bf43f0dde7722cf998d480c6&v=4"
    ),
    ChatModel(
        name: "Emre KAYA",
        message: "Arayüz çalışması nasıl gidiyor ",
        time: "10:50",
        avatarUrl: "https://avatars1.githubusercontent.com/u/15270497?s=400&u=89b93a7a72505e80bf43f0dde7722cf998d480c6&v=4"
    ),

  ];

