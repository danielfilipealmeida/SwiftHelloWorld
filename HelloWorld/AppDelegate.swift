//
//  AppDelegate.swift
//  HelloWorld
//
//  Created by Daniel Almeida on 02/07/2019.
//  Copyright © 2019 Daniel Almeida. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!
    @IBOutlet weak var clickMeButton: NSButton!
    
    let MESSAGE = "Hello World!"
    let INFORMATIVE_TEXT = "This is my first App in Swift"
    let OK = "Ok"
    let CANCEL = "Cancel"
    let OK_MESSAGE = "You pressed OK"
    let CANCEL_MESSAGE = "You pressed Cancel"

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }

    @IBAction func buttonClicked(_ sender: Any) {
        let alert: NSAlert = NSAlert()
        alert.messageText = MESSAGE
        alert.informativeText = INFORMATIVE_TEXT
        alert.alertStyle = NSAlert.Style.informational
        alert.addButton(withTitle: OK)
        alert.addButton(withTitle: CANCEL)
        let res = alert.runModal()
        let newButtonMessage = (res == NSApplication.ModalResponse.alertFirstButtonReturn ? OK_MESSAGE : CANCEL_MESSAGE)
        clickMeButton.title = newButtonMessage
    }
    
}

