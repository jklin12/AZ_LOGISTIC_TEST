import 'package:flutter/material.dart';

class NomorTiga extends StatefulWidget {
  const NomorTiga({super.key});

  @override
  State<NomorTiga> createState() => _NomorTigaState();
}

class _NomorTigaState extends State<NomorTiga> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (context) {
                    return dialog();
                  });
            },
            style: ElevatedButton.styleFrom(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
            ),
            child: const Text(
              "PopUp",
            )),
      ),
    );
  }

  Widget dialog() {
    return AlertDialog(
      titlePadding: const EdgeInsets.all(0),
      shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
      title: Column(
        children: [
          Container(
            alignment: FractionalOffset.topRight,
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.clear),
            ),
          ),
          const Center(child: Text("Hello Word!"))
        ],
      ),
      actions: [
        Center(
          child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
              child: const Text("Close")),
        )
      ],
    );
  }
}
