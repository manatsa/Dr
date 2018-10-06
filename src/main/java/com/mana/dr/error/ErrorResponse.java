package com.mana.dr.error;

import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class ErrorResponse {
    private String message;
    private String description;

    public ErrorResponse(String message, String description) {
        this.message = message;
        this.description = description;
    }
}
