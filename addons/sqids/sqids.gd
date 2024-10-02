extends RefCounted
class_name Sqids

const DEFAULT_ALPHABET = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
const DEFAULT_BLOCKLIST = [
	"0rgasm",
	"1d10t",
	"1d1ot",
	"1di0t",
	"1diot",
	"1eccacu10",
	"1eccacu1o",
	"1eccacul0",
	"1eccaculo",
	"1mbec11e",
	"1mbec1le",
	"1mbeci1e",
	"1mbecile",
	"a11upat0",
	"a11upato",
	"a1lupat0",
	"a1lupato",
	"aand",
	"ah01e",
	"ah0le",
	"aho1e",
	"ahole",
	"al1upat0",
	"al1upato",
	"allupat0",
	"allupato",
	"ana1",
	"ana1e",
	"anal",
	"anale",
	"anus",
	"arrapat0",
	"arrapato",
	"arsch",
	"arse",
	"ass",
	"b00b",
	"b00be",
	"b01ata",
	"b0ceta",
	"b0iata",
	"b0ob",
	"b0obe",
	"b0sta",
	"b1tch",
	"b1te",
	"b1tte",
	"ba1atkar",
	"balatkar",
	"bastard0",
	"bastardo",
	"batt0na",
	"battona",
	"bitch",
	"bite",
	"bitte",
	"bo0b",
	"bo0be",
	"bo1ata",
	"boceta",
	"boiata",
	"boob",
	"boobe",
	"bosta",
	"bran1age",
	"bran1er",
	"bran1ette",
	"bran1eur",
	"bran1euse",
	"branlage",
	"branler",
	"branlette",
	"branleur",
	"branleuse",
	"c0ck",
	"c0g110ne",
	"c0g11one",
	"c0g1i0ne",
	"c0g1ione",
	"c0gl10ne",
	"c0gl1one",
	"c0gli0ne",
	"c0glione",
	"c0na",
	"c0nnard",
	"c0nnasse",
	"c0nne",
	"c0u111es",
	"c0u11les",
	"c0u1l1es",
	"c0u1lles",
	"c0ui11es",
	"c0ui1les",
	"c0uil1es",
	"c0uilles",
	"c11t",
	"c11t0",
	"c11to",
	"c1it",
	"c1it0",
	"c1ito",
	"cabr0n",
	"cabra0",
	"cabrao",
	"cabron",
	"caca",
	"cacca",
	"cacete",
	"cagante",
	"cagar",
	"cagare",
	"cagna",
	"cara1h0",
	"cara1ho",
	"caracu10",
	"caracu1o",
	"caracul0",
	"caraculo",
	"caralh0",
	"caralho",
	"cazz0",
	"cazz1mma",
	"cazzata",
	"cazzimma",
	"cazzo",
	"ch00t1a",
	"ch00t1ya",
	"ch00tia",
	"ch00tiya",
	"ch0d",
	"ch0ot1a",
	"ch0ot1ya",
	"ch0otia",
	"ch0otiya",
	"ch1asse",
	"ch1avata",
	"ch1er",
	"ch1ng0",
	"ch1ngadaz0s",
	"ch1ngadazos",
	"ch1ngader1ta",
	"ch1ngaderita",
	"ch1ngar",
	"ch1ngo",
	"ch1ngues",
	"ch1nk",
	"chatte",
	"chiasse",
	"chiavata",
	"chier",
	"ching0",
	"chingadaz0s",
	"chingadazos",
	"chingader1ta",
	"chingaderita",
	"chingar",
	"chingo",
	"chingues",
	"chink",
	"cho0t1a",
	"cho0t1ya",
	"cho0tia",
	"cho0tiya",
	"chod",
	"choot1a",
	"choot1ya",
	"chootia",
	"chootiya",
	"cl1t",
	"cl1t0",
	"cl1to",
	"clit",
	"clit0",
	"clito",
	"cock",
	"cog110ne",
	"cog11one",
	"cog1i0ne",
	"cog1ione",
	"cogl10ne",
	"cogl1one",
	"cogli0ne",
	"coglione",
	"cona",
	"connard",
	"connasse",
	"conne",
	"cou111es",
	"cou11les",
	"cou1l1es",
	"cou1lles",
	"coui11es",
	"coui1les",
	"couil1es",
	"couilles",
	"cracker",
	"crap",
	"cu10",
	"cu1att0ne",
	"cu1attone",
	"cu1er0",
	"cu1ero",
	"cu1o",
	"cul0",
	"culatt0ne",
	"culattone",
	"culer0",
	"culero",
	"culo",
	"cum",
	"cunt",
	"d11d0",
	"d11do",
	"d1ck",
	"d1ld0",
	"d1ldo",
	"damn",
	"de1ch",
	"deich",
	"depp",
	"di1d0",
	"di1do",
	"dick",
	"dild0",
	"dildo",
	"dyke",
	"encu1e",
	"encule",
	"enema",
	"enf01re",
	"enf0ire",
	"enfo1re",
	"enfoire",
	"estup1d0",
	"estup1do",
	"estupid0",
	"estupido",
	"etr0n",
	"etron",
	"f0da",
	"f0der",
	"f0ttere",
	"f0tters1",
	"f0ttersi",
	"f0tze",
	"f0utre",
	"f1ca",
	"f1cker",
	"f1ga",
	"fag",
	"fica",
	"ficker",
	"figa",
	"foda",
	"foder",
	"fottere",
	"fotters1",
	"fottersi",
	"fotze",
	"foutre",
	"fr0c10",
	"fr0c1o",
	"fr0ci0",
	"fr0cio",
	"fr0sc10",
	"fr0sc1o",
	"fr0sci0",
	"fr0scio",
	"froc10",
	"froc1o",
	"froci0",
	"frocio",
	"frosc10",
	"frosc1o",
	"frosci0",
	"froscio",
	"fuck",
	"g00",
	"g0o",
	"g0u1ne",
	"g0uine",
	"gandu",
	"go0",
	"goo",
	"gou1ne",
	"gouine",
	"gr0gnasse",
	"grognasse",
	"haram1",
	"harami",
	"haramzade",
	"hund1n",
	"hundin",
	"id10t",
	"id1ot",
	"idi0t",
	"idiot",
	"imbec11e",
	"imbec1le",
	"imbeci1e",
	"imbecile",
	"j1zz",
	"jerk",
	"jizz",
	"k1ke",
	"kam1ne",
	"kamine",
	"kike",
	"leccacu10",
	"leccacu1o",
	"leccacul0",
	"leccaculo",
	"m1erda",
	"m1gn0tta",
	"m1gnotta",
	"m1nch1a",
	"m1nchia",
	"m1st",
	"mam0n",
	"mamahuev0",
	"mamahuevo",
	"mamon",
	"masturbat10n",
	"masturbat1on",
	"masturbate",
	"masturbati0n",
	"masturbation",
	"merd0s0",
	"merd0so",
	"merda",
	"merde",
	"merdos0",
	"merdoso",
	"mierda",
	"mign0tta",
	"mignotta",
	"minch1a",
	"minchia",
	"mist",
	"musch1",
	"muschi",
	"n1gger",
	"neger",
	"negr0",
	"negre",
	"negro",
	"nerch1a",
	"nerchia",
	"nigger",
	"orgasm",
	"p00p",
	"p011a",
	"p01la",
	"p0l1a",
	"p0lla",
	"p0mp1n0",
	"p0mp1no",
	"p0mpin0",
	"p0mpino",
	"p0op",
	"p0rca",
	"p0rn",
	"p0rra",
	"p0uff1asse",
	"p0uffiasse",
	"p1p1",
	"p1pi",
	"p1r1a",
	"p1rla",
	"p1sc10",
	"p1sc1o",
	"p1sci0",
	"p1scio",
	"p1sser",
	"pa11e",
	"pa1le",
	"pal1e",
	"palle",
	"pane1e1r0",
	"pane1e1ro",
	"pane1eir0",
	"pane1eiro",
	"panele1r0",
	"panele1ro",
	"paneleir0",
	"paneleiro",
	"patakha",
	"pec0r1na",
	"pec0rina",
	"pecor1na",
	"pecorina",
	"pen1s",
	"pendej0",
	"pendejo",
	"penis",
	"pip1",
	"pipi",
	"pir1a",
	"pirla",
	"pisc10",
	"pisc1o",
	"pisci0",
	"piscio",
	"pisser",
	"po0p",
	"po11a",
	"po1la",
	"pol1a",
	"polla",
	"pomp1n0",
	"pomp1no",
	"pompin0",
	"pompino",
	"poop",
	"porca",
	"porn",
	"porra",
	"pouff1asse",
	"pouffiasse",
	"pr1ck",
	"prick",
	"pussy",
	"put1za",
	"puta",
	"puta1n",
	"putain",
	"pute",
	"putiza",
	"puttana",
	"queca",
	"r0mp1ba11e",
	"r0mp1ba1le",
	"r0mp1bal1e",
	"r0mp1balle",
	"r0mpiba11e",
	"r0mpiba1le",
	"r0mpibal1e",
	"r0mpiballe",
	"rand1",
	"randi",
	"rape",
	"recch10ne",
	"recch1one",
	"recchi0ne",
	"recchione",
	"retard",
	"romp1ba11e",
	"romp1ba1le",
	"romp1bal1e",
	"romp1balle",
	"rompiba11e",
	"rompiba1le",
	"rompibal1e",
	"rompiballe",
	"ruff1an0",
	"ruff1ano",
	"ruffian0",
	"ruffiano",
	"s1ut",
	"sa10pe",
	"sa1aud",
	"sa1ope",
	"sacanagem",
	"sal0pe",
	"salaud",
	"salope",
	"saugnapf",
	"sb0rr0ne",
	"sb0rra",
	"sb0rrone",
	"sbattere",
	"sbatters1",
	"sbattersi",
	"sborr0ne",
	"sborra",
	"sborrone",
	"sc0pare",
	"sc0pata",
	"sch1ampe",
	"sche1se",
	"sche1sse",
	"scheise",
	"scheisse",
	"schlampe",
	"schwachs1nn1g",
	"schwachs1nnig",
	"schwachsinn1g",
	"schwachsinnig",
	"schwanz",
	"scopare",
	"scopata",
	"sexy",
	"sh1t",
	"shit",
	"slut",
	"sp0mp1nare",
	"sp0mpinare",
	"spomp1nare",
	"spompinare",
	"str0nz0",
	"str0nza",
	"str0nzo",
	"stronz0",
	"stronza",
	"stronzo",
	"stup1d",
	"stupid",
	"succh1am1",
	"succh1ami",
	"succhiam1",
	"succhiami",
	"sucker",
	"t0pa",
	"tapette",
	"test1c1e",
	"test1cle",
	"testic1e",
	"testicle",
	"tette",
	"topa",
	"tr01a",
	"tr0ia",
	"tr0mbare",
	"tr1ng1er",
	"tr1ngler",
	"tring1er",
	"tringler",
	"tro1a",
	"troia",
	"trombare",
	"turd",
	"twat",
	"vaffancu10",
	"vaffancu1o",
	"vaffancul0",
	"vaffanculo",
	"vag1na",
	"vagina",
	"verdammt",
	"verga",
	"w1chsen",
	"wank",
	"wichsen",
	"x0ch0ta",
	"x0chota",
	"xana",
	"xoch0ta",
	"xochota",
	"z0cc01a",
	"z0cc0la",
	"z0cco1a",
	"z0ccola",
	"z1z1",
	"z1zi",
	"ziz1",
	"zizi",
	"zocc01a",
	"zocc0la",
	"zocco1a",
	"zoccola",
]
const DEFAULT_MIN_LENGTH = 0
const MIN_LENGTH_LIMIT = 255

