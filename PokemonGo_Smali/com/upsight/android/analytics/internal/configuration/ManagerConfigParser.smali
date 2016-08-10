.class public Lcom/upsight/android/analytics/internal/configuration/ManagerConfigParser;
.super Ljava/lang/Object;
.source "ManagerConfigParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/analytics/internal/configuration/ManagerConfigParser$ConfigJson;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private mGson:Lcom/google/gson/Gson;


# direct methods
.method constructor <init>(Lcom/google/gson/Gson;)V
    .registers 2
    .param p1, "gson"    # Lcom/google/gson/Gson;
        .annotation runtime Ljavax/inject/Named;
            value = "config-gson"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/configuration/ManagerConfigParser;->mGson:Lcom/google/gson/Gson;

    .line 31
    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;)Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;
    .registers 8
    .param p1, "configJson"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    :try_start_0
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/configuration/ManagerConfigParser;->mGson:Lcom/google/gson/Gson;

    const-class v3, Lcom/upsight/android/analytics/internal/configuration/ManagerConfigParser$ConfigJson;

    invoke-virtual {v2, p1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/internal/configuration/ManagerConfigParser$ConfigJson;
    :try_end_a
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_a} :catch_19

    .line 49
    .local v0, "config":Lcom/upsight/android/analytics/internal/configuration/ManagerConfigParser$ConfigJson;
    new-instance v2, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v4, v0, Lcom/upsight/android/analytics/internal/configuration/ManagerConfigParser$ConfigJson;->requestInterval:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;-><init>(J)V

    return-object v2

    .line 45
    .end local v0    # "config":Lcom/upsight/android/analytics/internal/configuration/ManagerConfigParser$ConfigJson;
    :catch_19
    move-exception v1

    .line 46
    .local v1, "e":Lcom/google/gson/JsonSyntaxException;
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
