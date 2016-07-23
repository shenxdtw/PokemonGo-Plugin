.class public Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig;
.super Ljava/lang/Object;
.source "QueueConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig$1;,
        Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig$Builder;
    }
.end annotation


# instance fields
.field private mBatchSenderConfig:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Config;

.field private mBatcherConfig:Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;

.field private mEndpointAddress:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig$Builder;)V
    .registers 3
    .param p1, "builder"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig$Builder;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    # getter for: Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig$Builder;->mEndpointAddress:Ljava/lang/String;
    invoke-static {p1}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig$Builder;->access$100(Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig;->mEndpointAddress:Ljava/lang/String;

    .line 71
    # getter for: Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig$Builder;->mBatchSenderConfig:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Config;
    invoke-static {p1}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig$Builder;->access$200(Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig$Builder;)Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Config;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig;->mBatchSenderConfig:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Config;

    .line 72
    # getter for: Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig$Builder;->mBatcherConfig:Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;
    invoke-static {p1}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig$Builder;->access$300(Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig$Builder;)Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig;->mBatcherConfig:Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;

    .line 73
    return-void
.end method

.method synthetic constructor <init>(Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig$Builder;Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig$Builder;
    .param p2, "x1"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig$1;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig;-><init>(Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig$Builder;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 111
    if-ne p0, p1, :cond_5

    .line 123
    :cond_4
    :goto_4
    return v1

    .line 112
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_13

    :cond_11
    move v1, v2

    goto :goto_4

    :cond_13
    move-object v0, p1

    .line 114
    check-cast v0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig;

    .line 116
    .local v0, "that":Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig;
    iget-object v3, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig;->mBatchSenderConfig:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Config;

    if-eqz v3, :cond_26

    iget-object v3, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig;->mBatchSenderConfig:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Config;

    iget-object v4, v0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig;->mBatchSenderConfig:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Config;

    invoke-virtual {v3, v4}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Config;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    :cond_24
    move v1, v2

    .line 117
    goto :goto_4

    .line 116
    :cond_26
    iget-object v3, v0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig;->mBatchSenderConfig:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Config;

    if-nez v3, :cond_24

    .line 118
    :cond_2a
    iget-object v3, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig;->mBatcherConfig:Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;

    if-eqz v3, :cond_3a

    iget-object v3, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig;->mBatcherConfig:Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;

    iget-object v4, v0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig;->mBatcherConfig:Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;

    invoke-virtual {v3, v4}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3e

    :cond_38
    move v1, v2

    .line 119
    goto :goto_4

    .line 118
    :cond_3a
    iget-object v3, v0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig;->mBatcherConfig:Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;

    if-nez v3, :cond_38

    .line 120
    :cond_3e
    iget-object v3, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig;->mEndpointAddress:Ljava/lang/String;

    if-eqz v3, :cond_4e

    iget-object v3, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig;->mEndpointAddress:Ljava/lang/String;

    iget-object v4, v0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig;->mEndpointAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :goto_4c
    move v1, v2

    .line 121
    goto :goto_4

    .line 120
    :cond_4e
    iget-object v3, v0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig;->mEndpointAddress:Ljava/lang/String;

    if-eqz v3, :cond_4

    goto :goto_4c
.end method

.method public getBatchSenderConfig()Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Config;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig;->mBatchSenderConfig:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Config;

    return-object v0
.end method

.method public getBatcherConfig()Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig;->mBatcherConfig:Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;

    return-object v0
.end method

.method public getEndpointAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig;->mEndpointAddress:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 128
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig;->mEndpointAddress:Ljava/lang/String;

    if-eqz v2, :cond_28

    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig;->mEndpointAddress:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 129
    .local v0, "result":I
    :goto_b
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig;->mBatchSenderConfig:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Config;

    if-eqz v2, :cond_2a

    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig;->mBatchSenderConfig:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Config;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_17
    add-int v0, v3, v2

    .line 130
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig;->mBatcherConfig:Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;

    if-eqz v3, :cond_25

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig;->mBatcherConfig:Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_25
    add-int v0, v2, v1

    .line 131
    return v0

    .end local v0    # "result":I
    :cond_28
    move v0, v1

    .line 128
    goto :goto_b

    .restart local v0    # "result":I
    :cond_2a
    move v2, v1

    .line 129
    goto :goto_17
.end method

.method public isValid()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 101
    :try_start_1
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig;->mEndpointAddress:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 102
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig;->mBatcherConfig:Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;

    if-eqz v2, :cond_21

    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig;->mBatcherConfig:Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;

    invoke-virtual {v2}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;->isValid()Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig;->mBatchSenderConfig:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Config;

    if-eqz v2, :cond_21

    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig;->mBatchSenderConfig:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Config;

    invoke-virtual {v2}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Config;->isValid()Z
    :try_end_1d
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1d} :catch_22

    move-result v2

    if-eqz v2, :cond_21

    const/4 v1, 0x1

    .line 105
    :cond_21
    :goto_21
    return v1

    .line 104
    :catch_22
    move-exception v0

    .line 105
    .local v0, "e":Ljava/net/MalformedURLException;
    goto :goto_21
.end method
