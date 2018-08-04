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
    div [ class "board" ]
        [ div [ class "square", class "title" ]
            [ div [ class "title-letter" ] [ text "お" ]
            , div [ class "title-letter" ] [ text "か" ]
            , div [ class "title-letter" ] [ text "え" ]
            , div [ class "title-letter" ] [ text "り" ]
            ]
        , div [ class "square" ]
            [ div [ class "category-title" ] [ text "Boards" ]
            , ul [ class "" ]
                [ li [] [ text "/a/" ]
                , li [] [ text "/b/" ]
                ]
            ]
        ]


form : Html Msg
form =
    Html.form [ action "https://google.com/search", method "get" ]
        [ input [ class "search-box", name "q", placeholder "Google 検索", type_ "text" ]
            []
        , text ""
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
