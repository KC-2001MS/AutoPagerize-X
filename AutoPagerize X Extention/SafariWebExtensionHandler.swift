//
//  SafariWebExtensionHandler.swift
//  AutoPagerize X Extention macOS
//
//  Created by 茅根啓介 on 2023/02/12.

//This program is licensed under the "GNU General Public License v3.0".
//© 2023 Keisuke Chinone
//Program files that are not marked with a copyright notice are not originally marked.

import SafariServices
import os.log

let SFExtensionMessageKey = "message"

class SafariWebExtensionHandler: NSObject, NSExtensionRequestHandling {

	func beginRequest(with context: NSExtensionContext) {
        let item = context.inputItems[0] as! NSExtensionItem
        let message = item.userInfo?[SFExtensionMessageKey]
        os_log(.default, "Received message from browser.runtime.sendNativeMessage: %@", message as! CVarArg)

        let response = NSExtensionItem()
        response.userInfo = [ SFExtensionMessageKey: [ "Response to": message ] ]

        context.completeRequest(returningItems: [response], completionHandler: nil)
    }
    
}
