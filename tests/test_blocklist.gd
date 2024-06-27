func test_default_blocklist() -> void:
	var sqids = Sqids.new({
		_suppress=true
	})
	assert(sqids._error == "")

	assert(sqids.decode("aho1e") == [4572721])
	assert(sqids.encode([4572721]) == "JExTR")

func test_empty_blocklist() -> void:
	var sqids = Sqids.new({
		_suppress=true,
		blocklist=[]
	})

	assert(sqids.decode("aho1e") == [4572721])
	assert(sqids.encode([4572721]) == "aho1e")

func test_custom_blocklist() -> void:
	var sqids = Sqids.new({
		_suppress=true,
		blocklist=["ArUO"]
	})
	assert(sqids._error == "")

	assert(sqids.decode("aho1e") == [4572721])
	assert(sqids.encode([4572721]) == "aho1e")
	
	assert(sqids.decode("ArUO") == [100000])
	assert(sqids.encode([100000]) == "QyG4")
	assert(sqids.decode("QyG4") == [100000])

func test_blocklist() -> void:
	var sqids = Sqids.new({
		_suppress=true,
		blocklist=[
			"JSwXFaosAN", # normal result of 1st encoding, block that word on purpose
			"OCjV9JK64o", # result of 2nd encoding
			"rBHf", # result of 3rd encoding is `4rBHfOiqd3`, let's block a substring
			"79SM", # result of 4th encoding is `dyhgw479SM`, let's block the postfix
			"7tE6" # result of 4th encoding is `7tE6jdAHLe`, let's block the prefix
		]
	})
	assert(sqids._error == "")

	assert(sqids.encode([1000000, 2000000]) == "1aYeB7bRUt")
	assert(sqids.decode("1aYeB7bRUt") == [1000000, 2000000])

func test_decoding_blocklist_words() -> void:
	var sqids = Sqids.new({
		_suppress=true,
		blocklist=[
			"86Rf07",
			"se8ojk",
			"ARsz1p",
			"Q8AI49",
			"5sQRZO"
		]
	})
	assert(sqids._error == "")

	assert(sqids.decode("86Rf07") == [1, 2, 3])
	assert(sqids.decode("se8ojk") == [1, 2, 3])
	assert(sqids.decode("ARsz1p") == [1, 2, 3])
	assert(sqids.decode("Q8AI49") == [1, 2, 3])
	assert(sqids.decode("5sQRZO") == [1, 2, 3])

func test_match_against_short_blocklist_word() -> void:
	var sqids = Sqids.new({
		_suppress=true,
		blocklist=["pnd"]
	})
	assert(sqids._error == "")

	assert(sqids.decode(sqids.encode([1000])) == [1000])

func test_blocklist_filtering_in_constructor() -> void:
	# lowercase blocklist in only-uppercase alphabet
	var sqids = Sqids.new({
		_suppress=true,
		alphabet="ABCDEFGHIJKLMNOPQRSTUVWXYZ",
		blocklist=["sxnzkl"]
	})
	assert(sqids._error == "")

	var id = sqids.encode([1, 2, 3])
	var numbers = sqids.decode(id)

	# without blocklist, would've been "SXNZKL"
	assert(id == "IBSHOZ")
	assert(numbers == [1, 2, 3])

func test_max_encoding_attempts() -> void:
	var alphabet = "abc"
	var min_length = 3
	var blocklist = ["cab", "abc", "bca"]

	var sqids = Sqids.new({
		_suppress=true,
		alphabet=alphabet,
		min_length=min_length,
		blocklist=blocklist
	})
	assert(sqids._error == "")

	assert(min_length == len(alphabet))
	assert(min_length == blocklist.size())
	assert(sqids.encode([0]) == null)