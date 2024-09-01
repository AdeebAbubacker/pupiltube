import 'package:flutter/material.dart';

class MiscAppBar extends StatefulWidget {
  final bool isthereQr;
  final bool isthereback;
  final VoidCallback? onBackTap; // Define the callback function
  final bool isVisible;
  const MiscAppBar({
    super.key,
    this.isthereQr = true,
    this.isthereback = true,
    this.onBackTap,
    this.isVisible = true,
  });

  @override
  State<MiscAppBar> createState() => _MiscAppBarState();
}

class _MiscAppBarState extends State<MiscAppBar> {
  String qrResult = 'Scanned Data will appear here';
  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: widget.isVisible,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 10,
          right: 10,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back_ios)),
            const Spacer(),
            Container(
              constraints: const BoxConstraints(
                maxHeight: 70,
                maxWidth: 160,
              ),
              child: Image.asset(
                'assets/icon/pupil.png',
                fit: BoxFit
                    .contain, // Maintain aspect ratio while fitting the image within the box
              ),
            ),
            const Spacer(),
            IconButton(onPressed: () {}, icon: const Icon(Icons.notifications)),
          ],
        ),
      ),
    );
  }
}
