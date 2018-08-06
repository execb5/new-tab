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
        [ div [ class "title board" ]
            [ div [ class "main-component" ]
                [ div [ class "hero hiragana" ]
                    [ p [] [ text "おか" ]
                    , p [] [ text "えり" ]
                    ]
                ]
            , Html.form [ action "https://google.com/search", method "get" ]
                [ input [ class "search-box", name "q", placeholder "Google 検索", type_ "text", autofocus True ] []
                , text ""
                ]
            ]
        , div [ class "content board" ]
            [ div [ class "component" ]
                [ div [ class "component-title katakana" ]
                    [ text "ボード" ]
                , div [ class "component-list" ]
                    [ a [ href "http://boards.4chan.org/a/" ] [ text "/a/" ]
                    , a [ href "http://boards.4chan.org/g/" ] [ text "/g/" ]
                    , a [ href "http://boards.4chan.org/gif/" ] [ text "/gif/" ]
                    , a [ href "http://boards.4chan.org/v/" ] [ text "/v/" ]
                    , a [ href "http://boards.4chan.org/w/" ] [ text "/w/" ]
                    , a [ href "http://boards.4chan.org/wg/" ] [ text "/wg/" ]
                    , a [ href "http://boards.4chan.org/wsg/" ] [ text "/wsg/" ]
                    ]
                ]
            , div [ class "component" ]
                [ div [ class "component-title" ]
                    [ text "Google" ]
                , div [ class "component-list" ]
                    [ a [ href "https://inbox.google.com/" ] [ text "inbox" ]
                    , a [ href "https://www.youtube.com/" ] [ text "youtube" ]
                    , a [ href "https://photos.google.com/" ] [ text "photos" ]
                    , a [ href "https://hangouts.google.com/" ] [ text "hangouts" ]
                    , a [ href "https://translate.google.com/#ja/en" ] [ text "translate" ]
                    ]
                ]
            , div [ class "component" ]
                [ div [ class "component-title katakana" ]
                    [ text "ダウンロード" ]
                , div [ class "component-list" ]
                    [ a [ href "https://thepiratebay.org/" ] [ text "thepiratebay" ]
                    , a [ href "https://nyaa.si/" ] [ text "nyaa" ]
                    , a [ href "https://animebytes.tv/" ] [ text "animebytes" ]
                    , a [ href "https://exoticaz.to/" ] [ text "exoticaz" ]
                    , a [ href "http://gen.lib.rus.ec/" ] [ text "libgen" ]
                    ]
                ]
            , div [ class "component" ]
                [ div [ class "component-title" ]
                    [ text "etc" ]
                , div [ class "component-list" ]
                    [ a [ href "https://github.com/" ] [ text "github" ]
                    , a [ href "https://circleci.com/dashboard" ] [ text "circleci" ]
                    , a [ href "https://www.reddit.com/" ] [ text "reddit" ]
                    , a [ href "https://www.messenger.com/" ] [ text "messenger" ]
                    , a [ href "https://jisho.org/" ] [ text "jisho" ]
                    , a [ href "http://paletton.com/" ] [ text "paletton" ]
                    ]
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
