//
//  Bundle.swift
//  decodeJsonFiles
//
//  Created by Gabriel Paschoal on 09/03/23.
//

import Foundation

extension Bundle {
    func decode<T: Decodable>(file: String) -> T {
        guard let sourcesURL = Bundle.main.url(forResource: file, withExtension: "json") else {
            fatalError("Could not find a file")
        }
        
        guard let data = try? Data(contentsOf: sourcesURL) else {
            fatalError("Could not conver a data")
        }
        
        let decoder = JSONDecoder()
        
        guard let fileDecoded = try? decoder.decode(T.self, from: data) else {
            fatalError("Could not decode a data")
        }
        
        return fileDecoded
    }
}
