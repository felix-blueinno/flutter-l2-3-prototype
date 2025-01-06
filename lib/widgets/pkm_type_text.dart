import 'package:flutter/material.dart';

import '../data/colors.dart';

class PkmTypeText extends StatelessWidget {
  const PkmTypeText({
    super.key,
    required this.types,
  });

  final List<String> types;

  @override
  Widget build(BuildContext context) {
    final txtTheme = Theme.of(context).textTheme;

    return RichText(
      text: TextSpan(
        children: [
          for (final type in types)
            TextSpan(
              text: '$type ',
              style: txtTheme.labelSmall?.copyWith(
                color: Color(typeColors[type.toLowerCase()] ?? 0xFF000000),
              ),
            ),
        ],
      ),
    );
  }
}
