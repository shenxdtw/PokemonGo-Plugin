.class Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$GetSkuDetailsTask;
.super Landroid/os/AsyncTask;
.source "GoogleInAppBillingProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetSkuDetailsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field private final billingService:Lcom/android/vending/billing/IInAppBillingService;

.field private final requestBundle:Landroid/os/Bundle;

.field final synthetic this$0:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;


# direct methods
.method public constructor <init>(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 143
    .local p2, "skuIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$GetSkuDetailsTask;->this$0:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 147
    # getter for: Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->billingService:Lcom/android/vending/billing/IInAppBillingService;
    invoke-static {p1}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->access$000(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;)Lcom/android/vending/billing/IInAppBillingService;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$GetSkuDetailsTask;->billingService:Lcom/android/vending/billing/IInAppBillingService;

    .line 148
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$GetSkuDetailsTask;->requestBundle:Landroid/os/Bundle;

    .line 149
    iget-object v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$GetSkuDetailsTask;->requestBundle:Landroid/os/Bundle;

    const-string v1, "ITEM_ID_LIST"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 151
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/os/Bundle;
    .registers 9
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v1, 0x0

    .line 155
    iget-object v2, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$GetSkuDetailsTask;->billingService:Lcom/android/vending/billing/IInAppBillingService;

    if-nez v2, :cond_6

    .line 163
    :goto_5
    return-object v1

    .line 159
    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$GetSkuDetailsTask;->billingService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$GetSkuDetailsTask;->this$0:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;

    .line 160
    # getter for: Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->packageName:Ljava/lang/String;
    invoke-static {v4}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->access$100(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "inapp"

    iget-object v6, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$GetSkuDetailsTask;->requestBundle:Landroid/os/Bundle;

    .line 159
    invoke-interface {v2, v3, v4, v5, v6}, Lcom/android/vending/billing/IInAppBillingService;->getSkuDetails(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_16} :catch_18

    move-result-object v1

    goto :goto_5

    .line 161
    :catch_18
    move-exception v0

    .line 163
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_5
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 139
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$GetSkuDetailsTask;->doInBackground([Ljava/lang/Void;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/os/Bundle;)V
    .registers 10
    .param p1, "result"    # Landroid/os/Bundle;

    .prologue
    .line 169
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 171
    .local v3, "purchasableItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nianticlabs/nia/iap/PurchasableItemDetails;>;"
    iget-object v5, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$GetSkuDetailsTask;->this$0:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;

    # getter for: Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->currentPurchasableItems:Ljava/util/Map;
    invoke-static {v5}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->access$200(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 172
    if-eqz p1, :cond_49

    .line 173
    const-string v5, "DETAILS_LIST"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_49

    .line 174
    const-string v5, "DETAILS_LIST"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 177
    .local v4, "responseList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_22
    :goto_22
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_49

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 179
    .local v2, "jsonString":Ljava/lang/String;
    invoke-static {v2}, Lcom/nianticlabs/nia/iap/GetSkuDetailsResponseItem;->fromJson(Ljava/lang/String;)Lcom/nianticlabs/nia/iap/GetSkuDetailsResponseItem;

    move-result-object v1

    .line 180
    .local v1, "jsonItem":Lcom/nianticlabs/nia/iap/GetSkuDetailsResponseItem;
    if-eqz v1, :cond_22

    .line 183
    invoke-static {v1}, Lcom/nianticlabs/nia/iap/GetSkuDetailsResponseItem;->toPurchasableItemDetails(Lcom/nianticlabs/nia/iap/GetSkuDetailsResponseItem;)Lcom/nianticlabs/nia/iap/PurchasableItemDetails;

    move-result-object v0

    .line 184
    .local v0, "item":Lcom/nianticlabs/nia/iap/PurchasableItemDetails;
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    iget-object v6, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$GetSkuDetailsTask;->this$0:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;

    # getter for: Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->currentPurchasableItems:Ljava/util/Map;
    invoke-static {v6}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->access$200(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;)Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v0}, Lcom/nianticlabs/nia/iap/PurchasableItemDetails;->getItemId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_22

    .line 212
    .end local v0    # "item":Lcom/nianticlabs/nia/iap/PurchasableItemDetails;
    .end local v1    # "jsonItem":Lcom/nianticlabs/nia/iap/GetSkuDetailsResponseItem;
    .end local v2    # "jsonString":Ljava/lang/String;
    .end local v4    # "responseList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_49
    iget-object v5, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$GetSkuDetailsTask;->this$0:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;

    # invokes: Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->notifyPurchasableItemsResult(Ljava/util/Collection;)V
    invoke-static {v5, v3}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->access$300(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;Ljava/util/Collection;)V

    .line 213
    new-instance v5, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$ProcessPurchasedItemsTask;

    iget-object v6, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$GetSkuDetailsTask;->this$0:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;

    invoke-direct {v5, v6}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$ProcessPurchasedItemsTask;-><init>(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;)V

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Void;

    invoke-virtual {v5, v6}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$ProcessPurchasedItemsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 214
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 139
    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$GetSkuDetailsTask;->onPostExecute(Landroid/os/Bundle;)V

    return-void
.end method
