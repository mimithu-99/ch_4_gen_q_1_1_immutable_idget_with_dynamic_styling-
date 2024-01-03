library ch_4_gen_q_1_1_immutable_idget_with_dynamic_styling;

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

/// A Calculator.
// class Calculator {
//   /// Returns [value] plus 1.
//   int addOne(int value) => value + 1;
// }

/*
Question 1: Immutable Widget with Dynamic Styling
Task:
Create a Flutter application that features an immutable widget similar
 to ImmutableWidget. This widget should dynamically change its styling
(color, shape, etc.) based on user interaction (e.g., button press).

*/
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});




/*
class _MyAppState extends: _MyAppState ক্লাসটি MyApp উইজেটের সাথে সংযুক্তিতে থাকা স্টেট ক্লাস।

Widget build(BuildContext context) {: build মেথডটি ইউজার ইন্টারফেস তৈরি করতে ব্যবহৃত 
হয় এবং এটি বিল্ড হতে বা রিবিল্ড হতে পারে যখন স্টেট পরিবর্তন হয়।

return const MaterialApp(...): MaterialApp উইজেটের একটি ইন্সট্যান্স রিটার্ন হচ্ছে, যা এপ্লিকেশনের 
মূল ম্যাটেরিয়াল ডিজাইন প্যাটার্ন ধারন করে।

title: 'immutable_widget_with_dynamic_styling',: এটি MaterialApp উইজেটের টাইটেল নির্ধারণ 
করে দেওয়া হয়েছে ।

home: YourImmutableWidget(),: MaterialApp উইজেটের হোম প্যারামিটারে YourImmutableWidget 
উইজেটের একটি ইন্সট্যান্স দেয়া হয়েছে।
আমরা এখানে কল করে থাকি

*/
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'immutable_idget_with_dynamic_styling',
      //theme: ,
      home: YourImmutableWidget(),
    );
  }
}


/*
class YourImmutableWidget extends StatefulWidget: YourImmutableWidget ক্লাসটি StatefulWidget 
ক্লাস হিসেবে ডিফাইন হয়েছে, যা একটি mutable অবস্থা ধারণ করতে সক্ষম এবং স্টেট পরিবর্তন করতে পারে।

const YourImmutableWidget({super.key});: YourImmutableWidget ক্লাসের একটি কনস্ট্রাক্টর যা একটি 
ঐচ্ছিক নেমড প্যারামিটার key নিয়ে থাকে, এবং এটি সুপারক্লাসের কনস্ট্রাক্টরে key 
প্যারামিটারকে পাঠানো হয়েছে।

*/
class YourImmutableWidget extends StatefulWidget {
  const YourImmutableWidget({super.key});



/*
@override 
State<YourImmutableWidget> createState() => _MyImmutableWidgetState();: 
createState মেথডটি StatefulWidget ক্লাস থেকে ওভাররাইড করে এবং এটি _MyImmutableWidgetState 
ক্লাসের একটি ইনস্ট্যান্স রিটার্ন করে, যা YourImmutableWidget উইজেটের সাথে সংযুক্ত হবে।

*/
  @override
  State<YourImmutableWidget> createState() => _MyImmutableWidgetState();
}
//class _MyImmutableWidgetState extends: _MyImmutableWidgetState ক্লাসটি YourImmutableWidget 
//উইজেটের সাথে সংযুক্তিতে থাকা স্টেট ক্লাস।
class _MyImmutableWidgetState extends State<YourImmutableWidget> {


  final colorList = <MaterialColor>[
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.blue,
    Colors.purple,
  ];
  MaterialColor currentColor = Colors.grey;
  Random random = Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Center(
              child: Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(color: currentColor),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  currentColor = colorList[random.nextInt(colorList.length)];
                });
              },
              child: Text(
                'Press me!',
                style: TextStyle(color: currentColor),
              ),
            ),
          )
        ],
      )),
    );
  }
}

/*
class _MyImmutableWidgetState extends: _MyImmutableWidgetState ক্লাসটি YourImmutableWidget উইজেটের সাথে সংযুক্তিতে থাকা স্টেট ক্লাস।

final colorList= <MaterialColor>[...: colorList একটি List ডিক্লেয়ার করছে, যা MaterialColor এর লিস্ট হিসেবে ডিফাইন করা হয়েছে।

MaterialColor currentColor = Colors.grey;: currentColor একটি MaterialColor ভ্যারিয়েবল, যা বর্তমানে গ্রে রঙে সেট করা হয়েছে।

Random random = Random();: random একটি Random ক্লাসের ইনস্ট্যান্স, যা র‍্যান্ডম নম্বর তৈরি করতে ব্যবহৃত হবে।

return Scaffold(...: _MyImmutableWidgetState ক্লাসের build মেথডে একটি Scaffold উইজেট রিটার্ন করা হয়েছে, 
যা একটি ম্যাটেরিয়াল ডিজাইনের ভান্ডার উপরে নির্ভর করে।

body: SafeArea(...: Scaffold উইজেটের body প্যারামিটারে SafeArea উইজেট ব্যবহৃত হয়েছে, যা ডিভাইসের স্ক্রিনের 
একটি সুরক্ষিত এলাকা নিয়ে থাকে।

Column(...: SafeArea উইজেটের ভিতরে Column উইজেট ব্যবহৃত হয়েছে, যা উপরের দিকে ভারমাণ দিয়ে এবং এলিমেন্টগুলি 
ভালো মানে বানানোর জন্য ব্যবহৃত হয়।

Container(...: Column উইজেটের ভিতরে একটি Container উইজেট ব্যবহৃত হয়েছে, যা একটি রঙের বর্গ বক্স দেখাতে ব্যবহৃত হচ্ছে।

ElevatedButton(...: Column উইজেটের ভিতরে আরেকটি Padding এবং ElevatedButton উইজেট ব্যবহৃত হয়েছে, যা বাটন প্রেস 
হলে র‍্যান্ডম রঙে বদলে যাবে এবং বাটনের টেক্সট কালার ও সহ বর্তমান রঙের ভিত্তিতে রঙ পরিবর্তন করতে সেট করা হয়েছে।

*/

// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//    title: 'immutable_idget_with_dynamic_styling',
//    home:YourImmutableWidget( ) ,
      
//     );
//   }
// }
