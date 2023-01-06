set SynModuleInfo {
  {SRCNAME funcA MODELNAME funcA RTLNAME diamond_funcA}
  {SRCNAME funcB MODELNAME funcB RTLNAME diamond_funcB}
  {SRCNAME funcC MODELNAME funcC RTLNAME diamond_funcC}
  {SRCNAME funcD MODELNAME funcD RTLNAME diamond_funcD}
  {SRCNAME diamond MODELNAME diamond RTLNAME diamond IS_TOP 1
    SUBMODULES {
      {MODELNAME diamond_c1_RAM_AUTO_1R1W_memcore RTLNAME diamond_c1_RAM_AUTO_1R1W_memcore BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME diamond_c1_RAM_AUTO_1R1W RTLNAME diamond_c1_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2}
      {MODELNAME diamond_c2_RAM_AUTO_1R1W_memcore RTLNAME diamond_c2_RAM_AUTO_1R1W_memcore BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME diamond_c2_RAM_AUTO_1R1W RTLNAME diamond_c2_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2}
      {MODELNAME diamond_c4_RAM_AUTO_1R1W_memcore RTLNAME diamond_c4_RAM_AUTO_1R1W_memcore BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME diamond_c4_RAM_AUTO_1R1W RTLNAME diamond_c4_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2}
    }
  }
}
