.class public interface abstract Lcom/upsight/mediation/ads/adapters/OfferBasedNetworkWrapper;
.super Ljava/lang/Object;
.source "OfferBasedNetworkWrapper.java"


# virtual methods
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
