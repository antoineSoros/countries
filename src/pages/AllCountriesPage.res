//type props = Type_Country.t
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
//@Todo: fix this error befor using getServerSideProps 'Error: Error serializing props returned from `getServerSideProps` in "/all-countries".
//Reason: Props must be returned as a plain object from getServerSideProps: `{ props: { ... } }`.
// let getServerSideProps = _ctx => {
//   let data = FetchCountries.getAll()
//   Js.Promise.resolve({"props": data})
// }
