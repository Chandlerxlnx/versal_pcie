#procedure
1. modify the crt_proj_gen4x4.tcl to define pipe line stage
2. modify the crt_pblock.tcl to define the pipe line stage
3. run comd
```
  tclhs crt_pblock.tcl
  cp PBLOCK.xdc xdc
```

configuratiions
1. disable or enable pblock
  - modify the property ENABLE of PBLOCK in file 'crt_proj_gen4x4.tcl', which commented by 'DEBUG'
2. soft pblock/hard pblock
  - find property IS_SOFT in PBLOCK.xdc, which commendted by 'DEBUG'!

#history
 1. modify to 6 stage pipeline
