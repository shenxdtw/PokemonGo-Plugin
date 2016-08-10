.class public final Lcom/upsight/android/marketing/internal/vast/VastContentMediator;
.super Lcom/upsight/android/marketing/UpsightContentMediator;
.source "VastContentMediator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/upsight/android/marketing/UpsightContentMediator",
        "<",
        "Lcom/upsight/android/marketing/internal/vast/VastContentModel;",
        ">;"
    }
.end annotation


# static fields
.field private static final CONTENT_PROVIDER:Ljava/lang/String; = "vast"

.field public static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/upsight/mediation/ads/adapters/VastAdAdapter;

.field private mBus:Lcom/squareup/otto/Bus;

.field private mCurrentActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mLogger:Lcom/upsight/android/logger/UpsightLogger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    const-class v0, Lcom/upsight/android/marketing/internal/vast/VastContentMediator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/upsight/android/marketing/internal/vast/VastContentMediator;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/upsight/android/logger/UpsightLogger;Lcom/squareup/otto/Bus;)V
    .registers 4
    .param p1, "logger"    # Lcom/upsight/android/logger/UpsightLogger;
    .param p2, "bus"    # Lcom/squareup/otto/Bus;

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Lcom/upsight/android/marketing/UpsightContentMediator;-><init>()V

    .line 43
    iput-object v0, p0, Lcom/upsight/android/marketing/internal/vast/VastContentMediator;->mCurrentActivity:Ljava/lang/ref/WeakReference;

    .line 45
    iput-object v0, p0, Lcom/upsight/android/marketing/internal/vast/VastContentMediator;->mAdapter:Lcom/upsight/mediation/ads/adapters/VastAdAdapter;

    .line 48
    iput-object p1, p0, Lcom/upsight/android/marketing/internal/vast/VastContentMediator;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    .line 49
    iput-object p2, p0, Lcom/upsight/android/marketing/internal/vast/VastContentMediator;->mBus:Lcom/squareup/otto/Bus;

    .line 50
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/vast/VastContentMediator;->mBus:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->register(Ljava/lang/Object;)V

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/upsight/android/marketing/internal/vast/VastContentMediator;)Lcom/upsight/android/logger/UpsightLogger;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/marketing/internal/vast/VastContentMediator;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/vast/VastContentMediator;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/upsight/android/marketing/internal/vast/VastContentMediator;)Lcom/squareup/otto/Bus;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/marketing/internal/vast/VastContentMediator;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/vast/VastContentMediator;->mBus:Lcom/squareup/otto/Bus;

    return-object v0
.end method


# virtual methods
.method public buildContentModel(Lcom/upsight/android/marketing/internal/content/MarketingContent;Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;Lcom/google/gson/JsonObject;)Lcom/upsight/android/marketing/internal/vast/VastContentModel;
    .registers 11
    .param p2, "actionContext"    # Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;
    .param p3, "model"    # Lcom/google/gson/JsonObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/marketing/internal/content/MarketingContent",
            "<",
            "Lcom/upsight/android/marketing/internal/vast/VastContentModel;",
            ">;",
            "Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;",
            "Lcom/google/gson/JsonObject;",
            ")",
            "Lcom/upsight/android/marketing/internal/vast/VastContentModel;"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, "content":Lcom/upsight/android/marketing/internal/content/MarketingContent;, "Lcom/upsight/android/marketing/internal/content/MarketingContent<Lcom/upsight/android/marketing/internal/vast/VastContentModel;>;"
    const/4 v1, 0x0

    .line 83
    .local v1, "modelObject":Lcom/upsight/android/marketing/internal/vast/VastContentModel;
    :try_start_1
    iget-object v2, p2, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;->mGson:Lcom/google/gson/Gson;

    invoke-static {p3, v2}, Lcom/upsight/android/marketing/internal/vast/VastContentModel;->from(Lcom/google/gson/JsonElement;Lcom/google/gson/Gson;)Lcom/upsight/android/marketing/internal/vast/VastContentModel;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_8

    move-result-object v1

    .line 88
    :goto_7
    return-object v1

    .line 84
    :catch_8
    move-exception v0

    .line 85
    .local v0, "e":Ljava/io/IOException;
    iget-object v2, p0, Lcom/upsight/android/marketing/internal/vast/VastContentMediator;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    sget-object v3, Lcom/upsight/android/marketing/internal/vast/VastContentMediator;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Failed to parse content model"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-interface {v2, v3, v4, v5}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_7
