# 
# Synthesis run script generated by Vivado
# 

set_param xicom.use_bs_reader 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a35tcpg236-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Users/test/Documents/NUS/Y2S1/EE2020/audio_effects_final/audio_effects.cache/wt [current_project]
set_property parent.project_path C:/Users/test/Documents/NUS/Y2S1/EE2020/audio_effects_final/audio_effects.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
add_files C:/Users/test/Documents/NUS/Y2S1/EE2020/audio_effects_final/hello_data.coe
add_files -quiet c:/Users/test/Documents/NUS/Y2S1/EE2020/audio_effects_final/audio_effects.srcs/sources_1/ip/hello_ROM/hello_ROM.dcp
set_property used_in_implementation false [get_files c:/Users/test/Documents/NUS/Y2S1/EE2020/audio_effects_final/audio_effects.srcs/sources_1/ip/hello_ROM/hello_ROM.dcp]
read_verilog -library xil_defaultlib {
  C:/Users/test/Documents/NUS/Y2S1/EE2020/audio_effects_final/audio_effects.srcs/sources_1/new/clk_divider.v
  C:/Users/test/Documents/NUS/Y2S1/EE2020/audio_effects_final/audio_effects.srcs/sources_1/new/Volume_Indicator.v
  C:/Users/test/Documents/NUS/Y2S1/EE2020/audio_effects_final/audio_effects.srcs/sources_1/new/note_sound.v
  C:/Users/test/Documents/NUS/Y2S1/EE2020/audio_effects_final/audio_effects.srcs/sources_1/new/Volume_Indicator_Chooser.v
  C:/Users/test/Documents/NUS/Y2S1/EE2020/audio_effects_final/audio_effects.srcs/sources_1/new/hello_audio.v
  C:/Users/test/Documents/NUS/Y2S1/EE2020/audio_effects_final/audio_effects.srcs/sources_1/new/SPI.v
  C:/Users/test/Documents/NUS/Y2S1/EE2020/audio_effects_final/audio_effects.srcs/sources_1/new/note_music.v
  C:/Users/test/Documents/NUS/Y2S1/EE2020/audio_effects_final/audio_effects.srcs/sources_1/new/MIC_delay.v
  C:/Users/test/Documents/NUS/Y2S1/EE2020/audio_effects_final/audio_effects.srcs/sources_1/new/melody_music.v
  C:/Users/test/Documents/NUS/Y2S1/EE2020/audio_effects_final/audio_effects.srcs/sources_1/new/Bcd_Display.v
  C:/Users/test/Documents/NUS/Y2S1/EE2020/audio_effects_final/audio_effects.srcs/sources_1/new/AUDIO_FX_TOP.v
}
read_vhdl -library xil_defaultlib C:/Users/test/Documents/NUS/Y2S1/EE2020/audio_effects_final/audio_effects.srcs/sources_1/imports/audio_effects.srcs/DA2CompRef.vhd
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/test/Documents/NUS/Y2S1/EE2020/audio_effects_final/audio_effects.srcs/constrs_1/imports/Learn/Basys3_Master.xdc
set_property used_in_implementation false [get_files C:/Users/test/Documents/NUS/Y2S1/EE2020/audio_effects_final/audio_effects.srcs/constrs_1/imports/Learn/Basys3_Master.xdc]


synth_design -top AUDIO_FX_TOP -part xc7a35tcpg236-1


write_checkpoint -force -noxdef AUDIO_FX_TOP.dcp

catch { report_utilization -file AUDIO_FX_TOP_utilization_synth.rpt -pb AUDIO_FX_TOP_utilization_synth.pb }
