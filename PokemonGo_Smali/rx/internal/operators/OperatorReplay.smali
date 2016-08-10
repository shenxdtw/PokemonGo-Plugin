.class public final Lrx/internal/operators/OperatorReplay;
.super Lrx/observables/ConnectableObservable;
.source "OperatorReplay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;,
        Lrx/internal/operators/OperatorReplay$SizeBoundReplayBuffer;,
        Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;,
        Lrx/internal/operators/OperatorReplay$Node;,
        Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer;,
        Lrx/internal/operators/OperatorReplay$ReplayBuffer;,
        Lrx/internal/operators/OperatorReplay$InnerProducer;,
        Lrx/internal/operators/OperatorReplay$ReplaySubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/observables/ConnectableObservable",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final DEFAULT_UNBOUNDED_FACTORY:Lrx/functions/Func0;


# instance fields
.field final bufferFactory:Lrx/functions/Func0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func0",
            "<+",
            "Lrx/internal/operators/OperatorReplay$ReplayBuffer",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field final current:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lrx/internal/operators/OperatorReplay$ReplaySubscriber",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field final source:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable",
            "<+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    new-instance v0, Lrx/internal/operators/OperatorReplay$1;

    invoke-direct {v0}, Lrx/internal/operators/OperatorReplay$1;-><init>()V

    sput-object v0, Lrx/internal/operators/OperatorReplay;->DEFAULT_UNBOUNDED_FACTORY:Lrx/functions/Func0;

    return-void
.end method

.method private constructor <init>(Lrx/Observable$OnSubscribe;Lrx/Observable;Ljava/util/concurrent/atomic/AtomicReference;Lrx/functions/Func0;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable$OnSubscribe",
            "<TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lrx/internal/operators/OperatorReplay$ReplaySubscriber",
            "<TT;>;>;",
            "Lrx/functions/Func0",
            "<+",
            "Lrx/internal/operators/OperatorReplay$ReplayBuffer",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 240
    .local p0, "this":Lrx/internal/operators/OperatorReplay;, "Lrx/internal/operators/OperatorReplay<TT;>;"
    .local p1, "onSubscribe":Lrx/Observable$OnSubscribe;, "Lrx/Observable$OnSubscribe<TT;>;"
    .local p2, "source":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p3, "current":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lrx/internal/operators/OperatorReplay$ReplaySubscriber<TT;>;>;"
    .local p4, "bufferFactory":Lrx/functions/Func0;, "Lrx/functions/Func0<+Lrx/internal/operators/OperatorReplay$ReplayBuffer<TT;>;>;"
    invoke-direct {p0, p1}, Lrx/observables/ConnectableObservable;-><init>(Lrx/Observable$OnSubscribe;)V

    .line 241
    iput-object p2, p0, Lrx/internal/operators/OperatorReplay;->source:Lrx/Observable;

    .line 242
    iput-object p3, p0, Lrx/internal/operators/OperatorReplay;->current:Ljava/util/concurrent/atomic/AtomicReference;

    .line 243
    iput-object p4, p0, Lrx/internal/operators/OperatorReplay;->bufferFactory:Lrx/functions/Func0;

    .line 244
    return-void
.end method

.method public static create(Lrx/Observable;)Lrx/observables/ConnectableObservable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/observables/ConnectableObservable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 126
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    sget-object v0, Lrx/internal/operators/OperatorReplay;->DEFAULT_UNBOUNDED_FACTORY:Lrx/functions/Func0;

    invoke-static {p0, v0}, Lrx/internal/operators/OperatorReplay;->create(Lrx/Observable;Lrx/functions/Func0;)Lrx/observables/ConnectableObservable;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lrx/Observable;I)Lrx/observables/ConnectableObservable;
    .registers 3
    .param p1, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;I)",
            "Lrx/observables/ConnectableObservable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 137
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    const v0, 0x7fffffff

    if-ne p1, v0, :cond_a

    .line 138
    invoke-static {p0}, Lrx/internal/operators/OperatorReplay;->create(Lrx/Observable;)Lrx/observables/ConnectableObservable;

    move-result-object v0

    .line 140
    :goto_9
    return-object v0

    :cond_a
    new-instance v0, Lrx/internal/operators/OperatorReplay$5;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorReplay$5;-><init>(I)V

    invoke-static {p0, v0}, Lrx/internal/operators/OperatorReplay;->create(Lrx/Observable;Lrx/functions/Func0;)Lrx/observables/ConnectableObservable;

    move-result-object v0

    goto :goto_9
