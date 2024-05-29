
import 'package:flutter/material.dart';
import 'package:loginapp/src/constants/text_strings.dart';

class SearchBoxWidget extends StatelessWidget {
  const SearchBoxWidget({
    super.key,
    required this.textTheme,
  });

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          border: Border(left: BorderSide(width: 4))),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(dDashboardSearch, style: textTheme.bodyMedium?.apply(color: Colors.grey.withOpacity(0.5)),),
          const Icon(Icons.mic, size: 35,)
        ],
      ),
    );
  }
}