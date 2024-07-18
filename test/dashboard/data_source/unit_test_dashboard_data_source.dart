import 'package:mockito/mockito.dart';
import 'package:test/test.dart';
import 'package:wemolo_parking/core/constants/api_constants.dart';
import 'package:wemolo_parking/core/network/models/network_response.dart';
import 'package:wemolo_parking/screens/dashboard/data/data_sources/dashboard_remote_data_source.dart';
import 'package:wemolo_parking/screens/dashboard/data/model/request/request_body_parking/request_body_parking.dart';
import 'package:wemolo_parking/screens/dashboard/data/model/response/response_body_parking/response_body_parking.dart';

import 'data_source_test_mocks.mocks.dart';

void main() {
  late MockNetworkService mockNetworkService;
  late DashboardRemoteDataSource dashboardRemoteDataSource;

  setUp(() {
    mockNetworkService = MockNetworkService();
    dashboardRemoteDataSource = DashboardRemoteDataSource(mockNetworkService);
  });


  test('getParkingData returns ResponseBodyParking on successful response',
      () async {
    const mockNetworkRequest = RequestBodyParking(
        query: ApiConstants.parkingListQuery,
        variables: Variables(limit: 2, offset: 0));

    final mockResponseData = {
      "data": {
        "getAllParkingLots": [
          {
            "id": "2ca2fbff-3c93-46c9-8e9a-c63cf79b1f9b",
            "name": "Lot Munich 27",
            "address": "Verdistrasse 27, 81257 München",
            "status": "active",
            "live_date": "2020-11-14",
            "type": "store",
            "size": 25,
            "image":
                "https://images.freeimages.com/images/large-previews/47f/parking-space-1441053.jpg"
          },
          {
            "id": "2e61aab7-094b-449b-a806-e34b40e92f26",
            "name": "Lot Munich 4",
            "address": "Verdistrasse 32, 81257 München",
            "status": "active",
            "live_date": "2020-01-01",
            "type": "store",
            "size": 25,
            "image":
                "https://images.freeimages.com/images/large-previews/e8e/underground-parking-1206464.jpg"
          }
        ]
      }
    };

    final mockNetworkResponse = NetworkResponse.ok(mockResponseData);
    

    when(mockNetworkService.post(path: '', requestBody: mockNetworkRequest))
        .thenAnswer((invocation) async {
      return mockNetworkResponse;
    });

    final response =
        await dashboardRemoteDataSource.getParkingData(mockNetworkRequest);
    expect(response, isA<ResponseBodyParking>());
    verify(mockNetworkService.post(path: '', requestBody: mockNetworkRequest)).called(1);
  });
}
