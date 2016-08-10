.class Lcom/upsight/android/marketing/internal/content/ContentTemplateWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "ContentTemplateWebViewClient.java"


# static fields
.field private static final DISPATCH_CALLBACK:Ljava/lang/String; = "javascript:PlayHaven.nativeAPI.callback(\"%s\", %s, %s, %s)"

.field private static final DISPATCH_CALLBACK_PROTOCOL:Ljava/lang/String; = "javascript:window.PlayHavenDispatchProtocolVersion=7"

.field private static final DISPATCH_LOAD_CONTEXT:Ljava/lang/String; = "ph://loadContext"

.field private static final DISPATCH_PARAM_KEY_CALLBACK_ID:Ljava/lang/String; = "callback"

.field private static final DISPATCH_PARAM_KEY_CONTEXT:Ljava/lang/String; = "context"

.field private static final DISPATCH_PARAM_KEY_TRIGGER:Ljava/lang/String; = "trigger"

.field private static final DISPATCH_PARAM_KEY_VIEW_DATA:Ljava/lang/String; = "view_data"

.field private static final DISPATCH_SCHEME:Ljava/lang/String; = "ph://"


# instance fields
.field private final mBus:Lcom/squareup/otto/Bus;

.field private final mGson:Lcom/google/gson/Gson;

.field private mIsTemplateLoaded:Z

.field private final mJsonParser:Lcom/google/gson/JsonParser;

.field private final mLogger:Lcom/upsight/android/logger/UpsightLogger;

.field private final mMarketingContent:Lcom/upsight/android/marketing/internal/content/MarketingContent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/upsight/android/marketing/internal/content/MarketingContent",
            "<",
            "Lcom/upsight/android/marketing/internal/content/MarketingContentModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/upsight/android/marketing/internal/content/MarketingContent;Lcom/squareup/otto/Bus;Lcom/google/gson/Gson;Lcom/google/gson/JsonParser;Lcom/upsight/android/logger/UpsightLogger;)V
    .registers 7
    .param p2, "bus"    # Lcom/squareup/otto/Bus;
    .param p3, "gson"    # Lcom/google/gson/Gson;
    .param p4, "jsoNParser"    # Lcom/google/gson/JsonParser;
    .param p5, "logger"    # Lcom/upsight/android/logger/UpsightLogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/marketing/internal/content/MarketingContent",
            "<",
            "Lcom/upsight/android/marketing/internal/content/MarketingContentModel;",
            ">;",
            "Lcom/squareup/otto/Bus;",
            "Lcom/google/gson/Gson;",
            "Lcom/google/gson/JsonParser;",
            "Lcom/upsight/android/logger/UpsightLogger;",
            ")V"
        }
    .end annotation

    .prologue
    .line 98
    .local p1, "marketingContent":Lcom/upsight/android/marketing/internal/content/MarketingContent;, "Lcom/upsight/android/marketing/internal/content/MarketingContent<Lcom/upsight/android/marketing/internal/content/MarketingContentModel;>;"
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/upsight/android/marketing/internal/content/ContentTemplateWebViewClient;->mIsTemplateLoaded:Z

    .line 99
    iput-object p1, p0, Lcom/upsight/android/marketing/internal/content/ContentTemplateWebViewClient;->mMarketingContent:Lcom/upsight/android/marketing/internal/content/MarketingContent;

    .line 100
    iput-object p2, p0, Lcom/upsight/android/marketing/internal/content/ContentTemplateWebViewClient;->mBus:Lcom/squareup/otto/Bus;

    .line 101
    iput-object p3, p0, Lcom/upsight/android/marketing/internal/content/ContentTemplateWebViewClient;->mGson:Lcom/google/gson/Gson;

    .line 102
    iput-object p4, p0, Lcom/upsight/android/marketing/internal/content/ContentTemplateWebViewClient;->mJsonParser:Lcom/google/gson/JsonParser;

    .line 103
    iput-object p5, p0, Lcom/upsight/android/marketing/internal/content/ContentTemplateWebViewClient;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    .line 104
    return-void
.end method

