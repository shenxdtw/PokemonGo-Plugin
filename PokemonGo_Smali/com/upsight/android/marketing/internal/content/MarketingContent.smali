.class public Lcom/upsight/android/marketing/internal/content/MarketingContent;
.super Lcom/upsight/android/analytics/internal/action/Actionable;
.source "MarketingContent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/marketing/internal/content/MarketingContent$PendingDialog;,
        Lcom/upsight/android/marketing/internal/content/MarketingContent$AvailabilityEvent;,
        Lcom/upsight/android/marketing/internal/content/MarketingContent$SubdialogAvailabilityEvent;,
        Lcom/upsight/android/marketing/internal/content/MarketingContent$SubcontentAvailabilityEvent;,
        Lcom/upsight/android/marketing/internal/content/MarketingContent$ScopelessAvailabilityEvent;,
        Lcom/upsight/android/marketing/internal/content/MarketingContent$ScopedAvailabilityEvent;,
        Lcom/upsight/android/marketing/internal/content/MarketingContent$ContentLoadedEvent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/upsight/android/analytics/internal/action/Actionable;"
    }
.end annotation


# static fields
.field public static final TRIGGER_APP_BACKGROUNDED:Ljava/lang/String; = "app_backgrounded"

.field public static final TRIGGER_CONTENT_DISMISSED:Ljava/lang/String; = "content_dismissed"

.field public static final TRIGGER_CONTENT_DISMISSED_WITH_REWARD:Ljava/lang/String; = "content_dismissed_with_reward"

.field public static final TRIGGER_CONTENT_DISPLAYED:Ljava/lang/String; = "content_displayed"

.field public static final TRIGGER_CONTENT_RECEIVED:Ljava/lang/String; = "content_received"


# instance fields
.field private mAvailabilityEvent:Lcom/upsight/android/marketing/internal/content/MarketingContent$AvailabilityEvent;

.field private mBillboard:Lcom/upsight/android/marketing/internal/billboard/Billboard;

.field private mContentMediator:Lcom/upsight/android/marketing/UpsightContentMediator;

.field private mContentModel:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mContentView:Landroid/view/View;

.field private mEventQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mExtras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsLoaded:Z

.field private mIsRewardGranted:Z

.field private mPendingDialog:Lcom/upsight/android/marketing/internal/content/MarketingContent$PendingDialog;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/upsight/android/analytics/internal/action/ActionMap;)V
    .registers 5
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/upsight/android/analytics/internal/action/ActionMap",
            "<",
            "Lcom/upsight/android/marketing/internal/content/MarketingContent;",
            "Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/upsight/android/marketing/internal/content/MarketingContent;, "Lcom/upsight/android/marketing/internal/content/MarketingContent<TT;>;"
    .local p2, "actionMap":Lcom/upsight/android/analytics/internal/action/ActionMap;, "Lcom/upsight/android/analytics/internal/action/ActionMap<Lcom/upsight/android/marketing/internal/content/MarketingContent;Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 124
    invoke-direct {p0, p1, p2}, Lcom/upsight/android/analytics/internal/action/Actionable;-><init>(Ljava/lang/String;Lcom/upsight/android/analytics/internal/action/ActionMap;)V

    .line 58
    iput-object v1, p0, Lcom/upsight/android/marketing/internal/content/MarketingContent;->mContentMediator:Lcom/upsight/android/marketing/UpsightContentMediator;

    .line 63
    iput-object v1, p0, Lcom/upsight/android/marketing/internal/content/MarketingContent;->mContentModel:Ljava/lang/Object;

    .line 68
    iput-object v1, p0, Lcom/upsight/android/marketing/internal/content/MarketingContent;->mContentView:Landroid/view/View;

    .line 78
    iput-boolean v0, p0, Lcom/upsight/android/marketing/internal/content/MarketingContent;->mIsLoaded:Z

    .line 83
    iput-boolean v0, p0, Lcom/upsight/android/marketing/internal/content/MarketingContent;->mIsRewardGranted:Z

    .line 98
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/marketing/internal/content/MarketingContent;->mEventQueue:Ljava/util/Queue;

    .line 103
    iput-object v1, p0, Lcom/upsight/android/marketing/internal/content/MarketingContent;->mBillboard:Lcom/upsight/android/marketing/internal/billboard/Billboard;

    .line 125
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/marketing/internal/content/MarketingContent;->mExtras:Ljava/util/Map;

    .line 126
    return-void