.end method

.method public bridge synthetic buildContentModel(Lcom/upsight/android/marketing/internal/content/MarketingContent;Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;Lcom/google/gson/JsonObject;)Ljava/lang/Object;
    .registers 5

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2, p3}, Lcom/upsight/android/marketing/internal/vast/VastContentMediator;->buildContentModel(Lcom/upsight/android/marketing/internal/content/MarketingContent;Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;Lcom/google/gson/JsonObject;)Lcom/upsight/android/marketing/internal/vast/VastContentModel;

    move-result-object v0

    return-object v0
.end method

.method public buildContentView(Lcom/upsight/android/marketing/internal/content/MarketingContent;Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;)Landroid/view/View;
    .registers 8
    .param p2, "actionContext"    # Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/marketing/internal/content/MarketingContent",
            "<",
            "Lcom/upsight/android/marketing/internal/vast/VastContentModel;",
            ">;",
            "Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, "content":Lcom/upsight/android/marketing/internal/content/MarketingContent;, "Lcom/upsight/android/marketing/internal/content/MarketingContent<Lcom/upsight/android/marketing/internal/vast/VastContentModel;>;"
    iget-object v3, p0, Lcom/upsight/android/marketing/internal/vast/VastContentMediator;->mCurrentActivity:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_64

    .line 95
    iget-object v3, p0, Lcom/upsight/android/marketing/internal/vast/VastContentMediator;->mCurrentActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 96
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_64

    .line 97
    invoke-virtual {p1}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->getContentModel()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/upsight/android/marketing/internal/vast/VastContentModel;

    .line 98
    .local v1, "model":Lcom/upsight/android/marketing/internal/vast/VastContentModel;
    new-instance v3, Lcom/upsight/mediation/ads/adapters/VastAdAdapter;

    invoke-direct {v3}, Lcom/upsight/mediation/ads/adapters/VastAdAdapter;-><init>()V

    iput-object v3, p0, Lcom/upsight/android/marketing/internal/vast/VastContentMediator;->mAdapter:Lcom/upsight/mediation/ads/adapters/VastAdAdapter;

    .line 99
    iget-object v3, p0, Lcom/upsight/android/marketing/internal/vast/VastContentMediator;->mAdapter:Lcom/upsight/mediation/ads/adapters/VastAdAdapter;

    invoke-virtual {v3}, Lcom/upsight/mediation/ads/adapters/VastAdAdapter;->init()V

    .line 101
    invoke-virtual {p1}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->getContentModel()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/upsight/android/marketing/internal/vast/VastContentModel;

    invoke-virtual {v3}, Lcom/upsight/android/marketing/internal/vast/VastContentModel;->getSettings()Ljava/util/HashMap;

    move-result-object v2

    .line 102
    .local v2, "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "maxFileSize"

    invoke-virtual {v1}, Lcom/upsight/android/marketing/internal/vast/VastContentModel;->getMaxVastFileSize()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string v3, "isRewarded"

    invoke-virtual {v1}, Lcom/upsight/android/marketing/internal/vast/VastContentModel;->isRewarded()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v3, "shouldValidateSchema"

    invoke-virtual {v1}, Lcom/upsight/android/marketing/internal/vast/VastContentModel;->shouldValidateSchema()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v3, p0, Lcom/upsight/android/marketing/internal/vast/VastContentMediator;->mAdapter:Lcom/upsight/mediation/ads/adapters/VastAdAdapter;

    new-instance v4, Lcom/upsight/android/marketing/internal/vast/VastContentMediator$1;

    invoke-direct {v4, p0, p1, v1}, Lcom/upsight/android/marketing/internal/vast/VastContentMediator$1;-><init>(Lcom/upsight/android/marketing/internal/vast/VastContentMediator;Lcom/upsight/android/marketing/internal/content/MarketingContent;Lcom/upsight/android/marketing/internal/vast/VastContentModel;)V

    invoke-virtual {v3, v4}, Lcom/upsight/mediation/ads/adapters/VastAdAdapter;->setListener(Lcom/upsight/mediation/ads/adapters/NetworkWrapper$Listener;)V

    .line 213
    iget-object v3, p0, Lcom/upsight/android/marketing/internal/vast/VastContentMediator;->mAdapter:Lcom/upsight/mediation/ads/adapters/VastAdAdapter;

    invoke-virtual {v3, v0, v2}, Lcom/upsight/mediation/ads/adapters/VastAdAdapter;->loadAd(Landroid/app/Activity;Ljava/util/HashMap;)V

    .line 216
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "model":Lcom/upsight/android/marketing/internal/vast/VastContentModel;
    .end local v2    # "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_64
    const/4 v3, 0x0

    return-object v3
