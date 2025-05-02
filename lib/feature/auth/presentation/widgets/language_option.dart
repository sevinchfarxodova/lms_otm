import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LanguageOption extends StatelessWidget {
  final String title;
  final String subtitle;
  final String value;
  final String selectedValue;
  final String flagUrl;
  final VoidCallback onTap;

  const LanguageOption({
    required this.title,
    required this.subtitle,
    required this.value,
    required this.selectedValue,
    required this.flagUrl,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool isSelected = value == selectedValue;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        decoration: BoxDecoration(
          border: Border.all(
            color: isSelected ? Colors.blue : Colors.grey.shade300,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            SvgPicture.asset(flagUrl, width: 30, height: 20, fit: BoxFit.cover),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: const TextStyle(fontSize: 16)),
                  Text(subtitle, style: const TextStyle(color: Colors.grey)),
                ],
              ),
            ),
            if (isSelected) const Icon(Icons.check, color: Colors.blue),
          ],
        ),
      ),
    );
  }
}
