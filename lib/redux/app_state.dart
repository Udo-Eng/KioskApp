class Item {
  final int id;
  Item({required this.id});
}

class AppState {
  final bool isLoading;
  final String errorMessage;
  final List<Item> items;

  AppState(
      {required this.isLoading,
      required this.errorMessage,
      required this.items});

  AppState.initialState()
      : isLoading = false,
        errorMessage = '',
        items = List.unmodifiable([]);
}
