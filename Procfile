web: bundle exec puma --preload -t ${PUMA_MIN_THREADS:-0}:${PUMA_MAX_THREADS:-16} -w ${PUMA_WORKERS:-5} -p ${PORT:-3000} -e ${RACK_ENV:-development}
