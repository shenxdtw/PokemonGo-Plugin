.class public Lrx/schedulers/TestScheduler;
.super Lrx/Scheduler;
.source "TestScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/schedulers/TestScheduler$InnerTestScheduler;,
        Lrx/schedulers/TestScheduler$CompareActionsByTime;,
        Lrx/schedulers/TestScheduler$TimedAction;
    }
.end annotation


# static fields
.field static counter:J


# instance fields
.field final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lrx/schedulers/TestScheduler$TimedAction;",
            ">;"
        }
    .end annotation
.end field

.field time:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 35
    const-wide/16 v0, 0x0

    sput-wide v0, Lrx/schedulers/TestScheduler;->counter:J

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    .line 33
    invoke-direct {p0}, Lrx/Scheduler;-><init>()V

    .line 34
    new-instance v0, Ljava/util/PriorityQueue;

    const/16 v1, 0xb

    new-instance v2, Lrx/schedulers/TestScheduler$CompareActionsByTime;

    invoke-direct {v2}, Lrx/schedulers/TestScheduler$CompareActionsByTime;-><init>()V

    invoke-direct {v0, v1, v2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lrx/schedulers/TestScheduler;->queue:Ljava/util/Queue;

    .line 134
    return-void
.end method

.method private triggerActions(J)V
    .registers 10
    .param p1, "targetTimeInNanos"    # J

    .prologue
    .line 112
    :cond_0
    :goto_0
    iget-object v1, p0, Lrx/schedulers/TestScheduler;->queue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_16

    .line 113
    iget-object v1, p0, Lrx/schedulers/TestScheduler;->queue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/schedulers/TestScheduler$TimedAction;

    .line 114
    .local v0, "current":Lrx/schedulers/TestScheduler$TimedAction;
    iget-wide v2, v0, Lrx/schedulers/TestScheduler$TimedAction;->time:J

    cmp-long v1, v2, p1

    if-lez v1, :cond_19

    .line 126
    .end local v0    # "current":Lrx/schedulers/TestScheduler$TimedAction;
    :cond_16
    iput-wide p1, p0, Lrx/schedulers/TestScheduler;->time:J

    .line 127
    return-void

    .line 118
    .restart local v0    # "current":Lrx/schedulers/TestScheduler$TimedAction;
    :cond_19
    iget-wide v2, v0, Lrx/schedulers/TestScheduler$TimedAction;->time:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_38

    iget-wide v2, p0, Lrx/schedulers/TestScheduler;->time:J

    :goto_23
    iput-wide v2, p0, Lrx/schedulers/TestScheduler;->time:J

    .line 119
    iget-object v1, p0, Lrx/schedulers/TestScheduler;->queue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 122
    iget-object v1, v0, Lrx/schedulers/TestScheduler$TimedAction;->scheduler:Lrx/Scheduler$Worker;

    invoke-virtual {v1}, Lrx/Scheduler$Worker;->isUnsubscribed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 123
    iget-object v1, v0, Lrx/schedulers/TestScheduler$TimedAction;->action:Lrx/functions/Action0;

    invoke-interface {v1}, Lrx/functions/Action0;->call()V

    goto :goto_0

    .line 118
    :cond_38
    iget-wide v2, v0, Lrx/schedulers/TestScheduler$TimedAction;->time:J

    goto :goto_23
.end method


# virtual methods
.method public advanceTimeBy(JLjava/util/concurrent/TimeUnit;)V
    .registers 9
    .param p1, "delayTime"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 87
    iget-wide v0, p0, Lrx/schedulers/TestScheduler;->time:J

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Lrx/schedulers/TestScheduler;->advanceTimeTo(JLjava/util/concurrent/TimeUnit;)V

    .line 88
    return-void
.end method

.method public advanceTimeTo(JLjava/util/concurrent/TimeUnit;)V
    .registers 7
    .param p1, "delayTime"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 99
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    .line 100
    .local v0, "targetTime":J
    invoke-direct {p0, v0, v1}, Lrx/schedulers/TestScheduler;->triggerActions(J)V

    .line 101
    return-void
.end method

.method public createWorker()Lrx/Scheduler$Worker;
    .registers 2

    .prologue
    .line 131
    new-instance v0, Lrx/schedulers/TestScheduler$InnerTestScheduler;

    invoke-direct {v0, p0}, Lrx/schedulers/TestScheduler$InnerTestScheduler;-><init>(Lrx/schedulers/TestScheduler;)V

    return-object v0
.end method

.method public now()J
    .registers 5

    .prologue
    .line 75
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v2, p0, Lrx/schedulers/TestScheduler;->time:J

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public triggerActions()V
    .registers 3

    .prologue
    .line 108
    iget-wide v0, p0, Lrx/schedulers/TestScheduler;->time:J

    invoke-direct {p0, v0, v1}, Lrx/schedulers/TestScheduler;->triggerActions(J)V

    .line 109
    return-void
.end method
