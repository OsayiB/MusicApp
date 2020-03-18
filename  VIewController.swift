//Osayi Imasuen 2019

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate{
    
  
    var audioPlayer : AVAudioPlayer!
    let soundArray = ["note1" ,"note2", "note3", "note4", "note5", "note6", "note7"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        
        playSound(selectedSoundFileName: soundArray[sender.tag - 1])
    }
    
    func playSound(selectedSoundFileName : String) {
        
        let soundURL = Bundle.main.url(forResource: selectedSoundFileName , withExtension: "wav")
        
        do {
            
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        }
        catch {
            
            print(error)
        }
        
        audioPlayer.play()
    }

}

