import 'package:flutter/material.dart';
import 'package:store_front_app/screens/add_screen.dart';
import 'package:store_front_app/screens/create_budget_screen.dart';
import 'package:store_front_app/screens/financial_tips_screen.dart';
import 'package:store_front_app/screens/home_screen.dart';

class EntryPoint extends StatefulWidget {
  const EntryPoint({super.key});

  @override
  State<EntryPoint> createState() => _EntryPointState();
}

class _EntryPointState extends State<EntryPoint> {
  int selectedIndex = 0;

  final List<Widget> screens = [
    const HomeScreen(),
    const AddTransactionScreen(),
    const CreateBudgetScreen(),
    FinancialTipsScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        currentIndex: selectedIndex,
        selectedItemColor: const Color.fromARGB(255,103,188,152),
        unselectedItemColor: const Color.fromARGB(255,186,203,214),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.attach_money),
            label: 'Budget',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.tips_and_updates),
            label: 'Tips',
          ),
        ],
      ),
    );
  }
}