import 'package:flutter/material.dart';

class TransactionCard extends StatelessWidget {
  final String name;
  final double amount;
  final bool isExpense;
  const TransactionCard({
    Key? key,
    required this.name,
    required this.amount,
    required this.isExpense,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      width: double.infinity,
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 3,
            offset: const Offset(1, 1),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 30.0,
                    width: 30.0,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade500,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Icon(
                      Icons.attach_money,
                      color: Colors.white,
                      size: 22,
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    name,
                    style: TextStyle(
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
              Text(
                isExpense ? "-RM$amount" : "+RM$amount",
                style: TextStyle(
                  color: isExpense ? Colors.red : Colors.green,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
