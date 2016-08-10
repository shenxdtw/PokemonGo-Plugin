.class public final Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;
.super Lrx/Subscriber;
.source "OperatorGroupBy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorGroupBy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GroupBySubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final CANCELLED:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater",
            "<",
            "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;",
            ">;"
        }
    .end annotation
.end field

.field static final GROUP_COUNT:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater",
            "<",
            "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;",
            ">;"
        }
    .end annotation
.end field

.field static final NULL_KEY:Ljava/lang/Object;

.field static final REQUESTED:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater",
            "<",
            "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;",
            ">;"
        }
    .end annotation
.end field

.field static final WIP:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater",
            "<",
            "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final actual:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-",
            "Lrx/observables/GroupedObservable",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final bufferSize:I

.field volatile cancelled:I

.field final delayError:Z

.field volatile done:Z

.field error:Ljava/lang/Throwable;

.field volatile groupCount:I

.field final groups:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lrx/internal/operators/OperatorGroupBy$GroupedUnicast",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final keySelector:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<-TT;+TK;>;"
        }
    .end annotation
.end field

.field final producer:Lrx/internal/operators/OperatorGroupBy$GroupByProducer;

.field final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lrx/observables/GroupedObservable",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field volatile requested:J

.field final s:Lrx/internal/producers/ProducerArbiter;

.field final valueSelector:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<-TT;+TV;>;"
        }
    .end annotation
.end field

.field volatile wip:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 105
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->NULL_KEY:Ljava/lang/Object;

    .line 111
    const-class v0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;

    const-string v1, "cancelled"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->CANCELLED:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 116
    const-class v0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;

    const-string v1, "requested"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->REQUESTED:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 121
    const-class v0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;

    const-string v1, "groupCount"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->GROUP_COUNT:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 129
    const-class v0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;

    const-string v1, "wip"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->WIP:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lrx/Subscriber;Lrx/functions/Func1;Lrx/functions/Func1;IZ)V
    .registers 10
    .param p4, "bufferSize"    # I
    .param p5, "delayError"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Lrx/observables/GroupedObservable",
            "<TK;TV;>;>;",
            "Lrx/functions/Func1",
            "<-TT;+TK;>;",
            "Lrx/functions/Func1",
            "<-TT;+TV;>;IZ)V"
        }
    .end annotation

    .prologue
    .line 132
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber<TT;TK;TV;>;"
    .local p1, "actual":Lrx/Subscriber;, "Lrx/Subscriber<-Lrx/observables/GroupedObservable<TK;TV;>;>;"
    .local p2, "keySelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TK;>;"
    .local p3, "valueSelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TV;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 133
    iput-object p1, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->actual:Lrx/Subscriber;

    .line 134
    iput-object p2, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->keySelector:Lrx/functions/Func1;

    .line 135
    iput-object p3, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->valueSelector:Lrx/functions/Func1;

    .line 136
    iput p4, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->bufferSize:I

    .line 137
    iput-boolean p5, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->delayError:Z

    .line 138
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->groups:Ljava/util/Map;

    .line 139
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->queue:Ljava/util/Queue;

    .line 140
    sget-object v0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->GROUP_COUNT:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->lazySet(Ljava/lang/Object;I)V

    .line 141
    new-instance v0, Lrx/internal/producers/ProducerArbiter;

    invoke-direct {v0}, Lrx/internal/producers/ProducerArbiter;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->s:Lrx/internal/producers/ProducerArbiter;

    .line 142
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->s:Lrx/internal/producers/ProducerArbiter;

    int-to-long v2, p4

    invoke-virtual {v0, v2, v3}, Lrx/internal/producers/ProducerArbiter;->request(J)V

    .line 143
    new-instance v0, Lrx/internal/operators/OperatorGroupBy$GroupByProducer;

    invoke-direct {v0, p0}, Lrx/internal/operators/OperatorGroupBy$GroupByProducer;-><init>(Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;)V

    iput-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->producer:Lrx/internal/operators/OperatorGroupBy$GroupByProducer;

    .line 144
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 4

    .prologue
    .line 245
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber<TT;TK;TV;>;"
    sget-object v0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->CANCELLED:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 246
    sget-object v0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->GROUP_COUNT:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_15

    .line 247
    invoke-virtual {p0}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->unsubscribe()V

    .line 250
    :cond_15
    return-void
