let make = () => {
  let (countries, setCountries) = React.useState(_ => [])
  React.useEffect0(_ => {
    FetchCountries.getAll()->Js.Promise.then_(res => {
      setCountries(_ => res)
      Js.Promise.resolve()
    }, _)->ignore

    None
  })
  countries
}
