.class public final Lcrittercism/android/cv;
.super Ljava/lang/Object;


# instance fields
.field private a:J

.field private b:J


# direct methods
.method public constructor <init>(J)V
    .registers 6

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcrittercism/android/cv;->a:J

    .line 9
    iput-wide p1, p0, Lcrittercism/android/cv;->b:J

    .line 10
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Z
    .registers 5

    .prologue
    .line 13
    monitor-enter p0

    :try_start_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcrittercism/android/cv;->a:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcrittercism/android/cv;->b:J
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_13

    cmp-long v0, v0, v2

    if-lez v0, :cond_11

    const/4 v0, 0x1

    :goto_f
    monitor-exit p0

    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_f

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .registers 3

    .prologue
    .line 17
    monitor-enter p0

    :try_start_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcrittercism/android/cv;->a:J
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 18
    monitor-exit p0

    return-void

    .line 17
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method