.end method

.method public displayContent(Lcom/upsight/android/marketing/internal/content/MarketingContent;Landroid/app/FragmentManager;Lcom/upsight/android/marketing/internal/billboard/BillboardFragment;)V
    .registers 5
    .param p2, "fragmentManager"    # Landroid/app/FragmentManager;
    .param p3, "fragment"    # Lcom/upsight/android/marketing/internal/billboard/BillboardFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/marketing/internal/content/MarketingContent",
            "<",
            "Lcom/upsight/android/marketing/internal/vast/VastContentModel;",
            ">;",
            "Landroid/app/FragmentManager;",
            "Lcom/upsight/android/marketing/internal/billboard/BillboardFragment;",
            ")V"
        }
    .end annotation

    .prologue
    .line 223
    .local p1, "content":Lcom/upsight/android/marketing/internal/content/MarketingContent;, "Lcom/upsight/android/marketing/internal/content/MarketingContent<Lcom/upsight/android/marketing/internal/vast/VastContentModel;>;"
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/vast/VastContentMediator;->mAdapter:Lcom/upsight/mediation/ads/adapters/VastAdAdapter;

    invoke-virtual {v0}, Lcom/upsight/mediation/ads/adapters/VastAdAdapter;->displayAd()V

    .line 224
    return-void
.end method

.method public getContentProvider()Ljava/lang/String;
    .registers 2

    .prologue
    .line 74
    const-string v0, "vast"

    return-object v0
.end method

.method public handleActivityTrackEvent(Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityTrackEvent;)V
    .registers 4
    .param p1, "event"    # Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityTrackEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 55
    sget-object v0, Lcom/upsight/android/marketing/internal/vast/VastContentMediator$2;->$SwitchMap$com$upsight$android$analytics$UpsightLifeCycleTracker$ActivityState:[I

    iget-object v1, p1, Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityTrackEvent;->mActivityState:Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;

    invoke-virtual {v1}, Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_26

    .line 70
    :cond_d
    :goto_d
    return-void

    .line 59
    :pswitch_e
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p1, Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityTrackEvent;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/upsight/android/marketing/internal/vast/VastContentMediator;->mCurrentActivity:Ljava/lang/ref/WeakReference;

    goto :goto_d

    .line 62
    :pswitch_18
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/vast/VastContentMediator;->mCurrentActivity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_d

    .line 63
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/vast/VastContentMediator;->mCurrentActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/upsight/android/marketing/internal/vast/VastContentMediator;->mCurrentActivity:Ljava/lang/ref/WeakReference;

    goto :goto_d

    .line 55
    nop

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_18
    .end packed-switch
.end method

.method public hideContent(Lcom/upsight/android/marketing/internal/content/MarketingContent;Landroid/app/FragmentManager;Lcom/upsight/android/marketing/internal/billboard/BillboardFragment;)V
    .registers 4
    .param p2, "fragmentManager"    # Landroid/app/FragmentManager;
    .param p3, "fragment"    # Lcom/upsight/android/marketing/internal/billboard/BillboardFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/marketing/internal/content/MarketingContent",
            "<",
            "Lcom/upsight/android/marketing/internal/vast/VastContentModel;",
            ">;",
            "Landroid/app/FragmentManager;",
            "Lcom/upsight/android/marketing/internal/billboard/BillboardFragment;",
            ")V"
        }
    .end annotation

    .prologue
    .line 231
    .local p1, "content":Lcom/upsight/android/marketing/internal/content/MarketingContent;, "Lcom/upsight/android/marketing/internal/content/MarketingContent<Lcom/upsight/android/marketing/internal/vast/VastContentModel;>;"
    return-void
.end method
