enum SsoProvider {
  apple(label: 'Apple', apiValue: 'apple'),
  google(label: 'Google', apiValue: 'google');

  const SsoProvider({required this.label, required this.apiValue});

  final String label;
  final String apiValue;
}
