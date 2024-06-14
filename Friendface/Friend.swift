//
//  Friend.swift
//  Friendface
//
//  Created by Álvaro Gascón on 13/6/24.
//

import Foundation
import SwiftData


@Model
class Friend: Codable {
    enum CodingKeys: String, CodingKey {
        case id, name
    }
    
    let id: UUID
    var name: String
    
    init(id: UUID = UUID(), name: String) {
        self.id = id
        self.name = name
    }
    
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(UUID.self, forKey: .id)
        self.name = try container.decode(String.self, forKey: .name)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(name, forKey: .name)
    }
    
    
}
