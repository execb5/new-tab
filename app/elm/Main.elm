module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)


-- MODEL


type alias Model =
    String


init : ( Model, Cmd Msg )
init =
    ( "ペロ", Cmd.none )



-- MESSAGES


type Msg
    = NoOp



-- VIEW


view : Model -> Html Msg
view model =
    div []
        [ div []
            [ div []
                [ text "おかえり"
                , text "主人様"
                ]
            , Html.form [ action "https://google.com/search", method "get" ]
                [ input [ class "search-box", name "q", placeholder "Google 検索", type_ "text" ]
                    []
                , text ""
                ]
            , span [ class "title" ]
                [ text "ただしその頃にはあんたは八つ裂きになっているだろうけどな" ]
            ]
        , nav []
            [ ul []
                [ li []
                    [ text model
                    , text "オトナの甘さ"
                    ]
                ]
            ]
        ]



-- UPDATE


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            ( model, Cmd.none )



-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none



-- MAIN


main : Program Never Model Msg
main =
    program
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }
