let default = () => {
  let router = Next.Router.useRouter()
  let code = router.query->Js.Dict.get("code")
  let countryData = UseCountry.ByCioc.make(code)
  let country = switch countryData {
  | Some(country) => <div> {country.flag->React.string} </div>
  | None => React.null
  }
  <> {country} </>
}
