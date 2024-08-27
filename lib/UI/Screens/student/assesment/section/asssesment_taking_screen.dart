// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AssessmentTakingPage extends StatefulWidget {
  @override
  _AssessmentTakingPageState createState() => _AssessmentTakingPageState();
}

class _AssessmentTakingPageState extends State<AssessmentTakingPage> {
  // Sample data
  int _currentQuestionIndex = 0;
  final List<String> _questions = [
    'What is the solution to the equation 2x + 3 = 7?',
    'What is the capital of France?',
    'True or False: The Earth is flat?',
  ];
  final List<List<String>> _options = [
    ['2', '3', '4', '5'],
    ['Berlin', 'Madrid', 'Paris', 'Rome'],
    ['True', 'False'],
  ];
  final List<String> _answers = ['4', 'Paris', 'False'];
  final _selectedAnswers = List<String>.filled(3, '');

  void _nextQuestion() {
    setState(() {
      if (_currentQuestionIndex < _questions.length - 1) {
        _currentQuestionIndex++;
      }
    });
  }

  void _previousQuestion() {
    setState(() {
      if (_currentQuestionIndex > 0) {
        _currentQuestionIndex--;
      }
    });
  }

  void _saveProgress() {
    // Save progress logic here
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Progress saved!')),
    );
  }

  void _submitAssessment() {
    // Submit assessment logic here
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Submit Assessment'),
        content: Text(
            'Are you sure you want to submit? Your answers will be finalized.'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              // Submit logic here
            },
            child: Text('Submit'),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('Cancel'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Assessment Taking'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Assessment Title: Mathematics Quiz - Algebra Basics',
            ),
            SizedBox(height: 8),
            SizedBox(height: 16),
            Text(
              _questions[_currentQuestionIndex],
            ),
            SizedBox(height: 16),
            Column(
              children: _options[_currentQuestionIndex].map((option) {
                return ListTile(
                  title: Text(option),
                  leading: Radio<String>(
                    value: option,
                    groupValue: _selectedAnswers[_currentQuestionIndex],
                    onChanged: (value) {
                      setState(() {
                        _selectedAnswers[_currentQuestionIndex] = value!;
                      });
                    },
                  ),
                );
              }).toList(),
            ),
            Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: _previousQuestion,
                  child: Text('Previous'),
                ),
                ElevatedButton(
                  onPressed: _saveProgress,
                  child: Text('Save Progress'),
                ),
                ElevatedButton(
                  onPressed: _submitAssessment,
                  child: Text('Submit Assessment'),
                ),
                ElevatedButton(
                  onPressed: _nextQuestion,
                  child: Text('Next'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
