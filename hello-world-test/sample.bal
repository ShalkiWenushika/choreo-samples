import ballerina/http;

service /hello/endpoint-9090-803 on new http:Listener(8090) {
    resource function get greeting() returns string {
        return "Hello, World!";
    }
}
