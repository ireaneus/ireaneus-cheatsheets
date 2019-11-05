### http codes
# 1xx Informational response
100 - Continue - server received the request headers, client proceed
101 - Switching Protocols
102 - Processing
103 - Early Hints

# 2xx Success
200 - OK - Standard response
201 - Created - request fullfilled
202 - Accepted
203 - Non-Authoritative Information
204 - No Content
205 - Reset Content

# 3xx Redirection
300 - Multiple Choices
301 - Moved Permanently
302 - Found - Previously moved temporarily
303 - See other

# 4xx Client errors
400 Bad Request
401 Unauthorized
402 Payment Required
403 Forbidden - request was valid, but server is refusing action. permissions
404 Not Found

# 5xx Server errors
500 Internal server error - generic
502 Bad Gateway
503 Service Unavailable
505 HTTP version not supported

# http codes
An HTTP 404 status code means communication with the service was successful, but the request received a "not found" response. MissingSecurityHeader is an error message received if the S3 API call is missing security API information which prevents the request from being executed successfully. 400 bad request would be the HTTP response code for MissingSecurityHeader.

2xx successful completion
3xx redirect
4xx client side
5xx server side
400	Bad Request Exception	No
403	Access Denied Exception	No
404	Not Found Exception	No
409	Conflict Exception	No
429	Limit Exceeded Exception	No
429	Too Many Requests Exception	Yes
502	Bad Gateway Exception, usually for an incompatible output returned from a Lambda proxy integration backend and occasionally for out-of-order invocations due to heavy loads.	No
503	Service Unavailable Exception	Yes
504	Endpoint Request Timed-out Exception	Yes