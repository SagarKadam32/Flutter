import 'package:bitcoin_ticker_flutter/services/networking.dart';

const apiKey = 'B8748745-0AE0-4CE1-88F5-44A628C2A46E';
const baseURL = 'rest.coinapi.io';
const getExchangeRatesURL = '/v1/exchangerate/BTC/USD';
const getSelectedCurrencyExchangeRatesURL = '/v1/exchangerate/BTC/';

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

class CoinData {
  Future<dynamic> getCoinData() async {
    NetworkHelper networkHelper = NetworkHelper(baseURL, getExchangeRatesURL, {
      'apikey': '$apiKey',
    });

    var coinData = await networkHelper.getData();
    return coinData;
  }

  Future<dynamic> getCoinDataForSelectedCurrency(
      String selectedCurrency) async {
    NetworkHelper networkHelper = NetworkHelper(
        baseURL, '$getSelectedCurrencyExchangeRatesURL$selectedCurrency', {
      'apikey': '$apiKey',
    });

    var coinData = await networkHelper.getData();
    return coinData;
  }
}
