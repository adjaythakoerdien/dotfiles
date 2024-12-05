session_root "~/projects/dev-heiloo"
if initialize_session "dev-heiloo"; then
  new_window "nvim"
  new_window "server"
  new_window "zsh"
  new_window "db"
  # select_window 4
  # run_cmd "v."
  select_window 2
  run_cmd "poetry run uvicorn main:app --reload --port 6543"
  select_window 1
  run_cmd "v."
fi
finalize_and_go_to_session
