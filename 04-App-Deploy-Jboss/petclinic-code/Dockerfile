# Run Time Jboss Environment Image.
FROM jboss/wildfly

MAINTAINER Prasanna Rajasekaran <prasanna0077@hotmail.comm>

RUN /opt/jboss/wildfly/bin/add-user.sh admin welcome1 --silent

# Expose the ports in which we're interested
EXPOSE 8085

CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0", "-bmanagement", "0.0.0.0"]

COPY target/petclinic.war  /opt/wildfly/standalone/deployments/
