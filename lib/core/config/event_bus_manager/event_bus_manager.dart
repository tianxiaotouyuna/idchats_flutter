import 'package:event_bus/event_bus.dart';

class EventBusManager {
  static final EventBus _eventBus = EventBus();

  static EventBus get eventBus => _eventBus;

  static void fire(event) {
    _eventBus.fire(event);
  }

  static Stream<T> on<T>() {
    return _eventBus.on<T>();
  }
}