//
//  2ndScrollViewController.swift
//  homework_01
//
//  Created by Yu Sum Yung on 26/6/2021.
//

import UIKit

class _ndScrollViewController: UIViewController {
    var location: [ShowData] = []

    @IBOutlet weak var imageInSecondView: UIImageView!
    @IBOutlet weak var title1InSecondView: UILabel!
    @IBOutlet weak var title2InSecondView: UILabel!
    @IBOutlet weak var contentInSecondView: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let i = Int.random(in: 0...location.count-1)
        imageInSecondView.load(urlString: location[i].infoImage)
        title1InSecondView.text = location[i].title1Text
        title2InSecondView.text = location[i].title2Text
        contentInSecondView.text = location[i].contentText
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func clickChange(_ sender: UIButton) {
        let i = Int.random(in: 0...location.count-1)
        imageInSecondView.load(urlString: location[i].infoImage)
        title1InSecondView.text = location[i].title1Text
        title2InSecondView.text = location[i].title2Text
        contentInSecondView.text = location[i].contentText
    }
    
    @IBAction func clickNext(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goTo3rdView", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goTo3rdView"{
            let destinationVC = segue.destination as! _rdScrollViewController
            destinationVC.location = location
        }
    }
    

}
