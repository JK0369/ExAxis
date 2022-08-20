//
//  ContentView.swift
//  ExAxis
//
//  Created by 김종권 on 2022/08/20.
//

import SwiftUI

enum NotifyMeAboutType {
  case directMessages
  case mentions
  case anything
}

enum ProfileImageSize {
  case large
  case medium
  case small
}

struct ContentView: View {
  @State var notifyMeAbout = NotifyMeAboutType.directMessages
  @State var playNotificationSounds = false
  @State var profileImageSize = ProfileImageSize.large
  @State var sendReadReceipts = false
  
  var body: some View {
    NavigationView {
      Form {
        Section(header: Text("Notifications")) {
          Picker("Notify Me About", selection: $notifyMeAbout) {
            Text("Direct Messages").tag(NotifyMeAboutType.directMessages)
            Text("Mentions").tag(NotifyMeAboutType.mentions)
            Text("Anything").tag(NotifyMeAboutType.anything)
          }
          Toggle("Play notification sounds", isOn: $playNotificationSounds)
          Toggle("Send read receipts", isOn: $sendReadReceipts)
        }
        Section(header: Text("User Profiles")) {
          Picker("Profile Image Size", selection: $profileImageSize) {
            Text("Large").tag(ProfileImageSize.large)
            Text("Medium").tag(ProfileImageSize.medium)
            Text("Small").tag(ProfileImageSize.small)
          }
          Button("Clear Image Cache") {}
        }
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}


