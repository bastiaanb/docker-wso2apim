#
# WSO2 API Manager 1.9.0
#
FROM java:7
MAINTAINER Massimo Danieli, massimo@massimodanieli.com

RUN wget -P /opt --user-agent="testuser" --referer="http://connect.wso2.com/wso2/getform/reg/new_product_download" http://product-dist.wso2.com/products/api-manager/1.9.0/wso2am-1.9.0.zip && \
    yum update -y && \
    yum install -y zip unzip && \
    unzip /opt/wso2am-1.9.0.zip -d /opt && \
    rm /opt/wso2am-1.9.0.zip

export JAVA_HOME="/etc/alternatives/java_sdk_1.7.0_openjdk"
EXPOS E9443
CMD ["/opt/wso2am-1.9.0/bin/wso2server.sh"]
