.class public final Lrx/internal/operators/OperatorRetryWithPredicate;
.super Ljava/lang/Object;
.source "OperatorRetryWithPredicate.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator",
        "<TT;",
        "Lrx/Observable",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final predicate:Lrx/functions/Func2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func2",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/functions/Func2;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func2",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "this":Lrx/internal/operators/OperatorRetryWithPredicate;, "Lrx/internal/operators/OperatorRetryWithPredicate<TT;>;"
    .local p1, "predicate":Lrx/functions/Func2;, "Lrx/functions/Func2<Ljava/lang/Integer;Ljava/lang/Throwable;Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lrx/internal/operators/OperatorRetryWithPredicate;->predicate:Lrx/functions/Func2;

    .line 34
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 30
    .local p0, "this":Lrx/internal/operators/OperatorRetryWithPredicate;, "Lrx/internal/operators/OperatorRetryWithPredicate<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorRetryWithPredicate;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)",
            "Lrx/Subscriber",
            "<-",
            "Lrx/Observable",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lrx/internal/operators/OperatorRetryWithPredicate;, "Lrx/internal/operators/OperatorRetryWithPredicate<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    invoke-static {}, Lrx/schedulers/Schedulers;->trampoline()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {v0}, Lrx/Scheduler;->createWorker()Lrx/Scheduler$Worker;

    move-result-object v3

    .line 39
    .local v3, "inner":Lrx/Scheduler$Worker;
    invoke-virtual {p1, v3}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 41
    new-instance v4, Lrx/subscriptions/SerialSubscription;

    invoke-direct {v4}, Lrx/subscriptions/SerialSubscription;-><init>()V

    .line 43
    .local v4, "serialSubscription":Lrx/subscriptions/SerialSubscription;
    invoke-virtual {p1, v4}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 44
    new-instance v5, Lrx/internal/producers/ProducerArbiter;

    invoke-direct {v5}, Lrx/internal/producers/ProducerArbiter;-><init>()V

    .line 45
    .local v5, "pa":Lrx/internal/producers/ProducerArbiter;
    invoke-virtual {p1, v5}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 46
    new-instance v0, Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber;

    iget-object v2, p0, Lrx/internal/operators/OperatorRetryWithPredicate;->predicate:Lrx/functions/Func2;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber;-><init>(Lrx/Subscriber;Lrx/functions/Func2;Lrx/Scheduler$Worker;Lrx/subscriptions/SerialSubscription;Lrx/internal/producers/ProducerArbiter;)V

    return-object v0
.end method
