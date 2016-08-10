.class public abstract Lcom/upsight/mediation/ads/adapters/NetworkWrapperFuseInternal;
.super Lcom/upsight/mediation/ads/adapters/NetworkWrapper;
.source "NetworkWrapperFuseInternal.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/upsight/mediation/ads/adapters/NetworkWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public final onOfferAccepted(Lcom/upsight/mediation/data/Offer;)V
    .registers 3
    .param p1, "offer"    # Lcom/upsight/mediation/data/Offer;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/upsight/mediation/ads/adapters/NetworkWrapperFuseInternal;->listener:Lcom/upsight/mediation/ads/adapters/NetworkWrapper$Listener;

    invoke-interface {v0}, Lcom/upsight/mediation/ads/adapters/NetworkWrapper$Listener;->onOfferAccepted()V

    .line 33
    return-void
.end method

.method public final onOfferDisplayed(Lcom/upsight/mediation/data/Offer;)V
    .registers 3
    .param p1, "offer"    # Lcom/upsight/mediation/data/Offer;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/upsight/mediation/ads/adapters/NetworkWrapperFuseInternal;->listener:Lcom/upsight/mediation/ads/adapters/NetworkWrapper$Listener;

    invoke-interface {v0, p1}, Lcom/upsight/mediation/ads/adapters/NetworkWrapper$Listener;->onOfferDisplayed(Lcom/upsight/mediation/data/Offer;)V

    .line 28
    return-void
.end method

.method public final onOfferRejected(Lcom/upsight/mediation/data/Offer;)V
    .registers 3
    .param p1, "offer"    # Lcom/upsight/mediation/data/Offer;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/upsight/mediation/ads/adapters/NetworkWrapperFuseInternal;->listener:Lcom/upsight/mediation/ads/adapters/NetworkWrapper$Listener;

    invoke-interface {v0}, Lcom/upsight/mediation/ads/adapters/NetworkWrapper$Listener;->onOfferRejected()V

    .line 38
    return-void
.end method

.method protected onOpenMRaidUrl(Ljava/lang/String;)V
    .registers 3
    .param p1, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 17
    iget-object v0, p0, Lcom/upsight/mediation/ads/adapters/NetworkWrapperFuseInternal;->listener:Lcom/upsight/mediation/ads/adapters/NetworkWrapper$Listener;

    invoke-interface {v0, p1}, Lcom/upsight/mediation/ads/adapters/NetworkWrapper$Listener;->onOpenMRaidUrl(Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method protected final onVastError(I)V
    .registers 3
    .param p1, "error"    # I

    .prologue
    .line 41
    iget-object v0, p0, Lcom/upsight/mediation/ads/adapters/NetworkWrapperFuseInternal;->listener:Lcom/upsight/mediation/ads/adapters/NetworkWrapper$Listener;

    invoke-interface {v0, p1}, Lcom/upsight/mediation/ads/adapters/NetworkWrapper$Listener;->onVastError(I)V

    .line 42
    return-void
.end method

.method protected final onVastProgress(I)V
    .registers 3
    .param p1, "progress"    # I

    .prologue
    .line 46
    iget-object v0, p0, Lcom/upsight/mediation/ads/adapters/NetworkWrapperFuseInternal;->listener:Lcom/upsight/mediation/ads/adapters/NetworkWrapper$Listener;

    invoke-interface {v0, p1}, Lcom/upsight/mediation/ads/adapters/NetworkWrapper$Listener;->onVastProgress(I)V

    .line 47
    return-void
.end method

.method protected final onVastReplay()V
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/upsight/mediation/ads/adapters/NetworkWrapperFuseInternal;->listener:Lcom/upsight/mediation/ads/adapters/NetworkWrapper$Listener;

    invoke-interface {v0}, Lcom/upsight/mediation/ads/adapters/NetworkWrapper$Listener;->onVastReplay()V

    .line 57
    return-void
.end method

.method protected final onVastSkip()V
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/upsight/mediation/ads/adapters/NetworkWrapperFuseInternal;->listener:Lcom/upsight/mediation/ads/adapters/NetworkWrapper$Listener;

    invoke-interface {v0}, Lcom/upsight/mediation/ads/adapters/NetworkWrapper$Listener;->onVastSkip()V

    .line 52
    return-void
.end method

.method public final sendRequestToBeacon(Ljava/lang/String;)V
    .registers 3
    .param p1, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 21
    iget-object v0, p0, Lcom/upsight/mediation/ads/adapters/NetworkWrapperFuseInternal;->listener:Lcom/upsight/mediation/ads/adapters/NetworkWrapper$Listener;

    invoke-interface {v0, p1}, Lcom/upsight/mediation/ads/adapters/NetworkWrapper$Listener;->sendRequestToBeacon(Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public abstract verifyParameters(Ljava/util/HashMap;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation
.end method