.method private handleActionDispatch(Ljava/lang/String;)Z
    .registers 18
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 130
    const/4 v7, 0x0

    .line 131
    .local v7, "isHandled":Z
    if-eqz p1, :cond_59

    const-string v12, "ph://"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_59

    .line 132
    const/4 v7, 0x1

    .line 134
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 137
    .local v9, "uri":Landroid/net/Uri;
    const-string v12, "context"

    invoke-virtual {v9, v12}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, "context":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_59

    .line 140
    :try_start_1e
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/upsight/android/marketing/internal/content/ContentTemplateWebViewClient;->mJsonParser:Lcom/google/gson/JsonParser;

    invoke-virtual {v12, v1}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    .line 141
    .local v2, "contextElement":Lcom/google/gson/JsonElement;
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v12

    if-eqz v12, :cond_bd

    .line 142
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    .line 143
    .local v3, "contextNode":Lcom/google/gson/JsonObject;
    const-string v12, "trigger"

    invoke-virtual {v3, v12}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    .line 144
    .local v8, "triggerNode":Lcom/google/gson/JsonElement;
    const-string v12, "view_data"

    invoke-virtual {v3, v12}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v11

    .line 145
    .local v11, "viewDataNode":Lcom/google/gson/JsonElement;
    if-eqz v8, :cond_5a

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->isJsonPrimitive()Z

    move-result v12

    if-eqz v12, :cond_5a

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/google/gson/JsonPrimitive;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/gson/JsonPrimitive;->isString()Z

    move-result v12

    if-eqz v12, :cond_5a

    .line 146
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/upsight/android/marketing/internal/content/ContentTemplateWebViewClient;->mMarketingContent:Lcom/upsight/android/marketing/internal/content/MarketingContent;

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->executeActions(Ljava/lang/String;)V

    .line 163
    .end local v1    # "context":Ljava/lang/String;
    .end local v2    # "contextElement":Lcom/google/gson/JsonElement;
    .end local v3    # "contextNode":Lcom/google/gson/JsonObject;
    .end local v8    # "triggerNode":Lcom/google/gson/JsonElement;
    .end local v9    # "uri":Landroid/net/Uri;
    .end local v11    # "viewDataNode":Lcom/google/gson/JsonElement;
    :cond_59
    :goto_59
    return v7

    .line 147
    .restart local v1    # "context":Ljava/lang/String;
    .restart local v2    # "contextElement":Lcom/google/gson/JsonElement;
    .restart local v3    # "contextNode":Lcom/google/gson/JsonObject;
    .restart local v8    # "triggerNode":Lcom/google/gson/JsonElement;
    .restart local v9    # "uri":Landroid/net/Uri;
    .restart local v11    # "viewDataNode":Lcom/google/gson/JsonElement;
    :cond_5a
    if-eqz v11, :cond_59

    invoke-virtual {v11}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v12

    if-eqz v12, :cond_59

    .line 148
    invoke-virtual {v11}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v5

    .line 149
    .local v5, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/gson/JsonElement;>;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_6e
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_59

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 150
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/gson/JsonElement;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/gson/JsonElement;

    .line 151
    .local v10, "value":Lcom/google/gson/JsonElement;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/upsight/android/marketing/internal/content/ContentTemplateWebViewClient;->mMarketingContent:Lcom/upsight/android/marketing/internal/content/MarketingContent;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    if-eqz v10, :cond_bb

    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v13

    :goto_90
    invoke-virtual {v15, v12, v13}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->putExtra(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_93
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_1e .. :try_end_93} :catch_94

    goto :goto_6e

    .line 158
    .end local v2    # "contextElement":Lcom/google/gson/JsonElement;
    .end local v3    # "contextNode":Lcom/google/gson/JsonObject;
    .end local v5    # "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/gson/JsonElement;>;>;"
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/gson/JsonElement;>;"
    .end local v8    # "triggerNode":Lcom/google/gson/JsonElement;
    .end local v10    # "value":Lcom/google/gson/JsonElement;
    .end local v11    # "viewDataNode":Lcom/google/gson/JsonElement;
    :catch_94
    move-exception v4

    .line 159
    .local v4, "e":Lcom/google/gson/JsonSyntaxException;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/upsight/android/marketing/internal/content/ContentTemplateWebViewClient;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failed to parse context into JsonElement context="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-interface {v12, v13, v4, v14, v15}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_59

    .line 151
    .end local v4    # "e":Lcom/google/gson/JsonSyntaxException;
    .restart local v2    # "contextElement":Lcom/google/gson/JsonElement;
    .restart local v3    # "contextNode":Lcom/google/gson/JsonObject;
    .restart local v5    # "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/gson/JsonElement;>;>;"
    .restart local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/gson/JsonElement;>;"
    .restart local v8    # "triggerNode":Lcom/google/gson/JsonElement;
    .restart local v10    # "value":Lcom/google/gson/JsonElement;
    .restart local v11    # "viewDataNode":Lcom/google/gson/JsonElement;
    :cond_bb
    const/4 v13, 0x0

    goto :goto_90

    .line 155
    .end local v3    # "contextNode":Lcom/google/gson/JsonObject;
    .end local v5    # "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/gson/JsonElement;>;>;"
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/gson/JsonElement;>;"
    .end local v8    # "triggerNode":Lcom/google/gson/JsonElement;
    .end local v10    # "value":Lcom/google/gson/JsonElement;
    .end local v11    # "viewDataNode":Lcom/google/gson/JsonElement;
    :cond_bd
    :try_start_bd
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/upsight/android/marketing/internal/content/ContentTemplateWebViewClient;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failed to parse context into JsonObject context="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-interface {v12, v13, v14, v15}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_e2
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_bd .. :try_end_e2} :catch_94

    goto/16 :goto_59
