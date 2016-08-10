.class Lcom/upsight/android/marketing/internal/billboard/BillboardManagerImpl;
.super Ljava/lang/Object;
.source "BillboardManagerImpl.java"

# interfaces
.implements Lcom/upsight/android/marketing/UpsightBillboardManager;


# instance fields
.field private final mContentStore:Lcom/upsight/android/marketing/internal/content/MarketingContentStore;

.field private final mUnfilledBillboards:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/upsight/android/marketing/internal/billboard/Billboard;",
            ">;"
        }
    .end annotation
.end field

.field private final mUpsight:Lcom/upsight/android/UpsightContext;


# direct methods
.method constructor <init>(Lcom/upsight/android/UpsightContext;Lcom/upsight/android/marketing/internal/content/MarketingContentStore;Lcom/squareup/otto/Bus;)V
    .registers 5
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;
    .param p2, "contentStore"    # Lcom/upsight/android/marketing/internal/content/MarketingContentStore;
    .param p3, "bus"    # Lcom/squareup/otto/Bus;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagerImpl;->mUnfilledBillboards:Ljava/util/Map;

    .line 55
    iput-object p1, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagerImpl;->mUpsight:Lcom/upsight/android/UpsightContext;

    .line 56
    iput-object p2, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagerImpl;->mContentStore:Lcom/upsight/android/marketing/internal/content/MarketingContentStore;

    .line 57
    invoke-virtual {p3, p0}, Lcom/squareup/otto/Bus;->register(Ljava/lang/Object;)V

    .line 58
    return-void
.end method

.method private tryAttachBillboard(Ljava/lang/String;Lcom/upsight/android/marketing/internal/billboard/Billboard;)Z
    .registers 12
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "billboard"    # Lcom/upsight/android/marketing/internal/billboard/Billboard;

    .prologue
    .line 132
    const/4 v3, 0x0

    .line 133
    .local v3, "isAttached":Z
    iget-object v6, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagerImpl;->mContentStore:Lcom/upsight/android/marketing/internal/content/MarketingContentStore;

    invoke-interface {v6, p1}, Lcom/upsight/android/marketing/internal/content/MarketingContentStore;->get(Ljava/lang/String;)Lcom/upsight/android/analytics/internal/action/Actionable;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/marketing/internal/content/MarketingContent;

    .line 136
    .local v0, "content":Lcom/upsight/android/marketing/internal/content/MarketingContent;
    if-eqz p2, :cond_71

    if-eqz v0, :cond_71

    invoke-virtual {v0}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->isAvailable()Z

    move-result v6

    if-eqz v6, :cond_71

    .line 137
    invoke-virtual {v0}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->getContentMediator()Lcom/upsight/android/marketing/UpsightContentMediator;

    move-result-object v4

    .line 138
    .local v4, "mediator":Lcom/upsight/android/marketing/UpsightContentMediator;
    if-eqz v4, :cond_71

    .line 140
    invoke-virtual {p2}, Lcom/upsight/android/marketing/internal/billboard/Billboard;->getHandler()Lcom/upsight/android/marketing/UpsightBillboard$Handler;

    move-result-object v6

    invoke-virtual {p2}, Lcom/upsight/android/marketing/internal/billboard/Billboard;->getScope()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/upsight/android/marketing/UpsightBillboard$Handler;->onAttach(Ljava/lang/String;)Lcom/upsight/android/marketing/UpsightBillboard$AttachParameters;

    move-result-object v5

    .line 141
    .local v5, "params":Lcom/upsight/android/marketing/UpsightBillboard$AttachParameters;
    if-eqz v5, :cond_71

    invoke-virtual {v5}, Lcom/upsight/android/marketing/UpsightBillboard$AttachParameters;->getActivity()Landroid/app/Activity;

    move-result-object v6

    if-eqz v6, :cond_71

    .line 143
    iget-object v6, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagerImpl;->mUnfilledBillboards:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/upsight/android/marketing/internal/billboard/Billboard;->getScope()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    invoke-virtual {v0, p2}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->bindBillboard(Lcom/upsight/android/marketing/internal/billboard/Billboard;)V

    .line 149
    new-instance v6, Landroid/content/Intent;

    iget-object v7, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagerImpl;->mUpsight:Lcom/upsight/android/UpsightContext;

    const-class v8, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v7, "marketingContentId"

    .line 150
    invoke-virtual {v0}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "marketingContentPreferredStyle"

    .line 151
    invoke-virtual {v5}, Lcom/upsight/android/marketing/UpsightBillboard$AttachParameters;->getPreferredPresentationStyle()Lcom/upsight/android/marketing/UpsightBillboard$PresentationStyle;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v6

    const/high16 v7, 0x10000000

    .line 152
    invoke-virtual {v6, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    .line 154
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v5}, Lcom/upsight/android/marketing/UpsightBillboard$AttachParameters;->getDialogTheme()Ljava/lang/Integer;

    move-result-object v1

    .line 155
    .local v1, "dialogTheme":Ljava/lang/Integer;
    if-eqz v1, :cond_6b

    .line 156
    const-string v6, "marketingContentDialogTheme"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 159
    :cond_6b
    iget-object v6, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagerImpl;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v6, v2}, Lcom/upsight/android/UpsightContext;->startActivity(Landroid/content/Intent;)V

    .line 161
    const/4 v3, 0x1

    .line 166
    .end local v1    # "dialogTheme":Ljava/lang/Integer;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "mediator":Lcom/upsight/android/marketing/UpsightContentMediator;
    .end local v5    # "params":Lcom/upsight/android/marketing/UpsightBillboard$AttachParameters;
    :cond_71
    return v3
