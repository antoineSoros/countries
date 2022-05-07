module All = {
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
}
module ByCioc = {
  let make = code => {
    let (countries, setCountries) = React.useState(_ => [])
    React.useEffect1(_ => {
      switch code {
      | Some(code) => FetchCountries.getBycioc(code)->Js.Promise.then_(res => {
          setCountries(_ => res)
          Js.Promise.resolve()
        }, _)->ignore
      | None => ()
      }

      None
    }, [code])
    countries->Belt.Array.get(0)
  }
}
