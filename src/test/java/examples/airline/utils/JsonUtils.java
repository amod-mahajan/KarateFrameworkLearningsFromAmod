package examples.airline.utils;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;

import java.util.Map;
import java.util.Random;
import java.util.stream.Collectors;

public class JsonUtils {
    
    public static String removeNullKeys(Map<String, Object> jsonObject) throws JsonProcessingException {
        ObjectMapper objectMapper = new ObjectMapper();
        Map<String, Object> jsonWithoutNull = jsonObject
                .entrySet()
                .stream()
                .filter(entry -> entry.getValue() != null && entry.getValue() != "")
                .collect(Collectors.toMap(entry -> entry.getKey(), entry -> entry.getValue()));
        return objectMapper.writeValueAsString(jsonWithoutNull);
    }

    public static String removeNullKeys(String jsonObject) throws JsonProcessingException {
        ObjectMapper objectMapper = new ObjectMapper();
        Map<String, Object> jsonWithoutNull = objectMapper.readValue(jsonObject, new TypeReference<Map<String,Object>>() {
                })
                .entrySet()
                .stream()
                .filter(entry -> entry.getValue() != null && entry.getValue() != "")
                .collect(Collectors.toMap(entry -> entry.getKey(), entry -> entry.getValue()));
        return objectMapper.writeValueAsString(jsonWithoutNull);
    }

    public static boolean wannaRetry(String response) {
        System.out.println("Retrying...");
        return false;
    }

}
