//
//  ReaderApp.swift
//  Reader
//
//  Created by 陈长炜 on 2021/3/27.
//

import SwiftUI

@main
struct ReaderApp: App {
    let motionManager = MotionManager()
    
    var body: some Scene {
        WindowGroup {
            Master()
                .environmentObject(motionManager)
        }
    }
}
