// ignore_for_file: constant_identifier_names, non_constant_identifier_names

enum ServiceType {
  AUTH_SERVICE,
  PROPERTY_MGMT_SERVICE,
  USER_GMT_SERVICE,
  UTILITY_SERVICE,
  BOOKING_MGMT_SERVICE,
}

Map<String, int> ServicePortMap = {
  ServiceType.AUTH_SERVICE.toString(): 8000,
  ServiceType.PROPERTY_MGMT_SERVICE.toString(): 8002,
  ServiceType.USER_GMT_SERVICE.toString(): 8001,
  ServiceType.UTILITY_SERVICE.toString(): 8001,
  ServiceType.BOOKING_MGMT_SERVICE.toString(): 8003,
};

enum PropertyType { ALL, COMMERCIAL, RESIDENTIAL }

enum PropertyCharacteristic { Wing, Floor, Flat }
