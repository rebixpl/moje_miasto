import 'package:dialog_flowtter/dialog_flowtter.dart';
import 'package:flutter/material.dart';
import 'package:moje_miasto/theme.dart';

class ChatBody extends StatelessWidget {
  final List<Map<String, dynamic>> messages;

  const ChatBody({
    Key? key,
    this.messages = const [],
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, i) {
        var obj = messages[messages.length - 1 - i];
        Message message = obj['message'];
        bool isUserMessage = obj['isUserMessage'] ?? false;
        return Row(
          mainAxisAlignment:
              isUserMessage ? MainAxisAlignment.end : MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            _MessageContainer(
              message: message,
              isUserMessage: isUserMessage,
            ),
          ],
        );
      },
      separatorBuilder: (_, i) => Container(height: 10.0),
      itemCount: messages.length,
      reverse: true,
      padding: const EdgeInsets.symmetric(
        horizontal: 10.0,
        vertical: 20.0,
      ),
    );
  }
}

class _MessageContainer extends StatelessWidget {
  final Message message;
  final bool isUserMessage;

  const _MessageContainer({
    Key? key,
    required this.message,
    this.isUserMessage = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 250.0),
      child: LayoutBuilder(
        builder: (context, constrains) {
          switch (message.type) {
            case MessageType.card:
              return _CardContainer(card: message.card!);
            case MessageType.text:
            default:
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: isUserMessage
                        ? Theme.of(context).colorScheme.secondary
                        : AppTheme.kAccentColor,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    message.text?.text?[0] ?? '',
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              );
          }
        },
      ),
    );
  }
}

class _CardContainer extends StatelessWidget {
  final DialogCard card;

  const _CardContainer({
    Key? key,
    required this.card,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppTheme.kAccentColor,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (card.imageUri != null)
            Container(
              constraints: const BoxConstraints.expand(height: 150.0),
              child: Image.network(
                card.imageUri!,
                fit: BoxFit.cover,
              ),
            ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  card.title ?? '',
                  style: const TextStyle(
                    fontSize: 22.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                if (card.subtitle != null)
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Text(
                      card.subtitle!,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                if (card.buttons?.isNotEmpty ?? false)
                  Container(
                    constraints: const BoxConstraints(
                      maxHeight: 40.0,
                    ),
                    child: ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      // padding: const EdgeInsets.symmetric(vertical: 5),
                      itemBuilder: (context, i) {
                        CardButton button = card.buttons![i];
                        return TextButton(
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor:
                                Theme.of(context).colorScheme.secondary,
                          ),
                          child: Text(button.text ?? ''),
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text(button.postback ?? ''),
                            ));
                          },
                        );
                      },
                      separatorBuilder: (_, i) => const SizedBox(width: 10.0),
                      itemCount: card.buttons!.length,
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
