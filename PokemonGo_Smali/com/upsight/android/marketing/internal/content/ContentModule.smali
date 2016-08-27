.class public final Lcom/upsight/android/marketing/internal/content/ContentModule;
.super Ljava/lang/Object;
.source "ContentModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method provideDefaultContentMediator()Lcom/upsight/android/marketing/internal/content/DefaultContentMediator;
    .registers 2
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 93
    new-instance v0, Lcom/upsight/android/marketing/internal/content/DefaultContentMediator;

    invoke-direct {v0}, Lcom/upsight/android/marketing/internal/content/DefaultContentMediator;-><init>()V

    return-object v0
.end method

.method provideMarketingContentFactory(Lcom/upsight/android/UpsightContext;Lrx/Scheduler;Lcom/upsight/android/marketing/internal/content/MarketingContentMediatorManager;Lcom/upsight/android/marketing/internal/content/MarketingContentStore;Lcom/upsight/android/marketing/internal/content/ContentTemplateWebViewClientFactory;)Lcom/upsight/android/marketing/internal/content/MarketingContentFactory;
    .registers 17
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;
    .param p2, "scheduler"    # Lrx/Scheduler;
        .annotation runtime Ljavax/inject/Named;
            value = "main"
        .end annotation
    .end param
    .param p3, "contentMediatorManager"    # Lcom/upsight/android/marketing/internal/content/MarketingContentMediatorManager;
    .param p4, "contentStore"    # Lcom/upsight/android/marketing/internal/content/MarketingContentStore;
    .param p5, "contentTemplateWebViewClientFactory"    # Lcom/upsight/android/marketing/internal/content/ContentTemplateWebViewClientFactory;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 37
    invoke-virtual {p1}, Lcom/upsight/android/UpsightContext;->getCoreComponent()Lcom/upsight/android/UpsightCoreComponent;

    move-result-object v10

    .line 38
    .local v10, "coreComponent":Lcom/upsight/android/UpsightCoreComponent;
    invoke-interface {v10}, Lcom/upsight/android/UpsightCoreComponent;->bus()Lcom/squareup/otto/Bus;

    move-result-object v2

    .line 39
    .local v2, "bus":Lcom/squareup/otto/Bus;
    invoke-interface {v10}, Lcom/upsight/android/UpsightCoreComponent;->gson()Lcom/google/gson/Gson;

    move-result-object v3

    .line 40
    .local v3, "gson":Lcom/google/gson/Gson;
    invoke-virtual {p1}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v6

    .line 41
    .local v6, "logger":Lcom/upsight/android/logger/UpsightLogger;
    const-string v1, "com.upsight.extension.analytics"

    invoke-virtual {p1, v1}, Lcom/upsight/android/UpsightContext;->getUpsightExtension(Ljava/lang/String;)Lcom/upsight/android/UpsightExtension;

    move-result-object v1

    check-cast v1, Lcom/upsight/android/UpsightAnalyticsExtension;

    check-cast v1, Lcom/upsight/android/UpsightAnalyticsExtension;

    .line 42
    invoke-virtual {v1}, Lcom/upsight/android/UpsightAnalyticsExtension;->getComponent()Lcom/upsight/android/UpsightExtension$BaseComponent;

    move-result-object v1

    check-cast v1, Lcom/upsight/android/analytics/UpsightAnalyticsComponent;

    .line 43
    invoke-interface {v1}, Lcom/upsight/android/analytics/UpsightAnalyticsComponent;->clock()Lcom/upsight/android/analytics/internal/session/Clock;

    move-result-object v4

    .line 45
    .local v4, "clock":Lcom/upsight/android/analytics/internal/session/Clock;
    new-instance v0, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;

    .line 50
    invoke-virtual {p2}, Lrx/Scheduler;->createWorker()Lrx/Scheduler$Worker;

    move-result-object v5

    move-object v1, p1

    move-object v7, p3

    move-object v8, p4

    move-object/from16 v9, p5

    invoke-direct/range {v0 .. v9}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;-><init>(Lcom/upsight/android/UpsightContext;Lcom/squareup/otto/Bus;Lcom/google/gson/Gson;Lcom/upsight/android/analytics/internal/session/Clock;Lrx/Scheduler$Worker;Lcom/upsight/android/logger/UpsightLogger;Lcom/upsight/android/marketing/internal/content/MarketingContentMediatorManager;Lcom/upsight/android/marketing/internal/content/MarketingContentStore;Lcom/upsight/android/marketing/internal/content/ContentTemplateWebViewClientFactory;)V

    .line 55
    .local v0, "actionContext":Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;
    new-instance v1, Lcom/upsight/android/marketing/internal/content/MarketingContentFactory;

    invoke-direct {v1, v0}, Lcom/upsight/android/marketing/internal/content/MarketingContentFactory;-><init>(Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;)V

    return-object v1
