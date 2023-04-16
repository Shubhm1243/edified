import 'package:flutter/material.dart';

class ChatbotButton extends StatefulWidget {
  final Function onSendMessage;

  ChatbotButton({required this.onSendMessage});

  @override
  _ChatbotButtonState createState() => _ChatbotButtonState();
}

class _ChatbotButtonState extends State<ChatbotButton> {
  bool _isChatting = false;

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: 16.0,
        right: 16.0,
        child: FloatingActionButton(
            onPressed: () async {
              setState(() {
                _isChatting = true;
              });

              // Call the onSendMessage function passed to this widget
              await widget.onSendMessage();

              setState(() {
                _isChatting = false;
              });
            },
            child: _isChatting
                ? CircularProgressIndicator()
                : Icon(Icons.chat_bubble),
            ),
        );
    }
}