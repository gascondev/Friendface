//
//  FriendsListView.swift
//  Friendface
//
//  Created by Álvaro Gascón on 14/6/24.
//

import SwiftUI

struct FriendsListView: View {
    
    var user: User
    
    var body: some View {
        NavigationStack {
            List(user.friends) { friend in
                NavigationLink("\(friend.name)", value:friend.name)
            }
        }
    }
}

#Preview {
    
    return FriendsListView(user: .example)
}
