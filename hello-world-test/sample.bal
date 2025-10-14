import ballerina/http;

service /hello/endpoint on new http:Listener(8090) {
    resource function get greeting() returns string {
        return "Hello, World!";
    }
}
