//
//  ContentView.swift
//  Friendface
//
//  Created by Álvaro Gascón on 13/6/24.
//

import SwiftData
import SwiftUI

struct ContentView: View {
    @Environment(\.modelContext) var modelContext
    //    @State private var users: [User]
    @Query(sort: \User.name) private var users: [User]

    
    
    var body: some View {
        NavigationStack {
            List(users) { user in
                NavigationLink(value: user) {
                    HStack {
                        ZStack(alignment: .bottomTrailing) {
                            Image(systemName: "person.crop.circle.fill")
                                .resizable()
                                .frame(width: 40, height: 40)
                                .foregroundColor(user.isActive ? .blue : .gray)
                            Text(user.isActive ? "🟢" : "🔴")
                                .padding(.bottom, -5)
                                .padding(.trailing, -5)
                        }
                        .padding(.trailing, 5)
                        
                        VStack(alignment: .leading) {
                            Text(user.name)
                                .font(.headline)
                            Text(user.company)
                                .font(.subheadline)
                        }
                    }
                }
            }
            .navigationTitle("Users")
            .navigationDestination(for: User.self) { user in
                UserView(user: user)
            }
            .task {
                await loadData()
            }
        }
    }
    
    func loadData() async {
        // Don't re-fetch data if we already have it
        guard  users.isEmpty else { return }
        
        do {
            let url = URL(string: "https://hws.dev/friendface.json")!
            let (data, _) = try await URLSession.shared.data(from: url)
            
            let decoder = JSONDecoder()
            decoder.dateDecodingStrategy = .iso8601
            
//            users = try decoder.decode([User].self, from: data)
            let downloadedUsers = try decoder.decode([User].self, from: data)
            let insertContext = ModelContext(modelContext.container)
            
            for user in downloadedUsers {
                insertContext.insert(user)
            }
            
            try insertContext.save()

            
        } catch {
            print("Invalid data")
        }
    }
}

#Preview {
    ContentView()
}
