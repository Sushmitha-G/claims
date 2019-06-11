package claim.Bean;

public class ClaimProcess {
	
    private int claimID;
    private String claimProcessingDate;
    private String claimStatus;
    private int approvedAmount;
	public int getClaimID() {
		return claimID;
	}
	public void setClaimID(int claimID) {
		this.claimID = claimID;
	}
	public String getClaimProcessingDate() {
		return claimProcessingDate;
	}
	public void setClaimProcessingDate(String claimProcessingDate) {
		this.claimProcessingDate = claimProcessingDate;
	}
	public String getClaimStatus() {
		return claimStatus;
	}
	public void setClaimStatus(String claimStatus) {
		this.claimStatus = claimStatus;
	}
	public int getApprovedAmount() {
		return approvedAmount;
	}
	public void setApprovedAmount(int approvedAmount) {
		this.approvedAmount = approvedAmount;
	}
    
}
