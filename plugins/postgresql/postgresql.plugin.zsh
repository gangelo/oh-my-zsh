# ZSH plugin that provides aliases for postgresql installed via Homebrew
#
# Usage:
#
# 1. Add this plugin to your .zshrc file:
#
# plugins=(... postgresql ...)

alias pg-status='ps aux | grep postgres'

# Use elephant to set up PostgreSQL 11 instance, and click the "initialize" button
# From the project root folder...
# $ bundle remove pg
# $ bundle clean --force
# $ git restore .
# $ bundle config build.pg --with-pg-config=/Applications/Postgres.app/Contents/Versions/11/bin/pg_config
# $ bundle
# $ rails db:rebuild

# Add aliases to open the postgresql cli replacing the parameters between the <>.
#
# For example:
#
# alias pgc-test='/Applications/Postgres.app/Contents/Versions/11/bin/psql -p5432 "test_database"'
alias pgcli='/Applications/Postgres.app/Contents/Versions/<postgresql version>./bin/psql -p<port> "<database name>"'
