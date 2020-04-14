require! {
    \react
    \react-dom
    \superagent : { get }
    \../navigate.ls
    \../get-primary-info.ls
    \../web3.ls
    \../get-lang.ls
    \../history-funcs.ls
    \./icon.ls
    \./switch-account.ls
}
.videostorage
    @import scheme
    $border-radius: $border
    $smooth: opacity .15s ease-in-out
    position: relative
    display: block
    width: auto
    overflow: hidden
    margin-left: 60px
    top: 0
    height: 100%
    min-height: 100vh
    padding-top: 5%
    box-sizing: border-box
    padding: 0px
    background: transparent
    .menu
        width: 226px
        background: #321260
        position: absolute
        top: 188px
        right: 0px
        display: inline-grid
        z-index: 3
        .col
            font-size: 12px
            padding: 10px 15px
            margin: 0
            display: inline-block
            vertical-align: top
            box-sizing: border-box
            color: rgb(204, 204, 204)
            overflow-y: hidden
            &.folder-menu
                text-align: left
                display: inline-flex
                span
                    margin-right: 10px
        .table-row-menu
            text-align: left
            &:hover
                cursor: pointer
                background: rgba(75, 40, 136, 0.2)
            &.active
                background: rgba(75, 40, 136, 0.2)
        .bottom, .middle
            padding: 10px
        .middle
            button
                outline: none
                cursor: pointer
                border: 1px solid
                padding: 0
                box-sizing: border-box
                border-radius: $border
                font-size: 10px
                padding: 0 6px
                height: 36px
                color: #6CA7ED
                text-transform: uppercase
                font-weight: bold
                background: transparent
                transition: all .5s
                text-overflow: ellipsis
                overflow: hidden
                width: 100%
                margin: 0 auto
                opacity: 1
                margin-top: 10px
    @media(max-width:800px)
        width: 100%
        margin: 0
    .search-input
        position: fixed
        background: linear-gradient(100deg, #331462 4%, #15063c 100%)
        z-index: 1
        width: 100%
        .add
            line-height: 35px
            cursor: pointer
            position: absolute
            right: 80px
        .close
            line-height: 2.4
            cursor: pointer
            width: 20px
            margin-right: 20px
            img
                height: 15px
                width: 15px
    @media(max-width:800px)
        width: 100%
        margin: 0
    .search-field
        .left
            position: relative
        .icon
            position: absolute
            top: 1px
            right: 0
            background: #532b94
            padding: 8px 20px 9px
    .section
        border-bottom: 1px solid rgba(240, 237, 237, 0.16)
        padding: 15px 20px 15px
        display: flex
        width: 100%
        img
            width: 100%
            height: 140px
            opacity: .8
            transition: .5s
        &.filter
            padding: 0px
        &:last-child
            border: 0
        .title
            padding: 0px
            width: 25%
            text-align: left
            font-size: 14px
            @media(max-width: 800px)
                display: none
            h2
                font-family: 'Roboto', sans-serif
            h3, h2
                margin: 0
                line-height: 36px
                font-weight: 400
        .description
            padding: 0px
            font-size: 14px
            width: 40%
            text-align: left
            &.tabs
                overflow: hidden
                ul
                    overflow-x: scroll
                    scrollbar-width: none
                    white-space: nowrap
            @media(max-width: 800px)
                width: 100%
            ul
                list-style: none
                padding: 0
                margin: 10px 0 0
                li
                    display: inline-block
                    padding: 15px
                    cursor: pointer
                    &:first-child
                        padding-left: 0
                    .icon
                        margin-right: 5px
                        svg
                            vertical-align: middle !important
                    &.active
                        color: #c671f1
                        border-bottom: 1px solid
                        padding-bottom: 15px
            input
                outline: none
                width: 100%
                box-sizing: border-box
                height: 36px
                line-height: 36px
                border-radius: $border-radius
                padding: 0px 10px
                font-size: 14px
                margin: 1px
                border: 0px
                box-shadow: none
    button
        background-color: $primary
        border: 1px solid $primary
        border-radius: $border
        color: white
        height: 36px
        width: 104px
        margin-top: 5px
        padding: 0 6px
        text-decoration: none
        text-transform: uppercase
        font-size: 10px
        font-weight: bold
        cursor: pointer
        outline: none
        display: inline-block
        text-overflow: ellipsis
        overflow: hidden
        white-space: nowrap
        &:hover
            background: transparent
            color: $primary
        &.link
            min-width: 190px
        float: right
        margin-top: 12px
        margin-right: 10px
    >.title
        position: sticky
        background: linear-gradient(100deg, #331462 4%, #15063c 100%)
        box-sizing: border-box
        top: 0
        width: 100%
        color: gray
        font-size: 22px
        padding: 10px
        height: 60px
        z-index: 2
        >.header
            margin: 5px
            text-align: center
            @media(max-width:800px)
                text-align: center
        >.close
            position: absolute
            font-size: 20px
            left: 20px
            top: 13px
            cursor: pointer
            &:hover
                color: #CCC
    >.toolbar
        position: relative
        height: 60px
        ul
            display: inline-flex
            float: left
            list-style: none
            padding: 0 20px
            line-height: 1.8
            &.path
    >.wrapper
        height: 540px
        display: flex
        flex-wrap: wrap
        overflow-y: scroll
        scrollbar-width: none
        padding: 0
        margin-top: 69px
        >.panel-content
            margin-left: 180px
            padding: 20px
            box-sizing: border-box
            width: 100%
            &.dragarea
                overflow: inherit
            .dragfile
                position: absolute
                height: 100vh
                background: rgba(35, 16, 68, 0.85)
                display: none
                &.dragarea
                    display: block
                    width: calc(100% - 180px)
                    display: block
                    top: 190px
                    left: 181px
                    z-index: 2
                    @media(max-width:800px)
                        left: 0
                        width: 100%
                div
                    top: 10rem
                    text-align: center !important
                    position: relative
                    width: 60% !important
                    padding: 50px 20px
                    border: 1px dashed
                    margin: 0 auto
                    display: block
                    @media (max-width: 800px)
                        width: 80% !important
                    img
                        display: block
                        width: 40px
                        margin: 0 auto 20px
                    span
                        color: #6f6fe2
                        cursor: pointer
                        display: block
            iframe
                width: 100%
                height: 150px
            @media(max-width: 800px)
                width: 100%
                margin-left: 0
            .results
                text-align: left
                font-size: 13px
                margin: 0
            .header
                text-align: left
                font-size: 18px
                font-weight: 400
                margin: 0 0 20px
            .section
                padding: 0 15px 0 0
                display: inline-block
                width: 25%
                min-width: 205px
                min-height: 230px
                border: 0
                box-sizing: border-box
                vertical-align: text-top
                margin-bottom: 20px
                float: left
                @media(max-width:800px)
                    &:nth-child(odd)
                        padding: 0
                    width: 50%
                @media(max-width:640px)
                    width: 100%
                    padding: 0
                .play
                    @media(max-width:800px)
                        top: 120px !important
                iframe
                    @media(max-width:800px)
                        height: 240px
                .source
                    cursor: pointer
                    position: relative
                    .title-video
                        display: flex
                        .account
                            border-radius: 50px
                            width: 20px
                            height: 20px
                            padding: 10px
                            margin-top: 5px
                            background: #4b2788
                            margin-right: 10px
                    .play
                        width: 100%
                        height: 150px
                        display: block
                        line-height: 43px
                        border-radius: 0
                        position: absolute
                        z-index: 1
                        top: 80px
                        left: 50%
                        margin-right: -50%
                        transform: translate(-50%, -50%)
                        opacity: 0
                        transition: .5s
                        svg
                            width: 30px
                            height: 30px
                            background: rgba(102, 51, 153, 0.55)
                            padding: 10px
                            border-radius: 50px
                            margin-top: 43px
                    &:hover
                        .play
                            opacity: 1
                            transition: .5s
                        img
                            opacity: 1
                            transition: .5s
                        .header
                            text-decoration: underline
                &.developing
                    opacity: .5
                    .source
                        cursor: pointer
                        &:hover
                            .header, .address
                                text-decoration: none
                                cursor: not-allowed
                .address, .header, .description
                    width: 100%
                    text-align: left
                    margin: 5px 0
                .address
                    color: #969696
                    font-size: 13px
                    cursor: pointer
                .header
                    font-weight: 500
                    color: #fff
                    font-size: 17px
                    cursor: pointer
                    -webkit-line-clamp: 2
                    -webkit-box-orient: vertical
                    overflow: hidden
                    text-overflow: ellipsis
                    display: block
                    display: -webkit-box
                .description
                    opacity: .8
                    line-height: 1.6
                    font-size: 13px
                ul.stat
                    list-style: none
                    padding: 0
                    margin-bottom: 0
                    color: #969696
                    font-size: 13px
                    text-align: left
                    margin-top: 0
                    li
                        display: inline-block
                        margin-left: 4px
                        cursor: pointer
                        + li
                            &:before
                                content: ' · '
                        &:first-child
                            margin-left: 0
        >.menu-content
            width: 180px
            position: fixed
            box-sizing: border-box
            @media(max-width: 800px)
                display: none
            .tabs
                height: 100vh
                ul
                    overflow-x: scroll
                    scrollbar-width: none
                    text-align: left
            @media(max-width: 800px)
                width: 100%
            ul
                list-style: none
                margin: 0
                padding: 0
                li
                    display: inline-block
                    padding: 15px 25px
                    font-size: 14px
                    cursor: pointer
                    width: 100%
                    box-sizing: border-box
                    transition: .5s
                    .icon
                        margin-right: 15px
                        svg
                            vertical-align: middle !important
                    &.active
                        color: #c671f1
                        background: rgb(67, 32, 124)
                        padding-bottom: 15px
                    &:hover
                        background: rgb(67, 32, 124)
                        padding-bottom: 15px
                        transition: .5s
    .iron
        -webkit-mask-image: linear-gradient(75deg, rgba(0, 0, 0, 0.6) 30%, #000 50%, rgba(0, 0, 0, 0.6) 70%)
        -webkit-mask-size: 50%
        animation: shine 2s infinite
        .logo
            padding: 6px
            width: 20px
            height: 10px
            display: inline-block
            background: #ba68e6
            line-height: 0px
            text-align: center
            vertical-align: text-top
            border-radius: 5px
            margin-top: 3px
            svg
                vertical-align: top !important
    @keyframes shine
        0%
            -webkit-mask-position: right
        100%
            -webkit-mask-position: left
    .bounce
        animation: bounce_9418 3.6s ease infinite
        transform-origin: 50% 50%
    @keyframes bounce_9418
        0%
            transform: translateY(0)
        5.55556%
            transform: translateY(0)
        11.11111%
            transform: translateY(0)
        22.22222%
            transform: translateY(-5px)
        27.77778%
            transform: translateY(0)
        33.33333%
            transform: translateY(-5px)
        44.44444%
            transform: translateY(0)
        100%
            transform: translateY(0)
menu = (store, web3t)->
    info = get-primary-info store
    drag-file = ->
        store.video.drag = not store.video.drag
        store.video.menu-open = not store.video.menu-open
    filter-body =
        border: "1px solid #{info.app.border}"
        background: info.app.header
    .pug.menu(style=filter-body)
        .pug.middle
            .pug.table-row-menu(on-click=drag-file)
                .col.folder-menu.pug
                    span.pug
                        icon "CloudDownload", 20
                    .pug Upload video
trend = (store, web3t)->
    lang = get-lang store
    { go-back } = history-funcs store, web3t
    info = get-primary-info store
    style=
        background: info.app.wallet
        color: info.app.text
    border-style =
        color: info.app.text
        border-bottom: "1px solid #{info.app.border}"
    border-right =
        color: info.app.text
        border-right: "1px solid #{info.app.border}"
    border-style2 =
        color: info.app.text
        border-bottom: "1px solid #{info.app.border}"
        background: "#4b2888"
    border-style3 =
        color: info.app.text
        border-bottom: "0"
    border-right =
        color: info.app.text
        border-right: "1px solid #{info.app.border}"
    button-primary2-style=
        border: "1px solid #{info.app.primary2}"
        color: info.app.text
        background: info.app.primary2
    header-table-style=
        border-bottom: "1px solid #{info.app.border}"
        background: info.app.wallet-light
        position: "sticky"
    dashed-border=
        border-color: "#{info.app.border}"
        color: info.app.addressText
    filter-body =
        border: "1px solid #{info.app.border}"
        background: info.app.header
    border-b =
        border-bottom: "1px solid #{info.app.border}"
    button-primary1-style=
        border: "1px solid #{info.app.primary1}"
        color: info.app.text
        background: info.app.primary1
    input-style=
        background: info.app.wallet
        border: "0"
        color: info.app.text
    lightText=
        color: info.app.addressText
    icon-style=
        filter: info.app.nothingIcon
    goto-details = ->
        navigate store, web3t, \videostoragedetails
    img =
        placeholder: 'data:image/png;base64,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'
        placeholder2: 'data:image/png;base64,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'
        drag: "data:image/png;base64,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"
    .pug.panel-content.dragarea
        if store.video.drag
            .header-table.dragfile.dragarea.pug
                .pug.cell.network(style=dashed-border)
                    img.pug.bounce(src="#{img.drag}" style=icon-style)
                    | Drag and Drop here
                    br.pug
                    | or
                    span.pug Browse files
        h2.header.pug Recommended
        .pug.section
            .source.pug(on-click=goto-details)
                span.pug.play
                    icon \TriangleRight, 15
                iframe.pug(on-click=goto-details width='560' height='315' src='https://www.youtube.com/embed/USGLlp-zfhI' frameborder='0' allow='accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture' allowfullscreen='')
                #img.pug(src="#{img.placeholder}")
                .pug.title-video
                    span.pug
                        img.pug.account(src="#{info.branding.logo}")
                    span.pug
                        .pug.header Velas Explainer Video
                        ul.pug.stat
                            li.pug
                                span.pug 2K views
                            li.pug
                                span.pug 5 days ago
        .pug.section
            .source.pug(on-click=goto-details)
                span.pug.play
                    icon \TriangleRight, 15
                iframe.pug(on-click=goto-details width='560' height='315' src='https://www.youtube.com/embed/2jdA5EwQV9M' frameborder='0' allow='accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture' allowfullscreen='')
                #img.pug(src="#{img.placeholder2}")
                .pug.title-video
                    span.pug
                        img.pug.account(src="#{info.branding.logo}")
                    span.pug
                        .pug.header Velas Explainer Video
                        ul.pug.stat
                            li.pug
                                span.pug 50K views
                            li.pug
                                span.pug 1 mounth ago
home = (store, web3t)->
    .pug.panel-content
        p.results.pug This tab is under development
subscr = (store, web3t)->
    .pug.panel-content
        p.results.pug This tab is under development
history = (store, web3t)->
    .pug.panel-content
        p.results.pug This tab is under development
videostorage = ({ store, web3t })->
    lang = get-lang store
    { go-back } = history-funcs store, web3t
    info = get-primary-info store
    style=
        background: info.app.wallet
        color: info.app.text
    border-style =
        color: info.app.text
        border-bottom: "1px solid #{info.app.border}"
    border-style2 =
        color: info.app.text
        border-bottom: "1px solid #{info.app.border}"
        background: "#4b2888"
    border-style3 =
        color: info.app.text
        border-bottom: "0"
    border-right =
        color: info.app.text
        border-right: "1px solid #{info.app.border}"
        background: info.app.header
    button-primary2-style=
        border: "1px solid #{info.app.primary2}"
        color: info.app.text
        background: info.app.primary2
    header-table-style=
        border-bottom: "1px solid #{info.app.border}"
        background: info.app.wallet-light
        position: "sticky"
    dashed-border=
        border-color: "#{info.app.border}"
        color: info.app.addressText
    filter-body =
        border: "1px solid #{info.app.border}"
        background: info.app.header
    border-b =
        border-bottom: "1px solid #{info.app.border}"
    button-primary1-style=
        border: "1px solid #{info.app.primary1}"
        color: info.app.text
        background: info.app.primary1
    input-style=
        background: info.app.wallet
        border: "0"
        color: info.app.text
    lightText=
        color: info.app.addressText
    icon-style=
        filter: info.app.nothingIcon
    activate = (tab)-> ->
        store.video.tab = tab 
    activate-home = activate \home
    activate-trend = activate \trend
    activate-subscr = activate \subscr
    activate-history = activate \history
    active-class = (tab)->
        if store.video.tab is tab then 'active' else ''
    active-home = active-class \home
    active-trend = active-class \trend
    active-subscr = active-class \subscr
    active-history = active-class \history
    expand-collapse = ->
        store.video.menu-open = not store.video.menu-open
    file =
        side-menu: "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACsAAAArCAYAAADhXXHAAAAAAXNSR0IArs4c6QAAAERlWElmTU0AKgAAAAgAAYdpAAQAAAABAAAAGgAAAAAAA6ABAAMAAAABAAEAAKACAAQAAAABAAAAK6ADAAQAAAABAAAAKwAAAABu3Ef4AAAA/UlEQVRYCe2WAQrDIBAENe9oH5SP5OP1H/a2jWAhEPeMJcIKEpvs3elocUPOebX+ss406NewN4ytsznoehFFrOajFCaeKcb4hL4jB1EuJEw2MxG11iYb8bsnR53vbLycCe70XZMdtRsiK7JGQMdg5DFIzuTeOGe57zHYLJotDD3i/to+12VvRV23BwQXo+Kxdz8W8SDvkFdXWUS3c2NWJYvI0GK0usEYWoxWZBlajFZkGVqMdjqyrOMqMLxxJZ5+gqwsIo2tIWCuMyuL2LClHoksoodaS8xcf7CWFd1FI7KjdkJkRdYI4Bh4rV4dV49HgU2Y7BUW0ZODWRRgbG+hLmHk4GXL8gAAAABJRU5ErkJggg=="
    .pug.videostorage
        .pug.title.alert(style=border-style2)
            .pug.header This page is under development. You see this only as demo
        .pug.title(style=border-style)
            .pug.header Video storage
            .pug.close(on-click=go-back)
                icon "ChevronLeft", 20
            switch-account store, web3t
        if store.video.menu-open
            menu store, web3t
        .pug.search-input
            .pug.section(style=border-style)
                span.pug.close
                    img.pug(src="#{file.side-menu}")
                span.add.pug(on-click=expand-collapse)
                    icon \DeviceCameraVideo, 15
                .title.pug
                    h2.iron.pug
                        span.logo.pug
                            icon \TriangleRight, 10
                        span.pug Vtube
                .description.search-field.pug
                    .pug.left
                        input.pug(type='text' style=input-style value="velas" placeholder="velas")
                        .pug.icon
                            icon \Search, 15
        .pug.wrapper
            .pug.menu-content
                .pug.section.filter(style=border-right)
                    .tabs.pug
                        ul.pug(style=border-style)
                            li.pug(on-click=activate-home class="#{active-home}")
                                span.icon.pug
                                    icon \Home, 15
                                span.pug Home
                            li.pug(on-click=activate-trend class="#{active-trend}")
                                span.icon.pug
                                    icon \Flame, 15
                                span.pug Trending
                            li.pug(on-click=activate-subscr class="#{active-subscr}")
                                span.icon.pug
                                    icon \Bell, 15
                                span.pug Subscriptions
                        ul.pug(style=border-style)
                            li.pug(on-click=activate-history class="#{active-history}")
                                span.icon.pug
                                    icon \History, 15
                                span.pug History
            if active-home is \active
                home store, web3t
            if active-trend is \active
                trend store, web3t
            if active-subscr is \active
                subscr store, web3t
            if active-history is \active
                history store, web3t
module.exports = videostorage