.end method

.method public cancel(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .prologue
    .line 253
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber<TT;TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    if-eqz p1, :cond_17

    move-object v0, p1

    .line 254
    .local v0, "mapKey":Ljava/lang/Object;
    :goto_3
    iget-object v1, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->groups:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 255
    sget-object v1, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->GROUP_COUNT:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    move-result v1

    if-nez v1, :cond_16

    .line 256
    invoke-virtual {p0}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->unsubscribe()V

    .line 259
    :cond_16
    return-void

    .line 253
    .end local v0    # "mapKey":Ljava/lang/Object;
    :cond_17
    sget-object v0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->NULL_KEY:Ljava/lang/Object;

    goto :goto_3
.end method

.method checkTerminated(ZZLrx/Subscriber;Ljava/util/Queue;)Z
    .registers 8
    .param p1, "d"    # Z
    .param p2, "empty"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lrx/Subscriber",
            "<-",
            "Lrx/observables/GroupedObservable",
            "<TK;TV;>;>;",
            "Ljava/util/Queue",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber<TT;TK;TV;>;"
    .local p3, "a":Lrx/Subscriber;, "Lrx/Subscriber<-Lrx/observables/GroupedObservable<TK;TV;>;>;"
    .local p4, "q":Ljava/util/Queue;, "Ljava/util/Queue<*>;"
    const/4 v1, 0x1

    .line 330
    if-eqz p1, :cond_13

    .line 331
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->error:Ljava/lang/Throwable;

    .line 332
    .local v0, "err":Ljava/lang/Throwable;
    if-eqz v0, :cond_b

    .line 333
    invoke-virtual {p0, p3, p4, v0}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->errorAll(Lrx/Subscriber;Ljava/util/Queue;Ljava/lang/Throwable;)V

    .line 341
    .end local v0    # "err":Ljava/lang/Throwable;
    :goto_a
    return v1

    .line 336
    .restart local v0    # "err":Ljava/lang/Throwable;
    :cond_b
    if-eqz p2, :cond_13

    .line 337
    iget-object v2, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {v2}, Lrx/Subscriber;->onCompleted()V

    goto :goto_a

    .line 341
    .end local v0    # "err":Ljava/lang/Throwable;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method drain()V
    .registers 15

    .prologue
    .line 262
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber<TT;TK;TV;>;"
    sget-object v11, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->WIP:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v11, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndIncrement(Ljava/lang/Object;)I

    move-result v11

    if-eqz v11, :cond_9

    .line 314
    :cond_8
    :goto_8
    return-void

    .line 266
    :cond_9
    const/4 v5, 0x1

    .line 268
    .local v5, "missed":I
    iget-object v6, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->queue:Ljava/util/Queue;

    .line 269
    .local v6, "q":Ljava/util/Queue;, "Ljava/util/Queue<Lrx/observables/GroupedObservable<TK;TV;>;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->actual:Lrx/Subscriber;

    .line 273
    .local v0, "a":Lrx/Subscriber;, "Lrx/Subscriber<-Lrx/observables/GroupedObservable<TK;TV;>;>;"
    :cond_e
    iget-boolean v11, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->done:Z

    invoke-interface {v6}, Ljava/util/Queue;->isEmpty()Z

    move-result v12

    invoke-virtual {p0, v11, v12, v0, v6}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->checkTerminated(ZZLrx/Subscriber;Ljava/util/Queue;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 277
    iget-wide v8, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->requested:J

    .line 278
    .local v8, "r":J
    const-wide v12, 0x7fffffffffffffffL

    cmp-long v11, v8, v12

    if-nez v11, :cond_5e

    const/4 v10, 0x1

    .line 279
    .local v10, "unbounded":Z
    :goto_26
    const-wide/16 v2, 0x0

    .line 281
    .local v2, "e":J
    :goto_28
    const-wide/16 v12, 0x0

    cmp-long v11, v8, v12

    if-eqz v11, :cond_41

    .line 282
    iget-boolean v1, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->done:Z

    .line 284
    .local v1, "d":Z
    invoke-interface {v6}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lrx/observables/GroupedObservable;

    .line 286
    .local v7, "t":Lrx/observables/GroupedObservable;, "Lrx/observables/GroupedObservable<TK;TV;>;"
    if-nez v7, :cond_60

    const/4 v4, 0x1

    .line 288
    .local v4, "empty":Z
    :goto_39
    invoke-virtual {p0, v1, v4, v0, v6}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->checkTerminated(ZZLrx/Subscriber;Ljava/util/Queue;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 292
    if-eqz v4, :cond_62

    .line 302
    .end local v1    # "d":Z
    .end local v4    # "empty":Z
    .end local v7    # "t":Lrx/observables/GroupedObservable;, "Lrx/observables/GroupedObservable<TK;TV;>;"
    :cond_41
    const-wide/16 v12, 0x0

    cmp-long v11, v2, v12

    if-eqz v11, :cond_54

    .line 303
    if-nez v10, :cond_4e

    .line 304
    sget-object v11, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->REQUESTED:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v11, p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    .line 306
    :cond_4e
    iget-object v11, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->s:Lrx/internal/producers/ProducerArbiter;

    neg-long v12, v2

    invoke-virtual {v11, v12, v13}, Lrx/internal/producers/ProducerArbiter;->request(J)V

    .line 309
    :cond_54
    sget-object v11, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->WIP:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    neg-int v12, v5

    invoke-virtual {v11, p0, v12}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->addAndGet(Ljava/lang/Object;I)I

    move-result v5

    .line 310
    if-nez v5, :cond_e

    goto :goto_8

    .line 278
    .end local v2    # "e":J
    .end local v10    # "unbounded":Z
    :cond_5e
    const/4 v10, 0x0

    goto :goto_26

    .line 286
    .restart local v1    # "d":Z
    .restart local v2    # "e":J
    .restart local v7    # "t":Lrx/observables/GroupedObservable;, "Lrx/observables/GroupedObservable<TK;TV;>;"
    .restart local v10    # "unbounded":Z
    :cond_60
    const/4 v4, 0x0

    goto :goto_39

    .line 296
    .restart local v4    # "empty":Z
    :cond_62
    invoke-virtual {v0, v7}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 298
    const-wide/16 v12, 0x1

    sub-long/2addr v8, v12

    .line 299
    const-wide/16 v12, 0x1

    sub-long/2addr v2, v12

    .line 300
    goto :goto_28
.end method

.method errorAll(Lrx/Subscriber;Ljava/util/Queue;Ljava/lang/Throwable;)V
    .registers 8
    .param p3, "ex"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Lrx/observables/GroupedObservable",
            "<TK;TV;>;>;",
            "Ljava/util/Queue",
            "<*>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 317
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber<TT;TK;TV;>;"
    .local p1, "a":Lrx/Subscriber;, "Lrx/Subscriber<-Lrx/observables/GroupedObservable<TK;TV;>;>;"
    .local p2, "q":Ljava/util/Queue;, "Ljava/util/Queue<*>;"
    invoke-interface {p2}, Ljava/util/Queue;->clear()V

    .line 318
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->groups:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 319
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lrx/internal/operators/OperatorGroupBy$GroupedUnicast<TK;TV;>;>;"
    iget-object v3, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->groups:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 321
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/OperatorGroupBy$GroupedUnicast;

    .line 322
    .local v0, "e":Lrx/internal/operators/OperatorGroupBy$GroupedUnicast;, "Lrx/internal/operators/OperatorGroupBy$GroupedUnicast<TK;TV;>;"
    invoke-virtual {v0, p3}, Lrx/internal/operators/OperatorGroupBy$GroupedUnicast;->onError(Ljava/lang/Throwable;)V

    goto :goto_17

    .line 325
    .end local v0    # "e":Lrx/internal/operators/OperatorGroupBy$GroupedUnicast;, "Lrx/internal/operators/OperatorGroupBy$GroupedUnicast<TK;TV;>;"
    :cond_27
    invoke-virtual {p1, p3}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 326
    return-void
.end method

.method public onCompleted()V
    .registers 4

    .prologue
    .line 219
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber<TT;TK;TV;>;"
    iget-boolean v2, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->done:Z

    if-eqz v2, :cond_5

    .line 231
    :goto_4
    return-void

    .line 223
    :cond_5
    iget-object v2, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->groups:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/OperatorGroupBy$GroupedUnicast;

    .line 224
    .local v0, "e":Lrx/internal/operators/OperatorGroupBy$GroupedUnicast;, "Lrx/internal/operators/OperatorGroupBy$GroupedUnicast<TK;TV;>;"
    invoke-virtual {v0}, Lrx/internal/operators/OperatorGroupBy$GroupedUnicast;->onComplete()V

    goto :goto_f

    .line 226
    .end local v0    # "e":Lrx/internal/operators/OperatorGroupBy$GroupedUnicast;, "Lrx/internal/operators/OperatorGroupBy$GroupedUnicast<TK;TV;>;"
    :cond_1f
    iget-object v2, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->groups:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 228
    const/4 v2, 0x1

    iput-boolean v2, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->done:Z

    .line 229
    sget-object v2, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->GROUP_COUNT:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    .line 230
    invoke-virtual {p0}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->drain()V

    goto :goto_4
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 207
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber<TT;TK;TV;>;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->done:Z

    if-eqz v0, :cond_10

    .line 208
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v0

    invoke-virtual {v0}, Lrx/plugins/RxJavaPlugins;->getErrorHandler()Lrx/plugins/RxJavaErrorHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/plugins/RxJavaErrorHandler;->handleError(Ljava/lang/Throwable;)V

    .line 215
    :goto_f
    return-void

    .line 211
    :cond_10
    iput-object p1, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->error:Ljava/lang/Throwable;

    .line 212
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->done:Z

    .line 213
    sget-object v0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->GROUP_COUNT:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    .line 214
    invoke-virtual {p0}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->drain()V

    goto :goto_f
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 153
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber<TT;TK;TV;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v8, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->done:Z

    if-eqz v8, :cond_5

    .line 203
    :cond_4
    :goto_4
    return-void

    .line 157
    :cond_5
    iget-object v6, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->queue:Ljava/util/Queue;

    .line 158
    .local v6, "q":Ljava/util/Queue;, "Ljava/util/Queue<Lrx/observables/GroupedObservable<TK;TV;>;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->actual:Lrx/Subscriber;

    .line 162
    .local v0, "a":Lrx/Subscriber;, "Lrx/Subscriber<-Lrx/observables/GroupedObservable<TK;TV;>;>;"
    :try_start_9
    iget-object v8, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->keySelector:Lrx/functions/Func1;

    invoke-interface {v8, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_e} :catch_4d

    move-result-object v3

    .line 169
    .local v3, "key":Ljava/lang/Object;, "TK;"
    const/4 v5, 0x1

    .line 170
    .local v5, "notNew":Z
    if-eqz v3, :cond_55

    move-object v4, v3

    .line 171
    .local v4, "mapKey":Ljava/lang/Object;
    :goto_13
    iget-object v8, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->groups:Ljava/util/Map;

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrx/internal/operators/OperatorGroupBy$GroupedUnicast;

    .line 172
    .local v2, "group":Lrx/internal/operators/OperatorGroupBy$GroupedUnicast;, "Lrx/internal/operators/OperatorGroupBy$GroupedUnicast<TK;TV;>;"
    if-nez v2, :cond_3a

    .line 175
    iget v8, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->cancelled:I

    if-nez v8, :cond_4

    .line 176
    iget v8, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->bufferSize:I

    iget-boolean v9, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->delayError:Z

    invoke-static {v3, v8, p0, v9}, Lrx/internal/operators/OperatorGroupBy$GroupedUnicast;->createWith(Ljava/lang/Object;ILrx/internal/operators/OperatorGroupBy$GroupBySubscriber;Z)Lrx/internal/operators/OperatorGroupBy$GroupedUnicast;

    move-result-object v2

    .line 177
    iget-object v8, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->groups:Ljava/util/Map;

    invoke-interface {v8, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v8, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->GROUP_COUNT:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v8, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndIncrement(Ljava/lang/Object;)I

    .line 181
    const/4 v5, 0x0

    .line 182
    invoke-interface {v6, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 183
    invoke-virtual {p0}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->drain()V

    .line 191
    :cond_3a
    :try_start_3a
    iget-object v8, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->valueSelector:Lrx/functions/Func1;

    invoke-interface {v8, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3f} :catch_58

    move-result-object v7

    .line 198
    .local v7, "v":Ljava/lang/Object;, "TV;"
    invoke-virtual {v2, v7}, Lrx/internal/operators/OperatorGroupBy$GroupedUnicast;->onNext(Ljava/lang/Object;)V

    .line 200
    if-eqz v5, :cond_4

    .line 201
    iget-object v8, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->s:Lrx/internal/producers/ProducerArbiter;

    const-wide/16 v10, 0x1

    invoke-virtual {v8, v10, v11}, Lrx/internal/producers/ProducerArbiter;->request(J)V

    goto :goto_4

    .line 163
    .end local v2    # "group":Lrx/internal/operators/OperatorGroupBy$GroupedUnicast;, "Lrx/internal/operators/OperatorGroupBy$GroupedUnicast<TK;TV;>;"
    .end local v3    # "key":Ljava/lang/Object;, "TK;"
    .end local v4    # "mapKey":Ljava/lang/Object;
    .end local v5    # "notNew":Z
    .end local v7    # "v":Ljava/lang/Object;, "TV;"
    :catch_4d
    move-exception v1

    .line 164
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->unsubscribe()V

    .line 165
    invoke-virtual {p0, v0, v6, v1}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->errorAll(Lrx/Subscriber;Ljava/util/Queue;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 170
    .end local v1    # "ex":Ljava/lang/Throwable;
    .restart local v3    # "key":Ljava/lang/Object;, "TK;"
    .restart local v5    # "notNew":Z
    :cond_55
    sget-object v4, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->NULL_KEY:Ljava/lang/Object;

    goto :goto_13

    .line 192
    .restart local v2    # "group":Lrx/internal/operators/OperatorGroupBy$GroupedUnicast;, "Lrx/internal/operators/OperatorGroupBy$GroupedUnicast<TK;TV;>;"
    .restart local v4    # "mapKey":Ljava/lang/Object;
    :catch_58
    move-exception v1

    .line 193
    .restart local v1    # "ex":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->unsubscribe()V

    .line 194
    invoke-virtual {p0, v0, v6, v1}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->errorAll(Lrx/Subscriber;Ljava/util/Queue;Ljava/lang/Throwable;)V

    goto :goto_4
.end method

.method public requestMore(J)V
    .registers 6
    .param p1, "n"    # J

    .prologue
    .line 234
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber<TT;TK;TV;>;"
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_1f

    .line 235
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "n >= 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_1f
    sget-object v0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->REQUESTED:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-static {v0, p0, p1, p2}, Lrx/internal/operators/BackpressureUtils;->getAndAddRequest(Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;Ljava/lang/Object;J)J

    .line 239
    invoke-virtual {p0}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->drain()V

    .line 240
    return-void
.end method

.method public setProducer(Lrx/Producer;)V
    .registers 3
    .param p1, "s"    # Lrx/Producer;

    .prologue
    .line 148
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber<TT;TK;TV;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->s:Lrx/internal/producers/ProducerArbiter;

    invoke-virtual {v0, p1}, Lrx/internal/producers/ProducerArbiter;->setProducer(Lrx/Producer;)V

    .line 149
    return-void
.end method
