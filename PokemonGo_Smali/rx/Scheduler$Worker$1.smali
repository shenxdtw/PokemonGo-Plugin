.class Lrx/Scheduler$Worker$1;
.super Ljava/lang/Object;
.source "Scheduler.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Scheduler$Worker;->schedulePeriodically(Lrx/functions/Action0;JJLjava/util/concurrent/TimeUnit;)Lrx/Subscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field count:J

.field lastNowNanos:J

.field startInNanos:J

.field final synthetic this$0:Lrx/Scheduler$Worker;

.field final synthetic val$action:Lrx/functions/Action0;

.field final synthetic val$firstNowNanos:J

.field final synthetic val$firstStartInNanos:J

.field final synthetic val$mas:Lrx/subscriptions/MultipleAssignmentSubscription;

.field final synthetic val$periodInNanos:J


# direct methods
.method constructor <init>(Lrx/Scheduler$Worker;JJLrx/subscriptions/MultipleAssignmentSubscription;Lrx/functions/Action0;J)V
    .registers 12

    .prologue
    .line 127
    iput-object p1, p0, Lrx/Scheduler$Worker$1;->this$0:Lrx/Scheduler$Worker;

    iput-wide p2, p0, Lrx/Scheduler$Worker$1;->val$firstNowNanos:J

    iput-wide p4, p0, Lrx/Scheduler$Worker$1;->val$firstStartInNanos:J

    iput-object p6, p0, Lrx/Scheduler$Worker$1;->val$mas:Lrx/subscriptions/MultipleAssignmentSubscription;

    iput-object p7, p0, Lrx/Scheduler$Worker$1;->val$action:Lrx/functions/Action0;

    iput-wide p8, p0, Lrx/Scheduler$Worker$1;->val$periodInNanos:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iget-wide v0, p0, Lrx/Scheduler$Worker$1;->val$firstNowNanos:J

    iput-wide v0, p0, Lrx/Scheduler$Worker$1;->lastNowNanos:J

    .line 130
    iget-wide v0, p0, Lrx/Scheduler$Worker$1;->val$firstStartInNanos:J

    iput-wide v0, p0, Lrx/Scheduler$Worker$1;->startInNanos:J

    return-void
.end method


# virtual methods
.method public call()V
    .registers 13

    .prologue
    const-wide/16 v10, 0x1

    .line 133
    iget-object v6, p0, Lrx/Scheduler$Worker$1;->val$mas:Lrx/subscriptions/MultipleAssignmentSubscription;

    invoke-virtual {v6}, Lrx/subscriptions/MultipleAssignmentSubscription;->isUnsubscribed()Z

    move-result v6

    if-nez v6, :cond_51

    .line 134
    iget-object v6, p0, Lrx/Scheduler$Worker$1;->val$action:Lrx/functions/Action0;

    invoke-interface {v6}, Lrx/functions/Action0;->call()V

    .line 138
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v7, p0, Lrx/Scheduler$Worker$1;->this$0:Lrx/Scheduler$Worker;

    invoke-virtual {v7}, Lrx/Scheduler$Worker;->now()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    .line 140
    .local v4, "nowNanos":J
    sget-wide v6, Lrx/Scheduler;->CLOCK_DRIFT_TOLERANCE_NANOS:J

    add-long/2addr v6, v4

    iget-wide v8, p0, Lrx/Scheduler$Worker$1;->lastNowNanos:J

    cmp-long v6, v6, v8

    if-ltz v6, :cond_30

    iget-wide v6, p0, Lrx/Scheduler$Worker$1;->lastNowNanos:J

    iget-wide v8, p0, Lrx/Scheduler$Worker$1;->val$periodInNanos:J

    add-long/2addr v6, v8

    sget-wide v8, Lrx/Scheduler;->CLOCK_DRIFT_TOLERANCE_NANOS:J

    add-long/2addr v6, v8

    cmp-long v6, v4, v6

    if-ltz v6, :cond_52

    .line 142
    :cond_30
    iget-wide v6, p0, Lrx/Scheduler$Worker$1;->val$periodInNanos:J

    add-long v2, v4, v6

    .line 147
    .local v2, "nextTick":J
    iget-wide v6, p0, Lrx/Scheduler$Worker$1;->val$periodInNanos:J

    iget-wide v8, p0, Lrx/Scheduler$Worker$1;->count:J

    add-long/2addr v8, v10

    iput-wide v8, p0, Lrx/Scheduler$Worker$1;->count:J

    mul-long/2addr v6, v8

    sub-long v6, v2, v6

    iput-wide v6, p0, Lrx/Scheduler$Worker$1;->startInNanos:J

    .line 151
    :goto_40
    iput-wide v4, p0, Lrx/Scheduler$Worker$1;->lastNowNanos:J

    .line 153
    sub-long v0, v2, v4

    .line 154
    .local v0, "delay":J
    iget-object v6, p0, Lrx/Scheduler$Worker$1;->val$mas:Lrx/subscriptions/MultipleAssignmentSubscription;

    iget-object v7, p0, Lrx/Scheduler$Worker$1;->this$0:Lrx/Scheduler$Worker;

    sget-object v8, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, p0, v0, v1, v8}, Lrx/Scheduler$Worker;->schedule(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;

    move-result-object v7

    invoke-virtual {v6, v7}, Lrx/subscriptions/MultipleAssignmentSubscription;->set(Lrx/Subscription;)V

    .line 156
    .end local v0    # "delay":J
    .end local v2    # "nextTick":J
    .end local v4    # "nowNanos":J
    :cond_51
    return-void

    .line 149
    .restart local v4    # "nowNanos":J
    :cond_52
    iget-wide v6, p0, Lrx/Scheduler$Worker$1;->startInNanos:J

    iget-wide v8, p0, Lrx/Scheduler$Worker$1;->count:J

    add-long/2addr v8, v10

    iput-wide v8, p0, Lrx/Scheduler$Worker$1;->count:J

    iget-wide v10, p0, Lrx/Scheduler$Worker$1;->val$periodInNanos:J

    mul-long/2addr v8, v10

    add-long v2, v6, v8

    .restart local v2    # "nextTick":J
    goto :goto_40
.end method
