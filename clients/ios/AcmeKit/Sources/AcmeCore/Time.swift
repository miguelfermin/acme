//
//  File.swift
//  
//
//  Created by Miguel Fermin on 12/12/21.
//

import Foundation

public enum Time {
    public static func sleep(for delay: Double, completion: @escaping () -> Void) {
        DispatchQueue.main.asyncAfter(deadline:.now() + delay) {
            completion()
        }
    }
    
    public static func sleep(for delay: Double) async {
        await withCheckedContinuation { continuation in
            Time.sleep(for: delay) {
                continuation.resume()
            }
        }
    }
}
