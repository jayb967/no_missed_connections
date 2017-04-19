//
//  MessagingCompose.swift
//  RioMessaging
//
//  Created by Rio Balderas on 4/18/17.
//  Copyright © 2017 Jay Balderas. All rights reserved.
//

import Foundation
import MessageUI

let textMessageRecipients = [String]() //where the recipients go

class MessageCompose: NSObject, MFMessageComposeViewControllerDelegate {
    func canSendText() -> Bool {
        return MFMessageComposeViewController.canSendText()
    }
    
    func configuredMessageComposeViewController() -> MFMessageComposeViewController {
        let messageComposeVC = MFMessageComposeViewController()
        messageComposeVC.messageComposeDelegate = self  //  Make sure to set this property to self, so that the controller can be dismissed!
        messageComposeVC.recipients = textMessageRecipients
        messageComposeVC.body =  "About to send you a dope ass mass text beeetch"
        return messageComposeVC
    }
    
    // MFMessageComposeViewControllerDelegate callback - dismisses the view controller when the user is finished with it
    func messageComposeViewController(_ controller: MFMessageComposeViewController, didFinishWith result: MessageComposeResult) {
        controller.dismiss(animated: true, completion: nil)
    }
}
