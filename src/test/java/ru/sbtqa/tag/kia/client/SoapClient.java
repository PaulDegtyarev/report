package ru.sbtqa.tag.kia.client;

import jakarta.xml.soap.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.net.ssl.*;
import javax.xml.transform.stream.StreamSource;
import java.io.ByteArrayInputStream;
import java.nio.charset.StandardCharsets;
import java.security.SecureRandom;
import java.security.cert.X509Certificate;

public class SoapClient {

    private static final Logger log = LoggerFactory.getLogger(SoapClient.class);

    static {
        // Отключаем проверку SSL - используем только для тестирования!
        try {
            TrustManager[] trustAllCerts = new TrustManager[]{
                    new X509TrustManager() {
                        public X509Certificate[] getAcceptedIssuers() {
                            return null;
                        }
                        public void checkClientTrusted(X509Certificate[] certs, String authType) {
                        }
                        public void checkServerTrusted(X509Certificate[] certs, String authType) {
                        }
                    }
            };

            SSLContext sc = SSLContext.getInstance("SSL");
            sc.init(null, trustAllCerts, new SecureRandom());
            HttpsURLConnection.setDefaultSSLSocketFactory(sc.getSocketFactory());

            HostnameVerifier allHostsValid = (hostname, session) -> true;
            HttpsURLConnection.setDefaultHostnameVerifier(allHostsValid);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void sendSoapRequest(String soapEndpointUrl, String soapAction, String xmlPayload) throws Exception {
        MessageFactory messageFactory = MessageFactory.newInstance(SOAPConstants.SOAP_1_1_PROTOCOL);
        SOAPMessage soapMessage = messageFactory.createMessage();

        MimeHeaders headers = soapMessage.getMimeHeaders();
        headers.addHeader("SOAPAction", soapAction);
        headers.addHeader("Content-Type", "text/xml;charset=UTF-8");

        soapMessage.getSOAPPart().setContent(new StreamSource(
                new ByteArrayInputStream(xmlPayload.getBytes(StandardCharsets.UTF_8))));

        soapMessage.setProperty(SOAPMessage.CHARACTER_SET_ENCODING, "UTF-8");
        soapMessage.setProperty(SOAPMessage.WRITE_XML_DECLARATION, "true");

        soapMessage.saveChanges();

        SOAPConnectionFactory soapConnectionFactory = SOAPConnectionFactory.newInstance();

        try (SOAPConnection connection = soapConnectionFactory.createConnection()) {
            SOAPMessage response = connection.call(soapMessage, soapEndpointUrl);

            if (response.getSOAPBody().hasFault()) {
                SOAPFault fault = response.getSOAPBody().getFault();
                throw new RuntimeException(fault.getDetail().getTextContent());
            }

        }
    }
}
