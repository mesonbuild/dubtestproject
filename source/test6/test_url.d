module test_url;

import url;

enum testUrlResult = "soap.beep://beep.example.net:1772/serverinfo/info?token=my-api-token";

/// returns "soap.beep://beep.example.net:1772/serverinfo/info?token=my-api-token"
string testUrl() pure
{
    URL url;
    with (url)
    {
        scheme = "soap.beep";
        host = "beep.example.net";
        port = 1772;
        path = "/serverinfo/info";
        queryParams.add("token", "my-api-token");
    }
    return url.toString();
}

unittest
{
    assert(testUrl() == testUrlResult);
}
