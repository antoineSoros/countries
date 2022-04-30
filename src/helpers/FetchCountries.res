let apiUrl = "https://restcountries.com/v3.1/"

let getAll = () => {
  let endpointApi = apiUrl ++ "all"

  Fetch.fetch(endpointApi)
  ->Js.Promise.then_(Fetch.Response.json, _)
  ->Js.Promise.then_(json => Js.log(json)->Js.Promise.resolve, _)
}
