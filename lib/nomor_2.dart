import 'package:flutter/material.dart';

class NomorDua extends StatefulWidget {
  const NomorDua({super.key});

  @override
  State<NomorDua> createState() => _NomorDuaState();
}

class _NomorDuaState extends State<NomorDua> {
  int listCount = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AddButton(
                  onTap: () {
                    setState(() {
                     listCount = listCount +1;
                    });
                    print(listCount);
                  },
                ),
                const SizedBox(height: 8,),
                GridPhone(
              listCount: listCount,
            )
              ],
            ),
          )),
    ));
  }
}

class GridPhone extends StatelessWidget {
  const GridPhone({super.key, required this.listCount});

  final int listCount;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: listCount,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 1.8,
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 10),
      itemBuilder: (context, index) {
        return PhoneCard();
      },
    );
  }
}

class AddButton extends StatelessWidget {
  const AddButton({super.key, required this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              "assets/add.png",
              width: 20,
            ),
            const SizedBox(
              width: 8,
            ),
            const Text(
              "Tambah",
              style: TextStyle(color: Colors.black),
            )
          ],
        ));
  }
}

class PhoneCard extends StatelessWidget {
  const PhoneCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.grey)),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            "assets/phone.png",
            width: 30,
          ),
        ),
      ),
    );
  }
}
