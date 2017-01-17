
import Html
import Html.Attributes


main =
  Html.h3
    [ buildStyle
        [ pointerCursorStyle
        , noTextSelectionStyle
        ]
    ]
    [ Html.text "Hello world!" ]


buildStyle : List (List (String, String)) -> Html.Attribute msg
buildStyle styleLists =
  Html.Attributes.style <| List.concat styleLists


(=>) = (,)


pointerCursorStyle : List (String, String)
pointerCursorStyle =
  [ "cursor" => "pointer" ]


noTextSelectionStyle : List (String, String)
noTextSelectionStyle =
  [ "-webkit-touch-callout" => "none"
  , "-webkit-user-select"   => "none"
  , "-khtml-user-select"    => "none"
  , "-moz-user-select"      => "none"
  , "-ms-user-select"       => "none"
  , "-user-select"          => "none"
  ]

