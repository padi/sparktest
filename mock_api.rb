SPARK_MOCK_RESPONSES = {
  # general format
  # "url" => { type: <<-eos eos },

  # Standard Field (Individual Standard Field)
  # http://sparkplatform.com/docs/api_services/standard_fields#individual_standard_fields
  # mls/<MlsId>/standardfields/<StandardField>
  "mls/1/standardfields/StreetSuffix" => { type: <<-eos
{
  "D": {
    "Results": [
      {
        "StreetSuffix": {
          "ResourceUri": "/v1/standardfields/StreetSuffix",
          "FieldList": [
            {
              "Name": "ALY",
              "Value": "ALY"
            },
            {
              "Name": "AVE",
              "Value": "AVE"
            },
            {
              "Name": "BLVD",
              "Value": "BLVD"
            },
            {
              "Name": "CIR",
              "Value": "CIR"
            },
            {
              "Name": "CT",
              "Value": "CT"
            },
            {
              "Name": "DR",
              "Value": "DR"
            },
            {
              "Name": "LN",
              "Value": "LN"
            },
            {
              "Name": "LP",
              "Value": "LP"
            },
            {
              "Name": "PLACE",
              "Applies To": [
                "A"
              ],
              "Value": "PL"
            },
            {
              "Name": "RD",
              "Value": "RD"
            },
            {
              "Name": "ST",
              "Value": "ST"
            },
            {
              "Name": "TRL",
              "Applies To": [
                "A"
              ],
              "Value": "TRL"
            }
          ],
          "HasList": true,
          "MaxListSize": 13,
          "Searchable": true,
          "MlsVisible": [
            "A",
            "B",
            "C",
            "D",
            "E"
          ],
          "Type": "Character"
        }
      }
    ],
    "Success": true
  }
}
  eos
  },
  
  # Standard Field (Individual Standard Field)
  # http://sparkplatform.com/docs/api_services/standard_fields#individual_standard_fields
  # /standardfields/<StandardField>
  "/standardfields/StreetSuffix" => { type: <<-eos
{
  "D": {
    "Results": [
      {
        "StreetSuffix": {
          "ResourceUri": "/v1/standardfields/StreetSuffix",
          "FieldList": [
            {
              "Name": "ALY",
              "Value": "ALY"
            },
            {
              "Name": "AVE",
              "Value": "AVE"
            },
            {
              "Name": "BLVD",
              "Value": "BLVD"
            },
            {
              "Name": "CIR",
              "Value": "CIR"
            },
            {
              "Name": "CT",
              "Value": "CT"
            },
            {
              "Name": "DR",
              "Value": "DR"
            },
            {
              "Name": "LN",
              "Value": "LN"
            },
            {
              "Name": "LP",
              "Value": "LP"
            },
            {
              "Name": "PLACE",
              "Applies To": [
                "A"
              ],
              "Value": "PL"
            },
            {
              "Name": "RD",
              "Value": "RD"
            },
            {
              "Name": "ST",
              "Value": "ST"
            },
            {
              "Name": "TRL",
              "Applies To": [
                "A"
              ],
              "Value": "TRL"
            }
          ],
          "HasList": true,
          "MaxListSize": 13,
          "Searchable": true,
          "MlsVisible": [
            "A",
            "B",
            "C",
            "D",
            "E"
          ],
          "Type": "Character"
        }
      }
    ],
    "Success": true
  }
}
  eos
  },


  # Standard Fields (all standard fields, with MLS id)
  # http://sparkplatform.com/docs/api_services/standard_fields#all_standard_fields
  # /mls/<MlsId>/standardfields
  "mls/1/standardfields" => { type: <<-eos
{
  "D": {
    "Results": [
      {
        "StreetSuffix": {
          "ResourceUri": "/v1/standardfields/StreetSuffix",
          "HasList": true,
          "MaxListSize": 13,
          "Searchable": true,
          "Type": "Character",
          "MlsVisible": [
            "A",
            "B",
            "C",
            "D",
            "E"
          ]
        },
        "MLSAreaMinor": {
          "ResourceUri": "/v1/standardfields/MLSAreaMinor",
          "HasList": true,
          "MaxListSize": 15,
          "Searchable": true,
          "Type": "Character",
          "MlsVisible": [
            "A",
            "B",
            "C",
            "D",
            "E"
          ]
        },
        "StreetNumber": {
          "ResourceUri": "/v1/standardfields/StreetNumber",
          "HasList": false,
          "MaxListSize": 0,
          "Searchable": true,
          "Type": "Character",
          "MlsVisible": [
            "A",
            "B",
            "C",
            "D",
            "E"
          ]
        },
        "ListAgentId": {
          "ResourceUri": "/v1/standardfields/ListAgentId",
          "HasList": false,
          "MaxListSize": 0,
          "Searchable": true,
          "Type": "Character",
          "MlsVisible": [
            "E"
          ]
        },
        "CoListAgentId": {
          "ResourceUri": "/v1/standardfields/CoListAgentId",
          "HasList": false,
          "MaxListSize": 0,
          "Searchable": true,
          "Type": "Character",
          "MlsVisible": []
        },
        "ListingId": {
          "ResourceUri": "/v1/standardfields/ListingId",
          "HasList": false,
          "MaxListSize": 0,
          "Searchable": true,
          "Type": "Character",
          "MlsVisible": [
            "A",
            "B",
            "C",
            "D",
            "E"
          ]
        },
        "City": {
          "ResourceUri": "/v1/standardfields/City",
          "HasList": true,
          "MaxListSize": 102,
          "Searchable": true,
          "Type": "Character",
          "MlsVisible": [
            "A",
            "B",
            "C",
            "D",
            "E"
          ]
        },
        "Longitude": {
          "ResourceUri": "/v1/standardfields/Longitude",
          "HasList": false,
          "MaxListSize": 0,
          "Searchable": true,
          "Type": "Decimal",
          "MlsVisible": []
        },
        "ListOfficeId": {
          "ResourceUri": "/v1/standardfields/ListOfficeId",
          "HasList": false,
          "MaxListSize": 0,
          "Searchable": true,
          "Type": "Character",
          "MlsVisible": [
            "A",
            "B",
            "C",
            "D",
            "E"
          ]
        },
        "CoListOfficeId": {
          "ResourceUri": "/v1/standardfields/CoListOfficeId",
          "HasList": false,
          "MaxListSize": 0,
          "Searchable": true,
          "Type": "Character",
          "MlsVisible": []
        },
        "StreetName": {
          "ResourceUri": "/v1/standardfields/StreetName",
          "HasList": false,
          "MaxListSize": 0,
          "Searchable": true,
          "Type": "Character",
          "MlsVisible": [
            "A",
            "B",
            "C",
            "D",
            "E"
          ]
        },
        "YearBuilt": {
          "ResourceUri": "/v1/standardfields/YearBuilt",
          "HasList": false,
          "MaxListSize": 0,
          "Searchable": true,
          "Type": "Integer",
          "MlsVisible": [
            "A",
            "B",
            "C",
            "D"
          ]
        },
        "BuildingAreaTotal": {
          "ResourceUri": "/v1/standardfields/BuildingAreaTotal",
          "HasList": false,
          "MaxListSize": 0,
          "Searchable": true,
          "Type": "Decimal",
          "MlsVisible": [
            "A",
            "B",
            "D"
          ]
        },
        "PublicRemarks": {
          "ResourceUri": "/v1/standardfields/PublicRemarks",
          "HasList": false,
          "MaxListSize": 0,
          "Searchable": false,
          "Type": "Character",
          "MlsVisible": [
            "A",
            "B",
            "C",
            "D",
            "E"
          ]
        },
        "BuyerAgentId": {
          "ResourceUri": "/v1/standardfields/BuyerAgentId",
          "HasList": false,
          "MaxListSize": 0,
          "Searchable": true,
          "Type": "Character",
          "MlsVisible": [
            "A",
            "B",
            "C",
            "D"
          ]
        },
        "PostalCode": {
          "ResourceUri": "/v1/standardfields/PostalCode",
          "HasList": true,
          "MaxListSize": 229,
          "Searchable": true,
          "Type": "Character",
          "MlsVisible": [
            "A",
            "B",
            "C",
            "D",
            "E"
          ]
        },
        "ListPrice": {
          "ResourceUri": "/v1/standardfields/ListPrice",
          "HasList": false,
          "MaxListSize": 0,
          "Searchable": true,
          "Type": "Decimal",
          "MlsVisible": [
            "A",
            "B",
            "C",
            "D",
            "E"
          ]
        },
        "SubdivisionName": {
          "ResourceUri": "/v1/standardfields/SubdivisionName",
          "HasList": false,
          "MaxListSize": 0,
          "Searchable": true,
          "Type": "Character",
          "MlsVisible": [
            "A",
            "B",
            "C",
            "D"
          ]
        },
        "WithdrawDate": {
          "Defaults": {
            "FromQuantity": 1,
            "FromUnit": "years",
            "ToQuantity": 10,
            "ToUnit": "years"
          },
          "ResourceUri": "/v1/standardfields/WithdrawDate",
          "HasList": false,
          "MaxListSize": 0,
          "Searchable": true,
          "Type": "Date",
          "MlsVisible": []
        },
        "BathsThreeQuarter": {
          "ResourceUri": "/v1/standardfields/BathsThreeQuarter",
          "HasList": false,
          "MaxListSize": 0,
          "Searchable": true,
          "Type": "Integer",
          "MlsVisible": []
        },
        "Latitude": {
          "ResourceUri": "/v1/standardfields/Latitude",
          "HasList": false,
          "MaxListSize": 0,
          "Searchable": true,
          "Type": "Decimal",
          "MlsVisible": []
        },
        "CloseDate": {
          "Defaults": {
            "FromQuantity": 1,
            "FromUnit": "years",
            "ToQuantity": 10,
            "ToUnit": "years"
          },
          "ResourceUri": "/v1/standardfields/CloseDate",
          "HasList": false,
          "MaxListSize": 0,
          "Searchable": true,
          "Type": "Date",
          "MlsVisible": []
        },
        "MlsStatusInformation": {
          "ResourceUri": "/v1/standardfields/MlsStatusInformation",
          "HasList": true,
          "MaxListSize": 4,
          "Searchable": false,
          "Type": "Character",
          "MlsVisible": []
        },
        "StreetDirPrefix": {
          "ResourceUri": "/v1/standardfields/StreetDirPrefix",
          "HasList": true,
          "MaxListSize": 9,
          "Searchable": true,
          "Type": "Character",
          "MlsVisible": [
            "A",
            "B",
            "C",
            "D"
          ]
        },
        "StreetAdditionalInfo": {
          "ResourceUri": "/v1/standardfields/StreetAdditionalInfo",
          "HasList": false,
          "MaxListSize": 0,
          "Searchable": true,
          "Type": "Character",
          "MlsVisible": [
            "A",
            "B",
            "C",
            "D",
            "E"
          ]
        },
        "PropertyType": {
          "ResourceUri": "/v1/standardfields/PropertyType",
          "HasList": false,
          "MaxListSize": 0,
          "Searchable": true,
          "Type": "Character",
          "MlsVisible": [
            "A",
            "B",
            "C",
            "D",
            "E"
          ]
        },
        "StateOrProvince": {
          "ResourceUri": "/v1/standardfields/StateOrProvince",
          "HasList": true,
          "MaxListSize": 2,
          "Searchable": true,
          "Type": "Character",
          "MlsVisible": [
            "A",
            "B",
            "C",
            "D",
            "E"
          ]
        },
        "BathsTotal": {
          "ResourceUri": "/v1/standardfields/BathsTotal",
          "HasList": false,
          "MaxListSize": 0,
          "Searchable": true,
          "Type": "Decimal",
          "MlsVisible": [
            "A",
            "E"
          ]
        },
        "BathsFull": {
          "ResourceUri": "/v1/standardfields/BathsFull",
          "HasList": false,
          "MaxListSize": 0,
          "Searchable": true,
          "Type": "Integer",
          "MlsVisible": [
            "A"
          ]
        },
        "MlsId": {
          "ResourceUri": "/v1/standardfields/MlsId",
          "HasList": true,
          "MaxListSize": 0,
          "Searchable": false,
          "Type": "Character",
          "MlsVisible": []
        },
        "ListingKey": {
          "ResourceUri": "/v1/standardfields/ListingKey",
          "HasList": false,
          "MaxListSize": 0,
          "Searchable": true,
          "Type": "Character",
          "MlsVisible": [
            "A",
            "B",
            "C",
            "D",
            "E"
          ]
        },
        "CoBuyerAgentId": {
          "ResourceUri": "/v1/standardfields/CoBuyerAgentId",
          "HasList": false,
          "MaxListSize": 0,
          "Searchable": true,
          "Type": "Character",
          "MlsVisible": [
            "A",
            "B",
            "C",
            "D"
          ]
        },
        "PendingDate": {
          "Defaults": {
            "FromQuantity": 1,
            "FromUnit": "years",
            "ToQuantity": 10,
            "ToUnit": "years"
          },
          "ResourceUri": "/v1/standardfields/PendingDate",
          "HasList": false,
          "MaxListSize": 0,
          "Searchable": true,
          "Type": "Date",
          "MlsVisible": []
        },
        "StreetDirSuffix": {
          "ResourceUri": "/v1/standardfields/StreetDirSuffix",
          "HasList": true,
          "MaxListSize": 9,
          "Searchable": true,
          "Type": "Character",
          "MlsVisible": [
            "A",
            "B",
            "C",
            "D",
            "E"
          ]
        },
        "BedsTotal": {
          "ResourceUri": "/v1/standardfields/BedsTotal",
          "HasList": false,
          "MaxListSize": 0,
          "Searchable": true,
          "Type": "Integer",
          "MlsVisible": [
            "A",
            "E"
          ]
        },
        "CancelDate": {
          "Defaults": {
            "FromQuantity": 1,
            "FromUnit": "years",
            "ToQuantity": 10,
            "ToUnit": "years"
          },
          "ResourceUri": "/v1/standardfields/CancelDate",
          "HasList": false,
          "MaxListSize": 0,
          "Searchable": true,
          "Type": "Date",
          "MlsVisible": []
        },
        "ModificationTimestamp": {
          "ResourceUri": "/v1/standardfields/ModificationTimestamp",
          "HasList": false,
          "MaxListSize": 0,
          "Searchable": true,
          "Type": "Datetime",
          "MlsVisible": [
            "A",
            "B",
            "C",
            "D",
            "E"
          ]
        },
        "MlsStatus": {
          "ResourceUri": "/v1/standardfields/MlsStatus",
          "HasList": true,
          "MaxListSize": 7,
          "Searchable": true,
          "Type": "Character",
          "MlsVisible": [
            "A",
            "B",
            "C",
            "D",
            "E"
          ]
        },
        "ClosePrice": {
          "ResourceUri": "/v1/standardfields/ClosePrice",
          "HasList": false,
          "MaxListSize": 0,
          "Searchable": true,
          "Type": "Decimal",
          "MlsVisible": []
        },
        "BathsHalf": {
          "ResourceUri": "/v1/standardfields/BathsHalf",
          "HasList": false,
          "MaxListSize": 0,
          "Searchable": true,
          "Type": "Integer",
          "MlsVisible": [
            "A"
          ]
        },
        "PropertySubType": {
          "ResourceUri": "/v1/standardfields/PropertySubType",
          "HasList": true,
          "MaxListSize": 7,
          "Searchable": true,
          "Type": "Character",
          "MlsVisible": [
            "A",
            "B",
            "C",
            "D"
          ]
        },
        "PrivateRemarks": {
          "ResourceUri": "/v1/standardfields/PrivateRemarks",
          "HasList": false,
          "MaxListSize": 0,
          "Searchable": false,
          "Type": "Character",
          "MlsVisible": []
        },
        "CountyOrParish": {
          "ResourceUri": "/v1/standardfields/CountyOrParish",
          "HasList": true,
          "MaxListSize": 56,
          "Searchable": true,
          "Type": "Character",
          "MlsVisible": [
            "A",
            "B",
            "C",
            "D",
            "E"
          ]
        }
      }
    ],
    "Success": true
  }
}
  eos
  },

  # Standard Fields (all standard fields, without MLS id)
  # http://sparkplatform.com/docs/api_services/standard_fields#all_standard_fields
  "/standardfields" => { type: <<-eos
{
  "D": {
    "Results": [
      {
        "StreetSuffix": {
          "ResourceUri": "/v1/standardfields/StreetSuffix",
          "HasList": true,
          "MaxListSize": 13,
          "Searchable": true,
          "Type": "Character",
          "MlsVisible": [
            "A",
            "B",
            "C",
            "D",
            "E"
          ]
        },
        "MLSAreaMinor": {
          "ResourceUri": "/v1/standardfields/MLSAreaMinor",
          "HasList": true,
          "MaxListSize": 15,
          "Searchable": true,
          "Type": "Character",
          "MlsVisible": [
            "A",
            "B",
            "C",
            "D",
            "E"
          ]
        },
        "StreetNumber": {
          "ResourceUri": "/v1/standardfields/StreetNumber",
          "HasList": false,
          "MaxListSize": 0,
          "Searchable": true,
          "Type": "Character",
          "MlsVisible": [
            "A",
            "B",
            "C",
            "D",
            "E"
          ]
        },
        "ListAgentId": {
          "ResourceUri": "/v1/standardfields/ListAgentId",
          "HasList": false,
          "MaxListSize": 0,
          "Searchable": true,
          "Type": "Character",
          "MlsVisible": [
            "E"
          ]
        },
        "CoListAgentId": {
          "ResourceUri": "/v1/standardfields/CoListAgentId",
          "HasList": false,
          "MaxListSize": 0,
          "Searchable": true,
          "Type": "Character",
          "MlsVisible": []
        },
        "ListingId": {
          "ResourceUri": "/v1/standardfields/ListingId",
          "HasList": false,
          "MaxListSize": 0,
          "Searchable": true,
          "Type": "Character",
          "MlsVisible": [
            "A",
            "B",
            "C",
            "D",
            "E"
          ]
        },
        "City": {
          "ResourceUri": "/v1/standardfields/City",
          "HasList": true,
          "MaxListSize": 102,
          "Searchable": true,
          "Type": "Character",
          "MlsVisible": [
            "A",
            "B",
            "C",
            "D",
            "E"
          ]
        },
        "Longitude": {
          "ResourceUri": "/v1/standardfields/Longitude",
          "HasList": false,
          "MaxListSize": 0,
          "Searchable": true,
          "Type": "Decimal",
          "MlsVisible": []
        },
        "ListOfficeId": {
          "ResourceUri": "/v1/standardfields/ListOfficeId",
          "HasList": false,
          "MaxListSize": 0,
          "Searchable": true,
          "Type": "Character",
          "MlsVisible": [
            "A",
            "B",
            "C",
            "D",
            "E"
          ]
        },
        "CoListOfficeId": {
          "ResourceUri": "/v1/standardfields/CoListOfficeId",
          "HasList": false,
          "MaxListSize": 0,
          "Searchable": true,
          "Type": "Character",
          "MlsVisible": []
        },
        "StreetName": {
          "ResourceUri": "/v1/standardfields/StreetName",
          "HasList": false,
          "MaxListSize": 0,
          "Searchable": true,
          "Type": "Character",
          "MlsVisible": [
            "A",
            "B",
            "C",
            "D",
            "E"
          ]
        },
        "YearBuilt": {
          "ResourceUri": "/v1/standardfields/YearBuilt",
          "HasList": false,
          "MaxListSize": 0,
          "Searchable": true,
          "Type": "Integer",
          "MlsVisible": [
            "A",
            "B",
            "C",
            "D"
          ]
        },
        "BuildingAreaTotal": {
          "ResourceUri": "/v1/standardfields/BuildingAreaTotal",
          "HasList": false,
          "MaxListSize": 0,
          "Searchable": true,
          "Type": "Decimal",
          "MlsVisible": [
            "A",
            "B",
            "D"
          ]
        },
        "PublicRemarks": {
          "ResourceUri": "/v1/standardfields/PublicRemarks",
          "HasList": false,
          "MaxListSize": 0,
          "Searchable": false,
          "Type": "Character",
          "MlsVisible": [
            "A",
            "B",
            "C",
            "D",
            "E"
          ]
        },
        "BuyerAgentId": {
          "ResourceUri": "/v1/standardfields/BuyerAgentId",
          "HasList": false,
          "MaxListSize": 0,
          "Searchable": true,
          "Type": "Character",
          "MlsVisible": [
            "A",
            "B",
            "C",
            "D"
          ]
        },
        "PostalCode": {
          "ResourceUri": "/v1/standardfields/PostalCode",
          "HasList": true,
          "MaxListSize": 229,
          "Searchable": true,
          "Type": "Character",
          "MlsVisible": [
            "A",
            "B",
            "C",
            "D",
            "E"
          ]
        },
        "ListPrice": {
          "ResourceUri": "/v1/standardfields/ListPrice",
          "HasList": false,
          "MaxListSize": 0,
          "Searchable": true,
          "Type": "Decimal",
          "MlsVisible": [
            "A",
            "B",
            "C",
            "D",
            "E"
          ]
        },
        "SubdivisionName": {
          "ResourceUri": "/v1/standardfields/SubdivisionName",
          "HasList": false,
          "MaxListSize": 0,
          "Searchable": true,
          "Type": "Character",
          "MlsVisible": [
            "A",
            "B",
            "C",
            "D"
          ]
        },
        "WithdrawDate": {
          "Defaults": {
            "FromQuantity": 1,
            "FromUnit": "years",
            "ToQuantity": 10,
            "ToUnit": "years"
          },
          "ResourceUri": "/v1/standardfields/WithdrawDate",
          "HasList": false,
          "MaxListSize": 0,
          "Searchable": true,
          "Type": "Date",
          "MlsVisible": []
        },
        "BathsThreeQuarter": {
          "ResourceUri": "/v1/standardfields/BathsThreeQuarter",
          "HasList": false,
          "MaxListSize": 0,
          "Searchable": true,
          "Type": "Integer",
          "MlsVisible": []
        },
        "Latitude": {
          "ResourceUri": "/v1/standardfields/Latitude",
          "HasList": false,
          "MaxListSize": 0,
          "Searchable": true,
          "Type": "Decimal",
          "MlsVisible": []
        },
        "CloseDate": {
          "Defaults": {
            "FromQuantity": 1,
            "FromUnit": "years",
            "ToQuantity": 10,
            "ToUnit": "years"
          },
          "ResourceUri": "/v1/standardfields/CloseDate",
          "HasList": false,
          "MaxListSize": 0,
          "Searchable": true,
          "Type": "Date",
          "MlsVisible": []
        },
        "MlsStatusInformation": {
          "ResourceUri": "/v1/standardfields/MlsStatusInformation",
          "HasList": true,
          "MaxListSize": 4,
          "Searchable": false,
          "Type": "Character",
          "MlsVisible": []
        },
        "StreetDirPrefix": {
          "ResourceUri": "/v1/standardfields/StreetDirPrefix",
          "HasList": true,
          "MaxListSize": 9,
          "Searchable": true,
          "Type": "Character",
          "MlsVisible": [
            "A",
            "B",
            "C",
            "D"
          ]
        },
        "StreetAdditionalInfo": {
          "ResourceUri": "/v1/standardfields/StreetAdditionalInfo",
          "HasList": false,
          "MaxListSize": 0,
          "Searchable": true,
          "Type": "Character",
          "MlsVisible": [
            "A",
            "B",
            "C",
            "D",
            "E"
          ]
        },
        "PropertyType": {
          "ResourceUri": "/v1/standardfields/PropertyType",
          "HasList": false,
          "MaxListSize": 0,
          "Searchable": true,
          "Type": "Character",
          "MlsVisible": [
            "A",
            "B",
            "C",
            "D",
            "E"
          ]
        },
        "StateOrProvince": {
          "ResourceUri": "/v1/standardfields/StateOrProvince",
          "HasList": true,
          "MaxListSize": 2,
          "Searchable": true,
          "Type": "Character",
          "MlsVisible": [
            "A",
            "B",
            "C",
            "D",
            "E"
          ]
        },
        "BathsTotal": {
          "ResourceUri": "/v1/standardfields/BathsTotal",
          "HasList": false,
          "MaxListSize": 0,
          "Searchable": true,
          "Type": "Decimal",
          "MlsVisible": [
            "A",
            "E"
          ]
        },
        "BathsFull": {
          "ResourceUri": "/v1/standardfields/BathsFull",
          "HasList": false,
          "MaxListSize": 0,
          "Searchable": true,
          "Type": "Integer",
          "MlsVisible": [
            "A"
          ]
        },
        "MlsId": {
          "ResourceUri": "/v1/standardfields/MlsId",
          "HasList": true,
          "MaxListSize": 0,
          "Searchable": false,
          "Type": "Character",
          "MlsVisible": []
        },
        "ListingKey": {
          "ResourceUri": "/v1/standardfields/ListingKey",
          "HasList": false,
          "MaxListSize": 0,
          "Searchable": true,
          "Type": "Character",
          "MlsVisible": [
            "A",
            "B",
            "C",
            "D",
            "E"
          ]
        },
        "CoBuyerAgentId": {
          "ResourceUri": "/v1/standardfields/CoBuyerAgentId",
          "HasList": false,
          "MaxListSize": 0,
          "Searchable": true,
          "Type": "Character",
          "MlsVisible": [
            "A",
            "B",
            "C",
            "D"
          ]
        },
        "PendingDate": {
          "Defaults": {
            "FromQuantity": 1,
            "FromUnit": "years",
            "ToQuantity": 10,
            "ToUnit": "years"
          },
          "ResourceUri": "/v1/standardfields/PendingDate",
          "HasList": false,
          "MaxListSize": 0,
          "Searchable": true,
          "Type": "Date",
          "MlsVisible": []
        },
        "StreetDirSuffix": {
          "ResourceUri": "/v1/standardfields/StreetDirSuffix",
          "HasList": true,
          "MaxListSize": 9,
          "Searchable": true,
          "Type": "Character",
          "MlsVisible": [
            "A",
            "B",
            "C",
            "D",
            "E"
          ]
        },
        "BedsTotal": {
          "ResourceUri": "/v1/standardfields/BedsTotal",
          "HasList": false,
          "MaxListSize": 0,
          "Searchable": true,
          "Type": "Integer",
          "MlsVisible": [
            "A",
            "E"
          ]
        },
        "CancelDate": {
          "Defaults": {
            "FromQuantity": 1,
            "FromUnit": "years",
            "ToQuantity": 10,
            "ToUnit": "years"
          },
          "ResourceUri": "/v1/standardfields/CancelDate",
          "HasList": false,
          "MaxListSize": 0,
          "Searchable": true,
          "Type": "Date",
          "MlsVisible": []
        },
        "ModificationTimestamp": {
          "ResourceUri": "/v1/standardfields/ModificationTimestamp",
          "HasList": false,
          "MaxListSize": 0,
          "Searchable": true,
          "Type": "Datetime",
          "MlsVisible": [
            "A",
            "B",
            "C",
            "D",
            "E"
          ]
        },
        "MlsStatus": {
          "ResourceUri": "/v1/standardfields/MlsStatus",
          "HasList": true,
          "MaxListSize": 7,
          "Searchable": true,
          "Type": "Character",
          "MlsVisible": [
            "A",
            "B",
            "C",
            "D",
            "E"
          ]
        },
        "ClosePrice": {
          "ResourceUri": "/v1/standardfields/ClosePrice",
          "HasList": false,
          "MaxListSize": 0,
          "Searchable": true,
          "Type": "Decimal",
          "MlsVisible": []
        },
        "BathsHalf": {
          "ResourceUri": "/v1/standardfields/BathsHalf",
          "HasList": false,
          "MaxListSize": 0,
          "Searchable": true,
          "Type": "Integer",
          "MlsVisible": [
            "A"
          ]
        },
        "PropertySubType": {
          "ResourceUri": "/v1/standardfields/PropertySubType",
          "HasList": true,
          "MaxListSize": 7,
          "Searchable": true,
          "Type": "Character",
          "MlsVisible": [
            "A",
            "B",
            "C",
            "D"
          ]
        },
        "PrivateRemarks": {
          "ResourceUri": "/v1/standardfields/PrivateRemarks",
          "HasList": false,
          "MaxListSize": 0,
          "Searchable": false,
          "Type": "Character",
          "MlsVisible": []
        },
        "CountyOrParish": {
          "ResourceUri": "/v1/standardfields/CountyOrParish",
          "HasList": true,
          "MaxListSize": 56,
          "Searchable": true,
          "Type": "Character",
          "MlsVisible": [
            "A",
            "B",
            "C",
            "D",
            "E"
          ]
        }
      }
    ],
    "Success": true
  }
}
  eos
  },

  # Standard Fields: Nearby
  # /standardfields/nearby/<PropertyType.MlsCode>
  "/standardfields/nearby/1" => { get: <<-eos
{
    "D": {
        "Success": true,
        "Results": [
            {
                "PropertySubType": {
                    "Label": "Property Sub-Type",
                    "Searchable": true,
                    "Type": "Character",
                    "ResourceUri": "/v1/standardfields/PropertySubtype",
                    "MlsVisible": {
                        "PropertyTypes": ["A","B","C"]
                    },
                    "HasList": true,
                    "FieldList": [
                        {
                            "Value": "SF",
                            "Name": "Single Family",
                            "AppliesTo": [
                                "A",
                                "B",
                                "C"
                            ]
                        },
                        {
                            "Value": "CD",
                            "Name": "Condo",
                            "AppliesTo": [
                                "A",
                                "B",
                                "C"
                            ]
                        },
                        {
                            "Value": "CO",
                            "Name": "Commercial",
                            "AppliesTo": [
                                "D"
                            ]
                        }
                    ]
                }
            }
        ]
    }
}
  eos
  },

  # System Info
  "/system" => { get: <<-eos
{
  "D": {
    "Results": [
      {
        "Name": "Developer Development Key",
        "OfficeId": "20061018203347428240000000",
        "Configuration": [
          {
            "ExtendedActiveStatuses": {
              "Enabled": false
            },
            "ExtendedPendingStatuses": {
              "Enabled": false
            },
            "MlsLogos": [],
            "TimeZoneOffset": "-0600",
            "TimeZone": "Mountain Time (US & Canada)",
            "CurrencyType": "USD",
            "IdxDisclaimer": "Search results are produced through the Great Falls Association of REALTORS IDX program. All inforation is provided exclusively for consumers' personal, non-commercial use and may not be used for y purpose other than to identify prospective properties consumers may be interested in purchasing. Information is deemed reliable but not guaranteed and should be independently verified. Great Falls Association of REALTORS",
            "OAuth2ServiceEndpointPortal": "https://sparkplatform.com/auth/vow/dgtfdeveloper",
            "OAuth2ServiceEndpointPrivate": "https://sparkplatform.com/oauth2",
            "TimeZoneAbbreviation": "MDT",
            "IdxLogoSmall": "",
            "IdxLogo": ""
          }
        ],
        "Id": "20110325213944541276000000",
        "MlsId": "20090403000000000001000000",
        "Office": "A-NON MEMBER OFFICE",
        "DisplayCompliance": {
          "20090403000000000001000000": {
            "DisclaimerText": "Search results are produced through the Great Falls Association of REALTORS IDX program. All inforation is provided exclusively for consumers' personal, non-commercial use and may not be used for y purpose other than to identify prospective properties consumers may be interested in purchasing. Information is deemed reliable but not guaranteed and should be independently verified. Great Falls Association of REALTORS",
            "View": {
              "Summary": {
                "DisplayCompliance": [
                  "ListOfficeName"
                ]
              },
              "Detail": {
                "DisplayCompliance": [
                  "ListOfficeName"
                ]
              }
            }
          }
        },
        "Mls": "Demo MLS"
      }
    ],
    "Success": true
  }
}
  eos
  },

  # System Info: Accounts
  "/system/accounts" => { get: <<-eos
{
  "D": {
    "Success": true,
    "Results": [
      {
        "Designations": [
          {
            "Code": "AB",
            "Name": "Associate Broker",
            "Editable": true
          }
        ]
      }
    ]
  }
}
  eos
  },

  # System Info: Languages
  "/system/languages" => { get: <<-eos
{
  "D": {
    "Success": true,
    "Results": [
        {"Name": "English"},
        {"Name": "Spanish"},
        {"Name": "Chinese, Mandarin"}
  }    ]

}
  eos
  }
}

SPARK_MOCK_RESPONSES.each_pair do |url, request|
  request.each_key do |type|
    puts SPARK_MOCK_RESPONSES[url][type]    
  end
end