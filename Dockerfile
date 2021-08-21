FROM tomcat:8.0.20-jre8
# Dummy text to test 
# testing Github webhook is working
# automation
COPY target/*.war /usr/local/tomcat/webapps/maven-web-app.war

FROM alpine

COPY --from=open-policy-agent/conftest:v0.18.2 /conftest /conftest


#FROM alpine
#ARG VERSION=v0.18.2
#COPY --from=open-policy-agent/conftest:$VERSION /conftest /conftest /conftest

#FROM alpine
#ARG LABEL=v0.18.2
#ARG IMAGINE=open-policy-agent/conftest
#ARG PATH-/conftest
#COPY --from=$IMAGE:$LABEL $PATH $PATH

