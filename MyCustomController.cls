public class MyCustomController {
	private final Lead currentLead;

	public MyCustomController(){
		currentLead = [SELECT Id, Name FROM Lead
									WHERE Id = :ApexPages.currentPage().getParameters().get('id')];
	}
}
