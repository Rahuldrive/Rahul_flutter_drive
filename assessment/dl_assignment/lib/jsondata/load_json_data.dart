Future<List<Map<String, dynamic>>> loadStates() async {
  await Future.delayed(const Duration(seconds: 2));
  return [
    {
      "name": "Maharashtra",
      "information": [
        {
          "url": "http://www.maharashtra.gov.in/",
          "phone": "+91 22 123456789",
          "address": "123, ABC Street, XYZ Area - 400001",
          "cityCode": "MH01",
          "cityName": "Mumbai(E)"
        },
        {
          "url": "http://www.maharashtra.gov.in/",
          "phone": "+91 22 123456789",
          "address": "123, ABC Street, XYZ Area - 400001",
          "cityCode": "MH02",
          "cityName": "Mumbai(W)"
        },
        {
          "url": "http://www.maharashtra.gov.in/",
          "phone": "+91 22 123456789",
          "address": "123, ABC Street, XYZ Area - 400001",
          "cityCode": "MH03",
          "cityName": "Mumbai(S)"
        },
        {
          "url": "http://www.maharashtra.gov.in/",
          "phone": "+91 22 123456789",
          "address": "123, ABC Street, XYZ Area - 400001",
          "cityCode": "MH04",
          "cityName": "Mumbai(N)"
        }
      ]
    },
    {
      "name": "Gujarat",
      "information": [
        {
          "url": "http://www.gujaratindia.com/",
          "phone": "+91 79 987654321",
          "address": "456, DEF Street, UVW Area - 380001",
          "cityCode": "GJ01",
          "cityName": "Ahmedabad"
        },
        {
          "url": "http://www.gujaratindia.com/",
          "phone": "+91 79 987654321",
          "address": "456, DEF Street, UVW Area - 380001",
          "cityCode": "GJ02",
          "cityName": "Amreli"
        },
        {
          "url": "http://www.gujaratindia.com/",
          "phone": "+91 79 987654321",
          "address": "456, DEF Street, UVW Area - 380001",
          "cityCode": "GJ03",
          "cityName": "Vadodara"
        },
        {
          "url": "http://www.gujaratindia.com/",
          "phone": "+91 79 987654321",
          "address": "456, DEF Street, UVW Area - 380001",
          "cityCode": "GJ04",
          "cityName": "Jamnagar"
        },
      ]
    },
    {
      "name": "Rajasthan",
      "information": [
        {
          "url": "http://www.rajasthan.gov.in/",
          "phone": "+91 141 9876543",
          "address": "789, GHI Street, LMN Area - 302001",
          "cityCode": "RJ01",
          "cityName": "Udaipur"
        },
        {
          "url": "http://www.rajasthan.gov.in/",
          "phone": "+91 141 9876543",
          "address": "789, GHI Street, LMN Area - 302001",
          "cityCode": "RJ02",
          "cityName": "Jaipur"
        },
        {
          "url": "http://www.rajasthan.gov.in/",
          "phone": "+91 141 9876543",
          "address": "789, GHI Street, LMN Area - 302001",
          "cityCode": "RJ03",
          "cityName": "Jodhpur"
        },
        {
          "url": "http://www.rajasthan.gov.in/",
          "phone": "+91 141 9876543",
          "address": "789, GHI Street, LMN Area - 302001",
          "cityCode": "RJ04",
          "cityName": "Jaisalmer"
        }
      ]
    }
  ];
}


Future<List<Map<String, dynamic>>> vehicleDataJson() async {
  await Future.delayed(const Duration(seconds: 2));
  return [
    {"srNo": 1,"year": "2022-2023", "transportVehicle": 100, "nonTransportVehicle": 50},
    {"srNo": 2, "year": "2022-2023","transportVehicle": 120, "nonTransportVehicle": 60},
    {"srNo": 3, "year": "2022-2023","transportVehicle": 80, "nonTransportVehicle": 40}, {"srNo": 1,"year": "2022-2023", "transportVehicle": 100, "nonTransportVehicle": 50},
    {"srNo": 2, "year": "2022-2023","transportVehicle": 120, "nonTransportVehicle": 60},
    {"srNo": 3, "year": "2022-2023","transportVehicle": 80, "nonTransportVehicle": 40}, {"srNo": 1,"year": "2022-2023", "transportVehicle": 100, "nonTransportVehicle": 50},
    {"srNo": 2, "year": "2022-2023","transportVehicle": 120, "nonTransportVehicle": 60},
    {"srNo": 3, "year": "2022-2023","transportVehicle": 80, "nonTransportVehicle": 40}, {"srNo": 1,"year": "2022-2023", "transportVehicle": 100, "nonTransportVehicle": 50},
    {"srNo": 2, "year": "2022-2023","transportVehicle": 120, "nonTransportVehicle": 60},
    {"srNo": 3, "year": "2022-2023","transportVehicle": 80, "nonTransportVehicle": 40}, {"srNo": 1,"year": "2022-2023", "transportVehicle": 100, "nonTransportVehicle": 50},
    {"srNo": 2, "year": "2022-2023","transportVehicle": 120, "nonTransportVehicle": 60},
    {"srNo": 3, "year": "2022-2023","transportVehicle": 80, "nonTransportVehicle": 40}, {"srNo": 1,"year": "2022-2023", "transportVehicle": 100, "nonTransportVehicle": 50},
    {"srNo": 2, "year": "2022-2023","transportVehicle": 120, "nonTransportVehicle": 60},
    {"srNo": 3, "year": "2022-2023","transportVehicle": 80, "nonTransportVehicle": 40},
    {
      "srNo": 1,
      "year": "2022-2023",
      "transportVehicle": 100,
      "nonTransportVehicle": 50
    },
    {
      "srNo": 2,
      "year": "2022-2023",
      "transportVehicle": 120,
      "nonTransportVehicle": 60
    },
    {
      "srNo": 3,
      "year": "2022-2023",
      "transportVehicle": 80,
      "nonTransportVehicle": 40
    },
  ];
}



