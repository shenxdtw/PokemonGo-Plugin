.class public final Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;
.super Ljava/lang/Object;
.source "ConfigurationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Config"
.end annotation


# instance fields
.field public final requestInterval:J


# direct methods
.method constructor <init>(J)V
    .registers 4
    .param p1, "requestInterval"    # J

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-wide p1, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;->requestInterval:J

    .line 48
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 63
    if-ne p0, p1, :cond_5

    .line 73
    :cond_4
    :goto_4
    return v1

    .line 67
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_13

    :cond_11
    move v1, v2

    .line 68
    goto :goto_4

    :cond_13
    move-object v0, p1

    .line 71
    check-cast v0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;

    .line 73
    .local v0, "that":Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;
    iget-wide v4, v0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;->requestInterval:J

    iget-wide v6, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;->requestInterval:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_4

    move v1, v2

    goto :goto_4
.end method

.method public isValid()Z
    .registers 5

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;->requestInterval:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
