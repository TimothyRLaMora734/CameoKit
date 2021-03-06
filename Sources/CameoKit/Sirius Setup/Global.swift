import Foundation

//Future
//URL: https://player.siriusxm.com/rest/v2/experience/modules/get/discover-channel-list?type=2&batch-mode=true&format=json&request-option=discover-channel-list-withpdt&result-template=web&time=1548615083793

//On Ice
//URL: https://player.siriusxm.com/rest/v4/experience/modules/tune/now-playing-live?channelId=thepulse&hls_output_mode=none&marker_mode=all_separate_cue_points&ccRequestType=AUDIO_VIDEO&result-template=web&time=1548615098681

//streaming flag
public var streaming: Bool = false

//local
public let ipaddress: String = "127.0.0.1"
//source
public var usePrime: Bool = false
public let http: String = "https://"
public let root: String = "player.siriusxm.com/rest/v2/experience/modules"

public var connectionType = "wifi"
public var connectionInt = 1

public var hls_sources = Dictionary<String, String>()
internal var MemBase = Dictionary<String?, String?>()
public var largeChannelLineUp = Data()
public var smallChannelLineUp = Data()

public typealias LoginData = ( email:String, pass:String, channels:  Dictionary<String, Any>,
    ids:  Dictionary<String, Any>, channel: String, token: String, loggedin: Bool,  gupid: String, consumer: String, key: String, keyurl: String )
internal var userX = ( email:"", pass:"", channels:  [:], ids: [:], channel: "", token: "", loggedin: false,  gupid: "", consumer: "", key: "", keyurl: "" ) as LoginData

typealias PostReturnTuple = (message: String, success: Bool, data: Dictionary<String, Any>, response: HTTPURLResponse? )

//Completion Handlers
typealias CompletionHandler   = (_ success:Bool) 			  		-> Void
typealias PostTupleHandler    = (_ tuple:PostReturnTuple?) 	   		-> Void
typealias DictionaryHandler   = (_ dict:NSDictionary?) 		   		-> Void
typealias DataHandler         = (_ data:Data?) 				   		-> Void
typealias TextHandler         = (_ text:String?) 			   		-> Void
typealias PdtHandler          = (_ struct:DiscoverChannelList?)     -> Void
typealias LiveHandler 		  = (_ struct:NowPlayingLiveStruct?) 	-> Void
