//
//  SceneDelegate.swift
//  VKPodcast
//
//  Created by Vladislav Morozov on 17.09.2020.
//  Copyright © 2020 Vladislav Morozov. All rights reserved.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        if let windowScene = (scene as? UIWindowScene) {
            let window = UIWindow(windowScene: windowScene)
            let vc = AddPodcastController(viewModel: AddPodcastViewModel())
            window.rootViewController = vc
            self.window = window
            window.makeKeyAndVisible()
        }
    }
}

