import CoreAudioKit
import AudioKit
import SoundpipeAudioKit
import AudioKitEX

public class AudioUnitViewController: AUViewController, AUAudioUnitFactory {
    var audioUnit: AUAudioUnit?
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        if audioUnit == nil {
            return
        }
        
        // Get the parameter tree and add observers for any parameters that the UI needs to keep in sync with the AudioUnit
    }
    
    public func createAudioUnit(with componentDescription: AudioComponentDescription) throws -> AUAudioUnit {
        let noinput = Mixer()
        let awah = AutoWah(noinput)
        audioUnit = awah.au
        
        return audioUnit!
    }
    
}