.end method

.method public static create(Lrx/Observable;JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/observables/ConnectableObservable;
    .registers 12
    .param p1, "maxAge"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/Scheduler;",
            ")",
            "Lrx/observables/ConnectableObservable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 158
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    const v6, 0x7fffffff

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v1 .. v6}, Lrx/internal/operators/OperatorReplay;->create(Lrx/Observable;JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;I)Lrx/observables/ConnectableObservable;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lrx/Observable;JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;I)Lrx/observables/ConnectableObservable;
    .registers 9
    .param p1, "maxAge"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lrx/Scheduler;
    .param p5, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/Scheduler;",
            "I)",
            "Lrx/observables/ConnectableObservable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 172
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 173
    .local v0, "maxAgeInMillis":J
    new-instance v2, Lrx/internal/operators/OperatorReplay$6;

    invoke-direct {v2, p5, v0, v1, p4}, Lrx/internal/operators/OperatorReplay$6;-><init>(IJLrx/Scheduler;)V

    invoke-static {p0, v2}, Lrx/internal/operators/OperatorReplay;->create(Lrx/Observable;Lrx/functions/Func0;)Lrx/observables/ConnectableObservable;

    move-result-object v2

    return-object v2
.end method

.method static create(Lrx/Observable;Lrx/functions/Func0;)Lrx/observables/ConnectableObservable;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/functions/Func0",
            "<+",
            "Lrx/internal/operators/OperatorReplay$ReplayBuffer",
            "<TT;>;>;)",
            "Lrx/observables/ConnectableObservable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 190
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p1, "bufferFactory":Lrx/functions/Func0;, "Lrx/functions/Func0<+Lrx/internal/operators/OperatorReplay$ReplayBuffer<TT;>;>;"
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 191
    .local v0, "curr":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lrx/internal/operators/OperatorReplay$ReplaySubscriber<TT;>;>;"
    new-instance v1, Lrx/internal/operators/OperatorReplay$7;

    invoke-direct {v1, v0, p1}, Lrx/internal/operators/OperatorReplay$7;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Lrx/functions/Func0;)V

    .line 235
    .local v1, "onSubscribe":Lrx/Observable$OnSubscribe;, "Lrx/Observable$OnSubscribe<TT;>;"
    new-instance v2, Lrx/internal/operators/OperatorReplay;

    invoke-direct {v2, v1, p0, v0, p1}, Lrx/internal/operators/OperatorReplay;-><init>(Lrx/Observable$OnSubscribe;Lrx/Observable;Ljava/util/concurrent/atomic/AtomicReference;Lrx/functions/Func0;)V

    return-object v2
.end method

