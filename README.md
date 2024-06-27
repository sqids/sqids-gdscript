# [Sqids GDScript](https://sqids.org/gdscript)

[Sqids](https://sqids.org/gdscript) (_pronounced "squids"_) is a small library that lets you **generate unique IDs from numbers**. It's good for link shortening, fast & URL-safe ID generation and decoding back into numbers for quicker database lookups.

Features:

- **Encode multiple numbers** - generate short IDs from one or several non-negative numbers
- **Quick decoding** - easily decode IDs back into numbers
- **Unique IDs** - generate unique IDs by shuffling the alphabet once
- **ID padding** - provide minimum length to make IDs more uniform
- **URL safe** - auto-generated IDs do not contain common profanity
- **Randomized output** - ential input provides nonconsecutive IDs
- **Many implementations** - Support for [40+ programming languages](https://sqids.org/)

## 🧰 Use-cases

Good for:

- Generating IDs for public URLs (eg: link shortening)
- Generating IDs for internal systems (eg: event tracking)
- Decoding for quicker database lookups (eg: by primary keys)

Not good for:

- Sensitive data (this is not an encryption library)
- User IDs (can be decoded revealing user count)

## 📦 Version compatibility

Supports Godot 4.2.2 and above.

## 👩‍💻 Examples

Simple encode & decode:

```gdscript
var sqids = Sqids.new()
var id = sqids.encode([1, 2, 3]) # "86Rf07"
var numbers = sqids.decode(id) # [1, 2, 3]
```

> **Note**
> 🚧 Because of the algorithm's design, **multiple IDs can decode back into the same sequence of numbers**. If it's important to your design that IDs are canonical, you have to manually re-encode decoded numbers and check that the generated ID matches.

Enforce a _minimum_ length for IDs:

```gdscript
var sqids = Sqids.new({
  min_length = 10
})
var id = sqids.encode([1, 2, 3]) # "86Rf07xd4z"
var numbers = sqids.decode(id) # [1, 2, 3]
```

Randomize IDs by providing a custom alphabet:

```gdscript
var sqids = Sqids.new({
  alphabet = "FxnXM1kBN6cuhsAvjW3Co7l2RePyY8DwaU04Tzt9fHQrqSVKdpimLGIJOgb5ZE",
})
var id = sqids.encode([1, 2, 3]) # "B4aajs"
var numbers = sqids.decode(id) # [1, 2, 3]
```

Prevent specific words from appearing anywhere in the auto-generated IDs:

```gdscript
var sqids = Sqids.new({
  blocklist = ["86Rf07"]
})
var id = sqids.encode([1, 2, 3]) # "se8ojk"
var numbers = sqids.decode(id) # [1, 2, 3]
```

## 🪲 Error handling

Any error produced during `Sqids.new()` will trigger an assertion in the debugger. This is to help you catch mistakes during development.

It is within sqids specification for `sqids.encode()` to [fail](https://sqids.org/faq#max-regeneration). Since assertion only triggers in debug build, a failed encode will return `null` instead and print the reason to console. This is to make sure users can still handle the error in production.

## 📝 License

[MIT](LICENSE)
