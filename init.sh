# This shell script runs when the machine starts, 
# before the user-installed packages are set up.
#
# Use it to install additional dependencies.
#
# Examples:
#
# sudo apt update && sudo apt install -y some-package
#
# pip install some-package --additional-arguments
#
# The logs are stored in /tmp/log;
# the error log is copied to Notebook files.

sudo apt update && sudo apt install -y plantuml default-jre-headless git
sudo wget \
  "https://github.com/plantuml/plantuml/releases/download/v1.2023.10/plantuml-1.2023.10.jar" \
  -O /usr/local/bin/plantuml.jar
sudo chmod +x /usr/local/bin/plantuml.jar

git clone https://github.com/jbn/IPlantUML.git
cd IPlantUML
python setup.py install iplantuml --jarpath /usr/local/bin/plantuml.jar


