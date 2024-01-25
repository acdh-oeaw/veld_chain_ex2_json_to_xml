#!/bin/bash

cd veld_executable_ex2_json_to_xml/
docker build . -t veld_executable_ex2_json_to_xml__image

cd ..
docker build . -t veld_chain_ex2_json_to_xml__image

docker run veld_chain_ex2_json_to_xml__image
