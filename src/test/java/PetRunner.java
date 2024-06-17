import com.intuit.karate.junit5.Karate;

public class PetRunner {
    @Karate.Test
    Karate testPet() {
        return Karate.run("petStore/CreatePet").relativeTo(getClass());
    }
}
