//
//  ViewController.swift
//  image
//
//  Created by 小野真 on 2021/02/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var tapaction: UITapGestureRecognizer!
    @IBOutlet weak var slide: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
       
        //バンドルした画像ファイルを読み込み
        let Image = UIImage(named: "german.jpg")
        // Do any additional setup after loading the view.
        slide.image = Image
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        //segueから遷移先のExpansionviewControllerを取得する
        let expansionViewController:ExpansionViewController = segue.destination as! ExpansionViewController
        
        expansionViewController.image = Image
    }
    
   @IBAction func unwind(_ segue: UIStoryboardSegue) {
        
   }
    
}

