require! {
    \react
    \../tools.ls : { money }
    \prelude-ls : { each, find }
    \react-copy-to-clipboard : { CopyToClipboard }
    \../copied-inform.ls
    \../copy.ls
    \../address-link.ls : { get-address-link, get-address-title }
    \../wallet-funcs.ls
    \../get-lang.ls
    \./icon.ls
    \../get-primary-info.ls
    \../../web3t/providers/superagent.ls : { get }
    \../icons.ls
    \../round-human.ls
    \react-middle-ellipsis : { default: MiddleEllipsis }
    \./confirmation.ls : { alert }
}
#
.wallet
    @import scheme
    $cards-height: 324px
    $pad: 20px
    $radius: 15px 
    position: relative
    cursor: pointer
    $card-height: 60px
    height: $card-height
    &.last
        height: 60px
    $mt: 20px
    box-sizing: border-box
    overflow: hidden
    transition: height .5s
    border: 0px
    &:first-child
        margin-top: 0
        box-shadow: none
    &:last-child
        margin-bottom: 12px
    .pending
        color: orange
    &.over
        background: #CCC
    &.big
        height: 120px
    &.active
        >.wallet-middle
            display: inline-block
    >.wallet-top
        padding: 0 12px
        box-sizing: border-box
        $card-top-height: 50px
        width: 100%
        color: #677897
        font-size: 14px
        text-align: center
        overflow: hidden
        >*
            display: inline-block
            box-sizing: border-box
            vertical-align: top
            padding-top: 12px
            height: $card-top-height
        >.top-left
            width: 30%
            text-align: left
            overflow: hidden
            text-overflow: ellipsis
            >*
                display: inline-block
            >.img
                line-height: $card-top-height
                vertical-align: top
                margin-right: 5px
                >img
                    vertical-align: top
                    max-width: 50px
                    $s: 35px
                    border-radius: 0
                    width: $s
                    height: $s
            >.info
                text-align: left
                margin-left: 0px
                text-overflow: ellipsis
                overflow: hidden
                width: auto
                @media screen and (max-width: 390px)
                    display: none
                >.name
                    padding-left: 3px
                >.price
                    padding-left: 3px
                    font-size: 12px
                    font-weight: bold
                    overflow: hidden
                    text-overflow: ellipsis
        >.top-middle
            width: 30%
            text-align: center
            .label-coin
                height: 16px
                top: 3px
                padding-left: 4px
                position: relative
            @media screen and (max-width: 800px)
                width: 35%
            >.balance
                &:last-child
                    font-weight: bold
                    font-size: 13px
                &.title
                    @media screen and (max-width: 220px)
                        display: none
                .title-balance
                    display: none
        >.top-right
            width: 40%
            text-align: right
            @media screen and (max-width: 800px)
                width: 35%
            >button
                outline: none
                margin-bottom: 5px
                margin-left: 5px
                cursor: pointer
                border: 1px solid
                $round: 36px
                padding: 0
                box-sizing: border-box
                border-radius: $border
                font-size: 10px
                width: auto
                padding: 0 6px
                height: $round
                color: #6CA7ED
                text-transform: uppercase
                font-weight: bold
                background: transparent
                transition: all .5s
                text-overflow: ellipsis
                overflow: hidden
                width: 80px
                .icon-svg
                    @media screen and (max-width: 800px)
                        padding: 0
                .icon
                    position: relative
                    height: 16px
                    top: 2px
                @media screen and (max-width: 800px)
                    width: 40px
                    line-height: 30px
                &:hover
                    background: #7aa7f3
                    color: white
    >.wallet-middle
        $card-top-height: 50px
        width: 100%
        padding: 0 12px
        box-sizing: border-box
        color: #A8BACB
        font-size: 14px
        margin-top: 10px
        text-align: center
        position: relative
        .browse
            display: none
        &:last-child
            display: none
        >.uninstall
            text-align: left
            font-size: 10px
            padding-top: 5px
        >img
            position: absolute
            right: 3%
            margin: 10px
            margin-left: 50px
            z-index: 2
        >span
            width: 100%
            z-index: 1
            position: relative
            border-radius: $border
            border: 0
            background: #E6F0FF
            box-sizing: border-box
            vertical-align: top
            text-align: center
            padding-left: 20px
            padding-right: 55px
            height: $card-top-height - 14px
            color: #677897
            font-size: 14px
            line-height: $card-top-height - 14px
            display: inline-block
            text-overflow: ellipsis
            overflow: hidden
            user-select: text !important
            cursor: auto
            @media screen and (max-width: 390px)
                padding-right: 25px
            a
                width: auto
                z-index: 1
                position: relative
                border-radius: $border
                border: 0
                background: transparent
                box-sizing: border-box
                vertical-align: top
                text-align: center
                height: $card-top-height - 14px
                color: rgb(204, 204, 204)
                font-size: 14px
                line-height: $card-top-height - 14px
                display: inline-block
                cursor: pointer
                user-select: text !important
