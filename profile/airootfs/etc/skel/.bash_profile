# HeseOS live-session entry point
if [[ -z "${HЕSEOS_SESSION_STARTED:-}" && "$(tty 2>/dev/null)" == "/dev/tty1" ]]; then
  export HESEOS_SESSION_STARTED=1
  exec heseos-session
fi