.end method

.method public static create(Ljava/lang/String;Lcom/upsight/android/analytics/internal/action/ActionMap;)Lcom/upsight/android/marketing/internal/content/MarketingContent;
    .registers 3
    .param p0, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/upsight/android/analytics/internal/action/ActionMap",
            "<",
            "Lcom/upsight/android/marketing/internal/content/MarketingContent;",
            "Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;",
            ">;)",
            "Lcom/upsight/android/marketing/internal/content/MarketingContent;"
        }
    .end annotation

    .prologue
    .line 114
    .local p1, "actionMap":Lcom/upsight/android/analytics/internal/action/ActionMap;, "Lcom/upsight/android/analytics/internal/action/ActionMap<Lcom/upsight/android/marketing/internal/content/MarketingContent;Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;>;"
    new-instance v0, Lcom/upsight/android/marketing/internal/content/MarketingContent;

    invoke-direct {v0, p0, p1}, Lcom/upsight/android/marketing/internal/content/MarketingContent;-><init>(Ljava/lang/String;Lcom/upsight/android/analytics/internal/action/ActionMap;)V

    return-object v0
.end method

.method private notifyAvailability(Lcom/squareup/otto/Bus;)V
    .registers 3
    .param p1, "bus"    # Lcom/squareup/otto/Bus;

    .prologue
    .line 257
    .local p0, "this":Lcom/upsight/android/marketing/internal/content/MarketingContent;, "Lcom/upsight/android/marketing/internal/content/MarketingContent<TT;>;"
    invoke-virtual {p0}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 258
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/content/MarketingContent;->mAvailabilityEvent:Lcom/upsight/android/marketing/internal/content/MarketingContent$AvailabilityEvent;

    invoke-virtual {p1, v0}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 260
    :cond_b
    return-void
.end method


# virtual methods
.method public addPendingDialog(Lcom/upsight/android/marketing/internal/content/MarketingContent$PendingDialog;)V
    .registers 2
    .param p1, "pendingDialog"    # Lcom/upsight/android/marketing/internal/content/MarketingContent$PendingDialog;

    .prologue
    .line 188
    .local p0, "this":Lcom/upsight/android/marketing/internal/content/MarketingContent;, "Lcom/upsight/android/marketing/internal/content/MarketingContent<TT;>;"
    iput-object p1, p0, Lcom/upsight/android/marketing/internal/content/MarketingContent;->mPendingDialog:Lcom/upsight/android/marketing/internal/content/MarketingContent$PendingDialog;

    .line 189
    return-void
.end method

.method public bindBillboard(Lcom/upsight/android/marketing/internal/billboard/Billboard;)V
    .registers 2
    .param p1, "billboard"    # Lcom/upsight/android/marketing/internal/billboard/Billboard;

    .prologue
    .line 306
    .local p0, "this":Lcom/upsight/android/marketing/internal/content/MarketingContent;, "Lcom/upsight/android/marketing/internal/content/MarketingContent<TT;>;"
    iput-object p1, p0, Lcom/upsight/android/marketing/internal/content/MarketingContent;->mBillboard:Lcom/upsight/android/marketing/internal/billboard/Billboard;

    .line 307
    return-void
.end method

.method public getBoundBillboard()Lcom/upsight/android/marketing/internal/billboard/Billboard;
    .registers 2

    .prologue
    .line 315
    .local p0, "this":Lcom/upsight/android/marketing/internal/content/MarketingContent;, "Lcom/upsight/android/marketing/internal/content/MarketingContent<TT;>;"
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/content/MarketingContent;->mBillboard:Lcom/upsight/android/marketing/internal/billboard/Billboard;

    return-object v0
.end method

