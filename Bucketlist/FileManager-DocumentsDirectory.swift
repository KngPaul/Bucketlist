//
//  FileManager-DocumentsDirectory.swift
//  Bucketlist
//
//  Created by Paul Onawola on 20/09/2023.
//

import Foundation

extension FileManager {
    static var  documentsDirectory: URL {
        let path = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return path[0]
    }
}
