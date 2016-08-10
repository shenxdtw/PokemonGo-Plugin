.class public interface abstract Lcom/upsight/mediation/ads/adapters/NetworkWrapper$Listener;
.super Ljava/lang/Object;
.source "NetworkWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/mediation/ads/adapters/NetworkWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract getID()I
.end method

.method public abstract onAdClicked()V
.end method

.method public abstract onAdClosed()V
.end method

.method public abstract onAdCompleted()V
.end method

.method public abstract onAdDisplayed()V
.end method

.method public abstract onAdFailedToDisplay()V
.end method

.method public abstract onAdFailedToLoad(Lcom/upsight/mediation/ads/model/AdapterLoadError;)V
.end method

.method public abstract onAdLoaded()V
.end method

.method public abstract onAdSkipped()V
.end method

.method public abstract onOfferAccepted()V
.end method

.method public abstract onOfferDisplayed(Lcom/upsight/mediation/data/Offer;)V
.end method

.method public abstract onOfferRejected()V
.end method

.method public abstract onOpenMRaidUrl(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onRewardedVideoCompleted()V
.end method

.method public abstract onVastError(I)V
.end method

.method public abstract onVastProgress(I)V
.end method

.method public abstract onVastReplay()V
.end method

.method public abstract onVastSkip()V
.end method

.method public abstract sendRequestToBeacon(Ljava/lang/String;)V
.end method
