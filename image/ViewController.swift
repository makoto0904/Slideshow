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
    //スライドショーの変数
    var page: Int = 0
    
    //画像の設定
    let imageArray = [
        UIImage(named: "german.jpg")!,
        UIImage(named: "a_half.jpg")!,
        UIImage(named: "bike.jpg")!
    ]
    //スライドショーに使用するタイマーを宣言
    var timer: Timer!
    
    

    
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        //バンドルした画像ファイルを読み込み
        
        // Do any additional setup after loading the view.
        slide.image = imageArray[page]
        
       
       
    }
 
    
   @IBAction func unwind(_ segue: UIStoryboardSegue) {
        
   }
    @IBAction func go(_ sender: Any) {
        if page == 2{
             page = 0}
        else {
            page += 1}
        slide.image = imageArray[page]
        }
    @IBAction func back(_ sender: Any) {
        if page == 0{
             page = 2}
        else {
            page -= 1}
        slide.image = imageArray[page]
        }
    //再生ボタンを押した時の処理
    @IBAction func playstop(_ sender: Any) {
        //再生中か停止しているかを判定
        if(timer == nil){
            //再生時の処理を実装
            
            //タイマーをセットする
            timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(changeImage), userInfo: nil, repeats: true)
        }else{
            //停止時の処理を実装
            //タイマーを停止する
            timer.invalidate()
            
            //タイマーを初期化
            timer = nil
            
        }
    }
    @objc func changeImage(){
        //pageを増やして表示する画像を切り替える
        if page == 0{
             page = 2}
        else {
            page -= 1}
        slide.image = imageArray[page]

    
        
    }
}
    


