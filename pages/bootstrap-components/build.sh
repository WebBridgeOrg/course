#!/usr/bin/env bash

BASEDOCS=https://v4-alpha.getbootstrap.com/components/

render () {
    DOCSLINK=${BASEDOCS}$1/
    TITLE=$2
    COMPONENT=$3
    COMPONENTFILE=$3.part.html
    OUTFILE=$COMPONENT.html
    cat page.head.html $COMPONENTFILE page.tail.html > $OUTFILE
    sed -i "s/%TITLE%/$TITLE/;s#%DOCSLINK%#$DOCSLINK#"  $OUTFILE
}

render alerts Alerts alerts
render badge Badges badge
render breadcrumb Breadcrumb breadcrumb
render buttons Buttons buttons
render button-group "Button Group" button-group
render card Cards card


