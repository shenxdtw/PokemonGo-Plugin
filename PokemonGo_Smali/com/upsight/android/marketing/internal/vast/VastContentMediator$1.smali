.class Lcom/upsight/android/marketing/internal/vast/VastContentMediator$1;
.super Ljava/lang/Object;
.source "VastContentMediator.java"

# interfaces
.implements Lcom/upsight/mediation/ads/adapters/NetworkWrapper$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/android/marketing/internal/vast/VastContentMediator;->buildContentView(Lcom/upsight/android/marketing/internal/content/MarketingContent;Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upsight/android/marketing/internal/vast/VastContentMediator;

.field final synthetic val$content:Lcom/upsight/android/marketing/internal/content/MarketingContent;

.field final synthetic val$model:Lcom/upsight/android/marketing/internal/vast/VastContentModel;


# direct methods
.method constructor <init>(Lcom/upsight/android/marketing/internal/vast/VastContentMediator;Lcom/upsight/android/marketing/internal/content/MarketingContent;Lcom/upsight/android/marketing/internal/vast/VastContentModel;)V
    .registers 4
    .param p1, "this$0"    # Lcom/upsight/android/marketing/internal/vast/VastContentMediator;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/upsight/android/marketing/internal/vast/VastContentMediator$1;->this$0:Lcom/upsight/android/marketing/internal/vast/VastContentMediator;

    iput-object p2, p0, Lcom/upsight/android/marketing/internal/vast/VastContentMediator$1;->val$content:Lcom/upsight/android/marketing/internal/content/MarketingContent;

    iput-object p3, p0, Lcom/upsight/android/marketing/internal/vast/VastContentMediator$1;->val$model:Lcom/upsight/android/marketing/internal/vast/VastContentModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getID()I
    .registers 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/vast/VastContentMediator$1;->val$model:Lcom/upsight/android/marketing/internal/vast/VastContentModel;

    invoke-virtual {v0}, Lcom/upsight/android/marketing/internal/vast/VastContentModel;->getAdapterId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public onAdClicked()V
    .registers 1

    .prologue
    .line 138
    return-void
.end method

.method public onAdClosed()V
    .registers 6

    .prologue
    .line 153
    iget-object v1, p0, Lcom/upsight/android/marketing/internal/vast/VastContentMediator$1;->this$0:Lcom/upsight/android/marketing/internal/vast/VastContentMediator;

    # getter for: Lcom/upsight/android/marketing/internal/vast/VastContentMediator;->mLogger:Lcom/upsight/android/logger/UpsightLogger;
    invoke-static {v1}, Lcom/upsight/android/marketing/internal/vast/VastContentMediator;->access$000(Lcom/upsight/android/marketing/internal/vast/VastContentMediator;)Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v1

    sget-object v2, Lcom/upsight/android/marketing/internal/vast/VastContentMediator;->LOG_TAG:Ljava/lang/String;

    const-string v3, "onAdClosed"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3, v4}, Lcom/upsight/android/logger/UpsightLogger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    iget-object v1, p0, Lcom/upsight/android/marketing/internal/vast/VastContentMediator$1;->val$content:Lcom/upsight/android/marketing/internal/content/MarketingContent;

    invoke-virtual {v1}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->isRewardGranted()Z

    move-result v1

    if-eqz v1, :cond_20

    const-string v0, "content_dismissed_with_reward"

    .line 157
    .local v0, "trigger":Ljava/lang/String;
    :goto_1a
    iget-object v1, p0, Lcom/upsight/android/marketing/internal/vast/VastContentMediator$1;->val$content:Lcom/upsight/android/marketing/internal/content/MarketingContent;

    invoke-virtual {v1, v0}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->executeActions(Ljava/lang/String;)V

    .line 158
    return-void

    .line 154
    .end local v0    # "trigger":Ljava/lang/String;
    :cond_20
    const-string v0, "content_dismissed"

    goto :goto_1a
.end method

.method public onAdCompleted()V
    .registers 1

    .prologue
    .line 143
    return-void
.end method

