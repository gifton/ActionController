//
//  Payloads.swift
//  Master-mobile
//
//  Created by Dev on 10/12/18.
//  Copyright © 2018 pairso. All rights reserved.
//

import Foundation

//allsending items must have an actionPayload, and a contentPayload
struct action_payload {
    let action: ActionComponent
    let actionCenter: ActionComponent.center
    let content: ContentViewType
    init(action: ActionComponent, actionCenter: ActionComponent.center, content: ContentViewType) {
        self.action = action
        self.actionCenter = actionCenter
        self.content = content
    }
    static let notAvailable = action_payload.init(action: ActionComponent.clear, actionCenter: .weather, content: .dashboard)
}

struct content_payload {
    let content: ContentViewType
    let canSlide: Bool
    init(content: ContentViewType, canSlide: Bool) {
        self.content = content
        self.canSlide = canSlide
    }
    
    static let notAvailable = content_payload.init(content: ContentViewType.dashboard, canSlide: true)
}

struct ACPayload {
    let actionPayload: action_payload
    let contentPayload: content_payload
    enum extras {
        case location
        case isLoggedIn
        case doesHaveNotificationsOn
    }
    
    init(actionPayload: action_payload, contentPayload: content_payload) {
        self.actionPayload = actionPayload
        self.contentPayload = contentPayload
    }
}
