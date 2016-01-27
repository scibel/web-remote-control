#!/bin/bash
#
# This calls Browserify to generate code for the browser.
#

SRC_DIR='../src'
WWW_DIR='../www/public'

BRSFY=`which browserify`

# Build messageHandler
$BRSFY  -r $SRC_DIR/messageHandler.js:messageHandler                 \
        -r $SRC_DIR/PingManager.js:PingManager                       \
        -r $SRC_DIR/Device.js:Device                             \
        -r $SRC_DIR/WebClientConnection.js:WebClientConnection          \
        --outfile $WWW_DIR/web-remote-control.js