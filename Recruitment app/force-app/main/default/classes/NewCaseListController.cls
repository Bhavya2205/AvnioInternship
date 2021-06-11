public class NewCaseListController {
    public List<Case> getNewCases(){
        List<Case> results = [SELECT Id, Casenumber FROM Case WHERE Status='New'];
        return results;
    }
}