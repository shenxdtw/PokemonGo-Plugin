.class public abstract Lrx/Scheduler$Worker;
.super Ljava/lang/Object;
.source "Scheduler.java"

# interfaces
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/Scheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Worker"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public now()J
    .registers 3

    .prologue
    .line 171
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract schedule(Lrx/functions/Action0;)Lrx/Subscription;
.end method

.method public abstract schedule(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;
.end method

.method public schedulePeriodically(Lrx/functions/Action0;JJLjava/util/concurrent/TimeUnit;)Lrx/Subscription;
    .registers 25
    .param p1, "action"    # Lrx/functions/Action0;
    .param p2, "initialDelay"    # J
    .param p4, "period"    # J
    .param p6, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 122
    move-object/from16 v0, p6

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v12

    .line 123
    .local v12, "periodInNanos":J
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {p0 .. p0}, Lrx/Scheduler$Worker;->now()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v5, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v6

    .line 124
    .local v6, "firstNowNanos":J
    move-object/from16 v0, p6

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v16

    add-long v8, v6, v16

    .line 126
    .local v8, "firstStartInNanos":J
    new-instance v10, Lrx/subscriptions/MultipleAssignmentSubscription;

    invoke-direct {v10}, Lrx/subscriptions/MultipleAssignmentSubscription;-><init>()V

    .line 127
    .local v10, "mas":Lrx/subscriptions/MultipleAssignmentSubscription;
    new-instance v4, Lrx/Scheduler$Worker$1;

    move-object/from16 v5, p0

    move-object/from16 v11, p1

    invoke-direct/range {v4 .. v13}, Lrx/Scheduler$Worker$1;-><init>(Lrx/Scheduler$Worker;JJLrx/subscriptions/MultipleAssignmentSubscription;Lrx/functions/Action0;J)V

    .line 158
    .local v4, "recursiveAction":Lrx/functions/Action0;
    new-instance v14, Lrx/subscriptions/MultipleAssignmentSubscription;

    invoke-direct {v14}, Lrx/subscriptions/MultipleAssignmentSubscription;-><init>()V

    .line 160
    .local v14, "s":Lrx/subscriptions/MultipleAssignmentSubscription;
    invoke-virtual {v10, v14}, Lrx/subscriptions/MultipleAssignmentSubscription;->set(Lrx/Subscription;)V

    .line 161
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move-object/from16 v3, p6

    invoke-virtual {v0, v4, v1, v2, v3}, Lrx/Scheduler$Worker;->schedule(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;

    move-result-object v5

    invoke-virtual {v14, v5}, Lrx/subscriptions/MultipleAssignmentSubscription;->set(Lrx/Subscription;)V

    .line 162
    return-object v10
.end method
