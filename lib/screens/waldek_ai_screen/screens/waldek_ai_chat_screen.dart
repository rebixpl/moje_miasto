import 'package:dialog_flowtter/dialog_flowtter.dart';
import 'package:flutter/material.dart';
import 'package:moje_miasto/screens/konkursy_i_olimpiady_screen/screens/dodaj_konkurs_screen/widgets/date_picker/textfield_input_decoration.dart';
import 'package:moje_miasto/screens/waldek_ai_screen/screens/widgets/chat_body.dart';

class WaldekAiChatScreen extends StatefulWidget {
  const WaldekAiChatScreen({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  State<WaldekAiChatScreen> createState() => _WaldekAiChatScreenState();
}

class _WaldekAiChatScreenState extends State<WaldekAiChatScreen> {
  late DialogFlowtter dialogFlowtter;
  final TextEditingController _controller = TextEditingController();

  List<Map<String, dynamic>> messages = [];

  @override
  void initState() {
    super.initState();
    DialogFlowtter.fromFile().then((instance) => dialogFlowtter = instance);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ChatBody(
              messages: messages,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 5,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                gradient: const LinearGradient(
                  colors: [
                    Color(0xff152C4F),
                    Color(0xff211A4C),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black38,
                    blurRadius: 3.0,
                    spreadRadius: 0.0,
                    offset: Offset(1.0, 1.0),
                  )
                ],
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _controller,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                  IconButton(
                    color: Colors.white,
                    icon: const Icon(Icons.send),
                    onPressed: () {
                      sendMessage(_controller.text);
                      _controller.clear();
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void sendMessage(String text) async {
    if (text.isEmpty) return;
    setState(() {
      addMessage(
        Message(text: DialogText(text: [text])),
        true,
      );
    });

    // dialogFlowtter.projectId = "deimos-apps-0905";

    DetectIntentResponse response = await dialogFlowtter.detectIntent(
      queryInput: QueryInput(
        text: TextInput(
          text: text,
          languageCode: 'pl',
        ),
      ),
      // queryParams: QueryParameters()
    );

    if (response.message == null) return;
    setState(() {
      addMessage(response.message!);
    });
  }

  void addMessage(Message message, [bool isUserMessage = false]) {
    messages.add({
      'message': message,
      'isUserMessage': isUserMessage,
    });
  }

  @override
  void dispose() {
    dialogFlowtter.dispose();
    super.dispose();
  }
}
