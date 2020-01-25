FROM adoptopenjdk:13-jre-hotspot

RUN curl -L https://github.com/partiql/partiql-lang-kotlin/releases/download/v0.1.2-alpha/partiql-cli-0.1.2.tgz \
  | tar -xz -C /root \
 && mv /root/partiql-cli-0.1.2 /root/partiql-cli

ENV PATH /root/partiql-cli/bin:$PATH

WORKDIR /root/partiql-cli

CMD [ "partiql", "-e", "Tutorial/code/tutorial-all-data.env"]