var _alphabet: String
var _min_length: int
var _blocklist: Dictionary
var _error: String
var _suppress: bool

func _init(args: Dictionary={}):
	var alphabet: String = args.alphabet if args.has("alphabet") else DEFAULT_ALPHABET
	var min_length: int = args.min_length if args.has("min_length") else DEFAULT_MIN_LENGTH
	var blocklist: Array = args.blocklist if args.has("blocklist") else DEFAULT_BLOCKLIST

	# suppress assertion for testing. should not be used by end users
	_suppress = args._suppress if args.has("_suppress") else false
	
	for i in range(alphabet.length()):
		if _assert(alphabet.unicode_at(i) <= 127, "Alphabet cannot contain multibyte characters"):
			return
 
	if _assert(len(alphabet) >= 3, "Alphabet length must be at least 3"):
		return

	var alphabet_dedup = []
	for c in alphabet:
		if not alphabet_dedup.has(c):
			alphabet_dedup.append(c)

	if _assert(len(alphabet_dedup) == len(alphabet), "Alphabet must contain unique characters"):
		return

	if _assert(min_length >= 0 and min_length < 255, "Minimum length has to be between 0 and 255"):
		return

	var filtered_blocklist = Dictionary()
	var alphabet_lower = alphabet.to_lower()

	for word in blocklist:
		var word_lower = word.to_lower()
		if len(word_lower) >= 3:
			var intersection = []
			for c in word_lower:
				if c in alphabet_lower:
					intersection.append(c)
			if len(intersection) == len(word_lower):
				filtered_blocklist[word_lower] = true

	_alphabet = _shuffle(alphabet)
	_min_length = min_length
	_blocklist = filtered_blocklist

