import ballerina/http;

type Greeting record {
    string 'from;
    string to;
    string message;
};

service / on new http:Listener(8090) {
    resource function get .(string name) returns Greeting {
        Greeting greetingMessage = {"from" : "Choreo", "to" : name, "message" : "Welcome to Choreo!"};
        return greetingMessage;
    }

    resource function get greeting() returns string {
        return "Hello, World!";
    }

    resource function get hello() returns string {
        return "Hello, World!";
    }
}
