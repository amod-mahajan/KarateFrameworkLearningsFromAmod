package examples.airline.JavaDataFaker;

import net.datafaker.Faker;

public class DataFakerExample {
    public static void main(String[] args) {
        Faker faker = new Faker();
        System.out.println(faker.number().digits(5));
        System.out.println(faker.name().fullName());
    }
}
