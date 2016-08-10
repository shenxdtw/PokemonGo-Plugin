.class public final Lcom/upsight/android/analytics/internal/dispatcher/delivery/DeliveryModule;
.super Ljava/lang/Object;
.source "DeliveryModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# static fields
.field private static final USE_PRETTY_JSON_LOGGING:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public provideQueueBuilder(Lcom/upsight/android/UpsightContext;Lcom/upsight/android/analytics/internal/session/Clock;Lrx/Scheduler;Lrx/Scheduler;Lcom/upsight/android/analytics/internal/dispatcher/delivery/SignatureVerifier;Ljavax/inject/Provider;)Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueBuilder;
    .registers 18
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;
    .param p2, "clock"    # Lcom/upsight/android/analytics/internal/session/Clock;
    .param p3, "retryExecutor"    # Lrx/Scheduler;
        .annotation runtime Ljavax/inject/Named;
            value = "dispatcher-threadpool"
        .end annotation
    .end param
    .param p4, "sendExecutor"    # Lrx/Scheduler;
        .annotation runtime Ljavax/inject/Named;
            value = "dispatcher-batching"
        .end annotation
    .end param
    .param p5, "signatureVerifier"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/SignatureVerifier;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/UpsightContext;",
            "Lcom/upsight/android/analytics/internal/session/Clock;",
            "Lrx/Scheduler;",
            "Lrx/Scheduler;",
            "Lcom/upsight/android/analytics/internal/dispatcher/delivery/SignatureVerifier;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/dispatcher/delivery/ResponseParser;",
            ">;)",
            "Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueBuilder;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 39
    .local p6, "responseParserProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/analytics/internal/dispatcher/delivery/ResponseParser;>;"
    invoke-virtual {p1}, Lcom/upsight/android/UpsightContext;->getCoreComponent()Lcom/upsight/android/UpsightCoreComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/upsight/android/UpsightCoreComponent;->gson()Lcom/google/gson/Gson;

    move-result-object v2

    .line 40
    .local v2, "gson":Lcom/google/gson/Gson;
    invoke-virtual {p1}, Lcom/upsight/android/UpsightContext;->getCoreComponent()Lcom/upsight/android/UpsightCoreComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/upsight/android/UpsightCoreComponent;->jsonParser()Lcom/google/gson/JsonParser;

    move-result-object v4

    .line 41
    .local v4, "jsonParser":Lcom/google/gson/JsonParser;
    invoke-virtual {p1}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v6

    .line 43
    .local v6, "logger":Lcom/upsight/android/logger/UpsightLogger;
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 45
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v3

    .line 47
    .local v3, "responseLoggingGson":Lcom/google/gson/Gson;
    new-instance v0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueBuilder;

    move-object v1, p1

    move-object v5, p2

    move-object v7, p3

    move-object v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueBuilder;-><init>(Lcom/upsight/android/UpsightContext;Lcom/google/gson/Gson;Lcom/google/gson/Gson;Lcom/google/gson/JsonParser;Lcom/upsight/android/analytics/internal/session/Clock;Lcom/upsight/android/logger/UpsightLogger;Lrx/Scheduler;Lrx/Scheduler;Lcom/upsight/android/analytics/internal/dispatcher/delivery/SignatureVerifier;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public provideResponseVerifier(Lcom/upsight/android/UpsightContext;)Lcom/upsight/android/analytics/internal/dispatcher/delivery/SignatureVerifier;
    .registers 3
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 54
    new-instance v0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BouncySignatureVerifier;

    invoke-direct {v0, p1}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BouncySignatureVerifier;-><init>(Lcom/upsight/android/UpsightContext;)V

    return-object v0
.end method
