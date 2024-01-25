FROM veld_executable_ex2_json_to_xml
COPY ./veld_data_ex1_json/ /veld/input/
COPY ./veld_data_ex2_xml/ /veld/output/
COPY ./veld_executable_ex2_json_to_xml/ /veld/executable/
COPY ./run.sh /veld/run.sh
USER root
RUN chown -R docker_user:docker_user /veld 
USER docker_user
CMD ["/veld/run.sh"]
