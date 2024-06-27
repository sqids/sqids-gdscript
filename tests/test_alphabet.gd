func test_simple():
	var sqids = Sqids.new({
		_suppress=true,
		alphabet="0123456789abcdef"
	})
	assert(sqids._error == "")

	var numbers = [1, 2, 3]
	var id = '489158'

	assert(sqids.encode(numbers) == id)
	assert(sqids.decode(id) == numbers)

func test_short_alphabet():
	var sqids = Sqids.new({
		_suppress=true,
		alphabet="abc"
	})
	assert(sqids._error == "")

	var numbers = [1, 2, 3]
	assert(sqids.decode(sqids.encode(numbers)) == numbers)

func test_long_alphabet():
	var sqids = Sqids.new({
		_suppress=true,
		alphabet=r"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()-_+|{}[];:'\"/?.>,<`~"
	})
	assert(sqids._error == "")

	var numbers = [1, 2, 3]
	assert(sqids.decode(sqids.encode(numbers)) == numbers)

func test_multibyte_characters():
	var sqids = Sqids.new({
		_suppress=true,
		alphabet="ë1092"
	})

	assert(sqids._error == "Alphabet cannot contain multibyte characters")

func test_repeating_alphabet_characters():
	var sqids = Sqids.new({
		_suppress=true,
		alphabet="aabcdefg"
	})

	assert(sqids._error == "Alphabet must contain unique characters")

func test_too_short_alphabet():
	var sqids = Sqids.new({
		_suppress=true,
		alphabet="ab"
	})

	assert(sqids._error == "Alphabet length must be at least 3")
