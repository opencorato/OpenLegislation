package gov.nysenate.openleg.client.view.bill;

import gov.nysenate.openleg.client.view.base.ViewObject;
import gov.nysenate.openleg.model.bill.BillStatus;

public class BillStatusView implements ViewObject {

    protected String statusType;
    protected String statusDesc;
    protected String actionDate;

    public BillStatusView(BillStatus billStatus) {
        if(billStatus != null) {
            this.statusType = billStatus.getStatusType() != null ? billStatus.getStatusType().name() : null;
            this.statusDesc = billStatus.getStatusType() != null ? billStatus.getStatusType().getDesc() : null;
            this.actionDate = billStatus.getActionDate() != null ? billStatus.getActionDate().toString() : null;
        }
    }

    public String getStatusType() {
        return statusType;
    }

    public String getStatusDesc() {
        return statusDesc;
    }

    public String getActionDate() {
        return actionDate;
    }

    @Override
    public String getViewType() {
        return "bill-status";
    }
}
