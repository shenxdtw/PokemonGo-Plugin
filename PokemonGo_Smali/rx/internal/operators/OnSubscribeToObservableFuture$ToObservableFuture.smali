.class Lrx/internal/operators/OnSubscribeToObservableFuture$ToObservableFuture;
.super Ljava/lang/Object;
.source "OnSubscribeToObservableFuture.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeToObservableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ToObservableFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final that:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<+TT;>;"
        }
    .end annotation
.end field

.field private final time:J

.field private final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Future;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lrx/internal/operators/OnSubscribeToObservableFuture$ToObservableFuture;, "Lrx/internal/operators/OnSubscribeToObservableFuture$ToObservableFuture<TT;>;"
    .local p1, "that":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<+TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeToObservableFuture$ToObservableFuture;->that:Ljava/util/concurrent/Future;

    .line 50
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lrx/internal/operators/OnSubscribeToObservableFuture$ToObservableFuture;->time:J

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeToObservableFuture$ToObservableFuture;->unit:Ljava/util/concurrent/TimeUnit;

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)V
    .registers 5
    .param p2, "time"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<+TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lrx/internal/operators/OnSubscribeToObservableFuture$ToObservableFuture;, "Lrx/internal/operators/OnSubscribeToObservableFuture$ToObservableFuture<TT;>;"
    .local p1, "that":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<+TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeToObservableFuture$ToObservableFuture;->that:Ljava/util/concurrent/Future;

    .line 56
    iput-wide p2, p0, Lrx/internal/operators/OnSubscribeToObservableFuture$ToObservableFuture;->time:J

    .line 57
    iput-object p4, p0, Lrx/internal/operators/OnSubscribeToObservableFuture$ToObservableFuture;->unit:Ljava/util/concurrent/TimeUnit;

    .line 58
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 43
    .local p0, "this":Lrx/internal/operators/OnSubscribeToObservableFuture$ToObservableFuture;, "Lrx/internal/operators/OnSubscribeToObservableFuture$ToObservableFuture<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OnSubscribeToObservableFuture$ToObservableFuture;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "this":Lrx/internal/operators/OnSubscribeToObservableFuture$ToObservableFuture;, "Lrx/internal/operators/OnSubscribeToObservableFuture$ToObservableFuture<TT;>;"
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v2, Lrx/internal/operators/OnSubscribeToObservableFuture$ToObservableFuture$1;

    invoke-direct {v2, p0}, Lrx/internal/operators/OnSubscribeToObservableFuture$ToObservableFuture$1;-><init>(Lrx/internal/operators/OnSubscribeToObservableFuture$ToObservableFuture;)V

    invoke-static {v2}, Lrx/subscriptions/Subscriptions;->create(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v2

    invoke-virtual {p1, v2}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 71
    :try_start_c
    invoke-virtual {p1}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 89
    :cond_12
    :goto_12
    return-void

    .line 74
    :cond_13
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeToObservableFuture$ToObservableFuture;->unit:Ljava/util/concurrent/TimeUnit;

    if-nez v2, :cond_2f

    iget-object v2, p0, Lrx/internal/operators/OnSubscribeToObservableFuture$ToObservableFuture;->that:Ljava/util/concurrent/Future;

    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    .line 75
    .local v1, "value":Ljava/lang/Object;, "TT;"
    :goto_1d
    invoke-virtual {p1, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 76
    invoke-virtual {p1}, Lrx/Subscriber;->onCompleted()V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_23} :catch_24

    goto :goto_12

    .line 77
    .end local v1    # "value":Ljava/lang/Object;, "TT;"
    :catch_24
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {p1}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v2

    if-nez v2, :cond_12

    .line 87
    invoke-static {v0, p1}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;)V

    goto :goto_12

    .line 74
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_2f
    :try_start_2f
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeToObservableFuture$ToObservableFuture;->that:Ljava/util/concurrent/Future;

    iget-wide v4, p0, Lrx/internal/operators/OnSubscribeToObservableFuture$ToObservableFuture;->time:J

    iget-object v3, p0, Lrx/internal/operators/OnSubscribeToObservableFuture$ToObservableFuture;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v4, v5, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_38} :catch_24

    move-result-object v1

    goto :goto_1d
.end method
