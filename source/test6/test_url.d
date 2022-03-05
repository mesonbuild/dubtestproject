module test_url;

import std.stdio;
import url;

void testUrl()
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
    writeln(url);
}
