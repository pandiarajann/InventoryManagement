library invoice_main;

import 'package:angular/angular.dart';
import 'package:angular/application_factory.dart';
import 'package:logging/logging.dart';

import 'package:invoice/component/invoice_component.dart';
import 'package:invoice/component/modify_invoice.dart';
import 'package:invoice/routing/invoice_routing.dart';

class MyAppModule extends Module {
  MyAppModule() {
    bind(InvoiceComponent);
    bind(ModifyInvoiceComponent);
    bind(RouteInitializerFn, toValue: invoiceRouteInitializer);
    bind(NgRoutingUsePushState, toValue: new NgRoutingUsePushState.value(false));
  }
}

void main() {
  Logger.root..level = Level.FINEST
             ..onRecord.listen((LogRecord r) { print(r.message); });

  applicationFactory()
      .addModule(new MyAppModule())
      .run();
}
