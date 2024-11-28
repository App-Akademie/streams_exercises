import 'package:flutter/material.dart';
import 'package:streams_exercises/features/chat/chat_repository.dart';
import 'package:streams_exercises/features/chat/chat_screen.dart';
import 'package:streams_exercises/features/numbers/number_repository.dart';
import 'package:streams_exercises/features/numbers/number_screen.dart';
import 'package:streams_exercises/features/time/time_repository.dart';
import 'package:streams_exercises/features/time/time_screen.dart';

final ButtonStyle buttonStyle = ElevatedButton.styleFrom(
  foregroundColor: Colors.white,
  backgroundColor: Colors.blue,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(4),
  ),
);

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final NumberRepository numberRepository = NumberRepository();
  final TimeRepository timeRepository = TimeRepository();
  final ChatRepository chatRepository = ChatRepository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: buttonStyle,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return NumberScreen(numberRepository: numberRepository);
                }));
              },
              child: const Text("Zum Number Screen"),
            ),
            SizedBox(height: 32),
            ElevatedButton(
              style: buttonStyle,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return TimeScreen(timeRepository: timeRepository);
                }));
              },
              child: const Text("Zum Time Screen"),
            ),
            SizedBox(height: 32),
            ElevatedButton(
              style: buttonStyle,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ChatScreen(chatRepository: chatRepository);
                }));
              },
              child: const Text("Zum Chat Screen"),
            ),
          ],
        ),
      ),
    );
  }
}
