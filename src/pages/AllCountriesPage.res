open Type_Class
let classNameCountry = [flex, makeJustify(#Center)]->Util_Class.joinClass
let className = [grid, makeGridTempCol(#4)]->Util_Class.joinClass
let sortByName: (Type_Country.country, Type_Country.country) => int = (c1, c2) =>
  Js.String.localeCompare(c2.name.common, c1.name.common)->Belt.Int.fromFloat
let default = () => {
  let countriesData = UseCountry.make()
  let countries =
    countriesData
    ->Js.Array.sortInPlaceWith(sortByName, _)
    ->Belt.Array.map(country =>
      <P key=country.name.common>
        {country.flag->React.string} {country.name.common->React.string}
      </P>
    )
    ->React.array
  <> <div className> {countries} </div> </>
}
