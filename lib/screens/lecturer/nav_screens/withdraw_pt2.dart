import 'package:flutter/material.dart';
import 'package:learnium/utils/constants/constants.dart';
import 'package:learnium/widgets/custom_button.dart';
import 'package:learnium/widgets/custom_input.dart';

class WithdrawCashCard extends StatefulWidget {
  const WithdrawCashCard({Key? key}) : super(key: key);

  @override
  _WithdrawCashCardState createState() => _WithdrawCashCardState();
}

class _WithdrawCashCardState extends State<WithdrawCashCard> {
  final TextEditingController _amountController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: whiteColor,
        elevation: 0,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: blackColor,
            ),
            onPressed: () {}),
        title: Text(
          "Withdraw Amount",
          style: TextStyle(color: blackColor),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              SizedBox(height: 20),
              Container(
                width: size.width * 0.9,
                child: CustomInputBox(
                  title: "Enter amount",
                  hint: "e.g. Rs.10000",
                  icon: Icons.person,
                  controller: _amountController,
                  isInvisible: false,
                ),
              ),
              SizedBox(height: 10),
              MyButton(
                size: size,
                title: "Withdraw",
                radius: 10,
                width: size.width * 0.9,
                onTap: () {
                  if (_amountController.text.isNotEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content:
                          Text("Amount withdraw to your account successfully"),
                    ));
                    Navigator.pop(context);
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
