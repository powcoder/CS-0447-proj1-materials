https://powcoder.com
代写代考加微信 powcoder
Assignment Project Exam Help
Add WeChat powcoder
https://powcoder.com
代写代考加微信 powcoder
Assignment Project Exam Help
Add WeChat powcoder
# YOUR FULL NAME HERE
# YOUR USERNAME HERE

.include "display_2211_0822.asm"

# change these to whatever you like.
.eqv BALL_COLOR COLOR_WHITE
.eqv PADDLE_COLOR COLOR_ORANGE

.eqv BLOCK_WIDTH  8 # pixels wide
.eqv BLOCK_HEIGHT 4 # pixels tall

.eqv BOARD_BLOCK_WIDTH    8 # 8 blocks wide
.eqv BOARD_BLOCK_HEIGHT   6 # 6 blocks tall
.eqv BOARD_MAX_BLOCKS    48 # = BOARD_BLOCK_WIDTH * BOARD_BLOCK_HEIGHT
.eqv BOARD_BLOCK_BOTTOM  24 # = BLOCK_HEIGHT * BOARD_BLOCK_HEIGHT
                            # (the Y coordinate of the bottom of the blocks)

.eqv PADDLE_WIDTH  12 # pixels wide
.eqv PADDLE_HEIGHT  2 # pixels tall
.eqv PADDLE_Y      54 # fixed Y coordinate
.eqv PADDLE_MIN_X   0 # furthest left the left side can go
.eqv PADDLE_MAX_X  52 # furthest right the *left* side can go (= 64 - PADDLE_WIDTH)

.data
	off_screen:    .word 0 # bool, set to 1 when ball goes off-screen.
	paddle_x:      .word 0 # paddle's X coordinate
	paddle_vx:     .word 0 # paddle's X velocity (optional)

	ball_x:        .word 0 # ball's coordinates
	ball_y:        .word 0
	ball_vx:       .word 0 # ball's velocity
	ball_vy:       .word 0
	ball_old_x:    .word 0 # used during collision to back the ball up when it collides
	ball_old_y:    .word 0

	# the blocks to be broken! these are just colors from constants.asm. 0 is empty.
	blocks:
	.byte 0 0 0 0 0 0 0 0
	.byte 0 0 0 0 0 0 0 0
	.byte 0 0 1 2 3 4 0 0
	.byte 0 0 5 6 8 9 0 0
	.byte 0 0 0 0 0 0 0 0
	.byte 0 0 0 0 0 0 0 0
.text

# -------------------------------------------------------------------------------------------------

.globl main
main:
	_loop:
		# TODO:
		# jal setup_paddle
		# jal setup_ball
		# jal wait_for_start
		# jal play_game
	jal count_blocks_left
	bnez v0, _loop

	# shorthand for li v0, 10; syscall
	syscall_exit

# -------------------------------------------------------------------------------------------------

# returns number of blocks in blocks array that are not 0.
count_blocks_left:
enter
	# TODO: actually implement this!
	li v0, 1
leave