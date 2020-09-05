//
//  secondViewController.swift
//  quarantineActivity
//
//  Created by Abhinav Gupta on 4/25/20.
//  Copyright © 2020 Abhinav Gupta. All rights reserved.
//

import UIKit

class secondViewController: UIViewController {
    
    var activityText : String = ""

    @IBOutlet weak var activityLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        overrideUserInterfaceStyle = .dark
        // Do any additional setup after loading the view.
        
         activityLabel.text = activityText
    }
    
    override open var shouldAutorotate: Bool {
        return false
    }
    
    @IBAction func backButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
