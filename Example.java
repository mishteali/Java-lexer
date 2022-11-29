public class Main {
	public static void main(String args[]){
		int integer = 12;
		integer += 1;

		String myName = "Alireza";
		String my_description = """
				my name is alireza . live in boushehr. my filed in university
				is computer ngineering.
				""";
		// this is line comment

                float testFloat = 1.2;
		float anotherTestFloat = 2.;

		boolean isStudent = true;
		ArrayList<String> my_courses = new ArrayList<String>();
		my_courses.add("compiler");
		my_courses.add("operating system");
		my_courses.add("advanced database");
		my_courses.add("special issue");
		my_courses.add("information retrieval");

		for (String course: my_courses) {
			System.out.println(course);
		}

		if (my_courses.size() < 5){
			System.out.println("you have less than five course");
		}
		else {
			System.out.println("you have more than five course");
		}


	}

}
class Student{
	private String name;
	private String family;
	protected int age;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getFamily() {
		return family;
	}

	public void setFamily(String family) {
		this.family = family;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}
}
