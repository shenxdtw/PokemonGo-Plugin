.class final Lrx/schedulers/CachedThreadScheduler$EventLoopWorker;
.super Lrx/Scheduler$Worker;
.source "CachedThreadScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/schedulers/CachedThreadScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EventLoopWorker"
.end annotation


# static fields
.field static final ONCE_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater",
            "<",
            "Lrx/schedulers/CachedThreadScheduler$EventLoopWorker;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final innerSubscription:Lrx/subscriptions/CompositeSubscription;

.field volatile once:I

.field private final pool:Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;

.field private final threadWorker:Lrx/schedulers/CachedThreadScheduler$ThreadWorker;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 180
    const-class v0, Lrx/schedulers/CachedThreadScheduler$EventLoopWorker;

    const-string v1, "once"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/schedulers/CachedThreadScheduler$EventLoopWorker;->ONCE_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method constructor <init>(Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;)V
    .registers 3
    .param p1, "pool"    # Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;

    .prologue
    .line 183
    invoke-direct {p0}, Lrx/Scheduler$Worker;-><init>()V

    .line 175
    new-instance v0, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v0}, Lrx/subscriptions/CompositeSubscription;-><init>()V

    iput-object v0, p0, Lrx/schedulers/CachedThreadScheduler$EventLoopWorker;->innerSubscription:Lrx/subscriptions/CompositeSubscription;

    .line 184
    iput-object p1, p0, Lrx/schedulers/CachedThreadScheduler$EventLoopWorker;->pool:Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;

    .line 185
    invoke-virtual {p1}, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;->get()Lrx/schedulers/CachedThreadScheduler$ThreadWorker;

    move-result-object v0

    iput-object v0, p0, Lrx/schedulers/CachedThreadScheduler$EventLoopWorker;->threadWorker:Lrx/schedulers/CachedThreadScheduler$ThreadWorker;

    .line 186
    return-void
.end method


# virtual methods
.method public isUnsubscribed()Z
    .registers 2

    .prologue
    .line 199
    iget-object v0, p0, Lrx/schedulers/CachedThreadScheduler$EventLoopWorker;->innerSubscription:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/CompositeSubscription;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public schedule(Lrx/functions/Action0;)Lrx/Subscription;
    .registers 5
    .param p1, "action"    # Lrx/functions/Action0;

    .prologue
    .line 204
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lrx/schedulers/CachedThreadScheduler$EventLoopWorker;->schedule(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public schedule(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;
    .registers 7
    .param p1, "action"    # Lrx/functions/Action0;
    .param p2, "delayTime"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 209
    iget-object v1, p0, Lrx/schedulers/CachedThreadScheduler$EventLoopWorker;->innerSubscription:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v1}, Lrx/subscriptions/CompositeSubscription;->isUnsubscribed()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 211
    invoke-static {}, Lrx/subscriptions/Subscriptions;->unsubscribed()Lrx/Subscription;

    move-result-object v0

    .line 217
    :goto_c
    return-object v0

    .line 214
    :cond_d
    iget-object v1, p0, Lrx/schedulers/CachedThreadScheduler$EventLoopWorker;->threadWorker:Lrx/schedulers/CachedThreadScheduler$ThreadWorker;

    invoke-virtual {v1, p1, p2, p3, p4}, Lrx/schedulers/CachedThreadScheduler$ThreadWorker;->scheduleActual(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/internal/schedulers/ScheduledAction;

    move-result-object v0

    .line 215
    .local v0, "s":Lrx/internal/schedulers/ScheduledAction;
    iget-object v1, p0, Lrx/schedulers/CachedThreadScheduler$EventLoopWorker;->innerSubscription:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v1, v0}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    .line 216
    iget-object v1, p0, Lrx/schedulers/CachedThreadScheduler$EventLoopWorker;->innerSubscription:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0, v1}, Lrx/internal/schedulers/ScheduledAction;->addParent(Lrx/subscriptions/CompositeSubscription;)V

    goto :goto_c
.end method

.method public unsubscribe()V
    .registers 4

    .prologue
    .line 190
    sget-object v0, Lrx/schedulers/CachedThreadScheduler$EventLoopWorker;->ONCE_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 192
    iget-object v0, p0, Lrx/schedulers/CachedThreadScheduler$EventLoopWorker;->pool:Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;

    iget-object v1, p0, Lrx/schedulers/CachedThreadScheduler$EventLoopWorker;->threadWorker:Lrx/schedulers/CachedThreadScheduler$ThreadWorker;

    invoke-virtual {v0, v1}, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;->release(Lrx/schedulers/CachedThreadScheduler$ThreadWorker;)V

    .line 194
    :cond_11
    iget-object v0, p0, Lrx/schedulers/CachedThreadScheduler$EventLoopWorker;->innerSubscription:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/CompositeSubscription;->unsubscribe()V

    .line 195
    return-void
.end method