.method public getContentMediator()Lcom/upsight/android/marketing/UpsightContentMediator;
    .registers 2

    .prologue
    .line 143
    .local p0, "this":Lcom/upsight/android/marketing/internal/content/MarketingContent;, "Lcom/upsight/android/marketing/internal/content/MarketingContent<TT;>;"
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/content/MarketingContent;->mContentMediator:Lcom/upsight/android/marketing/UpsightContentMediator;

    return-object v0
.end method

.method public getContentModel()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 161
    .local p0, "this":Lcom/upsight/android/marketing/internal/content/MarketingContent;, "Lcom/upsight/android/marketing/internal/content/MarketingContent<TT;>;"
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/content/MarketingContent;->mContentModel:Ljava/lang/Object;

    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .registers 2

    .prologue
    .line 179
    .local p0, "this":Lcom/upsight/android/marketing/internal/content/MarketingContent;, "Lcom/upsight/android/marketing/internal/content/MarketingContent<TT;>;"
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/content/MarketingContent;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public getEventQueue()Ljava/util/Queue;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 324
    .local p0, "this":Lcom/upsight/android/marketing/internal/content/MarketingContent;, "Lcom/upsight/android/marketing/internal/content/MarketingContent<TT;>;"
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/content/MarketingContent;->mEventQueue:Ljava/util/Queue;

    return-object v0
.end method

