.class public Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Config;
.super Ljava/lang/Object;
.source "BatchSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Config"
.end annotation


# instance fields
.field public final countNetworkFail:Z

.field public final maxRetryCount:I

.field public final retryInterval:I


# direct methods
.method public constructor <init>(ZII)V
    .registers 4
    .param p1, "countNetworkFail"    # Z
    .param p2, "retryInterval"    # I
    .param p3, "maxRetryCount"    # I

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-boolean p1, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Config;->countNetworkFail:Z

    .line 65
    iput p2, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Config;->retryInterval:I

    .line 66
    iput p3, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Config;->maxRetryCount:I

    .line 67
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 82
    if-ne p0, p1, :cond_5

    .line 92
    :cond_4
    :goto_4
    return v1

    .line 86
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_13

    :cond_11
    move v1, v2

    .line 87
    goto :goto_4

    :cond_13
    move-object v0, p1

    .line 90
    check-cast v0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Config;

    .line 92
    .local v0, "that":Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Config;
    iget-boolean v3, v0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Config;->countNetworkFail:Z

    iget-boolean v4, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Config;->countNetworkFail:Z

    if-ne v3, v4, :cond_28

    iget v3, v0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Config;->retryInterval:I

    iget v4, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Config;->retryInterval:I

    if-ne v3, v4, :cond_28

    iget v3, v0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Config;->maxRetryCount:I

    iget v4, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Config;->maxRetryCount:I

    if-eq v3, v4, :cond_4

    :cond_28
    move v1, v2

    goto :goto_4
.end method

.method public isValid()Z
    .registers 2

    .prologue
    .line 73
    iget v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Config;->retryInterval:I

    if-lez v0, :cond_a

    iget v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Config;->maxRetryCount:I

    if-ltz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
