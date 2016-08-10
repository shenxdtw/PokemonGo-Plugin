.class final Lrx/Completable$12;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/Completable$CompletableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable;->timer(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Completable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$delay:J

.field final synthetic val$scheduler:Lrx/Scheduler;

.field final synthetic val$unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method constructor <init>(Lrx/Scheduler;JLjava/util/concurrent/TimeUnit;)V
    .registers 5

    .prologue
    .line 774
    iput-object p1, p0, Lrx/Completable$12;->val$scheduler:Lrx/Scheduler;

    iput-wide p2, p0, Lrx/Completable$12;->val$delay:J

    iput-object p4, p0, Lrx/Completable$12;->val$unit:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 774
    check-cast p1, Lrx/Completable$CompletableSubscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/Completable$12;->call(Lrx/Completable$CompletableSubscriber;)V

    return-void
.end method

.method public call(Lrx/Completable$CompletableSubscriber;)V
    .registers 8
    .param p1, "s"    # Lrx/Completable$CompletableSubscriber;

    .prologue
    .line 777
    new-instance v0, Lrx/subscriptions/MultipleAssignmentSubscription;

    invoke-direct {v0}, Lrx/subscriptions/MultipleAssignmentSubscription;-><init>()V

    .line 778
    .local v0, "mad":Lrx/subscriptions/MultipleAssignmentSubscription;
    invoke-interface {p1, v0}, Lrx/Completable$CompletableSubscriber;->onSubscribe(Lrx/Subscription;)V

    .line 779
    invoke-virtual {v0}, Lrx/subscriptions/MultipleAssignmentSubscription;->isUnsubscribed()Z

    move-result v2

    if-nez v2, :cond_23

    .line 780
    iget-object v2, p0, Lrx/Completable$12;->val$scheduler:Lrx/Scheduler;

    invoke-virtual {v2}, Lrx/Scheduler;->createWorker()Lrx/Scheduler$Worker;

    move-result-object v1

    .line 781
    .local v1, "w":Lrx/Scheduler$Worker;
    invoke-virtual {v0, v1}, Lrx/subscriptions/MultipleAssignmentSubscription;->set(Lrx/Subscription;)V

    .line 782
    new-instance v2, Lrx/Completable$12$1;

    invoke-direct {v2, p0, p1, v1}, Lrx/Completable$12$1;-><init>(Lrx/Completable$12;Lrx/Completable$CompletableSubscriber;Lrx/Scheduler$Worker;)V

    iget-wide v4, p0, Lrx/Completable$12;->val$delay:J

    iget-object v3, p0, Lrx/Completable$12;->val$unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v4, v5, v3}, Lrx/Scheduler$Worker;->schedule(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;

    .line 793
    .end local v1    # "w":Lrx/Scheduler$Worker;
    :cond_23
    return-void
.end method
