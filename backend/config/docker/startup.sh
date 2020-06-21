#! /bin/sh

# Wait for DB services
sh ./backend/config/docker/wait-for-services.sh

# Prepare DB (Migrate - If not? Create db & Migrate)
sh ./backend/config/docker/prepare-db.sh

# Start Application
cd backend && rm -f tmp/pids/server.pid && bundle exec rails s -p 3000 -b '0.0.0.0'
