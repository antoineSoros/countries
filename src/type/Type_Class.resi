type position = [#Start | #End | #Center | #Between | #Around | #Evenly]
type flexSelf = [#Auto | #Start | #End | #Center | #Stretch | #Baseline]
type gridSelf = [#Auto | #Start | #End | #Center | #Stretch]
type gridCol = [#1 | #2 | #3 | #4 | #5 | #6 | #7 | #8 | #9 | #10 | #11 | #12 | #None]
type gridRow = [#1 | #2 | #3 | #4 | #5 | #6 | #None]

type place = [#Between | #Start | #End | #Center | #Stretch | #Around | #Evenly]
let flex: string
let flexCol: string
let flexColReverse: string
let flexNone: string
let flexRow: string
let flexRowReverse: string
let grid: string
let inlineFlex: string
//Container
let makeJustify: position => string
let makeAlign: position => string
//Items
let makeJustifyItems: position => string
//Self
let makeJustifySelf: flexSelf => string

let makeAlignSelf: flexSelf => string

//Place
let makePlaceContent: place => string
let makePlaceSelf: gridSelf => string
//Grid
let makeGridTempCol: gridCol => string
let makeGridTempRow: gridRow => string
