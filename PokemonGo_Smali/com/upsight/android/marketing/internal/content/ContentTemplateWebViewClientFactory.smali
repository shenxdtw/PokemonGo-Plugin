.class public Lcom/upsight/android/marketing/internal/content/ContentTemplateWebViewClientFactory;
.super Ljava/lang/Object;
.source "ContentTemplateWebViewClientFactory.java"


# instance fields
.field protected final mBus:Lcom/squareup/otto/Bus;

.field protected final mGson:Lcom/google/gson/Gson;

.field protected final mJsonParser:Lcom/google/gson/JsonParser;

.field protected final mLogger:Lcom/upsight/android/logger/UpsightLogger;


# direct methods
.method public constructor <init>(Lcom/squareup/otto/Bus;Lcom/google/gson/Gson;Lcom/google/gson/JsonParser;Lcom/upsight/android/logger/UpsightLogger;)V
    .registers 5
    .param p1, "bus"    # Lcom/squareup/otto/Bus;
    .param p2, "gson"    # Lcom/google/gson/Gson;
    .param p3, "jsonParser"    # Lcom/google/gson/JsonParser;
    .param p4, "logger"    # Lcom/upsight/android/logger/UpsightLogger;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/upsight/android/marketing/internal/content/ContentTemplateWebViewClientFactory;->mBus:Lcom/squareup/otto/Bus;

    .line 27
    iput-object p2, p0, Lcom/upsight/android/marketing/internal/content/ContentTemplateWebViewClientFactory;->mGson:Lcom/google/gson/Gson;

    .line 28
    iput-object p3, p0, Lcom/upsight/android/marketing/internal/content/ContentTemplateWebViewClientFactory;->mJsonParser:Lcom/google/gson/JsonParser;

    .line 29
    iput-object p4, p0, Lcom/upsight/android/marketing/internal/content/ContentTemplateWebViewClientFactory;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    .line 30
    return-void
.end method


# virtual methods
.method public create(Lcom/upsight/android/marketing/internal/content/MarketingContent;)Lcom/upsight/android/marketing/internal/content/ContentTemplateWebViewClient;
    .registers 8
    .param p1, "content"    # Lcom/upsight/android/marketing/internal/content/MarketingContent;

    .prologue
    .line 39
    new-instance v0, Lcom/upsight/android/marketing/internal/content/ContentTemplateWebViewClient;

    iget-object v2, p0, Lcom/upsight/android/marketing/internal/content/ContentTemplateWebViewClientFactory;->mBus:Lcom/squareup/otto/Bus;

    iget-object v3, p0, Lcom/upsight/android/marketing/internal/content/ContentTemplateWebViewClientFactory;->mGson:Lcom/google/gson/Gson;

    iget-object v4, p0, Lcom/upsight/android/marketing/internal/content/ContentTemplateWebViewClientFactory;->mJsonParser:Lcom/google/gson/JsonParser;

    iget-object v5, p0, Lcom/upsight/android/marketing/internal/content/ContentTemplateWebViewClientFactory;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/upsight/android/marketing/internal/content/ContentTemplateWebViewClient;-><init>(Lcom/upsight/android/marketing/internal/content/MarketingContent;Lcom/squareup/otto/Bus;Lcom/google/gson/Gson;Lcom/google/gson/JsonParser;Lcom/upsight/android/logger/UpsightLogger;)V

    return-object v0
.end method
