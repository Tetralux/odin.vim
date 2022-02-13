package main

quaternion
matrix
complex

import c "core:c/libc"
import rl "vendor:raylib"

main :: proc() {
	w, h: c.int = 800, 450
	rl.initWindow(w, h, "hello odin")
	defer rl.CloseWindow()

	for !rl.WindowShouldClose() {
		rl.BeginDrawing()
		defer rl.EndDrawing()
		rl.ClearBackground()
		rl.DrawText("test", 190, 200, 20, rl.BLACK)
	}
}
