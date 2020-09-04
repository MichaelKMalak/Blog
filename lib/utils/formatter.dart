class Formatter {
  static String formatDate(String input) {
    final date = DateTime.parse(input);
    final dateSlug ="${date.day.toString().padLeft(2,'0')}/${date.month.toString().padLeft(2,'0')}/${date.year.toString()}";
    return dateSlug;
  }
}