func encode(numbers: Array):
	if _error:
		push_error("Invalid sqids: %s" % _error)
		return ""

	if len(numbers) == 0:
		return ""

	for n in numbers:
		if n < 0:
			return _runtime_error("Sqids encoding error: cannot encode negative number: %d" % n)

	return _encode_numbers(numbers, 0)

func _encode_numbers(numbers: Array, increment: int=0):
	if increment > len(_alphabet):
		return _runtime_error("Sqids encoding error: Reached max attempts to re-generate the ID")

	var offset = 0
	for i in range(len(numbers)):
		offset += _alphabet.unicode_at(numbers[i] % len(_alphabet)) + i

	offset = (offset + len(numbers)) % len(_alphabet)
	offset = (offset + increment) % len(_alphabet)
	var alphabet = _alphabet.substr(offset) + _alphabet.substr(0, offset)
	var prefix = alphabet[0]
	alphabet = alphabet.reverse()
	var ret = [prefix]

	for i in range(len(numbers)):
		var num = numbers[i]
		ret.append(_to_id(num, alphabet.substr(1)))

		if i >= len(numbers) - 1:
			continue

		ret.append(alphabet[0])
		alphabet = _shuffle(alphabet)

	var id = ''.join(ret)
 
	if _min_length > len(id):
		id += alphabet[0]
 
		while _min_length - len(id) > 0:
			alphabet = _shuffle(alphabet)
			id += alphabet.substr(0, min(_min_length - len(id), len(alphabet)))

	if _is_blocked_id(id):
		id = _encode_numbers(numbers, increment + 1)

	return id

