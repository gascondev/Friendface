//
//  UserView.swift
//  Friendface
//
//  Created by Álvaro Gascón on 13/6/24.
//

import SwiftUI

struct UserView: View {
    
    let user: User
   
    var body: some View {
        
        VStack {
            ZStack(alignment: .bottomTrailing) {
                Image(systemName: "person.crop.circle.fill")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .foregroundColor(user.isActive ? .blue : .gray)
                
                Text(user.isActive ? "🟢" : "🔴")
                    .font(.system(size: 20))
                    .padding(.bottom, -2)
                    .padding(.trailing, 10)
            }
            .padding(.top, -30)
            
            
            Spacer()

            Form {
                Section("Name") {
                    Text(user.name)
                }
                
                Section("Age") {
                    Text("\(String(user.age)) years")
                }
                
                Section("Contact Detail") {
                    Text("Address:\n \(user.address)")
                    Text("Company:\n \(user.company)")
                    Text("Email:\n \(user.email)")
                }
                
                Section("Friends") {
                    ForEach(user.friends) { friend in
                        Text(friend.name)
                    }
                }
            }
        }
    }
}

#Preview {
    
    return UserView(user: .example)
}
