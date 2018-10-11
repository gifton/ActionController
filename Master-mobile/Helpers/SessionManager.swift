////
////  SessionManager.swift
////  Master-mobile
////
////  Created by Dev on 10/10/18.
////  Copyright © 2018 pairso. All rights reserved.
////
//
//import Foundation
//import UIKit
//
//class SessionManager: NSObject {
//
//    static var currentSession: Session? {
//        get {
//            if let data = UserDefaults.standard.data(forKey: "Rember-session"), let session = try? JSONDecoder().decode(Session.self, from: data) {
//                return session
//            }
//            return nil
//        }
//
//        set {
//            let session = try? JSONEncoder().encode(newValue)
//            UserDefaults.standard.set(session, forKey: "Rember-session")
//        }
//    }
//
//    class func deleteSession() {
//        UserDefaults.standard.removeObject(forKey: "Rember-session")
//    }
//
//    static var validSession: Bool {
//        if let session = currentSession, let uid = session.uid,
//            let tkn = session.accessToken, let client = session.client {
//            return !uid.isEmpty && !tkn.isEmpty && !client.isEmpty
//        }
//        return false
//    }
//}
