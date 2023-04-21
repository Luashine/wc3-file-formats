meta:
  id: w3wgc
  file-extension: wgc
  endian: le
  
seq:
  - id: wgc_version
    type: u4
  - id: flags
    type: u4
  - id: gamespeed
    type: u4
  - id: map_path
    type: strz
    encoding: UTF-8
  - id: player_count
    type: u4
  - id: player
    type: player
    repeat: expr
    repeat-expr: player_count
    
instances:
  flag_fog_of_war_disable:
    value: (flags & 0x01)
  flag_victory_disable:
    value: (flags & 0x02) >> 1

types:
  player:
    seq:
      - id: player_slot
        type: u4
      - id: player_team
        type: u4
      - id: player_race
        type: u4
      - id: player_color
        type: u4
      - id: player_handicap
        type: u4
      - id: player_controller
        type: u4
      - id: player_ai_difficulty
        type: u4
      - id: ai_script_path
        type: strz
        encoding: utf-8
    