cb = console~log
module.exports = (store, web3t, wallets, wallet)-->
    { button-style, uninstall, wallet, active, big, balance, balance-usd, pending, send, receive, expand, usd-rate, last } = wallet-funcs store, web3t, wallets, wallet
    lang = get-lang store
    style = get-primary-info store
    label-uninstall =
        | store.current.refreshing => \...
        | _ => \ "#{lang.hide}"
    wallet-style=
        color: style.app.text3
    border-style =
        border-bottom: "1px solid #{style.app.border}"
        background: style.app.wallet
    button-primary1-style=
        border: "1px solid #{style.app.primary1}"
        color: style.app.text
        background: style.app.primary1
    button-primary2-style=
        border: "1px solid #{style.app.primary2}"
        color: style.app.text
        background: style.app.primary2
    button-primary1-style-m=
        border: "1px solid rgb(195, 92, 95)"
        color: style.app.text
        background: "rgb(195, 92, 95)"
    button-primary3-style=
        border: "1px solid #{style.app.primary3}"
        color: style.app.text2
        background: style.app.primary3
    address-input=
        color: style.app.addressText
        background: style.app.addressBg
    filter-icon=
        filter: style.app.filterIcon
    btn-icon =
        filter: style.app.btn-icon
    placeholder = 
        | store.current.refreshing => "placeholder"
        | _ => ""
    placeholder-coin = 
        | store.current.refreshing => "placeholder-coin"
        | _ => ""
    name = wallet.coin.name ? wallet.coin.token
    load-terms = (cb)->
        #return cb null if store.current.content-migrate?
        err, res <- get \https://raw.githubusercontent.com/okhrimenkoalexey/Velas/master/terms.md .end
        return cb err if err?
        store.terms2 = res.text
        cb null
    migrate = (wallet)-> ->
        err <- load-terms
        address = 
            store.current.account.wallets 
                |> find (-> it.coin.token is \vlx2) 
                |> (.address)
        return alert store, "addres #{address} is wrong", cb if typeof! address isnt \String
        err, data <- get "https://mainnet-v2.velas.com/migration/topup-velas-address/#{address}" .end
        return alert store, "#{err}", cb if err?
        return alert store, "cannot create address", cb if not data.body?address?
        store.current.token-migration = data.body.address
        #store.current.token-migration = "V123"
    cut-tx = (tx)->
        return \none if not tx?
        t = tx.to-string!
        m = Math.max(document.documentElement.clientWidth, window.innerWidth or 0)
        r =
            | m > 800 => t.substr(0, 4) + \.. + t.substr(tx.length - 25, 0) + \.. + t.substr(t.length - 4, 4)
            | _ => t.substr(0, 4) + \.. + t.substr(tx.length - 25, 0) + \.. + t.substr(t.length - 4, 4)
    .wallet.pug(on-click=expand class="#{last + ' ' + active + ' ' + big}" key="#{wallet.coin.token}" style=border-style)
        .wallet-top.pug
            .top-left.pug(style=wallet-style)
                .img.pug(class="#{placeholder-coin}")
                    img.pug(src="#{wallet.coin.image}")
                .info.pug
                    .name.pug(class="#{placeholder}" title="#{usd-rate}") $#{ round-human usd-rate}
                    .price.pug(class="#{placeholder}" title="#{balance-usd}") $#{ round-human balance-usd}
            .top-middle.pug(style=wallet-style)
                if +wallet.pending-sent is 0
                    .balance.pug.title(class="#{placeholder}") #{name}
                .balance.pug(class="#{placeholder}")
                    span.pug(title="#{wallet.balance}") #{ round-human wallet.balance }
                        img.label-coin.pug(class="#{placeholder-coin}" src="#{wallet.coin.image}")
                        span.pug #{ wallet.coin.token.to-upper-case! }
                    if +wallet.pending-sent >0
                        .pug.pending 
                            span.pug -#{ pending }
                .price.pug(class="#{placeholder}" title="#{balance-usd}") $#{ round-human balance-usd }
            .top-right.pug
                if store.current.device is \desktop
                    button.btn-open.pug(on-click=expand style=button-primary3-style)
                        img.icon.pug(src="#{icons.open}" style=btn-icon)
                button.pug(on-click=send(wallet) style=button-primary1-style)
                    if store.current.device is \mobile
                        img.icon-svg.pug(src="#{icons.send}")
                    if store.current.device is \desktop
                        span.pug
                            img.icon-svg.pug(src="#{icons.send}")
                            | #{lang.send}
                if wallet.coin.token isnt \vlx or store.current.device isnt \desktop
                    button.pug(on-click=receive(wallet) style=button-primary2-style)
                        if store.current.device is \mobile
                            img.icon-svg.pug(src="#{icons.get}")
                        if store.current.device is \desktop
                            span.pug
                                img.icon-svg.pug(src="#{icons.get}")
                                | #{lang.receive}
                else
                    button.pug(on-click=migrate(wallet) style=button-primary1-style-m)
                        span.pug 
                            img.icon-svg.pug(src="#{icons.migrate}")
                            | #{lang.btn-migrate}
        .wallet-middle.pug
            span.pug(style=address-input)
                a.browse.pug(target="_blank" href="#{get-address-link wallet}")
                    img.pug(src="#{icons.browse-open}")
                MiddleEllipsis.pug
                    a.pug(target="_blank" href="#{get-address-link wallet}") #{get-address-title wallet}
            CopyToClipboard.pug(text="#{get-address-title wallet}" on-copy=copied-inform(store) style=filter-icon)
                copy store
            if wallet.coin.token not in <[ btc vlx vlx2 ]>
                .pug.uninstall(on-click=uninstall style=wallet-style) #{label-uninstall}
        .wallet-middle.title-balance.pug
            .name.pug(class="#{placeholder}" title="#{usd-rate}") $#{ round-human(usd-rate)}
            .name.per.pug(class="#{placeholder}") Per 1 #{ wallet.coin.token.to-upper-case! }