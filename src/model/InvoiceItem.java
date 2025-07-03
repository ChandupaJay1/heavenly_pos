package model;

public class InvoiceItem {

    private String stockId;
    private String quantity;
    private String invoiceId;

    public InvoiceItem() {
    }

    public InvoiceItem(String stockId, String quantity, String invoiceId) {
        this.stockId = stockId;
        this.quantity = quantity;
        this.invoiceId = invoiceId;
    }

    public String getStockId() {
        return stockId;
    }

    public void setStockId(String stockId) {
        this.stockId = stockId;
    }

    public String getQuantity() {
        return quantity;
    }

    public void setQuantity(String quantity) {
        this.quantity = quantity;
    }

    public String getInvoiceId() {
        return invoiceId;
    }

    public void setInvoiceId(String invoiceId) {
        this.invoiceId = invoiceId;
    }

    @Override
    public String toString() {
        return "InvoiceItem{" +
                "stockId='" + stockId + '\'' +
                ", quantity='" + quantity + '\'' +
                ", invoiceId='" + invoiceId + '\'' +
                '}';
    }
}