.method public onAdDisplayed()V
    .registers 5

    .prologue
    .line 121
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/vast/VastContentMediator$1;->this$0:Lcom/upsight/android/marketing/internal/vast/VastContentMediator;

    # getter for: Lcom/upsight/android/marketing/internal/vast/VastContentMediator;->mLogger:Lcom/upsight/android/logger/UpsightLogger;
    invoke-static {v0}, Lcom/upsight/android/marketing/internal/vast/VastContentMediator;->access$000(Lcom/upsight/android/marketing/internal/vast/VastContentMediator;)Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v0

    sget-object v1, Lcom/upsight/android/marketing/internal/vast/VastContentMediator;->LOG_TAG:Ljava/lang/String;

    const-string v2, "onAdDisplayed"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lcom/upsight/android/logger/UpsightLogger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/vast/VastContentMediator$1;->val$content:Lcom/upsight/android/marketing/internal/content/MarketingContent;

    const-string v1, "content_displayed"

    invoke-virtual {v0, v1}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->executeActions(Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public onAdFailedToDisplay()V
    .registers 5

    .prologue
    .line 127
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/vast/VastContentMediator$1;->this$0:Lcom/upsight/android/marketing/internal/vast/VastContentMediator;

    # getter for: Lcom/upsight/android/marketing/internal/vast/VastContentMediator;->mLogger:Lcom/upsight/android/logger/UpsightLogger;
    invoke-static {v0}, Lcom/upsight/android/marketing/internal/vast/VastContentMediator;->access$000(Lcom/upsight/android/marketing/internal/vast/VastContentMediator;)Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v0

    sget-object v1, Lcom/upsight/android/marketing/internal/vast/VastContentMediator;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Failed to display VAST content"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lcom/upsight/android/logger/UpsightLogger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    return-void
.end method

.method public onAdFailedToLoad(Lcom/upsight/mediation/ads/model/AdapterLoadError;)V
    .registers 6
    .param p1, "adapterLoadError"    # Lcom/upsight/mediation/ads/model/AdapterLoadError;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/vast/VastContentMediator$1;->this$0:Lcom/upsight/android/marketing/internal/vast/VastContentMediator;

    # getter for: Lcom/upsight/android/marketing/internal/vast/VastContentMediator;->mLogger:Lcom/upsight/android/logger/UpsightLogger;
    invoke-static {v0}, Lcom/upsight/android/marketing/internal/vast/VastContentMediator;->access$000(Lcom/upsight/android/marketing/internal/vast/VastContentMediator;)Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v0

    sget-object v1, Lcom/upsight/android/marketing/internal/vast/VastContentMediator;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Failed to load VAST content"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lcom/upsight/android/logger/UpsightLogger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    return-void
.end method

.method public onAdLoaded()V
    .registers 5

    .prologue
    .line 110
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/vast/VastContentMediator$1;->this$0:Lcom/upsight/android/marketing/internal/vast/VastContentMediator;

    # getter for: Lcom/upsight/android/marketing/internal/vast/VastContentMediator;->mLogger:Lcom/upsight/android/logger/UpsightLogger;
    invoke-static {v0}, Lcom/upsight/android/marketing/internal/vast/VastContentMediator;->access$000(Lcom/upsight/android/marketing/internal/vast/VastContentMediator;)Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v0

    sget-object v1, Lcom/upsight/android/marketing/internal/vast/VastContentMediator;->LOG_TAG:Ljava/lang/String;

    const-string v2, "onAdLoaded"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lcom/upsight/android/logger/UpsightLogger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/vast/VastContentMediator$1;->val$content:Lcom/upsight/android/marketing/internal/content/MarketingContent;

    iget-object v1, p0, Lcom/upsight/android/marketing/internal/vast/VastContentMediator$1;->this$0:Lcom/upsight/android/marketing/internal/vast/VastContentMediator;

    # getter for: Lcom/upsight/android/marketing/internal/vast/VastContentMediator;->mBus:Lcom/squareup/otto/Bus;
    invoke-static {v1}, Lcom/upsight/android/marketing/internal/vast/VastContentMediator;->access$100(Lcom/upsight/android/marketing/internal/vast/VastContentMediator;)Lcom/squareup/otto/Bus;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->markLoaded(Lcom/squareup/otto/Bus;)V

    .line 112
    return-void
.end method

.method public onAdSkipped()V
    .registers 1

    .prologue
    .line 133
    return-void
.end method

.method public onOfferAccepted()V
    .registers 1

    .prologue
    .line 199
    return-void
.end method

.method public onOfferDisplayed(Lcom/upsight/mediation/data/Offer;)V
    .registers 6
    .param p1, "offer"    # Lcom/upsight/mediation/data/Offer;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/vast/VastContentMediator$1;->this$0:Lcom/upsight/android/marketing/internal/vast/VastContentMediator;

    # getter for: Lcom/upsight/android/marketing/internal/vast/VastContentMediator;->mLogger:Lcom/upsight/android/logger/UpsightLogger;
    invoke-static {v0}, Lcom/upsight/android/marketing/internal/vast/VastContentMediator;->access$000(Lcom/upsight/android/marketing/internal/vast/VastContentMediator;)Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v0

    sget-object v1, Lcom/upsight/android/marketing/internal/vast/VastContentMediator;->LOG_TAG:Ljava/lang/String;

    const-string v2, "onOfferDisplayed"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lcom/upsight/android/logger/UpsightLogger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/vast/VastContentMediator$1;->val$content:Lcom/upsight/android/marketing/internal/content/MarketingContent;

    const-string v1, "content_displayed"

    invoke-virtual {v0, v1}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->executeActions(Ljava/lang/String;)V

    .line 189
    return-void
.end method

.method public onOfferRejected()V
    .registers 1

    .prologue
    .line 194
    return-void
.end method

.method public onOpenMRaidUrl(Ljava/lang/String;)V
    .registers 2
    .param p1, "s"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 204
    return-void
.end method

.method public onRewardedVideoCompleted()V
    .registers 5

    .prologue
    .line 147
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/vast/VastContentMediator$1;->this$0:Lcom/upsight/android/marketing/internal/vast/VastContentMediator;

    # getter for: Lcom/upsight/android/marketing/internal/vast/VastContentMediator;->mLogger:Lcom/upsight/android/logger/UpsightLogger;
    invoke-static {v0}, Lcom/upsight/android/marketing/internal/vast/VastContentMediator;->access$000(Lcom/upsight/android/marketing/internal/vast/VastContentMediator;)Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v0

    sget-object v1, Lcom/upsight/android/marketing/internal/vast/VastContentMediator;->LOG_TAG:Ljava/lang/String;

    const-string v2, "onRewardedVideoCompleted"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lcom/upsight/android/logger/UpsightLogger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/vast/VastContentMediator$1;->val$content:Lcom/upsight/android/marketing/internal/content/MarketingContent;

    invoke-virtual {v0}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->markRewardGranted()V

    .line 149
    return-void
.end method

.method public onVastError(I)V
    .registers 6
    .param p1, "i"    # I

    .prologue
    .line 167
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/vast/VastContentMediator$1;->this$0:Lcom/upsight/android/marketing/internal/vast/VastContentMediator;

    # getter for: Lcom/upsight/android/marketing/internal/vast/VastContentMediator;->mLogger:Lcom/upsight/android/logger/UpsightLogger;
    invoke-static {v0}, Lcom/upsight/android/marketing/internal/vast/VastContentMediator;->access$000(Lcom/upsight/android/marketing/internal/vast/VastContentMediator;)Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v0

    sget-object v1, Lcom/upsight/android/marketing/internal/vast/VastContentMediator;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onVastError i="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lcom/upsight/android/logger/UpsightLogger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    return-void
.end method

.method public onVastProgress(I)V
    .registers 2
    .param p1, "i"    # I

    .prologue
    .line 183
    return-void
.end method

.method public onVastReplay()V
    .registers 1

    .prologue
    .line 173
    return-void
.end method

.method public onVastSkip()V
    .registers 1

    .prologue
    .line 178
    return-void
.end method

.method public sendRequestToBeacon(Ljava/lang/String;)V
    .registers 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 209
    return-void
.end method
