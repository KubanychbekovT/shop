// import 'dart:convert';
// import 'package:http/http.dart' as http;
//
// class PrayerTimes {
//   final String city;
//   final String country;
//   final int year;
//   final int month;
//   final String apiUrl = "https://api.aladhan.com/v1/calendarByCity";
//
//   PrayerTimes({required this.city, required this.country, required this.year, required this.month});
//
//   Future<Map<String, dynamic>> getPrayerTimes() async {
//     final response = await http.get(
//       Uri.parse('$apiUrl?city=$city&country=$country&month=$month&year=$year'),
//     );
//
//     if (response.statusCode == 200) {
//       final data = json.decode(response.body);
//       // В этом месте парсите данные, чтобы получить нужное время намаза
//       // Возможно, вам потребуется извлечь данные из структуры JSON, предоставленной API Aladhan.
//       // Вероятно, API возвращает календарь с временем намаза для каждого дня в месяце.
//       // Выберите нужные данные для вашей цели.
//       // Например, data['data'][dayIndex]['timings'] может содержать время намаза для определенного дня.
//       return data;
//     } else {
//       throw Exception('Failed to load prayer times');
//     }
//   }
// }
