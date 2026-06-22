org 0000h

main:
  call wait_1_sec
  clr P0, 0
  call wait_1_sec
  setb P0, 0
  sjump main

wait_1_sec:
  mov r7, #3
loop_r7:
  mov r6, #10
loop_r6:
  mov r5, #10
  djnz r5, $
  djnz r6, loop_r6
  djnz r7, loop_r7
  ret
  
end
