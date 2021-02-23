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
    //画像の設定
    let imageArray = [
        UIImage(named: "german.jpg")!,
        UIImage(named: "a_half.jpg")!,
        UIImage(named: "bike.jpg")!
    ]
    
    
    
    var flg = false
    
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        //バンドルした画像ファイルを読み込み
        let Image = UIImage(named: "german.jpg")
        // Do any additional setup after loading the view.
        slide.image = Image
        
        image1 = UIImage(named: "german.jpg")
        image2 = UIImage(named: "bike.jpg")
        image3 = UIImage(named: "a_half.jpg")
       
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        //segueから遷移先のExpansionviewControllerを取得する
        let expansionViewController:ExpansionViewController = segue.destination as! ExpansionViewController
        
        expansionViewController.image = Image
    }
    
   @IBAction func unwind(_ segue: UIStoryboardSegue) {
        
   }
    @IBAction func go(_ sender: Any) {
        if flg {
            slide.image = image2
            flg = false
       }
        else{
            slide.image = image3
            flg = true
        }
        
}

