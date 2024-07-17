import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_body_parking.freezed.dart';
part 'response_body_parking.g.dart';

@freezed
class ResponseBodyParking with _$ResponseBodyParking {
    const factory ResponseBodyParking({
        ParkingData? data,
    }) = _ResponseBodyParking;

    factory ResponseBodyParking.fromJson(Map<String, dynamic> json) => _$ResponseBodyParkingFromJson(json);
}

@freezed
class ParkingData with _$ParkingData {
    const factory ParkingData({
        List<GetAllParkingLot>? getAllParkingLots,
    }) = _ParkingData;

    factory ParkingData.fromJson(Map<String, dynamic> json) => _$ParkingDataFromJson(json);
}

@freezed
class GetAllParkingLot with _$GetAllParkingLot {
    const factory GetAllParkingLot({
        String? id,
        String? name,
        String? address,
        String? status,
        DateTime? liveDate,
        String? type,
        int? size,
        String? image,
        bool? isLiked
    }) = _GetAllParkingLot;

    factory GetAllParkingLot.fromJson(Map<String, dynamic> json) => _$GetAllParkingLotFromJson(json);
}
