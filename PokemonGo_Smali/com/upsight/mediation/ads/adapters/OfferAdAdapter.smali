.class public abstract Lcom/upsight/mediation/ads/adapters/OfferAdAdapter;
.super Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;
.source "OfferAdAdapter.java"

# interfaces
.implements Lcom/upsight/mediation/ads/adapters/OfferBasedNetworkWrapper;


# instance fields
.field protected javascriptInjection:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field offer:Lcom/upsight/mediation/data/Offer;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field offerAccepted:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public isAdAvailable(Lcom/upsight/mediation/data/Offer;)Z
    .registers 3
    .param p1, "offer"    # Lcom/upsight/mediation/data/Offer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 79
    iget-object v0, p0, Lcom/upsight/mediation/ads/adapters/OfferAdAdapter;->offer:Lcom/upsight/mediation/data/Offer;

    if-ne v0, p1, :cond_19

    if-eqz p1, :cond_19

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v0}, Lcom/upsight/mediation/data/Offer;->isExpired(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_19

    invoke-super {p0}, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;->isAdAvailable()Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public abstract isAdAvailable(Lcom/upsight/mediation/data/Offer;Lcom/upsight/mediation/data/Offer;)Z
    .param p1    # Lcom/upsight/mediation/data/Offer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/upsight/mediation/data/Offer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method loadAd(Landroid/app/Activity;Ljava/util/HashMap;Lcom/upsight/mediation/data/Offer;)V
    .registers 14
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/HashMap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "currentOffer"    # Lcom/upsight/mediation/data/Offer;
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
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 33
    iput-object p1, p0, Lcom/upsight/mediation/ads/adapters/OfferAdAdapter;->activity:Landroid/app/Activity;

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/upsight/mediation/ads/adapters/OfferAdAdapter;->shouldPreload:Z

    .line 36
    if-eqz p3, :cond_19

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p3, v0}, Lcom/upsight/mediation/data/Offer;->isExpired(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 37
    sget-object v0, Lcom/upsight/mediation/ads/model/AdapterLoadError;->PROVIDER_NO_FILL:Lcom/upsight/mediation/ads/model/AdapterLoadError;

    invoke-virtual {p0, v0}, Lcom/upsight/mediation/ads/adapters/OfferAdAdapter;->onAdFailedToLoad(Lcom/upsight/mediation/ads/model/AdapterLoadError;)V

    .line 73
    :goto_18
    return-void

    .line 41
    :cond_19
    iget-object v0, p0, Lcom/upsight/mediation/ads/adapters/OfferAdAdapter;->offer:Lcom/upsight/mediation/data/Offer;

    if-ne p3, v0, :cond_25

    iget-boolean v0, p0, Lcom/upsight/mediation/ads/adapters/OfferAdAdapter;->loaded:Z

    if-eqz v0, :cond_25

    .line 42
    invoke-virtual {p0}, Lcom/upsight/mediation/ads/adapters/OfferAdAdapter;->onAdLoaded()V

    goto :goto_18

    .line 45
    :cond_25
    iput-object p3, p0, Lcom/upsight/mediation/ads/adapters/OfferAdAdapter;->offer:Lcom/upsight/mediation/data/Offer;

    .line 46
    iput-boolean v9, p0, Lcom/upsight/mediation/ads/adapters/OfferAdAdapter;->loaded:Z

    .line 51
    if-eqz p3, :cond_2f

    iget-boolean v0, p3, Lcom/upsight/mediation/data/Offer;->consumed:Z

    if-eqz v0, :cond_35

    .line 52
    :cond_2f
    sget-object v0, Lcom/upsight/mediation/ads/model/AdapterLoadError;->PROVIDER_NO_FILL:Lcom/upsight/mediation/ads/model/AdapterLoadError;

    invoke-virtual {p0, v0}, Lcom/upsight/mediation/ads/adapters/OfferAdAdapter;->onAdFailedToLoad(Lcom/upsight/mediation/ads/model/AdapterLoadError;)V

    goto :goto_18

    .line 57
    :cond_35
    :try_start_35
    const-string v0, "backgroundColor"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/upsight/mediation/ads/adapters/OfferAdAdapter;->backgroundColor:I

    .line 58
    const-string v0, "rotateMode"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/upsight/mediation/ads/adapters/OfferAdAdapter;->rotateMode:I
    :try_end_51
    .catch Ljava/lang/NumberFormatException; {:try_start_35 .. :try_end_51} :catch_6f

    .line 64
    new-instance v0, Lcom/upsight/mediation/mraid/MRAIDInterstitial;

    const-string v2, ""

    iget-object v1, p0, Lcom/upsight/mediation/ads/adapters/OfferAdAdapter;->offer:Lcom/upsight/mediation/data/Offer;

    iget-object v3, v1, Lcom/upsight/mediation/data/Offer;->offerHtml:Ljava/lang/String;

    iget v4, p0, Lcom/upsight/mediation/ads/adapters/OfferAdAdapter;->backgroundColor:I

    new-array v5, v9, [Ljava/lang/String;

    const/4 v7, 0x0

    move-object v1, p1

    move-object v6, p0

    invoke-direct/range {v0 .. v7}, Lcom/upsight/mediation/mraid/MRAIDInterstitial;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Lcom/upsight/mediation/mraid/MRAIDInterstitialListener;Lcom/upsight/mediation/mraid/MRAIDNativeFeatureListener;)V

    iput-object v0, p0, Lcom/upsight/mediation/ads/adapters/OfferAdAdapter;->interstitial:Lcom/upsight/mediation/mraid/MRAIDInterstitial;

    .line 71
    iget-object v0, p0, Lcom/upsight/mediation/ads/adapters/OfferAdAdapter;->interstitial:Lcom/upsight/mediation/mraid/MRAIDInterstitial;

    iget v1, p0, Lcom/upsight/mediation/ads/adapters/OfferAdAdapter;->rotateMode:I

    invoke-virtual {v0, v1}, Lcom/upsight/mediation/mraid/MRAIDInterstitial;->setOrientationConfig(I)V

    .line 72
    iput-boolean v9, p0, Lcom/upsight/mediation/ads/adapters/OfferAdAdapter;->offerAccepted:Z

    goto :goto_18

    .line 59
    :catch_6f
    move-exception v8

    .line 60
    .local v8, "ex":Ljava/lang/NumberFormatException;
    sget-object v0, Lcom/upsight/mediation/ads/model/AdapterLoadError;->INVALID_PARAMETERS:Lcom/upsight/mediation/ads/model/AdapterLoadError;

    invoke-virtual {p0, v0}, Lcom/upsight/mediation/ads/adapters/OfferAdAdapter;->onAdFailedToLoad(Lcom/upsight/mediation/ads/model/AdapterLoadError;)V

    goto :goto_18
.end method

.method public abstract loadAd(Landroid/app/Activity;Ljava/util/HashMap;Lcom/upsight/mediation/data/Offer;Lcom/upsight/mediation/data/Offer;)V
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/HashMap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/upsight/mediation/data/Offer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/upsight/mediation/data/Offer;
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
.end method

.method public mraidInterstitialAcceptPressed(Lcom/upsight/mediation/mraid/MRAIDInterstitial;)V
    .registers 3
    .param p1, "mraidInterstitial"    # Lcom/upsight/mediation/mraid/MRAIDInterstitial;

    .prologue
    .line 93
    invoke-super {p0, p1}, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;->mraidInterstitialAcceptPressed(Lcom/upsight/mediation/mraid/MRAIDInterstitial;)V

    .line 94
    iget-object v0, p0, Lcom/upsight/mediation/ads/adapters/OfferAdAdapter;->offer:Lcom/upsight/mediation/data/Offer;

    invoke-virtual {p0, v0}, Lcom/upsight/mediation/ads/adapters/OfferAdAdapter;->onOfferAccepted(Lcom/upsight/mediation/data/Offer;)V

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/upsight/mediation/ads/adapters/OfferAdAdapter;->offerAccepted:Z

    .line 96
    return-void
.end method

.method public mraidInterstitialHide(Lcom/upsight/mediation/mraid/MRAIDInterstitial;)V
    .registers 3
    .param p1, "mraidInterstitial"    # Lcom/upsight/mediation/mraid/MRAIDInterstitial;

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/upsight/mediation/ads/adapters/OfferAdAdapter;->offerAccepted:Z

    if-nez v0, :cond_9

    .line 103
    iget-object v0, p0, Lcom/upsight/mediation/ads/adapters/OfferAdAdapter;->offer:Lcom/upsight/mediation/data/Offer;

    invoke-virtual {p0, v0}, Lcom/upsight/mediation/ads/adapters/OfferAdAdapter;->onOfferRejected(Lcom/upsight/mediation/data/Offer;)V

    .line 105
    :cond_9
    invoke-super {p0, p1}, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;->mraidInterstitialHide(Lcom/upsight/mediation/mraid/MRAIDInterstitial;)V

    .line 106
    return-void
.end method

.method public mraidInterstitialShow(Lcom/upsight/mediation/mraid/MRAIDInterstitial;)V
    .registers 3
    .param p1, "mraidInterstitial"    # Lcom/upsight/mediation/mraid/MRAIDInterstitial;

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;->mraidInterstitialShow(Lcom/upsight/mediation/mraid/MRAIDInterstitial;)V

    .line 85
    iget-object v0, p0, Lcom/upsight/mediation/ads/adapters/OfferAdAdapter;->offer:Lcom/upsight/mediation/data/Offer;

    invoke-virtual {p0, v0}, Lcom/upsight/mediation/ads/adapters/OfferAdAdapter;->onOfferDisplayed(Lcom/upsight/mediation/data/Offer;)V

    .line 86
    iget-object v0, p0, Lcom/upsight/mediation/ads/adapters/OfferAdAdapter;->javascriptInjection:Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 87
    iget-object v0, p0, Lcom/upsight/mediation/ads/adapters/OfferAdAdapter;->javascriptInjection:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/upsight/mediation/mraid/MRAIDInterstitial;->injectJavaScript(Ljava/lang/String;)V

    .line 89
    :cond_11
    return-void
.end method
