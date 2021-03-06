require! {
    \react
    \../navigate.ls
    \../get-primary-info.ls
    \../web3.ls
    \../get-lang.ls
    \../icons.ls
    \../components/button.ls
    \../../web3t/providers/superagent.ls : { get }
}
.terms
    @import scheme
    text-align: center
    .terms-body
        >.header
            font-size: 19px
            padding: 10px
        display: inline-block
        min-width: 250px
        >.buttons
            color: inherit
            text-align: center
            button
                display: inline-block
                cursor: pointer
                width: auto
                margin: 15px 5px 0
                text-transform: uppercase
                font-weight: bold
                padding: 0px 6px
                height: 36px
                border: 0
                background: #248295
                border-radius: $border
                font-size: 10px
                min-width: 80px
                width: auto
                white-space: nowrap
                text-overflow: ellipsis
                overflow: hidden
        textarea
            padding: 10px
            overflow: auto
            width: 100%
            box-sizing: border-box
            height: 445px
            width: 300px
            border: 0
            border-radius: $border
            outline: none
            font-family: inherit
            @media(min-width: 600px)
                width: 600px
terms = ({ store, web3t })->
    lang = get-lang store
    info = get-primary-info store
    style=
        background: info.app.wallet
        color: info.app.text
    button-style=
        color: info.app.text
    accept = ->
        navigate store, web3t, \:init
        <- web3t.refresh
    .pug.terms
        .pug.terms-body
            .pug.header Terms of Use
            textarea.pug(value="#{store.terms}" style=style)
            .pug.buttons
                .pug #{lang.terms}
                button { store, text: \accept , on-click: accept, type: \primary }
terms.init = ({ store }, cb)->
    err, res <- get \https://raw.githubusercontent.com/askucher/expo-web3/dev/TERMS.md .end
    return cb err if err?
    store.terms = res.text
    cb null
module.exports = terms