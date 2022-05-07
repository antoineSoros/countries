let apiUrl = "https://restcountries.com/v3.1/"
external toTypeArrayCountry: array<Js.Json.t> => Type_Country.countries = "%identity"
exception PostError(string)

let getAll = () => {
  let endpointApi = apiUrl ++ "all"
  let decodeArray = response => {
    switch Js.Json.decodeArray(response) {
    | Some(decodedRes) => Js.Promise.resolve(decodedRes)

    | None => Js.Promise.resolve([])
    }
  }

  Fetch.fetch(endpointApi)
  ->Js.Promise.then_(Fetch.Response.json, _)
  ->Js.Promise.then_(json => decodeArray(json), _)
  ->Js.Promise.then_(json => json->toTypeArrayCountry->Js.Promise.resolve, _)
}
