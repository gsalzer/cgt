#!/bin/bash

version=$(python3 --version)
version=${version#*.}
version=${version%.*}
[ $version -ge 10 ] || { echo 'python 3.10 or above required'; exit 1; }

python3 -m venv venv
. venv/bin/activate
pip install --upgrade pip
pip install wheel

# only needed when accessing to the database
# pip install paramiko
# pip install sshtunnel
# pip install psycopg2-binary

pip install Levenshtein
pip install pycryptodome
pip install pyyaml
pip install cbor2

# for reading xls files
pip install pandas
pip install openpyxl
