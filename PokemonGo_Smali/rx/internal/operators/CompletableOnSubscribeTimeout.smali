.class public final Lrx/internal/operators/CompletableOnSubscribeTimeout;
.super Ljava/lang/Object;
.source "CompletableOnSubscribeTimeout.java"

# interfaces
.implements Lrx/Completable$CompletableOnSubscribe;


# instance fields
.field final other:Lrx/Completable;

.field final scheduler:Lrx/Scheduler;

.field final source:Lrx/Completable;

.field final timeout:J

.field final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(Lrx/Completable;JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;Lrx/Completable;)V
    .registers 7
    .param p1, "source"    # Lrx/Completable;
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "scheduler"    # Lrx/Scheduler;
    .param p6, "other"    # Lrx/Completable;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lrx/internal/operators/CompletableOnSubscribeTimeout;->source:Lrx/Completable;

    .line 39
    iput-wide p2, p0, Lrx/internal/operators/CompletableOnSubscribeTimeout;->timeout:J

    .line 40
    iput-object p4, p0, Lrx/internal/operators/CompletableOnSubscribeTimeout;->unit:Ljava/util/concurrent/TimeUnit;

    .line 41
    iput-object p5, p0, Lrx/internal/operators/CompletableOnSubscribeTimeout;->scheduler:Lrx/Scheduler;

    .line 42
    iput-object p6, p0, Lrx/internal/operators/CompletableOnSubscribeTimeout;->other:Lrx/Completable;

    .line 43
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 28
    check-cast p1, Lrx/Completable$CompletableSubscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/CompletableOnSubscribeTimeout;->call(Lrx/Completable$CompletableSubscriber;)V

    return-void
.end method

.method public call(Lrx/Completable$CompletableSubscriber;)V
    .registers 9
    .param p1, "s"    # Lrx/Completable$CompletableSubscriber;

    .prologue
    .line 47
    new-instance v1, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v1}, Lrx/subscriptions/CompositeSubscription;-><init>()V

    .line 48
    .local v1, "set":Lrx/subscriptions/CompositeSubscription;
    invoke-interface {p1, v1}, Lrx/Completable$CompletableSubscriber;->onSubscribe(Lrx/Subscription;)V

    .line 50
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 52
    .local v0, "once":Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v3, p0, Lrx/internal/operators/CompletableOnSubscribeTimeout;->scheduler:Lrx/Scheduler;

    invoke-virtual {v3}, Lrx/Scheduler;->createWorker()Lrx/Scheduler$Worker;

    move-result-object v2

    .line 54
    .local v2, "w":Lrx/Scheduler$Worker;
    invoke-virtual {v1, v2}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    .line 55
    new-instance v3, Lrx/internal/operators/CompletableOnSubscribeTimeout$1;

    invoke-direct {v3, p0, v0, v1, p1}, Lrx/internal/operators/CompletableOnSubscribeTimeout$1;-><init>(Lrx/internal/operators/CompletableOnSubscribeTimeout;Ljava/util/concurrent/atomic/AtomicBoolean;Lrx/subscriptions/CompositeSubscription;Lrx/Completable$CompletableSubscriber;)V

    iget-wide v4, p0, Lrx/internal/operators/CompletableOnSubscribeTimeout;->timeout:J

    iget-object v6, p0, Lrx/internal/operators/CompletableOnSubscribeTimeout;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5, v6}, Lrx/Scheduler$Worker;->schedule(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;

    .line 88
    iget-object v3, p0, Lrx/internal/operators/CompletableOnSubscribeTimeout;->source:Lrx/Completable;

    new-instance v4, Lrx/internal/operators/CompletableOnSubscribeTimeout$2;

    invoke-direct {v4, p0, v1, v0, p1}, Lrx/internal/operators/CompletableOnSubscribeTimeout$2;-><init>(Lrx/internal/operators/CompletableOnSubscribeTimeout;Lrx/subscriptions/CompositeSubscription;Ljava/util/concurrent/atomic/AtomicBoolean;Lrx/Completable$CompletableSubscriber;)V

    invoke-virtual {v3, v4}, Lrx/Completable;->subscribe(Lrx/Completable$CompletableSubscriber;)V

    .line 114
    return-void
.end method
