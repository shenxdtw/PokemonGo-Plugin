.class public Lcom/upsight/mediation/ads/adapters/VirtualGoodsOfferAdAdapter;
.super Lcom/upsight/mediation/ads/adapters/OfferAdAdapter;
.source "VirtualGoodsOfferAdAdapter.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/upsight/mediation/ads/adapters/OfferAdAdapter;-><init>()V

    return-void
.end method


# virtual methods
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
    .line 24
    invoke-super {p0, p2}, Lcom/upsight/mediation/ads/adapters/OfferAdAdapter;->isAdAvailable(Lcom/upsight/mediation/data/Offer;)Z

    move-result v0

    return v0
.end method

.method public loadAd(Landroid/app/Activity;Ljava/util/HashMap;Lcom/upsight/mediation/data/Offer;Lcom/upsight/mediation/data/Offer;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/HashMap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "iapOffer"    # Lcom/upsight/mediation/data/Offer;
    .param p4, "vgOffer"    # Lcom/upsight/mediation/data/Offer;
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
    .line 19
    .local p2, "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-super {p0, p1, p2, p4}, Lcom/upsight/mediation/ads/adapters/OfferAdAdapter;->loadAd(Landroid/app/Activity;Ljava/util/HashMap;Lcom/upsight/mediation/data/Offer;)V

    .line 20
    return-void
.end method
