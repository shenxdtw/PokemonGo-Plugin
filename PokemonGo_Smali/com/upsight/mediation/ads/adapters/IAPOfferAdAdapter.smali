.class public Lcom/upsight/mediation/ads/adapters/IAPOfferAdAdapter;
.super Lcom/upsight/mediation/ads/adapters/OfferAdAdapter;
.source "IAPOfferAdAdapter.java"

# interfaces
.implements Lcom/upsight/mediation/ads/adapters/LocalizedPrice;


# instance fields
.field private mInAppBillingConnection:Lcom/upsight/mediation/util/InAppBillingConnection;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/upsight/mediation/ads/adapters/OfferAdAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public injectIAPBillingConnection(Lcom/upsight/mediation/util/InAppBillingConnection;)V
    .registers 2
    .param p1, "inAppBillingConnection"    # Lcom/upsight/mediation/util/InAppBillingConnection;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 23
    iput-object p1, p0, Lcom/upsight/mediation/ads/adapters/IAPOfferAdAdapter;->mInAppBillingConnection:Lcom/upsight/mediation/util/InAppBillingConnection;

    .line 24
    return-void
.end method

.method public isAdAvailable(Lcom/upsight/mediation/data/Offer;Lcom/upsight/mediation/data/Offer;)Z
    .registers 4
    .param p1, "iapOffer"    # Lcom/upsight/mediation/data/Offer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "vgOffer"    # Lcom/upsight/mediation/data/Offer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/upsight/mediation/ads/adapters/OfferAdAdapter;->isAdAvailable(Lcom/upsight/mediation/data/Offer;)Z

    move-result v0

    return v0
.end method

.method public loadAd(Landroid/app/Activity;Ljava/util/HashMap;Lcom/upsight/mediation/data/Offer;Lcom/upsight/mediation/data/Offer;)V
    .registers 10
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/HashMap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "iapOffer"    # Lcom/upsight/mediation/data/Offer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "vgOffer"    # Lcom/upsight/mediation/data/Offer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/upsight/mediation/data/Offer;",
            "Lcom/upsight/mediation/data/Offer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 32
    .local p2, "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/upsight/mediation/ads/adapters/IAPOfferAdAdapter;->mInAppBillingConnection:Lcom/upsight/mediation/util/InAppBillingConnection;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/upsight/mediation/ads/adapters/IAPOfferAdAdapter;->mInAppBillingConnection:Lcom/upsight/mediation/util/InAppBillingConnection;

    invoke-virtual {v3}, Lcom/upsight/mediation/util/InAppBillingConnection;->isConnected()Z

    move-result v3

    if-nez v3, :cond_12

    .line 33
    :cond_c
    sget-object v3, Lcom/upsight/mediation/ads/model/AdapterLoadError;->PROVIDER_IAP_BILLING_FAILURE:Lcom/upsight/mediation/ads/model/AdapterLoadError;

    invoke-virtual {p0, v3}, Lcom/upsight/mediation/ads/adapters/IAPOfferAdAdapter;->onAdFailedToLoad(Lcom/upsight/mediation/ads/model/AdapterLoadError;)V

    .line 51
    :goto_11
    return-void

    .line 37
    :cond_12
    move-object v2, p3

    .line 38
    .local v2, "selectedOffer":Lcom/upsight/mediation/data/Offer;
    if-nez v2, :cond_1b

    .line 39
    sget-object v3, Lcom/upsight/mediation/ads/model/AdapterLoadError;->PROVIDER_NO_FILL:Lcom/upsight/mediation/ads/model/AdapterLoadError;

    invoke-virtual {p0, v3}, Lcom/upsight/mediation/ads/adapters/IAPOfferAdAdapter;->onAdFailedToLoad(Lcom/upsight/mediation/ads/model/AdapterLoadError;)V

    goto :goto_11

    .line 43
    :cond_1b
    iget-object v0, v2, Lcom/upsight/mediation/data/Offer;->itemId:Ljava/lang/String;

    .line 44
    .local v0, "itemId":Ljava/lang/String;
    iget-object v3, p0, Lcom/upsight/mediation/ads/adapters/IAPOfferAdAdapter;->mInAppBillingConnection:Lcom/upsight/mediation/util/InAppBillingConnection;

    invoke-virtual {v3, v0}, Lcom/upsight/mediation/util/InAppBillingConnection;->getLocalPriceForProductId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, "localPrice":Ljava/lang/String;
    if-nez v1, :cond_2b

    .line 46
    sget-object v3, Lcom/upsight/mediation/ads/model/AdapterLoadError;->PROVIER_IAP_BILLING_NOT_FOUND:Lcom/upsight/mediation/ads/model/AdapterLoadError;

    invoke-virtual {p0, v3}, Lcom/upsight/mediation/ads/adapters/IAPOfferAdAdapter;->onAdFailedToLoad(Lcom/upsight/mediation/ads/model/AdapterLoadError;)V

    goto :goto_11

    .line 49
    :cond_2b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(function(){document.getElementById(\"bonus_price_or_quantity\").innerHTML=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\"})()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/upsight/mediation/ads/adapters/IAPOfferAdAdapter;->javascriptInjection:Ljava/lang/String;

    .line 50
    invoke-super {p0, p1, p2, v2}, Lcom/upsight/mediation/ads/adapters/OfferAdAdapter;->loadAd(Landroid/app/Activity;Ljava/util/HashMap;Lcom/upsight/mediation/data/Offer;)V

    goto :goto_11
.end method
