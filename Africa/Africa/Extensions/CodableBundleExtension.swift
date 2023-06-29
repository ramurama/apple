//
//  CodableBundleExtension.swift
//  Africa
//
//  Created by Ramu Ramasamy on 29.06.23.
//

import Foundation

extension Bundle {
    func decode(_ file: String) -> [CoverImageModel] {
        //  1. locate the JSON file
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate file \(file) in bundle.")
        }
        
        // 2. create a property for the data
        // initializer throws an error if it fails to load the data from the specified URL
        // The try? expression attempts to execute the initializer and returns an optional value
        // If the initializer throws an error, the expression evaluates to nil. otherwise, it returns the resulting value wrapped in an optional
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle.")
        }
        
        
        // 3. create a decoder
        let decoder = JSONDecoder()
        
        // 4. create a property for the decoded data
        // the model used here should combine Codable and Identifiable protocols to work with the decoder
        guard let loaded = try? decoder.decode([CoverImageModel].self, from: data) else {
            fatalError("Failed to decode \(file) from bundle.")
        }
        
        // 5. return the ready-to-use data
        return loaded
    }
}
