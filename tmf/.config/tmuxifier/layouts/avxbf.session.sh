session_root "/Users/adjaythakoerdien/projects/avx/avx-backend-functions"
if initialize_session "avxbf"; then
  new_window "editor"
  select_window 1
  run_cmd "v."
fi
finalize_and_go_to_session
