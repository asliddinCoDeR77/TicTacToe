import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tictactoe/utils/AppImage.dart';
import 'package:tictactoe/screen/gamescreen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImage.wall),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Gap(190),
              const Text(
                'WELCOME TO GAME !',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  color: Colors.amber,
                ),
              ),
              const SizedBox(height: 190),
              Container(
                height: 50,
                width: 390,
                decoration: BoxDecoration(
                  border: Border.all(width: 4, color: Colors.grey),
                  borderRadius: BorderRadius.circular(23),
                ),
                child: TextFormField(
                  style: TextStyle(color: Colors.amber),
                  controller: _nameController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your name';
                    }
                    if (value.length <= 5) {
                      return 'Please enter a name with more than 5 characters';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    focusedBorder: InputBorder.none,
                    hintText: 'ENTER YOUR NAME...',
                    hintStyle: TextStyle(
                      color: Color.fromARGB(255, 221, 212, 212),
                      fontWeight: FontWeight.bold,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
              const Gap(300),
              GestureDetector(
                onTap: () {
                  if (_nameController.text.isNotEmpty &&
                      _nameController.text.length >= 4) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => GameScreen()),
                    );
                  }
                },
                child: Container(
                  width: 220,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Colors.orange,
                        Colors.grey,
                      ],
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      'NEXT',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
