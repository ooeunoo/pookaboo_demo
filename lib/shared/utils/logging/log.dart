import 'package:logger/logger.dart';

final log = Logger(
  printer: PrettyPrinter(
    methodCount: 1,
    lineLength: 110,
  ),
);

void LongPrint(Object object) async {
  int defaultPrintLength = 1020;
  if (object.toString().length <= defaultPrintLength) {
    print(object);
  } else {
    String log = object.toString();
    int start = 0;
    int endIndex = defaultPrintLength;
    int logLength = log.length;
    int tmpLogLength = log.length;
    while (endIndex < logLength) {
      print(log.substring(start, endIndex));
      endIndex += defaultPrintLength;
      start += defaultPrintLength;
      tmpLogLength -= defaultPrintLength;
    }
    if (tmpLogLength > 0) {
      print(log.substring(start, logLength));
    }
  }
}
