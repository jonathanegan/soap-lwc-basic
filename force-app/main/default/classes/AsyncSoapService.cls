//Generated by wsdl2apex

public class AsyncSoapService {
    public class getContactResponse_elementFuture extends System.WebServiceCalloutFuture {
        public soapService.getContactResponse_element getValue() {
            soapService.getContactResponse_element response = (soapService.getContactResponse_element)System.WebServiceCallout.endInvoke(this);
            return response;
        }
    }
    public class AsyncContactsPortSoap11 {
        public String endpoint_x = 'https://master-springboot-soap-service.herokuapp.com:443/ws/contacts';
        public Map<String,String> inputHttpHeaders_x;
        public String clientCertName_x;
        public Integer timeout_x;
        private String[] ns_map_type_info = new String[]{'https://master-springboot-soap-service.herokuapp.com', 'soapService'};
        public AsyncSoapService.getContactResponse_elementFuture beginGetContact(System.Continuation continuation,String FullName) {
            soapService.getContactRequest_element request_x = new soapService.getContactRequest_element();
            request_x.FullName = FullName;
            return (AsyncSoapService.getContactResponse_elementFuture) System.WebServiceCallout.beginInvoke(
              this,
              request_x,
              AsyncSoapService.getContactResponse_elementFuture.class,
              continuation,
              new String[]{endpoint_x,
              '',
              'https://master-springboot-soap-service.herokuapp.com',
              'getContactRequest',
              'https://master-springboot-soap-service.herokuapp.com',
              'getContactResponse',
              'soapService.getContactResponse_element'}
            );
        }
    }
}