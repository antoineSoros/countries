let default = () => {
  let countriesData = UseCountry.make()
  let countries =
    Belt.Array.map(countriesData, country =>
      <P key=country.name.common className=Some("")>
        {country.flag->React.string} {country.name.common->React.string}
      </P>
    )->React.array
  <> {countries} </>
}
