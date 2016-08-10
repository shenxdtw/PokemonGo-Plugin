.class final Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;
.super Lrx/Subscriber;
.source "CompletableOnSubscribeMerge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/CompletableOnSubscribeMerge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CompletableMergeSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<",
        "Lrx/Completable;",
        ">;"
    }
.end annotation


# static fields
.field static final ERRORS:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater",
            "<",
            "Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;",
            "Ljava/util/Queue;",
            ">;"
        }
    .end annotation
.end field

.field static final ONCE:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater",
            "<",
            "Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final actual:Lrx/Completable$CompletableSubscriber;

.field final delayErrors:Z

.field volatile done:Z

.field volatile errors:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final maxConcurrency:I

.field volatile once:I

.field final set:Lrx/subscriptions/CompositeSubscription;

.field final wip:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 59
    const-class v0, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;

    const-class v1, Ljava/util/Queue;

    const-string v2, "errors"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;->ERRORS:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 63
    const-class v0, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;

    const-string v1, "once"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;->ONCE:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lrx/Completable$CompletableSubscriber;IZ)V
    .registers 6
    .param p1, "actual"    # Lrx/Completable$CompletableSubscriber;
    .param p2, "maxConcurrency"    # I
    .param p3, "delayErrors"    # Z

    .prologue
    .line 68
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 69
    iput-object p1, p0, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;->actual:Lrx/Completable$CompletableSubscriber;

    .line 70
    iput p2, p0, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;->maxConcurrency:I

    .line 71
    iput-boolean p3, p0, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;->delayErrors:Z

    .line 72
    new-instance v0, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v0}, Lrx/subscriptions/CompositeSubscription;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;->set:Lrx/subscriptions/CompositeSubscription;

    .line 73
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 74
    const v0, 0x7fffffff

    if-ne p2, v0, :cond_26

    .line 75
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;->request(J)V

    .line 79
    :goto_25
    return-void

    .line 77
    :cond_26
    int-to-long v0, p2

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;->request(J)V

    goto :goto_25
.end method

.method static synthetic access$000(Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;J)V
    .registers 4
    .param p0, "x0"    # Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;
    .param p1, "x1"    # J

    .prologue
    .line 48
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;->request(J)V

    return-void
.end method

.method static synthetic access$100(Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;J)V
    .registers 4
    .param p0, "x0"    # Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;
    .param p1, "x1"    # J

    .prologue
    .line 48
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;->request(J)V

    return-void
.end method


# virtual methods
.method getOrCreateErrors()Ljava/util/Queue;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;->errors:Ljava/util/Queue;

    .line 84
    .local v0, "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Throwable;>;"
    if-eqz v0, :cond_6

    move-object v1, v0

    .line 92
    :goto_5
    return-object v1

    .line 88
    :cond_6
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .end local v0    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Throwable;>;"
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 89
    .restart local v0    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Throwable;>;"
    sget-object v1, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;->ERRORS:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    move-object v1, v0

    .line 90
    goto :goto_5

    .line 92
    :cond_16
    iget-object v1, p0, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;->errors:Ljava/util/Queue;

    goto :goto_5
.end method

.method public onCompleted()V
    .registers 2

    .prologue
    .line 160
    iget-boolean v0, p0, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;->done:Z

    if-eqz v0, :cond_5

    .line 165
    :goto_4
    return-void

    .line 163
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;->done:Z

    .line 164
    invoke-virtual {p0}, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;->terminate()V

    goto :goto_4
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 149
    iget-boolean v0, p0, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;->done:Z

    if-eqz v0, :cond_10

    .line 150
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v0

    invoke-virtual {v0}, Lrx/plugins/RxJavaPlugins;->getErrorHandler()Lrx/plugins/RxJavaErrorHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/plugins/RxJavaErrorHandler;->handleError(Ljava/lang/Throwable;)V

    .line 156
    :goto_f
    return-void

    .line 153
    :cond_10
    invoke-virtual {p0}, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;->getOrCreateErrors()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;->done:Z

    .line 155
    invoke-virtual {p0}, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;->terminate()V

    goto :goto_f
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 48
    check-cast p1, Lrx/Completable;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;->onNext(Lrx/Completable;)V

    return-void
.end method

.method public onNext(Lrx/Completable;)V
    .registers 3
    .param p1, "t"    # Lrx/Completable;

    .prologue
    .line 97
    iget-boolean v0, p0, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;->done:Z

    if-eqz v0, :cond_5

    .line 145
    :goto_4
    return-void

    .line 101
    :cond_5
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 103
    new-instance v0, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber$1;

    invoke-direct {v0, p0}, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber$1;-><init>(Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;)V

    invoke-virtual {p1, v0}, Lrx/Completable;->subscribe(Lrx/Completable$CompletableSubscriber;)V

    goto :goto_4
.end method

.method terminate()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 168
    iget-object v2, p0, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v2

    if-nez v2, :cond_38

    .line 169
    iget-object v1, p0, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;->errors:Ljava/util/Queue;

    .line 170
    .local v1, "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Throwable;>;"
    if-eqz v1, :cond_14

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 171
    :cond_14
    iget-object v2, p0, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;->actual:Lrx/Completable$CompletableSubscriber;

    invoke-interface {v2}, Lrx/Completable$CompletableSubscriber;->onCompleted()V

    .line 192
    .end local v1    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Throwable;>;"
    :cond_19
    :goto_19
    return-void

    .line 173
    .restart local v1    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Throwable;>;"
    :cond_1a
    invoke-static {v1}, Lrx/internal/operators/CompletableOnSubscribeMerge;->collectErrors(Ljava/util/Queue;)Ljava/lang/Throwable;

    move-result-object v0

    .line 174
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v2, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;->ONCE:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v2, p0, v3, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 175
    iget-object v2, p0, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;->actual:Lrx/Completable$CompletableSubscriber;

    invoke-interface {v2, v0}, Lrx/Completable$CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_19

    .line 177
    :cond_2c
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v2

    invoke-virtual {v2}, Lrx/plugins/RxJavaPlugins;->getErrorHandler()Lrx/plugins/RxJavaErrorHandler;

    move-result-object v2

    invoke-virtual {v2, v0}, Lrx/plugins/RxJavaErrorHandler;->handleError(Ljava/lang/Throwable;)V

    goto :goto_19

    .line 181
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Throwable;>;"
    :cond_38
    iget-boolean v2, p0, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;->delayErrors:Z

    if-nez v2, :cond_19

    .line 182
    iget-object v1, p0, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;->errors:Ljava/util/Queue;

    .line 183
    .restart local v1    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Throwable;>;"
    if-eqz v1, :cond_19

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_19

    .line 184
    invoke-static {v1}, Lrx/internal/operators/CompletableOnSubscribeMerge;->collectErrors(Ljava/util/Queue;)Ljava/lang/Throwable;

    move-result-object v0

    .line 185
    .restart local v0    # "e":Ljava/lang/Throwable;
    sget-object v2, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;->ONCE:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v2, p0, v3, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 186
    iget-object v2, p0, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;->actual:Lrx/Completable$CompletableSubscriber;

    invoke-interface {v2, v0}, Lrx/Completable$CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_19

    .line 188
    :cond_58
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v2

    invoke-virtual {v2}, Lrx/plugins/RxJavaPlugins;->getErrorHandler()Lrx/plugins/RxJavaErrorHandler;

    move-result-object v2

    invoke-virtual {v2, v0}, Lrx/plugins/RxJavaErrorHandler;->handleError(Ljava/lang/Throwable;)V

    goto :goto_19
.end method
