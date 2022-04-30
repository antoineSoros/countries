@react.component
let make = (~title: string, ~className: option<string>=?) => {
  let title = title->React.string
  let className = switch className {
  | Some(class) => class
  | None => "text-4xl font-semibold text-center"
  }
  <h1 className> {title} </h1>
}
