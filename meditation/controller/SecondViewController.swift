

import UIKit
import AVFoundation

class SecondViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var lbl: UILabel!
    
    @IBOutlet weak var volum: UIProgressView!
    
    var category : Category!
    @IBOutlet weak var secondTable: UITableView!
    
    
    var audioPlayer : AVAudioPlayer!

    var listSecondTable : [Audio] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lbl.layer.cornerRadius = 20
        
        listSecondTable = category.list

    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listSecondTable.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
       let tableViewCell = tableView.dequeueReusableCell(withIdentifier: "id_cell") as! SecondTableViewCell
        
        let audio = listSecondTable[indexPath.row]
        
        tableViewCell.second_txt2.text =  audio.name
        tableViewCell.second_img.image = UIImage(named: audio.audio_img)
        
        tableViewCell.second_img.layer.cornerRadius = 20
        
        return tableViewCell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){

        let indexPath = self.secondTable.indexPathForSelectedRow!
        let audio = listSecondTable[indexPath.row]
        print(audio.name)
        
        if let mp3Url = Bundle.main.url(forResource: audio.audio_name , withExtension: "mp3")?.relativeString{
            if let stringUrl = URL(string: mp3Url) {
                audioPlayer = try! AVAudioPlayer(contentsOf: stringUrl)
                audioPlayer.volume = 0.1
                audioPlayer.prepareToPlay()
                self.lbl.text = audio.name
                
            }
        }
        
    }
    
    
    @IBAction func play(_ sender: Any) {
        if !audioPlayer.isPlaying {
            audioPlayer.play()
        }
    }
        
    @IBAction func pause(_ sender: Any) {
        if audioPlayer.isPlaying {
                audioPlayer.pause()
        }
    }
        
    @IBAction func plus(_ sender: Any) {
        audioPlayer.volume += 0.1
        volum.progress += 0.1
    }
        
    @IBAction func minus(_ sender: Any) {
        audioPlayer.volume -= 0.1
        volum.progress -= 0.1
    }
        
    
    
}
