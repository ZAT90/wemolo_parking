class ApiConstants {
  static const String baseUrl = 'https://interview-apixx07.dev.park-depot.de/';
  static const String parkingListQuery =
      "query Query(\$limit: Int, \$offset: Int) {\n  getAllParkingLots(limit: \$limit, offset: \$offset) {\n    id\n    name\n    address\n    status\n    live_date\n    type\n    size\n    image\n  }\n}";
  static const String distinctQuery =
      "query Query {\n  distinctStatuses {\n    status\n  }\n  distinctTypes {\n    type\n  }\n}";
}
