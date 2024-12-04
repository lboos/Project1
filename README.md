README.md

# Python Training Script - Dockerized

This project demonstrates a machine learning training pipeline written in Python, containerized using Docker and managed with Docker Compose. The script processes CSV data to train a logistic regression model using PyTorch.

---

## **Features**
- Processes input CSV files for training data.
- Implements a logistic regression model using PyTorch.
- Provides various management scripts for ease of use (e.g., setup, start, stop, reconfigure, purge).
- Fully containerized for portability and reproducibility.

---

## **Directory Structure**
```plaintext
.
├── Dockerfile           # Docker build instructions
├── docker-compose.yml   # Docker Compose file for managing services
├── training.py          # Main Python script for training
├── requirements.txt     # Python dependencies
├── data/                # Directory for input CSV data
│   └── best_training_data.csv  # Input data file
├── .gitignore           # Files and directories to ignore in Git
├── purgeall.sh          # Script to purge all Docker containers, images, and volumes
├── reconfigure.sh       # Script to stop, remove, and restart services
├── restart.sh           # Script to stop and restart services
├── setup.sh             # Script to build and start the container
├── start.sh             # Script to start services
└── stop.sh              # Script to stop services

Setup
1. Clone the Repository
git clone <repository-url>
cd <repository-name>
chmod +x *.sh (to make the bash scripts executable)

2. Add Input Data
Ensure the input CSV data file (best_training_data.csv) is available in the data/ sub-directory. The file should have the following structure:

ID: A unique identifier (integer).
TEXT: Two snippets of text separated by [SNIPPET].
LABEL: Classification label (0 or 1).

Example:
1,"The quick brown fox jumps over the lazy dog [SNIPPET] A fast auburn fox leaped above a sleepy canine",1
2,"Artificial intelligence is evolving rapidly [SNIPPET] Machine learning drives innovation in AI",1
3. Build and Start the Services

Run the setup.sh script to build and start the container:
./setup.sh

Usage
Manage Services
You can use the provided scripts to manage the container lifecycle:

Start the Container:
./start.sh

Stop the Container:
./stop.sh

Restart the Container:
./restart.sh

Reconfigure and Rebuild:
./reconfigure.sh

Purge All Containers, Images, and Volumes: Use with caution (*WARNING!!!* This will **DELETE** ALL Docker Images, ALL Docker Containers, ALL Docker Volumes on the host machine! Not just the ones related to this project!)
./purgeall.sh

Logs
Check the container logs to view training progress:
docker logs training_container

Dependencies
The following Python packages are required and listed in requirements.txt:
pandas
torch
nltk
scikit-learn
numpy

To add new dependencies, update requirements.txt and rebuild the container:
./reconfigure.sh

Project Structure
training.py: Python script to train the logistic regression model.
data/: Directory for input data files.
Dockerfile: Builds the Python environment with necessary dependencies.
docker-compose.yml: Defines and manages the containerized setup.
Scripts:
setup.sh: Builds and starts the container.
start.sh, stop.sh, restart.sh: Manage container lifecycle.
reconfigure.sh: Rebuild and restart services.
purgeall.sh: Cleans up all Docker containers, images, and volumes.

License
This project is licensed under the MIT License. See LICENSE for details.

Contributing
Feel free to open issues or create pull requests to improve this project. Contributions are welcome!

Author
Lynne B.
Email: LynneB@xxxxxxx.com



