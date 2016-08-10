.class public final Lrx/internal/operators/CachedObservable;
.super Lrx/Observable;
.source "CachedObservable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/CachedObservable$ReplayProducer;,
        Lrx/internal/operators/CachedObservable$CachedSubscribe;,
        Lrx/internal/operators/CachedObservable$CacheState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Observable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final state:Lrx/internal/operators/CachedObservable$CacheState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/CachedObservable$CacheState",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lrx/Observable$OnSubscribe;Lrx/internal/operators/CachedObservable$CacheState;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable$OnSubscribe",
            "<TT;>;",
            "Lrx/internal/operators/CachedObservable$CacheState",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Lrx/internal/operators/CachedObservable;, "Lrx/internal/operators/CachedObservable<TT;>;"
    .local p1, "onSubscribe":Lrx/Observable$OnSubscribe;, "Lrx/Observable$OnSubscribe<TT;>;"
    .local p2, "state":Lrx/internal/operators/CachedObservable$CacheState;, "Lrx/internal/operators/CachedObservable$CacheState<TT;>;"
    invoke-direct {p0, p1}, Lrx/Observable;-><init>(Lrx/Observable$OnSubscribe;)V

    .line 68
    iput-object p2, p0, Lrx/internal/operators/CachedObservable;->state:Lrx/internal/operators/CachedObservable$CacheState;

    .line 69
    return-void
.end method

.method public static from(Lrx/Observable;)Lrx/internal/operators/CachedObservable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/internal/operators/CachedObservable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    const/16 v0, 0x10

    invoke-static {p0, v0}, Lrx/internal/operators/CachedObservable;->from(Lrx/Observable;I)Lrx/internal/operators/CachedObservable;

    move-result-object v0

    return-object v0
.end method

.method public static from(Lrx/Observable;I)Lrx/internal/operators/CachedObservable;
    .registers 6
    .param p1, "capacityHint"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;I)",
            "Lrx/internal/operators/CachedObservable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    const/4 v2, 0x1

    if-ge p1, v2, :cond_b

    .line 53
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "capacityHint > 0 required"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 55
    :cond_b
    new-instance v1, Lrx/internal/operators/CachedObservable$CacheState;

    invoke-direct {v1, p0, p1}, Lrx/internal/operators/CachedObservable$CacheState;-><init>(Lrx/Observable;I)V

    .line 56
    .local v1, "state":Lrx/internal/operators/CachedObservable$CacheState;, "Lrx/internal/operators/CachedObservable$CacheState<TT;>;"
    new-instance v0, Lrx/internal/operators/CachedObservable$CachedSubscribe;

    invoke-direct {v0, v1}, Lrx/internal/operators/CachedObservable$CachedSubscribe;-><init>(Lrx/internal/operators/CachedObservable$CacheState;)V

    .line 57
    .local v0, "onSubscribe":Lrx/internal/operators/CachedObservable$CachedSubscribe;, "Lrx/internal/operators/CachedObservable$CachedSubscribe<TT;>;"
    new-instance v2, Lrx/internal/operators/CachedObservable;

    invoke-direct {v2, v0, v1}, Lrx/internal/operators/CachedObservable;-><init>(Lrx/Observable$OnSubscribe;Lrx/internal/operators/CachedObservable$CacheState;)V

    return-object v2
.end method


# virtual methods
.method hasObservers()Z
    .registers 2

    .prologue
    .line 84
    .local p0, "this":Lrx/internal/operators/CachedObservable;, "Lrx/internal/operators/CachedObservable<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/CachedObservable;->state:Lrx/internal/operators/CachedObservable$CacheState;

    iget-object v0, v0, Lrx/internal/operators/CachedObservable$CacheState;->producers:[Lrx/internal/operators/CachedObservable$ReplayProducer;

    array-length v0, v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method isConnected()Z
    .registers 2

    .prologue
    .line 76
    .local p0, "this":Lrx/internal/operators/CachedObservable;, "Lrx/internal/operators/CachedObservable<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/CachedObservable;->state:Lrx/internal/operators/CachedObservable$CacheState;

    iget-boolean v0, v0, Lrx/internal/operators/CachedObservable$CacheState;->isConnected:Z

    return v0
.end method
