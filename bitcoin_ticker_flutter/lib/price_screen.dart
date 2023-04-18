import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bitcoin_ticker_flutter/coin_data.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'dart:io' show Platform;
import 'dart:math';

class PriceScreen extends StatefulWidget {
  @override
  _PriceScreenState createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {
  String selectedCurrency = 'USD';
  double convertedUSD = 0;
  String outputUSD = '';
  CoinData coinData = CoinData();

  void getConvertedUSDValue(String baseCurrency) async {
    var data = await coinData.getCoinData(baseCurrency);
    setState(() {
      convertedUSD = data['rate'];
      outputUSD = convertedUSD.toStringAsFixed(2);
    });
  }

  void getCoinConvertedDataForSelectedCurrency(String baseCurrency) async {
    var data = await coinData.getCoinDataForSelectedCurrency(
        baseCurrency, selectedCurrency);
    setState(() {
      convertedUSD = data['rate'];
      outputUSD = convertedUSD.toStringAsFixed(2);
    });
  }

  Widget getPicker() {
    Widget picker = getIOSPicker();
    if (Platform.isIOS) {
      picker = getIOSPicker();
    } else if (Platform.isAndroid) {
      picker = getAndroidDropdown();
    }
    return picker;
  }

  List<Widget> getCards() {
    List<Widget> cards = [];
    for (String baseCurrency in cryptoList) {
      cards.add(getCard(baseCurrency));
    }
    cards.add(
      Container(
        height: 150.0,
        alignment: Alignment.center,
        padding: EdgeInsets.only(bottom: 30.0),
        color: Colors.lightBlue,
        child: getPicker(),
      ),
    );
    return cards;
  }

  Widget getCard(String baseCurrency) {
    return Padding(
      padding: EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
      child: Card(
        color: Colors.lightBlueAccent,
        elevation: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
          child: Text(
            '1 $baseCurrency = $outputUSD $selectedCurrency',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  DropdownButton<String> getAndroidDropdown() {
    List<DropdownMenuItem<String>> dropDownItems = [];
    for (String currency in currenciesList) {
      var newItem = DropdownMenuItem(
        value: currency,
        child: Text(currency),
      );
      dropDownItems.add(newItem);
    }
    return DropdownButton(
      value: selectedCurrency,
      items: dropDownItems,
      onChanged: (value) {
        setState(() {
          if (value != null) {
            selectedCurrency = value;
            getCoinConvertedDataForSelectedCurrency(baseCurrency);
          }
        });
      },
    );
  }

  CupertinoPicker getIOSPicker() {
    List<Widget> currencies = [];
    for (String currency in currenciesList) {
      var newText = Text(currency);
      currencies.add(newText);
    }
    return CupertinoPicker(
      backgroundColor: Colors.lightBlue,
      itemExtent: 32.0,
      onSelectedItemChanged: (selectedIndex) {
        print(currenciesList[selectedIndex]);
        getCoinConvertedDataForSelectedCurrency();
      },
      children: currencies,
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getConvertedUSDValue('BTC');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('🤑 Coin Ticker'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: getCards(),
      ),
    );
  }
}
