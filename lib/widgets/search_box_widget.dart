import 'package:flutter/material.dart';
import 'package:shopping/widgets/animated_input_widget.dart';

class SearchBoxWidget extends StatefulWidget {
  const SearchBoxWidget({super.key});

  @override
  State<SearchBoxWidget> createState() => _SearchBoxWidgetState();
}

class _SearchBoxWidgetState extends State<SearchBoxWidget> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  bool menuOpened = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AnimatedInputWidget(controller: _controller),
        TextButton(
          onPressed: () {
            !menuOpened ? _controller.forward() : _controller.reverse();
            menuOpened = !menuOpened;
          },
          child: AnimatedIcon(
            icon: AnimatedIcons.menu_close,
            progress: _controller,
            semanticLabel: 'Open Menu',
          ),
        )
      ],
    );
    // Container(
    //   padding: const EdgeInsets.only(left: 20),
    //   height: 60,
    //   decoration: BoxDecoration(
    //     color: Colors.black.withOpacity(0.1),
    //     borderRadius: BorderRadius.circular(128),
    //   ),
    //   child: Row(
    //     children: [
    //       const Icon(Icons.search),
    //       Container(
    //         width: 300,
    //         padding: const EdgeInsets.only(left: 10),
    //         child: TextFormField(
    //           keyboardType: TextInputType.text,
    //           decoration: InputDecoration(
    //               border: InputBorder.none,
    //               labelText: "Search...",
    //               labelStyle: TextStyle(
    //                 color: Theme.of(context).colorScheme.primary,
    //                 fontWeight: FontWeight.w300,
    //                 fontSize: 16,
    //               )),
    //           style: const TextStyle(
    //             fontSize: 20,
    //           ),
    //         ),
    //       ),
    //     ],
    //   ),
    // );
  }
}