.end method

.method private handleLoadContextDispatch(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 12
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 175
    const/4 v3, 0x0

    .line 176
    .local v3, "isHandled":Z
    if-eqz p2, :cond_46

    const-string v5, "ph://loadContext"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_46

    .line 177
    const/4 v3, 0x1

    .line 179
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 181
    .local v4, "uri":Landroid/net/Uri;
    const-string v5, "callback"

    invoke-virtual {v4, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "callbackId":Ljava/lang/String;
    iget-object v5, p0, Lcom/upsight/android/marketing/internal/content/ContentTemplateWebViewClient;->mMarketingContent:Lcom/upsight/android/marketing/internal/content/MarketingContent;

    invoke-virtual {v5}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->getContentModel()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/upsight/android/marketing/internal/content/MarketingContentModel;

    invoke-virtual {v5}, Lcom/upsight/android/marketing/internal/content/MarketingContentModel;->getContext()Lcom/google/gson/JsonElement;

    move-result-object v1

    .line 183
    .local v1, "context":Lcom/google/gson/JsonElement;
    const-string v5, "javascript:PlayHaven.nativeAPI.callback(\"%s\", %s, %s, %s)"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v7, 0x1

    aput-object v1, v6, v7

    const/4 v7, 0x2

    aput-object v8, v6, v7

    const/4 v7, 0x3

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 186
    .local v2, "dispatchCallback":Ljava/lang/String;
    const-string v5, "javascript:window.PlayHavenDispatchProtocolVersion=7"

    invoke-virtual {p1, v5}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 187
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    if-lt v5, v6, :cond_47

    .line 188
    invoke-virtual {p1, v2, v8}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 193
    .end local v0    # "callbackId":Ljava/lang/String;
    .end local v1    # "context":Lcom/google/gson/JsonElement;
    .end local v2    # "dispatchCallback":Ljava/lang/String;
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_46
    :goto_46
    return v3

    .line 190
    .restart local v0    # "callbackId":Ljava/lang/String;
    .restart local v1    # "context":Lcom/google/gson/JsonElement;
    .restart local v2    # "dispatchCallback":Ljava/lang/String;
    .restart local v4    # "uri":Landroid/net/Uri;
    :cond_47
    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_46
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 116
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 117
    iget-boolean v0, p0, Lcom/upsight/android/marketing/internal/content/ContentTemplateWebViewClient;->mIsTemplateLoaded:Z

    if-nez v0, :cond_11

    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/upsight/android/marketing/internal/content/ContentTemplateWebViewClient;->mIsTemplateLoaded:Z

    .line 119
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/content/ContentTemplateWebViewClient;->mMarketingContent:Lcom/upsight/android/marketing/internal/content/MarketingContent;

    iget-object v1, p0, Lcom/upsight/android/marketing/internal/content/ContentTemplateWebViewClient;->mBus:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, v1}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->markLoaded(Lcom/squareup/otto/Bus;)V

    .line 121
    :cond_11
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Lcom/upsight/android/marketing/internal/content/ContentTemplateWebViewClient;->handleLoadContextDispatch(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 110
    invoke-direct {p0, p2}, Lcom/upsight/android/marketing/internal/content/ContentTemplateWebViewClient;->handleActionDispatch(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 111
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method
