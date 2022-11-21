# Add raftos package to PYTHONPATH so we don't need to install it to run example
export PYTHONPATH="${PYTHONPATH}:$(pwd)/../"

# Remove previous data
rm -f *.log
rm -f *.storage
rm -f *.state_machine

# Start
python3 node.py --node "8000" --cluster "8000 8001 8002" &
python3 node.py --node "8001" --cluster "8000 8001 8002" &
python3 node.py --node "8002" --cluster "8000 8001 8002" &

# New start
# python3 run_cluster.py