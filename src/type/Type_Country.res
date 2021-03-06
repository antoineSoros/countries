@decco @deriving(jsConverter)
type name = {
  common: string,
  official: string,
}
@decco @deriving(jsConverter)
type flagImg = {
  png: string,
  svg: string,
}
@decco @deriving(jsConverter)
type maps = {
  googleMaps: string,
  openStreetMaps: string,
}
@decco @deriving(jsConverter)
type t = {
  name: name,
  independant: bool,
  unMember: bool,
  capital: array<string>,
  region: string,
  subregion: string,
  flag: string,
  flags: flagImg,
  maps: maps,
  population: int,
  cioc: string,
}

type countries = array<t>
//example answer:
/*
  {
        "name": {
            "common": "Uruguay",
            "official": "Oriental Republic of Uruguay",
            "nativeName": {
                "spa": {
                    "official": "República Oriental del Uruguay",
                    "common": "Uruguay"
                }
            }
        },
        "tld": [
            ".uy"
        ],
        "cca2": "UY",
        "ccn3": "858",
        "cca3": "URY",
        "cioc": "URU",
        "independent": true,
        "status": "officially-assigned",
        "unMember": true,
        "currencies": {
            "UYU": {
                "name": "Uruguayan peso",
                "symbol": "$"
            }
        },
        "idd": {
            "root": "+5",
            "suffixes": [
                "98"
            ]
        },
        "capital": [
            "Montevideo"
        ],
        "altSpellings": [
            "UY",
            "Oriental Republic of Uruguay",
            "República Oriental del Uruguay"
        ],
        "region": "Americas",
        "subregion": "South America",
        "languages": {
            "spa": "Spanish"
        },
        "translations": {
            "ara": {
                "official": "جمهورية الأوروغواي الشرقية",
                "common": "الأوروغواي"
            },
            "ces": {
                "official": "Uruguayská východní republika",
                "common": "Uruguay"
            },
            "cym": {
                "official": "Oriental Republic of Uruguay",
                "common": "Uruguay"
            },
            "deu": {
                "official": "Republik Östlich des Uruguay",
                "common": "Uruguay"
            },
            "est": {
                "official": "Uruguay Idavabariik",
                "common": "Uruguay"
            },
            "fin": {
                "official": "Uruguayn itäinen tasavalta",
                "common": "Uruguay"
            },
            "fra": {
                "official": "République orientale de l'Uruguay",
                "common": "Uruguay"
            },
            "hrv": {
                "official": "Orijentalna Republika Urugvaj",
                "common": "Urugvaj"
            },
            "hun": {
                "official": "Uruguayi Keleti Köztársaság",
                "common": "Uruguay"
            },
            "ita": {
                "official": "Repubblica Orientale dell'Uruguay",
                "common": "Uruguay"
            },
            "jpn": {
                "official": "ウルグアイ東方共和国",
                "common": "ウルグアイ"
            },
            "kor": {
                "official": "우루과이 동방 공화국",
                "common": "우루과이"
            },
            "nld": {
                "official": "Oosterse Republiek Uruguay",
                "common": "Uruguay"
            },
            "per": {
                "official": "جمهوری اروگوئه",
                "common": "اروگوئه"
            },
            "pol": {
                "official": "Wschodnia Republika Urugwaju",
                "common": "Urugwaj"
            },
            "por": {
                "official": "República Oriental do Uruguai",
                "common": "Uruguai"
            },
            "rus": {
                "official": "Восточной Республики Уругвай",
                "common": "Уругвай"
            },
            "slk": {
                "official": "Uruguajská východná republika",
                "common": "Uruguaj"
            },
            "spa": {
                "official": "República Oriental del Uruguay",
                "common": "Uruguay"
            },
            "swe": {
                "official": "Republiken Uruguay",
                "common": "Uruguay"
            },
            "urd": {
                "official": "جمہوریہ شرقیہ یوراگوئے",
                "common": "یوراگوئے"
            },
            "zho": {
                "official": "乌拉圭东岸共和国",
                "common": "乌拉圭"
            }
        },
        "latlng": [
            -33.0,
            -56.0
        ],
        "landlocked": false,
        "borders": [
            "ARG",
            "BRA"
        ],
        "area": 181034.0,
        "demonyms": {
            "eng": {
                "f": "Uruguayan",
                "m": "Uruguayan"
            },
            "fra": {
                "f": "Uruguayenne",
                "m": "Uruguayen"
            }
        },
        "flag": "🇺🇾",
        "maps": {
            "googleMaps": "https://goo.gl/maps/tiQ9Baekb1jQtDSD9",
            "openStreetMaps": "https://www.openstreetmap.org/relation/287072"
        },
        "population": 3473727,
        "gini": {
            "2019": 39.7
        },
        "fifa": "URU",
        "car": {
            "signs": [
                "ROU"
            ],
            "side": "right"
        },
        "timezones": [
            "UTC-03:00"
        ],
        "continents": [
            "South America"
        ],
        "flags": {
            "png": "https://flagcdn.com/w320/uy.png",
            "svg": "https://flagcdn.com/uy.svg"
        },
        "coatOfArms": {
            "png": "https://mainfacts.com/media/images/coats_of_arms/uy.png",
            "svg": "https://mainfacts.com/media/images/coats_of_arms/uy.svg"
        },
        "startOfWeek": "monday",
        "capitalInfo": {
            "latlng": [
                -34.85,
                -56.17
            ]
        },
        "postalCode": {
            "format": "#####",
            "regex": "^(\\d{5})$"
        }
    },
*/
