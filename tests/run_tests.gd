#!/usr/bin/env -S godot -s
extends SceneTree

func _run_test(test_name: String):
	var test = load("res://tests/" + test_name + ".gd").new();

	print("Running test: ", test_name)

	for method in test.get_method_list():
		if method.name.begins_with("test_"):
			print(" - ", method.name)
			test[method.name].call()

func _init():
	_run_test("test_alphabet")
	_run_test("test_blocklist")
	_run_test("test_encoding")
	_run_test("test_minlength")
	quit()
