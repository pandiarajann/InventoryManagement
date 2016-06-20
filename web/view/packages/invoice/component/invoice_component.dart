import 'package:angular/angular.dart';
import 'package:invoice/service/Invoice.dart';

@Component(
    selector: 'invoice-component',
    templateUrl: 'sales_invoice.html'
//    directives: [NgGrid, NgGridItem]
)
class InvoiceComponent {

  static const String LOADING_MESSAGE = "Loading invoice details...";
  static const String ERROR_MESSAGE = "Sorry! Unable to load invoice details!";

  final Http _http;

  // Determine the initial load state of the app
  String message = LOADING_MESSAGE;

  Map<String, Invoice> _invoiceMap = {};
  Map<String, Invoice> get invoiceMap => _invoiceMap;

  // Data objects that are loaded from the server side via json
  //List<Invoice> invoices = [];

  List<Invoice> get invoices => _invoiceMap.values.toList();

  bool invoiceLoaded = false;
//  Map<String, invoice> _invoiceCache;

  InvoiceComponent(this._http) {
    _loadData();
  }

  void _loadData() {

    _http.get('invoice_data.json')
        .then((HttpResponse response) {

      //invoices = response.data.map((d) => new Invoice.fromJson(d)).toList();
      invoiceLoaded = true;

      for (Map invoice in response.data) {
        Invoice r = new Invoice.fromJson(invoice);
        _invoiceMap[r.itemCode] = r;
      }
    })
        .catchError((e) {
      print(e);
      invoiceLoaded = false;
      message = ERROR_MESSAGE;
    });
  }

  void addPage() {
    print("Add Page ");
    Router router = new Router();
    //router.go('view/addInvoice.html','','',false,'',false);
    //router.go('view/addInvoice.html',null);
    router.go('#/add1', null);
//    router.go('http://localhost:63342/InventoryManagement/web/view/addInvoice.html', null);

    //router.gotoUrl('http://localhost:63342/InventoryManagement/web/view/addInvoice.html');
  }
}