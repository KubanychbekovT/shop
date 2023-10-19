import 'dart:collection';
class GetIt{
  final HashMap<Type,DependencyConfig> _dependencyList=HashMap();
  void registerSingleton<T extends Object>(T implementation){
    _dependencyList.putIfAbsent(T, () => DependencyConfig<T>(getImplementation: ()=>implementation));
  }
  void registerFactory<T extends Object>(T Function() getImplementation){
    _dependencyList.putIfAbsent(T, () => DependencyConfig<T>(getImplementation: getImplementation));
  }

  T call<T extends Object>() {
    final dependencyConfig = _dependencyList[T];
    if (dependencyConfig != null) {
      if (dependencyConfig.getImplementation() is T) {
          return dependencyConfig.getImplementation();
      } else {
        throw ArgumentError(
            'The registered implementation is not of type $T');
      }
    } else {
      throw ArgumentError('No implementation registered for type $T');
    }
  }
}
class DependencyConfig<T>{
  final T Function() getImplementation;

  DependencyConfig({required this.getImplementation});
}