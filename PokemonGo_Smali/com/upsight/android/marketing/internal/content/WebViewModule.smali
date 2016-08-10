.class public final Lcom/upsight/android/marketing/internal/content/WebViewModule;
.super Ljava/lang/Object;
.source "WebViewModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method provideContentTemplateWebViewClientFactory(Lcom/upsight/android/UpsightContext;)Lcom/upsight/android/marketing/internal/content/ContentTemplateWebViewClientFactory;
    .registers 8
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 25
    invoke-virtual {p1}, Lcom/upsight/android/UpsightContext;->getCoreComponent()Lcom/upsight/android/UpsightCoreComponent;

    move-result-object v1

    .line 26
    .local v1, "coreComponent":Lcom/upsight/android/UpsightCoreComponent;
    invoke-interface {v1}, Lcom/upsight/android/UpsightCoreComponent;->bus()Lcom/squareup/otto/Bus;

    move-result-object v0

    .line 27
    .local v0, "bus":Lcom/squareup/otto/Bus;
    invoke-interface {v1}, Lcom/upsight/android/UpsightCoreComponent;->gson()Lcom/google/gson/Gson;

    move-result-object v2

    .line 28
    .local v2, "gson":Lcom/google/gson/Gson;
    invoke-interface {v1}, Lcom/upsight/android/UpsightCoreComponent;->jsonParser()Lcom/google/gson/JsonParser;

    move-result-object v3

    .line 29
    .local v3, "jsonParser":Lcom/google/gson/JsonParser;
    invoke-virtual {p1}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v4

    .line 31
    .local v4, "logger":Lcom/upsight/android/logger/UpsightLogger;
    new-instance v5, Lcom/upsight/android/marketing/internal/content/ContentTemplateWebViewClientFactory;

    invoke-direct {v5, v0, v2, v3, v4}, Lcom/upsight/android/marketing/internal/content/ContentTemplateWebViewClientFactory;-><init>(Lcom/squareup/otto/Bus;Lcom/google/gson/Gson;Lcom/google/gson/JsonParser;Lcom/upsight/android/logger/UpsightLogger;)V

    return-object v5
.end method
