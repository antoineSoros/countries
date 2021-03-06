open Type_Class

let className = [grid, makeGridTempCol(#4)]->Util_Class.joinClass
let sortByName: (Type_Country.t, Type_Country.t) => int = (c1, c2) =>
  Js.String.localeCompare(c2.name.common, c1.name.common)->Belt.Int.fromFloat

let default = () => {
  let countriesData = UseCountry.All.make()
  let countries =
    countriesData
    ->Js.Array.sortInPlaceWith(sortByName, _)
    ->Belt.Array.map(country =>
      <Next.Link href={"/country/" ++ country.cioc} key=country.name.common>
        {(country.flag ++ " " ++ country.name.common)->React.string}
      </Next.Link>
    )
    ->React.array
  <> <div className> {countries} </div> </>
}
