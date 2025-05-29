#!/usr/bin/env bash
# This script sets up and runs a Streamlit application using uv.
uv add -r ./requirements.txt
uv sync
uv lock
uv run streamlit run --server.port 8080 ./streamlit_app.py