.method public static multicastSelector(Lrx/functions/Func0;Lrx/functions/Func1;)Lrx/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func0",
            "<+",
            "Lrx/observables/ConnectableObservable",
            "<TU;>;>;",
            "Lrx/functions/Func1",
            "<-",
            "Lrx/Observable",
            "<TU;>;+",
            "Lrx/Observable",
            "<TR;>;>;)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "connectableFactory":Lrx/functions/Func0;, "Lrx/functions/Func0<+Lrx/observables/ConnectableObservable<TU;>;>;"
    .local p1, "selector":Lrx/functions/Func1;, "Lrx/functions/Func1<-Lrx/Observable<TU;>;+Lrx/Observable<TR;>;>;"
    new-instance v0, Lrx/internal/operators/OperatorReplay$2;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/OperatorReplay$2;-><init>(Lrx/functions/Func0;Lrx/functions/Func1;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static observeOn(Lrx/observables/ConnectableObservable;Lrx/Scheduler;)Lrx/observables/ConnectableObservable;
    .registers 5
    .param p1, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/observables/ConnectableObservable",
            "<TT;>;",
            "Lrx/Scheduler;",
            ")",
            "Lrx/observables/ConnectableObservable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 90
    .local p0, "co":Lrx/observables/ConnectableObservable;, "Lrx/observables/ConnectableObservable<TT;>;"
    invoke-virtual {p0, p1}, Lrx/observables/ConnectableObservable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 91
    .local v0, "observable":Lrx/Observable;, "Lrx/Observable<TT;>;"
    new-instance v1, Lrx/internal/operators/OperatorReplay$3;

    invoke-direct {v1, v0}, Lrx/internal/operators/OperatorReplay$3;-><init>(Lrx/Observable;)V

    .line 111
    .local v1, "onSubscribe":Lrx/Observable$OnSubscribe;, "Lrx/Observable$OnSubscribe<TT;>;"
    new-instance v2, Lrx/internal/operators/OperatorReplay$4;

    invoke-direct {v2, v1, p0}, Lrx/internal/operators/OperatorReplay$4;-><init>(Lrx/Observable$OnSubscribe;Lrx/observables/ConnectableObservable;)V

    return-object v2
.end method


# virtual methods
.method public connect(Lrx/functions/Action1;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1",
            "<-",
            "Lrx/Subscription;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorReplay;, "Lrx/internal/operators/OperatorReplay<TT;>;"
    .local p1, "connection":Lrx/functions/Action1;, "Lrx/functions/Action1<-Lrx/Subscription;>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 248
    const/4 v0, 0x0

    .line 253
    .local v0, "doConnect":Z
    :cond_3
    iget-object v3, p0, Lrx/internal/operators/OperatorReplay;->current:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;

    .line 255
    .local v1, "ps":Lrx/internal/operators/OperatorReplay$ReplaySubscriber;, "Lrx/internal/operators/OperatorReplay$ReplaySubscriber<TT;>;"
    if-eqz v1, :cond_13

    invoke-virtual {v1}, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->isUnsubscribed()Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 257
    :cond_13
    new-instance v2, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;

    iget-object v6, p0, Lrx/internal/operators/OperatorReplay;->current:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v3, p0, Lrx/internal/operators/OperatorReplay;->bufferFactory:Lrx/functions/Func0;

    invoke-interface {v3}, Lrx/functions/Func0;->call()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lrx/internal/operators/OperatorReplay$ReplayBuffer;

    invoke-direct {v2, v6, v3}, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Lrx/internal/operators/OperatorReplay$ReplayBuffer;)V

    .line 259
    .local v2, "u":Lrx/internal/operators/OperatorReplay$ReplaySubscriber;, "Lrx/internal/operators/OperatorReplay$ReplaySubscriber<TT;>;"
    invoke-virtual {v2}, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->init()V

    .line 261
    iget-object v3, p0, Lrx/internal/operators/OperatorReplay;->current:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 266
    move-object v1, v2

    .line 270
    .end local v2    # "u":Lrx/internal/operators/OperatorReplay$ReplaySubscriber;, "Lrx/internal/operators/OperatorReplay$ReplaySubscriber<TT;>;"
    :cond_2e
    iget-object v3, v1, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->shouldConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_4a

    iget-object v3, v1, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->shouldConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v5, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v3

    if-eqz v3, :cond_4a

    move v0, v4

    .line 286
    :goto_3f
    invoke-interface {p1, v1}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V

    .line 287
    if-eqz v0, :cond_49

    .line 288
    iget-object v3, p0, Lrx/internal/operators/OperatorReplay;->source:Lrx/Observable;

    invoke-virtual {v3, v1}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 290
    :cond_49
    return-void

    :cond_4a
    move v0, v5

    .line 270
    goto :goto_3f
.end method
