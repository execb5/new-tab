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
        [ div [ class "square title hiragana" ]
            [ div [ class "title-letter" ] [ text "お" ]
            , div [ class "title-letter" ] [ text "か" ]
            , div [ class "title-letter" ] [ text "え" ]
            , div [ class "title-letter" ] [ text "り" ]
            ]
        , div [ class "square" ]
            [ div [ class "category-title katakana" ]
                [ text "ボード" ]
            , ul [ class "" ]
                [ li [] [ a [ href "http://boards.4chan.org/a/" ] [ text "/a/" ] ]
                , li [] [ a [ href "http://boards.4chan.org/g/" ] [ text "/g/" ] ]
                , li [] [ a [ href "http://boards.4chan.org/w/" ] [ text "/w/" ] ]
                , li [] [ a [ href "http://boards.4chan.org/wg/" ] [ text "/wg/" ] ]
                , li [] [ a [ href "http://boards.4chan.org/wsg/" ] [ text "/wsg/" ] ]
                ]
            ]
        , div [ class "square" ]
            [ div [ class "category-title katakana" ]
                [ text "メディア" ]
            , ul [ class "" ]
                [ li [] [ a [ href "https://github.com/" ] [ text "github" ] ]
                , li [] [ a [ href "http://boards.4chan.org/g/" ] [ text "/g/" ] ]
                , li [] [ a [ href "http://boards.4chan.org/w/" ] [ text "/w/" ] ]
                , li [] [ a [ href "http://boards.4chan.org/wg/" ] [ text "/wg/" ] ]
                , li [] [ a [ href "http://boards.4chan.org/wsg/" ] [ text "/wsg/" ] ]
                ]
            ]
        , div [ class "square" ]
            [ div [ class "category-title katakana" ]
                [ text "ダウンロード" ]
            , ul [ class "" ]
                [ li [] [ a [ href "https://github.com/" ] [ text "github" ] ]
                , li [] [ a [ href "http://boards.4chan.org/g/" ] [ text "/g/" ] ]
                , li [] [ a [ href "http://boards.4chan.org/w/" ] [ text "/w/" ] ]
                , li [] [ a [ href "http://boards.4chan.org/wg/" ] [ text "/wg/" ] ]
                , li [] [ a [ href "http://boards.4chan.org/wsg/" ] [ text "/wsg/" ] ]
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
