public class Compliment {
    private String name;
    private String compliment;

    public Compliment(String name, String compliment) {
        setName(name);
        setCompliment(compliment);
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return this.name;
    }

    public void setCompliment(String compliment) {
        this.compliment = compliment;
    }

    public String getCompliment() {
        return this.compliment;
    }

}
