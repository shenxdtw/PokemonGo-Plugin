.class Lcom/upsight/android/analytics/internal/session/ConfigParser;
.super Ljava/lang/Object;
.source "ConfigParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/analytics/internal/session/ConfigParser$ConfigJson;
    }
.end annotation


# instance fields
.field private mGson:Lcom/google/gson/Gson;


# direct methods
.method public constructor <init>(Lcom/google/gson/Gson;)V
    .registers 2
    .param p1, "gson"    # Lcom/google/gson/Gson;
        .annotation runtime Ljavax/inject/Named;
            value = "config-gson"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/session/ConfigParser;->mGson:Lcom/google/gson/Gson;

    .line 28
    return-void
.end method


# virtual methods
.method public parseConfig(Ljava/lang/String;)Lcom/upsight/android/analytics/internal/session/SessionManagerImpl$Config;
    .registers 8
    .param p1, "configContent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    :try_start_0
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/session/ConfigParser;->mGson:Lcom/google/gson/Gson;

    const-class v3, Lcom/upsight/android/analytics/internal/session/ConfigParser$ConfigJson;

    invoke-virtual {v2, p1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/internal/session/ConfigParser$ConfigJson;
    :try_end_a
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_a} :catch_13

    .line 45
    .local v0, "configJson":Lcom/upsight/android/analytics/internal/session/ConfigParser$ConfigJson;
    new-instance v2, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl$Config;

    iget v3, v0, Lcom/upsight/android/analytics/internal/session/ConfigParser$ConfigJson;->session_gap:I

    int-to-long v4, v3

    invoke-direct {v2, v4, v5}, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl$Config;-><init>(J)V

    return-object v2

    .line 42
    .end local v0    # "configJson":Lcom/upsight/android/analytics/internal/session/ConfigParser$ConfigJson;
    :catch_13
    move-exception v1

    .line 43
    .local v1, "e":Lcom/google/gson/JsonSyntaxException;
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
