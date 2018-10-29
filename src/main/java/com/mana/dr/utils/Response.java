package com.mana.dr.utils;

public class Response {
    private String response;
    private int statusCode;

    public Response(String response, int statusCode) {
        this.response = response;
        this.statusCode = statusCode;
    }

    public Response() {
    }

    public String getResponse() {
        return response;
    }

    public void setResponse(String response) {
        this.response = response;
    }

    public int getStatusCode() {
        return statusCode;
    }

    public void setStatusCode(int statusCode) {
        this.statusCode = statusCode;
    }
}
