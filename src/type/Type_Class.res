type position = [#Start | #End | #Center | #Between | #Around | #Evenly]
type flexSelf = [#Auto | #Start | #End | #Center | #Stretch | #Baseline]
type gridSelf = [#Auto | #Start | #End | #Center | #Stretch]
type place = [#Between | #Start | #End | #Center | #Stretch | #Around | #Evenly]
type gridCol = [#1 | #2 | #3 | #4 | #5 | #6 | #7 | #8 | #9 | #10 | #11 | #12 | #None]
type gridRow = [#1 | #2 | #3 | #4 | #5 | #6 | #None]

let flex = "flex"
let flexCol = "flex-col"
let flexColReverse = "flex-col-reverse"
let flexNone = "flex-none"
let flexRow = "flex-row"
let flexRowReverse = "flex-row-reverse"
let grid = "grid"
let inlineFlex = "inline-flex"
//Container
let makeJustify = position => {
  let prefix = "justify-"
  switch position {
  | #Start => prefix ++ "start"
  | #End => prefix ++ "end"
  | #Center => prefix ++ "center"
  | #Between => prefix ++ "between"
  | #Around => prefix ++ "around"
  | #Evenly => prefix ++ "evenly"
  }
}
let makeAlign = position => {
  let prefix = "align-"
  switch position {
  | #Start => prefix ++ "start"
  | #End => prefix ++ "end"
  | #Center => prefix ++ "center"
  | #Between => prefix ++ "between"
  | #Around => prefix ++ "around"
  | #Evenly => prefix ++ "evenly"
  }
}
//Items
let makeJustifyItems = position => {
  let prefix = "justify-items-"
  switch position {
  | #Start => prefix ++ "start"
  | #End => prefix ++ "end"
  | #Center => prefix ++ "center"
  | #Between => prefix ++ "between"
  | #Around => prefix ++ "around"
  | #Evenly => prefix ++ "evenly"
  }
}
//Self
let makeJustifySelf = self => {
  let prefix = "justify-self-"
  switch self {
  | #Start => prefix ++ "start"
  | #End => prefix ++ "end"
  | #Center => prefix ++ "center"
  | #Auto => prefix ++ "auto"
  | #Stretch => prefix ++ "stretch"
  | #Baseline => prefix ++ "baseline"
  }
}

let makeAlignSelf = self => {
  let prefix = "align-self-"
  switch self {
  | #Start => prefix ++ "start"
  | #End => prefix ++ "end"
  | #Center => prefix ++ "center"
  | #Auto => prefix ++ "auto"
  | #Stretch => prefix ++ "stretch"
  | #Baseline => prefix ++ "baseline"
  }
}

//Place
let makePlaceContent: place => string = place => {
  let prefix = "place-content-"
  switch place {
  | #Between => prefix ++ "between"
  | #Start => prefix ++ "start"
  | #End => prefix ++ "end"
  | #Center => prefix ++ "center"
  | #Stretch => prefix ++ "stretch"
  | #Around => prefix ++ "around"
  | #Evenly => prefix ++ "evenly"
  }
}
let makePlaceSelf: gridSelf => string = gridSelf => {
  let prefix = "place-self-"
  switch gridSelf {
  | #Start => prefix ++ "start"
  | #End => prefix ++ "end"
  | #Center => prefix ++ "center"
  | #Auto => prefix ++ "auto"
  | #Stretch => prefix ++ "stretch"
  }
}

//Grid
let makeGridTempCol = gridCol => {
  let prefix = "grid-cols-"
  switch gridCol {
  | #1 => prefix ++ "1"
  | #2 => prefix ++ "2"
  | #3 => prefix ++ "3"
  | #4 => prefix ++ "4"
  | #5 => prefix ++ "5"
  | #6 => prefix ++ "6"
  | #7 => prefix ++ "7"
  | #8 => prefix ++ "8"
  | #9 => prefix ++ "9"
  | #10 => prefix ++ "10"
  | #11 => prefix ++ "11"
  | #12 => prefix ++ "12"
  | #None => prefix ++ "none"
  }
}
let makeGridTempRow = gridRow => {
  let prefix = "grid-rows-"
  switch gridRow {
  | #1 => prefix ++ "1"
  | #2 => prefix ++ "2"
  | #3 => prefix ++ "3"
  | #4 => prefix ++ "4"
  | #5 => prefix ++ "5"
  | #6 => prefix ++ "6"
  | #None => prefix ++ "none"
  }
}
