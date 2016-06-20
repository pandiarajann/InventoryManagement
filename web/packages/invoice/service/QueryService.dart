library query_service;

import 'dart:async';

import 'package:invoice/service/Invoice.dart';
import 'package:angular/angular.dart';

@Injectable()
class QueryService {
  String _invoiceDataFileUrl = 'invoice_data.json';

  Map<String, Invoice> _invoiceCache;
  Future _loaded;

  final Http _http;

  QueryService(Http this._http) {
    _loaded = Future.wait([_loadInvoice()]);
  }

  Future _loadInvoice() {
    return _http.get(_invoiceDataFileUrl)
      .then((HttpResponse response) {
        _invoiceCache = new Map<String, Invoice>();
        for (Map invoice in response.data) {
          Invoice r = new Invoice.fromJson(invoice);
          _invoiceCache[r.itemCode] = r;
        }
      });
  }

  Future<Map<String, Invoice>> getAllInvoice() {
    return _invoiceCache == null
        ? _loaded.then((_) => _invoiceCache)
        : new Future.value(_invoiceCache);
  }


}