func decode(id: String) -> Array:
	if _error:
		push_error("Invalid sqids: %s" % _error)
		return []

	var ret = []

	if len(id) == 0:
		return ret

	var alphabet_chars = _alphabet.split("")
	for c in id:
		if c not in alphabet_chars:
			return ret

	var prefix = id[0]
	var offset = _alphabet.find(prefix)
	var alphabet = _alphabet.substr(offset) + _alphabet.substr(0, offset)
	alphabet = alphabet.reverse()
	id = id.substr(1)

	while len(id) > 0:
		var separator = alphabet[0]
		var chunks = id.split(separator)
		if chunks.size() > 0:
			if len(chunks[0]) == 0:
				return ret

			ret.append(_to_number(chunks[0], alphabet.substr(1)))
			if chunks.size() > 1:
				alphabet = _shuffle(alphabet)

		id = separator.join(chunks.slice(1))

	return ret

func _shuffle(alphabet: String) -> String:
	var chars = alphabet.split("")
	var i = 0
	var j = chars.size() - 1
	while j > 0:
		var r = (i * j + chars[i].unicode_at(0) + chars[j].unicode_at(0)) % chars.size()
		var temp = chars[i]
		chars[i] = chars[r]
		chars[r] = temp
		i += 1
		j -= 1

	return ''.join(chars)

func _to_id(num: int, alphabet: String) -> String:
	var idchars = []
	var chars = alphabet.split("")
	var result = num

	while true:
		idchars.insert(0, chars[result % chars.size()])
		result = result / chars.size()
		if result == 0:
			break

	return ''.join(idchars)

func _to_number(id: String, alphabet: String) -> int:
	var chars = alphabet.split('')
	return Array(id.split('')).reduce(func(a, v): return a * chars.size() + chars.find(v), 0)

func _is_blocked_id(id: String) -> bool:
	id = id.to_lower()

	for word in _blocklist.keys():
		if len(word) > len(id):
			continue
		if len(id) <= 3 or len(word) <= 3:
			if id == word:
				return true
		else:
			var has_digit = false
			for i in len(word):
				var c = word.unicode_at(i)
				if c >= 48 and c <= 57:
					has_digit = true
					break
			if has_digit:
				if id.begins_with(word) or id.ends_with(word):
					return true
			elif id.find(word) != - 1:
				return true

	return false

func _assert(condition: bool, message: String):
	if not _suppress:
		assert(condition, message)

	if not condition:
		_error = message
		if not _suppress:
			push_error(message)
		return true

	return false

func _runtime_error(message: String):
	if not _suppress:
		push_error(message)
	return null
