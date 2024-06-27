func test_simple():
	var sqids = Sqids.new({
		_suppress=true
	})
	assert(sqids._error == "")

	var numbers = [1, 2, 3]
	var id_str = "86Rf07"

	assert(sqids.encode(numbers) == id_str)
	assert(sqids.decode(id_str) == numbers)

func test_different_inputs():
	var sqids = Sqids.new({
		_suppress=true
	})
	assert(sqids._error == "")

	var numbers = [0, 0, 0, 1, 2, 3, 100, 1000, 100000, 1000000, 9223372036854775807]
	assert(sqids.decode(sqids.encode(numbers)) == numbers)

func test_incremental_numbers():
	var sqids = Sqids.new({
		_suppress=true
	})
	assert(sqids._error == "")

	var ids = {
		"bM": [0],
		"Uk": [1],
		"gb": [2],
		"Ef": [3],
		"Vq": [4],
		"uw": [5],
		"OI": [6],
		"AX": [7],
		"p6": [8],
		"nJ": [9],
	}
	for id_str in ids:
		var numbers = ids[id_str]
		assert(sqids.encode(numbers) == id_str)
		assert(sqids.decode(id_str) == numbers)

func test_incremental_numbers_same_index_0():
	var sqids = Sqids.new({
		_suppress=true
	})
	assert(sqids._error == "")

	var ids = {
		"SvIz": [0, 0],
		"n3qa": [0, 1],
		"tryF": [0, 2],
		"eg6q": [0, 3],
		"rSCF": [0, 4],
		"sR8x": [0, 5],
		"uY2M": [0, 6],
		"74dI": [0, 7],
		"30WX": [0, 8],
		"moxr": [0, 9],
	}
	for id_str in ids:
		var numbers = ids[id_str]
		assert(sqids.encode(numbers) == id_str)
		assert(sqids.decode(id_str) == numbers)

func test_incremental_numbers_same_index_1():
	var sqids = Sqids.new({
		_suppress=true
	})
	assert(sqids._error == "")

	var ids = {
		"SvIz": [0, 0],
		"nWqP": [1, 0],
		"tSyw": [2, 0],
		"eX68": [3, 0],
		"rxCY": [4, 0],
		"sV8a": [5, 0],
		"uf2K": [6, 0],
		"7Cdk": [7, 0],
		"3aWP": [8, 0],
		"m2xn": [9, 0],
	}
	for id_str in ids:
		var numbers = ids[id_str]
		assert(sqids.encode(numbers) == id_str)
		assert(sqids.decode(id_str) == numbers)

func test_multi_input():
	var sqids = Sqids.new({
		_suppress=true
	})
	assert(sqids._error == "")

	var numbers = []
	for i in range(100):
		numbers.append(i)
	var output = sqids.decode(sqids.encode(numbers))
	assert(numbers == output)

func test_encoding_no_numbers():
	var sqids = Sqids.new({
		_suppress=true
	})
	assert(sqids._error == "")

	assert(sqids.encode([]) == "")

func test_decoding_empty_string():
	var sqids = Sqids.new({
		_suppress=true
	})
	assert(sqids._error == "")

	assert(sqids.decode("") == [])

func test_decoding_invalid_character():
	var sqids = Sqids.new({
		_suppress=true
	})
	assert(sqids._error == "")

	assert(sqids.decode("*") == [])

func test_encode_out_of_range_numbers():
	var sqids = Sqids.new({
		_suppress=true
	})
	assert(sqids._error == "")

	assert(sqids.encode([ - 1]) == null)