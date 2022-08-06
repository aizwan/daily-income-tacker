import 'package:daily_income_tracker/widgets/add_entry_fab.dart';
import 'package:daily_income_tracker/widgets/my_earnings_card.dart';
import 'package:daily_income_tracker/widgets/transaction_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            MyEarningsCard(),
            SizedBox(
              height: 60.0,
            ),
            TransactionCard(
              name: "Petrol",
              amount: 25.0,
              isExpense: true,
            ),
            TransactionCard(
              name: "Lalamove",
              amount: 200.0,
              isExpense: false,
            ),
            TransactionCard(
              name: "Tolls",
              amount: 25.0,
              isExpense: true,
            ),
          ],
        ),
      ),
      floatingActionButton: AddEntryFAB(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
