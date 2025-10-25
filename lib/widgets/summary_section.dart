import 'package:flutter/material.dart';

class SummarySection extends StatefulWidget {
  const SummarySection({super.key});

  @override
  State<SummarySection> createState() => _SummarySectionState();
}

class _SummarySectionState extends State<SummarySection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("summary section", style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
