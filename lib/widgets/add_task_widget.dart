import 'package:flutter/material.dart';

import '../constants/colors.dart';

class AddTaskWidget extends StatelessWidget {
  const AddTaskWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: SizedBox(
        height: 130,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                        borderSide: BorderSide.none),
                    filled: true,
                    fillColor: Colors.white70,
                    hintText: 'Add a todo item',
                    hintStyle: TextStyle(
                      color: kGrey,
                    )),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: SizedBox(
                  height: 45,
                  width: 100,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(kBlue),
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)))),
                      ),
                      child: const Center(
                          child: Text(
                        'Save',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ))),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
