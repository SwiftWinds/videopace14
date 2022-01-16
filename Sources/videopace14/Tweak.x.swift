import Orion
import videopace14C

class VideoHook: ClassHook<AVPlayer> {
    func setRate(_ rate: Float) {
        os.log("videopace14 -- setRate() called!")
        orig.setRate(rate * 2.0)
    }
    
    func rate() -> Float {
        os.log("videopace14 -- rate() called!")
        return orig.rate * 0.5
    }
}
