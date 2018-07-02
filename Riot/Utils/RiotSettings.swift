/*
 Copyright 2018 New Vector Ltd
 
 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at
 
 http://www.apache.org/licenses/LICENSE-2.0
 
 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
 */

import Foundation

@objcMembers
final class RiotSettings: NSObject {
    
    // MARK: - Constants
    
    private enum UserDefaultsKeys {
        static let enableCrashReport = "enableCrashReport"
        static let enableRageShake = "enableRageShake"
        static let createConferenceCallsWithJitsi = "createConferenceCallsWithJitsi"
        static let userInterfaceTheme = "userInterfaceTheme"
        static let notificationsShowDecryptedContent = "showDecryptedContent"
        static let pinRoomsWithMissedNotifications = "pinRoomsWithMissedNotif"
        static let pinRoomsWithUnreadMessages = "pinRoomsWithUnread"
    }
    
    static let shared = RiotSettings()
    
    // MARK: - Public
    
    // MARK: Notifications
    
    var showDecryptedContentInNotifications: Bool {
        get {
            return UserDefaults.standard.bool(forKey: UserDefaultsKeys.notificationsShowDecryptedContent)
        } set {
            UserDefaults.standard.set(newValue, forKey: UserDefaultsKeys.notificationsShowDecryptedContent)
        }
    }
    
    var pinRoomsWithMissedNotificationsOnHome: Bool {
        get {
            return UserDefaults.standard.bool(forKey: UserDefaultsKeys.pinRoomsWithMissedNotifications)
        } set {
            UserDefaults.standard.set(newValue, forKey: UserDefaultsKeys.pinRoomsWithMissedNotifications)
        }
    }
    
    var pinRoomsWithUnreadMessagesOnHome: Bool {
        get {
            return UserDefaults.standard.bool(forKey: UserDefaultsKeys.pinRoomsWithUnreadMessages)
        } set {
            UserDefaults.standard.set(newValue, forKey: UserDefaultsKeys.pinRoomsWithUnreadMessages)
        }
    }
    
    // MARK: User interface
    
    var userInterfaceTheme: String? {
        get {
            return UserDefaults.standard.string(forKey: UserDefaultsKeys.userInterfaceTheme)
        } set {
            UserDefaults.standard.set(newValue, forKey: UserDefaultsKeys.userInterfaceTheme)
        }
    }
    
    // MARK: Other
    
    var enableCrashReport: Bool {
        get {
            return UserDefaults.standard.bool(forKey: UserDefaultsKeys.enableCrashReport)
        } set {
            UserDefaults.standard.set(newValue, forKey: UserDefaultsKeys.enableCrashReport)
        }
    }
    
    var enableRageShake: Bool {
        get {
            return UserDefaults.standard.bool(forKey: UserDefaultsKeys.enableRageShake)
        } set {
            UserDefaults.standard.set(newValue, forKey: UserDefaultsKeys.enableRageShake)
        }
    }
    
    // MARK: Labs
    
    var createConferenceCallsWithJitsi: Bool {
        get {
            return UserDefaults.standard.bool(forKey: UserDefaultsKeys.createConferenceCallsWithJitsi)
        } set {
            UserDefaults.standard.set(newValue, forKey: UserDefaultsKeys.createConferenceCallsWithJitsi)
        }
    }
}
