.class final Lrx/schedulers/CachedThreadScheduler$ThreadWorker;
.super Lrx/internal/schedulers/NewThreadWorker;
.source "CachedThreadScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/schedulers/CachedThreadScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ThreadWorker"
.end annotation


# instance fields
.field private expirationTime:J


# direct methods
.method constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .registers 4
    .param p1, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .prologue
    .line 225
    invoke-direct {p0, p1}, Lrx/internal/schedulers/NewThreadWorker;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    .line 226
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lrx/schedulers/CachedThreadScheduler$ThreadWorker;->expirationTime:J

    .line 227
    return-void
.end method


# virtual methods
.method public getExpirationTime()J
    .registers 3

    .prologue
    .line 230
    iget-wide v0, p0, Lrx/schedulers/CachedThreadScheduler$ThreadWorker;->expirationTime:J

    return-wide v0
.end method

.method public setExpirationTime(J)V
    .registers 4
    .param p1, "expirationTime"    # J

    .prologue
    .line 234
    iput-wide p1, p0, Lrx/schedulers/CachedThreadScheduler$ThreadWorker;->expirationTime:J

    .line 235
    return-void
.end method