.end method


# virtual methods
.method public declared-synchronized handleActionEvent(Lcom/upsight/android/marketing/internal/content/MarketingContentActions$PurchasesEvent;)V
    .registers 6
    .param p1, "event"    # Lcom/upsight/android/marketing/internal/content/MarketingContentActions$PurchasesEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 114
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagerImpl;->mContentStore:Lcom/upsight/android/marketing/internal/content/MarketingContentStore;

    iget-object v3, p1, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$PurchasesEvent;->mId:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/upsight/android/marketing/internal/content/MarketingContentStore;->get(Ljava/lang/String;)Lcom/upsight/android/analytics/internal/action/Actionable;

    move-result-object v1

    check-cast v1, Lcom/upsight/android/marketing/internal/content/MarketingContent;

    .line 115
    .local v1, "content":Lcom/upsight/android/marketing/internal/content/MarketingContent;
    if-eqz v1, :cond_1c

    .line 116
    invoke-virtual {v1}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->getBoundBillboard()Lcom/upsight/android/marketing/internal/billboard/Billboard;

    move-result-object v0

    .line 117
    .local v0, "billboard":Lcom/upsight/android/marketing/internal/billboard/Billboard;
    if-eqz v0, :cond_1c

    .line 118
    invoke-virtual {v0}, Lcom/upsight/android/marketing/internal/billboard/Billboard;->getHandler()Lcom/upsight/android/marketing/UpsightBillboard$Handler;

    move-result-object v2

    iget-object v3, p1, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$PurchasesEvent;->mPurchases:Ljava/util/List;

    invoke-interface {v2, v3}, Lcom/upsight/android/marketing/UpsightBillboard$Handler;->onPurchases(Ljava/util/List;)V
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1e

    .line 121
    .end local v0    # "billboard":Lcom/upsight/android/marketing/internal/billboard/Billboard;
    :cond_1c
    monitor-exit p0

    return-void

    .line 114
    .end local v1    # "content":Lcom/upsight/android/marketing/internal/content/MarketingContent;
    :catchall_1e
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized handleActionEvent(Lcom/upsight/android/marketing/internal/content/MarketingContentActions$RewardsEvent;)V
    .registers 6
    .param p1, "event"    # Lcom/upsight/android/marketing/internal/content/MarketingContentActions$RewardsEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 103
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagerImpl;->mContentStore:Lcom/upsight/android/marketing/internal/content/MarketingContentStore;

    iget-object v3, p1, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$RewardsEvent;->mId:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/upsight/android/marketing/internal/content/MarketingContentStore;->get(Ljava/lang/String;)Lcom/upsight/android/analytics/internal/action/Actionable;

    move-result-object v1

    check-cast v1, Lcom/upsight/android/marketing/internal/content/MarketingContent;

    .line 104
    .local v1, "content":Lcom/upsight/android/marketing/internal/content/MarketingContent;
    if-eqz v1, :cond_1c

    .line 105
    invoke-virtual {v1}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->getBoundBillboard()Lcom/upsight/android/marketing/internal/billboard/Billboard;

    move-result-object v0

    .line 106
    .local v0, "billboard":Lcom/upsight/android/marketing/internal/billboard/Billboard;
    if-eqz v0, :cond_1c

    .line 107
    invoke-virtual {v0}, Lcom/upsight/android/marketing/internal/billboard/Billboard;->getHandler()Lcom/upsight/android/marketing/UpsightBillboard$Handler;

    move-result-object v2

    iget-object v3, p1, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$RewardsEvent;->mRewards:Ljava/util/List;

    invoke-interface {v2, v3}, Lcom/upsight/android/marketing/UpsightBillboard$Handler;->onRewards(Ljava/util/List;)V
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1e

    .line 110
    .end local v0    # "billboard":Lcom/upsight/android/marketing/internal/billboard/Billboard;
    :cond_1c
    monitor-exit p0

    return-void

    .line 103
    .end local v1    # "content":Lcom/upsight/android/marketing/internal/content/MarketingContent;
    :catchall_1e
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized handleAvailabilityEvent(Lcom/upsight/android/marketing/internal/content/MarketingContent$ScopedAvailabilityEvent;)V
    .registers 6
    .param p1, "event"    # Lcom/upsight/android/marketing/internal/content/MarketingContent$ScopedAvailabilityEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 94
    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Lcom/upsight/android/marketing/internal/content/MarketingContent$ScopedAvailabilityEvent;->getScopes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 95
    .local v0, "scope":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/upsight/android/marketing/internal/content/MarketingContent$ScopedAvailabilityEvent;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagerImpl;->mUnfilledBillboards:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/upsight/android/marketing/internal/billboard/Billboard;

    invoke-direct {p0, v3, v1}, Lcom/upsight/android/marketing/internal/billboard/BillboardManagerImpl;->tryAttachBillboard(Ljava/lang/String;Lcom/upsight/android/marketing/internal/billboard/Billboard;)Z
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_29

    move-result v1

    if-eqz v1, :cond_9

    .line 99
    .end local v0    # "scope":Ljava/lang/String;
    :cond_27
    monitor-exit p0

    return-void

    .line 94
    :catchall_29
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized registerBillboard(Lcom/upsight/android/marketing/internal/billboard/Billboard;)Z
    .registers 8
    .param p1, "billboard"    # Lcom/upsight/android/marketing/internal/billboard/Billboard;

    .prologue
    .line 62
    monitor-enter p0

    const/4 v3, 0x0

    .line 63
    .local v3, "isSuccessful":Z
    if-eqz p1, :cond_3e

    .line 64
    :try_start_4
    invoke-virtual {p1}, Lcom/upsight/android/marketing/internal/billboard/Billboard;->getScope()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "billboardScope":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3e

    invoke-virtual {p1}, Lcom/upsight/android/marketing/internal/billboard/Billboard;->getHandler()Lcom/upsight/android/marketing/UpsightBillboard$Handler;

    move-result-object v4

    if-eqz v4, :cond_3e

    .line 66
    iget-object v4, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagerImpl;->mUnfilledBillboards:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_3e

    .line 67
    const/4 v3, 0x1

    .line 70
    iget-object v4, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagerImpl;->mUnfilledBillboards:Ljava/util/Map;

    invoke-interface {v4, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v4, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagerImpl;->mContentStore:Lcom/upsight/android/marketing/internal/content/MarketingContentStore;

    invoke-interface {v4, v0}, Lcom/upsight/android/marketing/internal/content/MarketingContentStore;->getIdsForScope(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    .line 74
    .local v2, "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 75
    .local v1, "id":Ljava/lang/String;
    invoke-direct {p0, v1, p1}, Lcom/upsight/android/marketing/internal/billboard/BillboardManagerImpl;->tryAttachBillboard(Ljava/lang/String;Lcom/upsight/android/marketing/internal/billboard/Billboard;)Z
    :try_end_3b
    .catchall {:try_start_4 .. :try_end_3b} :catchall_40

    move-result v5

    if-eqz v5, :cond_2c

    .line 83
    .end local v0    # "billboardScope":Ljava/lang/String;
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3e
    monitor-exit p0

    return v3

    .line 62
    :catchall_40
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized unregisterBillboard(Lcom/upsight/android/marketing/internal/billboard/Billboard;)Z
    .registers 4
    .param p1, "billboard"    # Lcom/upsight/android/marketing/internal/billboard/Billboard;

    .prologue
    .line 88
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagerImpl;->mUnfilledBillboards:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/upsight/android/marketing/internal/billboard/Billboard;->getScope()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_12

    move-result-object v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_e
    monitor-exit p0

    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_e

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method
