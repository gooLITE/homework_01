//
//  3rdScrollViewController.swift
//  homework_01
//
//  Created by Yu Sum Yung on 28/6/2021.
//

import UIKit

class _rdScrollViewController: UIViewController {
    var location : [ShowData] = []
    
    @IBOutlet weak var imageInThirdView: UIImageView!
    @IBOutlet weak var title1InThirdView: UILabel!
    @IBOutlet weak var title2InThirdView: UILabel!
    @IBOutlet weak var contentInThirdView: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //let i = Int.random(in: 0...location.count-1)
        imageInThirdView.load(urlString: location[2].infoImage)
        title1InThirdView.text = location[2].title1Text
        title2InThirdView.text = location[2].title2Text
        contentInThirdView.text = location[2].contentText

        // Do any additional setup after loading the view.
    }
    
    @IBAction func clickChange(_ sender: UIButton) {
        let i = Int.random(in: 0...location.count-1)
        imageInThirdView.load(urlString: location[i].infoImage)
        title1InThirdView.text = location[i].title1Text
        title2InThirdView.text = location[i].title2Text
        contentInThirdView.text = location[i].contentText
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