.method public getExtra(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 287
    .local p0, "this":Lcom/upsight/android/marketing/internal/content/MarketingContent;, "Lcom/upsight/android/marketing/internal/content/MarketingContent<TT;>;"
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/content/MarketingContent;->mExtras:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public hasPendingDialog()Z
    .registers 2

    .prologue
    .line 197
    .local p0, "this":Lcom/upsight/android/marketing/internal/content/MarketingContent;, "Lcom/upsight/android/marketing/internal/content/MarketingContent<TT;>;"
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/content/MarketingContent;->mPendingDialog:Lcom/upsight/android/marketing/internal/content/MarketingContent$PendingDialog;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isAvailable()Z
    .registers 2

    .prologue
    .line 277
    .local p0, "this":Lcom/upsight/android/marketing/internal/content/MarketingContent;, "Lcom/upsight/android/marketing/internal/content/MarketingContent<TT;>;"
    invoke-virtual {p0}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/upsight/android/marketing/internal/content/MarketingContent;->mAvailabilityEvent:Lcom/upsight/android/marketing/internal/content/MarketingContent$AvailabilityEvent;

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->getBoundBillboard()Lcom/upsight/android/marketing/internal/billboard/Billboard;

    move-result-object v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method isLoaded()Z
    .registers 2

    .prologue
    .line 268
    .local p0, "this":Lcom/upsight/android/marketing/internal/content/MarketingContent;, "Lcom/upsight/android/marketing/internal/content/MarketingContent<TT;>;"
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/content/MarketingContent;->mContentModel:Ljava/lang/Object;

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/upsight/android/marketing/internal/content/MarketingContent;->mIsLoaded:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isRewardGranted()Z
    .registers 2

    .prologue
    .line 247
    .local p0, "this":Lcom/upsight/android/marketing/internal/content/MarketingContent;, "Lcom/upsight/android/marketing/internal/content/MarketingContent<TT;>;"
    iget-boolean v0, p0, Lcom/upsight/android/marketing/internal/content/MarketingContent;->mIsRewardGranted:Z

    return v0
.end method

.method public markLoaded(Lcom/squareup/otto/Bus;)V
    .registers 5
    .param p1, "bus"    # Lcom/squareup/otto/Bus;

    .prologue
    .line 217
    .local p0, "this":Lcom/upsight/android/marketing/internal/content/MarketingContent;, "Lcom/upsight/android/marketing/internal/content/MarketingContent<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/upsight/android/marketing/internal/content/MarketingContent;->mIsLoaded:Z

    .line 218
    new-instance v0, Lcom/upsight/android/marketing/internal/content/MarketingContent$ContentLoadedEvent;

    invoke-virtual {p0}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/upsight/android/marketing/internal/content/MarketingContent$ContentLoadedEvent;-><init>(Ljava/lang/String;Lcom/upsight/android/marketing/internal/content/MarketingContent$1;)V

    invoke-virtual {p1, v0}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 219
    invoke-direct {p0, p1}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->notifyAvailability(Lcom/squareup/otto/Bus;)V

    .line 220
    return-void
.end method

.method public markPresentable(Lcom/upsight/android/marketing/internal/content/MarketingContent$AvailabilityEvent;Lcom/squareup/otto/Bus;)V
    .registers 3
    .param p1, "event"    # Lcom/upsight/android/marketing/internal/content/MarketingContent$AvailabilityEvent;
    .param p2, "bus"    # Lcom/squareup/otto/Bus;

    .prologue
    .line 230
    .local p0, "this":Lcom/upsight/android/marketing/internal/content/MarketingContent;, "Lcom/upsight/android/marketing/internal/content/MarketingContent<TT;>;"
    iput-object p1, p0, Lcom/upsight/android/marketing/internal/content/MarketingContent;->mAvailabilityEvent:Lcom/upsight/android/marketing/internal/content/MarketingContent$AvailabilityEvent;

    .line 231
    invoke-direct {p0, p2}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->notifyAvailability(Lcom/squareup/otto/Bus;)V

    .line 232
    return-void
.end method

.method public markRewardGranted()V
    .registers 2

    .prologue
    .line 238
    .local p0, "this":Lcom/upsight/android/marketing/internal/content/MarketingContent;, "Lcom/upsight/android/marketing/internal/content/MarketingContent<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/upsight/android/marketing/internal/content/MarketingContent;->mIsRewardGranted:Z

    .line 239
    return-void
.end method

.method public popPendingDialog()Lcom/upsight/android/marketing/internal/content/MarketingContent$PendingDialog;
    .registers 3

    .prologue
    .line 206
    .local p0, "this":Lcom/upsight/android/marketing/internal/content/MarketingContent;, "Lcom/upsight/android/marketing/internal/content/MarketingContent<TT;>;"
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/content/MarketingContent;->mPendingDialog:Lcom/upsight/android/marketing/internal/content/MarketingContent$PendingDialog;

    .line 207
    .local v0, "pendingDialog":Lcom/upsight/android/marketing/internal/content/MarketingContent$PendingDialog;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/upsight/android/marketing/internal/content/MarketingContent;->mPendingDialog:Lcom/upsight/android/marketing/internal/content/MarketingContent$PendingDialog;

    .line 208
    return-object v0
.end method

.method public putExtra(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 297
    .local p0, "this":Lcom/upsight/android/marketing/internal/content/MarketingContent;, "Lcom/upsight/android/marketing/internal/content/MarketingContent<TT;>;"
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/content/MarketingContent;->mExtras:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    return-void
.end method

.method public setContentMediator(Lcom/upsight/android/marketing/UpsightContentMediator;)V
    .registers 2
    .param p1, "contentMediator"    # Lcom/upsight/android/marketing/UpsightContentMediator;

    .prologue
    .line 134
    .local p0, "this":Lcom/upsight/android/marketing/internal/content/MarketingContent;, "Lcom/upsight/android/marketing/internal/content/MarketingContent<TT;>;"
    iput-object p1, p0, Lcom/upsight/android/marketing/internal/content/MarketingContent;->mContentMediator:Lcom/upsight/android/marketing/UpsightContentMediator;

    .line 135
    return-void
.end method

.method public setContentModel(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 152
    .local p0, "this":Lcom/upsight/android/marketing/internal/content/MarketingContent;, "Lcom/upsight/android/marketing/internal/content/MarketingContent<TT;>;"
    .local p1, "contentModel":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lcom/upsight/android/marketing/internal/content/MarketingContent;->mContentModel:Ljava/lang/Object;

    .line 153
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 2
    .param p1, "contentView"    # Landroid/view/View;

    .prologue
    .line 170
    .local p0, "this":Lcom/upsight/android/marketing/internal/content/MarketingContent;, "Lcom/upsight/android/marketing/internal/content/MarketingContent<TT;>;"
    iput-object p1, p0, Lcom/upsight/android/marketing/internal/content/MarketingContent;->mContentView:Landroid/view/View;

    .line 171
    return-void
.end method
