.class final Lrx/internal/operators/CachedObservable$CachedSubscribe;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "CachedObservable.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/CachedObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CachedSubscribe"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "Lrx/Observable$OnSubscribe",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x271aaa367272024eL


# instance fields
.field final state:Lrx/internal/operators/CachedObservable$CacheState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/CachedObservable$CacheState",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/internal/operators/CachedObservable$CacheState;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/CachedObservable$CacheState",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 234
    .local p0, "this":Lrx/internal/operators/CachedObservable$CachedSubscribe;, "Lrx/internal/operators/CachedObservable$CachedSubscribe<TT;>;"
    .local p1, "state":Lrx/internal/operators/CachedObservable$CacheState;, "Lrx/internal/operators/CachedObservable$CacheState<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 235
    iput-object p1, p0, Lrx/internal/operators/CachedObservable$CachedSubscribe;->state:Lrx/internal/operators/CachedObservable$CacheState;

    .line 236
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 230
    .local p0, "this":Lrx/internal/operators/CachedObservable$CachedSubscribe;, "Lrx/internal/operators/CachedObservable$CachedSubscribe<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/CachedObservable$CachedSubscribe;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 240
    .local p0, "this":Lrx/internal/operators/CachedObservable$CachedSubscribe;, "Lrx/internal/operators/CachedObservable$CachedSubscribe<TT;>;"
    .local p1, "t":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lrx/internal/operators/CachedObservable$ReplayProducer;

    iget-object v1, p0, Lrx/internal/operators/CachedObservable$CachedSubscribe;->state:Lrx/internal/operators/CachedObservable$CacheState;

    invoke-direct {v0, p1, v1}, Lrx/internal/operators/CachedObservable$ReplayProducer;-><init>(Lrx/Subscriber;Lrx/internal/operators/CachedObservable$CacheState;)V

    .line 241
    .local v0, "rp":Lrx/internal/operators/CachedObservable$ReplayProducer;, "Lrx/internal/operators/CachedObservable$ReplayProducer<TT;>;"
    iget-object v1, p0, Lrx/internal/operators/CachedObservable$CachedSubscribe;->state:Lrx/internal/operators/CachedObservable$CacheState;

    invoke-virtual {v1, v0}, Lrx/internal/operators/CachedObservable$CacheState;->addProducer(Lrx/internal/operators/CachedObservable$ReplayProducer;)V

    .line 243
    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 244
    invoke-virtual {p1, v0}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 247
    invoke-virtual {p0}, Lrx/internal/operators/CachedObservable$CachedSubscribe;->get()Z

    move-result v1

    if-nez v1, :cond_25

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lrx/internal/operators/CachedObservable$CachedSubscribe;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 248
    iget-object v1, p0, Lrx/internal/operators/CachedObservable$CachedSubscribe;->state:Lrx/internal/operators/CachedObservable$CacheState;

    invoke-virtual {v1}, Lrx/internal/operators/CachedObservable$CacheState;->connect()V

    .line 252
    :cond_25
    return-void
.end method
