//
//  sideMenuMain3.swift
//  excs
//
//  Created by user on 2018. 10. 30..
//  Copyright © 2018년 user. All rights reserved.
//

import UIKit

class sideMenuMain3: sideMenuMain {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("33333333")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.sideMenu1 = "ShowSideMenu2013"
        super.sideMenu2 = "ShowSideMenu2023"
        super.sideMenu3 = "ShowSideMenu2033"
        super.sideMenu4 = "ShowSideMenu2043"
        super.userMyPage = "ShowMyPage3"
        super.artistRegiMenu = "ShowArtistRegiMenu3"
        super.artistPageMenu = "ShowArtistPageMenu3"
        super.someoneArtist = "someoneArtist3"
        
        NotificationCenter.default.removeObserver(self, name: NSNotification.Name(super.sideMenu1), object: nil)
        NotificationCenter.default.removeObserver(self, name: NSNotification.Name(super.sideMenu2), object: nil)
        NotificationCenter.default.removeObserver(self, name: NSNotification.Name(super.sideMenu3), object: nil)
        NotificationCenter.default.removeObserver(self, name: NSNotification.Name(super.sideMenu4), object: nil)
        NotificationCenter.default.removeObserver(self, name: NSNotification.Name(super.userMyPage), object: nil)
        NotificationCenter.default.removeObserver(self, name: NSNotification.Name(super.artistRegiMenu), object: nil)
        NotificationCenter.default.removeObserver(self, name: NSNotification.Name(super.artistPageMenu), object: nil)
        NotificationCenter.default.removeObserver(self, name: NSNotification.Name(super.someoneArtist), object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(showSideMenu201), name: NSNotification.Name(super.sideMenu1), object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(showSideMenu202), name: NSNotification.Name(super.sideMenu2), object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(showSideMenu203), name: NSNotification.Name(super.sideMenu3), object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(showSideMenu204), name: NSNotification.Name(super.sideMenu4), object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(showUserInfoMenu), name: NSNotification.Name(super.userMyPage), object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(showArtistRegiMenu), name: NSNotification.Name(super.artistRegiMenu), object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(showArtistPageMenu), name: NSNotification.Name(super.artistPageMenu), object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(someoneArtistFunc), name: NSNotification.Name(super.someoneArtist), object: nil)
        
        print(sideMenu1 + UserDefaults.standard.string(forKey: "mainState")!)
    }
    override func viewWillDisappear(_ animated: Bool) {
        NotificationCenter.default.removeObserver(self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewWillAppear(_ animated: Bool) {
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