.end method

.method provideMarketingContentMediatorManager(Lcom/upsight/android/marketing/internal/content/DefaultContentMediator;)Lcom/upsight/android/marketing/internal/content/MarketingContentMediatorManager;
    .registers 3
    .param p1, "defaultContentMediator"    # Lcom/upsight/android/marketing/internal/content/DefaultContentMediator;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 87
    new-instance v0, Lcom/upsight/android/marketing/internal/content/MarketingContentMediatorManager;

    invoke-direct {v0, p1}, Lcom/upsight/android/marketing/internal/content/MarketingContentMediatorManager;-><init>(Lcom/upsight/android/marketing/internal/content/DefaultContentMediator;)V

    return-object v0
.end method

.method provideMarketingContentStore(Lcom/upsight/android/marketing/internal/content/MarketingContentStoreImpl;)Lcom/upsight/android/marketing/internal/content/MarketingContentStore;
    .registers 2
    .param p1, "impl"    # Lcom/upsight/android/marketing/internal/content/MarketingContentStoreImpl;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 75
    return-object p1
.end method

.method provideMarketingContentStoreImpl(Lcom/upsight/android/UpsightContext;)Lcom/upsight/android/marketing/internal/content/MarketingContentStoreImpl;
    .registers 8
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p1}, Lcom/upsight/android/UpsightContext;->getCoreComponent()Lcom/upsight/android/UpsightCoreComponent;

    move-result-object v3

    .line 62
    .local v3, "coreComponent":Lcom/upsight/android/UpsightCoreComponent;
    const-string v4, "com.upsight.extension.analytics"

    invoke-virtual {p1, v4}, Lcom/upsight/android/UpsightContext;->getUpsightExtension(Ljava/lang/String;)Lcom/upsight/android/UpsightExtension;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/UpsightAnalyticsExtension;

    .line 63
    .local v0, "analyticsExtension":Lcom/upsight/android/UpsightAnalyticsExtension;
    const/4 v1, 0x0

    .line 64
    .local v1, "bus":Lcom/squareup/otto/Bus;
    const/4 v2, 0x0

    .line 65
    .local v2, "clock":Lcom/upsight/android/analytics/internal/session/Clock;
    if-eqz v3, :cond_20

    if-eqz v0, :cond_20

    .line 66
    invoke-interface {v3}, Lcom/upsight/android/UpsightCoreComponent;->bus()Lcom/squareup/otto/Bus;

    move-result-object v1

    .line 67
    invoke-virtual {v0}, Lcom/upsight/android/UpsightAnalyticsExtension;->getComponent()Lcom/upsight/android/UpsightExtension$BaseComponent;

    move-result-object v4

    check-cast v4, Lcom/upsight/android/analytics/UpsightAnalyticsComponent;

    invoke-interface {v4}, Lcom/upsight/android/analytics/UpsightAnalyticsComponent;->clock()Lcom/upsight/android/analytics/internal/session/Clock;

    move-result-object v2

    .line 69
    :cond_20
    new-instance v4, Lcom/upsight/android/marketing/internal/content/MarketingContentStoreImpl;

    invoke-virtual {p1}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v5

    invoke-direct {v4, v1, v2, v5}, Lcom/upsight/android/marketing/internal/content/MarketingContentStoreImpl;-><init>(Lcom/squareup/otto/Bus;Lcom/upsight/android/analytics/internal/session/Clock;Lcom/upsight/android/logger/UpsightLogger;)V

    return-object v4
.end method

.method provideUpsightMarketingContentStore(Lcom/upsight/android/marketing/internal/content/MarketingContentStoreImpl;)Lcom/upsight/android/marketing/UpsightMarketingContentStore;
    .registers 2
    .param p1, "impl"    # Lcom/upsight/android/marketing/internal/content/MarketingContentStoreImpl;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 81
    return-object p1
.end method

.method provideVastContentMediator(Lcom/upsight/android/UpsightContext;)Lcom/upsight/android/marketing/internal/vast/VastContentMediator;
    .registers 5
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 99
    new-instance v0, Lcom/upsight/android/marketing/internal/vast/VastContentMediator;

    invoke-virtual {p1}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v1

    invoke-virtual {p1}, Lcom/upsight/android/UpsightContext;->getCoreComponent()Lcom/upsight/android/UpsightCoreComponent;

    move-result-object v2

    invoke-interface {v2}, Lcom/upsight/android/UpsightCoreComponent;->bus()Lcom/squareup/otto/Bus;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/upsight/android/marketing/internal/vast/VastContentMediator;-><init>(Lcom/upsight/android/logger/UpsightLogger;Lcom/squareup/otto/Bus;)V

    return-object v0
.end method
