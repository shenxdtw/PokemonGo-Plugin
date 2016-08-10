.class public Lcom/upsight/android/analytics/internal/configuration/ConfigurationResponseParser;
.super Ljava/lang/Object;
.source "ConfigurationResponseParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/analytics/internal/configuration/ConfigurationResponseParser$ConfigJson;,
        Lcom/upsight/android/analytics/internal/configuration/ConfigurationResponseParser$ConfigResponseJson;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private mGson:Lcom/google/gson/Gson;

.field private mSessionManager:Lcom/upsight/android/analytics/internal/session/SessionManager;


# direct methods
.method constructor <init>(Lcom/google/gson/Gson;Lcom/upsight/android/analytics/internal/session/SessionManager;)V
    .registers 3
    .param p1, "gson"    # Lcom/google/gson/Gson;
        .annotation runtime Ljavax/inject/Named;
            value = "config-gson"
        .end annotation
    .end param
    .param p2, "sessionManager"    # Lcom/upsight/android/analytics/internal/session/SessionManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationResponseParser;->mGson:Lcom/google/gson/Gson;

    .line 40
    iput-object p2, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationResponseParser;->mSessionManager:Lcom/upsight/android/analytics/internal/session/SessionManager;

    .line 41
    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;)Ljava/util/Collection;
    .registers 12
    .param p1, "resposneJson"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/upsight/android/analytics/configuration/UpsightConfiguration;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    :try_start_0
    iget-object v4, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationResponseParser;->mGson:Lcom/google/gson/Gson;

    const-class v5, Lcom/upsight/android/analytics/internal/configuration/ConfigurationResponseParser$ConfigResponseJson;

    invoke-virtual {v4, p1, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/upsight/android/analytics/internal/configuration/ConfigurationResponseParser$ConfigResponseJson;
    :try_end_a
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_a} :catch_33

    .line 58
    .local v3, "rsp":Lcom/upsight/android/analytics/internal/configuration/ConfigurationResponseParser$ConfigResponseJson;
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 59
    .local v2, "res":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/upsight/android/analytics/configuration/UpsightConfiguration;>;"
    iget-object v5, v3, Lcom/upsight/android/analytics/internal/configuration/ConfigurationResponseParser$ConfigResponseJson;->configs:[Lcom/upsight/android/analytics/internal/configuration/ConfigurationResponseParser$ConfigJson;

    array-length v6, v5

    const/4 v4, 0x0

    :goto_13
    if-ge v4, v6, :cond_3a

    aget-object v0, v5, v4

    .line 60
    .local v0, "cj":Lcom/upsight/android/analytics/internal/configuration/ConfigurationResponseParser$ConfigJson;
    iget-object v7, v0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationResponseParser$ConfigJson;->type:Ljava/lang/String;

    iget-object v8, v0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationResponseParser$ConfigJson;->configuration:Lcom/google/gson/JsonElement;

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationResponseParser;->mSessionManager:Lcom/upsight/android/analytics/internal/session/SessionManager;

    .line 61
    invoke-interface {v9}, Lcom/upsight/android/analytics/internal/session/SessionManager;->getCurrentSession()Lcom/upsight/android/analytics/internal/session/Session;

    move-result-object v9

    invoke-interface {v9}, Lcom/upsight/android/analytics/internal/session/Session;->getSessionNumber()I

    move-result v9

    .line 60
    invoke-static {v7, v8, v9}, Lcom/upsight/android/analytics/configuration/UpsightConfiguration;->create(Ljava/lang/String;Ljava/lang/String;I)Lcom/upsight/android/analytics/configuration/UpsightConfiguration;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 59
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 54
    .end local v0    # "cj":Lcom/upsight/android/analytics/internal/configuration/ConfigurationResponseParser$ConfigJson;
    .end local v2    # "res":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/upsight/android/analytics/configuration/UpsightConfiguration;>;"
    .end local v3    # "rsp":Lcom/upsight/android/analytics/internal/configuration/ConfigurationResponseParser$ConfigResponseJson;
    :catch_33
    move-exception v1

    .line 55
    .local v1, "e":Lcom/google/gson/JsonSyntaxException;
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 64
    .end local v1    # "e":Lcom/google/gson/JsonSyntaxException;
    .restart local v2    # "res":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/upsight/android/analytics/configuration/UpsightConfiguration;>;"
    .restart local v3    # "rsp":Lcom/upsight/android/analytics/internal/configuration/ConfigurationResponseParser$ConfigResponseJson;
    :cond_3a
    return-object v2
.end method
