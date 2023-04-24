meta:
  id: w3_w3i
  file-extension: w3i
  endian: le
  
seq:
  - id: w3i_version
    type: u4
  - id: saves_counter
    type: u4
    if: w3i_version >= 16
  - id: editor_version
    type: u4
    if: w3i_version >= 16
    
  - id: wc3_version
    type: wc3_version_number
    if: w3i_version >= 27
    
  - id: map_name
    type: strz
    encoding: UTF-8
  - id: map_author
    type: strz
    encoding: UTF-8
  - id: map_description
    type: strz
    encoding: UTF-8
  - id: map_players_recommended
    type: strz
    encoding: UTF-8
  
  - id: camera_boundary_left
    type: f4
  - id: camera_boundary_bottom
    type: f4
  - id: camera_boundary_right
    type: f4
  - id: camera_boundary_top
    type: f4
    
  - id: camera_boundary_left2
    type: f4
  - id: camera_boundary_top2
    type: f4
  - id: camera_boundary_right2
    type: f4
  - id: camera_boundary_bottom2
    type: f4
    
  # Playable area erased.
    
  - id: playable_width
    type: u4
  - id: playable_height
    type: u4
    
  # todo: map flags instancing
  - id: map_flags_raw
    type: u4
    
  - id: landscape_type
    type: str
    size: 1
    encoding: ASCII
  
  - id: unknown_v15
    type: u4
  
  
  # FOG, WATER, WEATHER, SOUND ENV, LIGHTING
  - id: fog_mode
    type: u4
    if: w3i_version >= 23
    
  - id: fog_height_min
    type: f4
    if: w3i_version >= 23
    
  - id: fog_height_max
    type: f4
    if: w3i_version >= 23
    
  - id: fog_density
    type: f4
    if: w3i_version >= 23
  
  - id: fog_color
    type: color
    if: w3i_version >= 23
  
  - id: weather_rawcode
    size: 4
    if: w3i_version >= 23
    
  - id: sound_custom_env
    type: strz
    encoding: UTF-8
    if: w3i_version >= 23
  
  - id: lighting_custom
    type: str
    encoding: ASCII
    size: 1
    if: w3i_version >= 23
    
  - id: water_color
    type: color
    if: w3i_version >= 25
    
  # END OF FOG, WATER, WEATHER, SOUND ENV, LIGHTING
  
  - id: map_script_lang
    type: u4
    if: w3i_version >= 28
    
  - id: graphics_mode
    type: u4
    if: w3i_version >= 31
    
  - id: game_data_version
    type: u4
    if: w3i_version >= 31
    
  - id: player_count
    type: u4
  - id: player_array
    type: player_data
    repeat: expr
    repeat-expr: player_count
  
    
  - id: team_count
    type: u4
  - id: team_array
    type: team_data
    repeat: expr
    repeat-expr: team_count 

  - id: padding_end_v11
    type: u8
    
types:
  wc3_version_number:
    seq:
      - id: wc3_version_a
        type: u4
      - id: wc3_version_b
        type: u4
      - id: wc3_version_c
        type: u4
      - id: wc3_version_d
        type: u4
        
  area_unplayable:
    seq:
      - id: a
        type: u4
      - id: b
        type: u4
      - id: c
        type: u4
      - id: d
        type: u4

  color:
    seq:
      - id: r
        type: u1
      - id: g
        type: u1
      - id: b
        type: u1
      - id: a
        type: u1
  
  player_slot_flags:
    seq:
      - id: slot_flag
        type: b1
        repeat: expr
        repeat-expr: 32
  
# LOADING SCREEN DEFINITION REMOVED
  
  player_data:
    seq:
      - id: number
        type: u4
      - id: slot_type
        type: u4
      - id: race
        type: u4
      - id: spawn_pos_fixed
        type: u4
      
      - id: name
        type: strz
        encoding: UTF-8
        
      - id: spawn_x
        type: f4
      - id: spawn_y
        type: f4
        
      - id: ally_priorities_low
        type: player_slot_flags
      - id: ally_priorities_high
        type: player_slot_flags
      
      # error: unable to access 'w3i_version' in w3_w3i::player_data context
      # we can access the parser env with "_parent."
      - id: enemy_priorities_low
        type: player_slot_flags
        if: _parent.w3i_version >= 31
      
      - id: enemy_priorities_high
        type: player_slot_flags
        if: _parent.w3i_version >= 31
      
  team_data:
    seq:
      - id: team_flags
        type: u4
      - id: players
        type: player_slot_flags
      - id: name
        type: strz
        encoding: UTF-8
        
  upgrade_data:
    seq:
      - id: players
        type: player_slot_flags
      - id: rawcode
        type: str
        size: 4
        encoding: ASCII
      - id: level
        type: u4
      - id: availability_mode
        type: u4
        
  tech_data:
    seq:
      - id: players
        type: player_slot_flags
      - id: rawcode
        type: str
        size: 4
        encoding: ASCII
  

      
  random_unit_table:
    seq:
      - id: number
        type: u4
      - id: name
        type: strz
        encoding: UTF-8
        
      - id: column_count
        type: u4
      - id: column_type_array
        type: u4
        repeat: expr
        repeat-expr: column_count
        
      - id: row_amount
        type: u4
      - id: row_array
        type: random_unit_row
    
  random_unit_row:
    seq:
      - id: chance
        type: u4
      - id: rawcode
        type: str
        size: 4
        encoding: ASCII
        
        
  random_item:
    seq:
      - id: chance
        type: u4
      - id: rawcode
        type: str
        size: 4
        encoding: ASCII
    
  item_set:
    seq:
      - id: item_amount
        type: u4
      - id: item_array
        type: random_item
        repeat: expr
        repeat-expr: item_amount
      
    
  random_item_table:
    seq:
      - id: number
        type: u4
      - id: name
        type: strz
        encoding: UTF-8
      - id: item_set_amount
        type: u4
      
      - id: item_set_array
        type: item_set
        repeat: expr
        repeat-expr: item_set_amount