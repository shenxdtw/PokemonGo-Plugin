.class Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$ConsumeItemTask;
.super Landroid/os/AsyncTask;
.source "GoogleInAppBillingProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConsumeItemTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final billingService:Lcom/android/vending/billing/IInAppBillingService;

.field private final purchaseToken:Ljava/lang/String;

.field final synthetic this$0:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;


# direct methods
.method public constructor <init>(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;Ljava/lang/String;)V
    .registers 4
    .param p2, "purchaseToken"    # Ljava/lang/String;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$ConsumeItemTask;->this$0:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 226
    iput-object p2, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$ConsumeItemTask;->purchaseToken:Ljava/lang/String;

    .line 229
    # getter for: Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->billingService:Lcom/android/vending/billing/IInAppBillingService;
    invoke-static {p1}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->access$000(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;)Lcom/android/vending/billing/IInAppBillingService;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$ConsumeItemTask;->billingService:Lcom/android/vending/billing/IInAppBillingService;

    .line 230
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .registers 8
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v1, 0x0

    .line 234
    iget-object v2, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$ConsumeItemTask;->billingService:Lcom/android/vending/billing/IInAppBillingService;

    if-nez v2, :cond_6

    .line 241
    :goto_5
    return-object v1

    .line 238
    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$ConsumeItemTask;->billingService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$ConsumeItemTask;->this$0:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;

    # getter for: Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->packageName:Ljava/lang/String;
    invoke-static {v4}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->access$100(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$ConsumeItemTask;->purchaseToken:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v5}, Lcom/android/vending/billing/IInAppBillingService;->consumePurchase(ILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_18} :catch_1a

    move-result-object v1

    goto :goto_5

    .line 239
    :catch_1a
    move-exception v0

    .line 241
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_5
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 221
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$ConsumeItemTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .registers 4
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 249
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_10

    .line 251
    :cond_8
    iget-object v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$ConsumeItemTask;->this$0:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;

    sget-object v1, Lcom/nianticlabs/nia/iap/PurchaseResult;->FAILURE:Lcom/nianticlabs/nia/iap/PurchaseResult;

    # invokes: Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->finalizePurchaseResult(Lcom/nianticlabs/nia/iap/PurchaseResult;)V
    invoke-static {v0, v1}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->access$400(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;Lcom/nianticlabs/nia/iap/PurchaseResult;)V

    .line 256
    :goto_f
    return-void

    .line 255
    :cond_10
    iget-object v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$ConsumeItemTask;->this$0:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;

    sget-object v1, Lcom/nianticlabs/nia/iap/PurchaseResult;->SUCCESS:Lcom/nianticlabs/nia/iap/PurchaseResult;

    # invokes: Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->finalizePurchaseResult(Lcom/nianticlabs/nia/iap/PurchaseResult;)V
    invoke-static {v0, v1}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->access$400(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;Lcom/nianticlabs/nia/iap/PurchaseResult;)V

    goto :goto_f
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 221
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$ConsumeItemTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
