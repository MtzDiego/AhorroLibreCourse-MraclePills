//
//  seconview.swift
//  MiraclePill
//
//  Created by Macbook on 2/15/17.
//
//

import UIKit

class seconview: UIViewController {

    @IBAction func textgoback(_ sender: Any) {
        let storyboard = UIStoryboard(name:"Main",bundle:nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "firstview")
        self.present(vc,animated:true,completion:nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
                // Do any additional setup after loading the view.  return to
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
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
