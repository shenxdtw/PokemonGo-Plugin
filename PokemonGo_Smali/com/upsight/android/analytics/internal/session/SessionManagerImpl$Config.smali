.class public final Lcom/upsight/android/analytics/internal/session/SessionManagerImpl$Config;
.super Ljava/lang/Object;
.source "SessionManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Config"
.end annotation


# instance fields
.field public final timeToNewSession:J


# direct methods
.method constructor <init>(J)V
    .registers 4
    .param p1, "timeToNewSession"    # J

    .prologue
    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 345
    iput-wide p1, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl$Config;->timeToNewSession:J

    .line 346
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 357
    if-ne p0, p1, :cond_5

    .line 364
    :cond_4
    :goto_4
    return v1

    .line 360
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_13

    :cond_11
    move v1, v2

    .line 361
    goto :goto_4

    :cond_13
    move-object v0, p1

    .line 363
    check-cast v0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl$Config;

    .line 364
    .local v0, "that":Lcom/upsight/android/analytics/internal/session/SessionManagerImpl$Config;
    iget-wide v4, v0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl$Config;->timeToNewSession:J

    iget-wide v6, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl$Config;->timeToNewSession:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_4

    move v1, v2

    goto :goto_4
.end method

.method public isValid()Z
    .registers 5

    .prologue
    .line 352
    iget-wide v0, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl$Config;->timeToNewSession:J

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
