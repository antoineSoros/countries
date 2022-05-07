// Generated by ReScript, PLEASE EDIT WITH CARE

import * as React from "react";
import * as Js_dict from "rescript/lib/es6/js_dict.js";
import * as UseCountry from "../../hooks/UseCountry.mjs";
import * as Router from "next/router";

function $$default(param) {
  var router = Router.useRouter();
  var code = Js_dict.get(router.query, "code");
  var countryData = UseCountry.ByCioc.make(code);
  var country = countryData !== undefined ? React.createElement("div", undefined, countryData.flag) : null;
  return React.createElement(React.Fragment, undefined, country);
}

export {
  $$default ,
  $$default as default,
  
}
/* react Not a pure module */
