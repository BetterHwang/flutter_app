import 'package:flutter/cupertino.dart';

class UiNotification<T> extends Notification {
  UiNotification(this.msgId, this.param);
  final String msgId;
  final T param;
}