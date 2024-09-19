import 'package:flutter/material.dart';
import 'package:flutter_learn/folder_part1/041_multiple_provider/cart.dart';
import 'package:flutter_learn/folder_part1/041_multiple_provider/money.dart';
import 'package:provider/provider.dart';

class ProviderStateMultiple extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider<Cart>(create: (context) => Cart()),
          ChangeNotifierProvider<Money>(create: (context) => Money())
        ],
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.purple[900],
            title: Text(
              'Multiple Provider',
              style: TextStyle(color: Colors.white),
            ),
          ),
          floatingActionButton: Consumer<Money>(builder: (context, money, _) {
            return Consumer<Cart>(
              builder: (context, cart, _) => FloatingActionButton(
                onPressed: () {
                  if (money.balanceData >= 500) {
                    cart.appleValue = 1;
                    cart.totalPrice = cart.appleVal * 500;
                    money.balance = money.balanceData - 500;
                  }
                },
                shape: CircleBorder(),
                child: Icon(
                  Icons.add_shopping_cart_sharp,
                  color: Colors.white,
                ),
                backgroundColor: Colors.purple,
                focusColor: Colors.purple.shade700,
              ),
            );
          }),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Balance'),
                    Container(
                      height: 30,
                      width: 150,
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.purple[50],
                          border: Border.all(color: Colors.purple, width: 2)),
                      child: Consumer<Money>(
                        builder: (context, money, _) => Text(
                          '${money.balanceData}',
                          textAlign: TextAlign.end,
                          style: TextStyle(
                              color: Colors.purple,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                    height: 30,
                    width: 250,
                    padding: EdgeInsets.all(5),
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black, width: 2)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Consumer<Cart>(
                            builder: (context, cart, _) =>
                                Text('Apple (500) x ${cart.appleVal}')),
                        Consumer<Cart>(
                            builder: (context, cart, _) =>
                                Text('${cart.totalPriceData}'))
                      ],
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
