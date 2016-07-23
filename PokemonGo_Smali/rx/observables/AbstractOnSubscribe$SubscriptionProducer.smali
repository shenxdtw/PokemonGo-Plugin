.class final Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;
.super Ljava/lang/Object;
.source "AbstractOnSubscribe.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/observables/AbstractOnSubscribe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SubscriptionProducer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Producer;"
    }
.end annotation


# instance fields
.field final state:Lrx/observables/AbstractOnSubscribe$SubscriptionState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/observables/AbstractOnSubscribe$SubscriptionState",
            "<TT;TS;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lrx/observables/AbstractOnSubscribe$SubscriptionState;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/observables/AbstractOnSubscribe$SubscriptionState",
            "<TT;TS;>;)V"
        }
    .end annotation

    .prologue
    .line 331
    .local p0, "this":Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;, "Lrx/observables/AbstractOnSubscribe$SubscriptionProducer<TT;TS;>;"
    .local p1, "state":Lrx/observables/AbstractOnSubscribe$SubscriptionState;, "Lrx/observables/AbstractOnSubscribe$SubscriptionState<TT;TS;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    iput-object p1, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;->state:Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    .line 333
    return-void
.end method

.method synthetic constructor <init>(Lrx/observables/AbstractOnSubscribe$SubscriptionState;Lrx/observables/AbstractOnSubscribe$1;)V
    .registers 3
    .param p1, "x0"    # Lrx/observables/AbstractOnSubscribe$SubscriptionState;
    .param p2, "x1"    # Lrx/observables/AbstractOnSubscribe$1;

    .prologue
    .line 329
    .local p0, "this":Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;, "Lrx/observables/AbstractOnSubscribe$SubscriptionProducer<TT;TS;>;"
    invoke-direct {p0, p1}, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;-><init>(Lrx/observables/AbstractOnSubscribe$SubscriptionState;)V

    return-void
.end method


# virtual methods
.method protected doNext()Z
    .registers 9

    .prologue
    .local p0, "this":Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;, "Lrx/observables/AbstractOnSubscribe$SubscriptionProducer<TT;TS;>;"
    const/4 v2, 0x0

    .line 362
    iget-object v3, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;->state:Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    invoke-virtual {v3}, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->use()Z

    move-result v3

    if-eqz v3, :cond_6f

    .line 364
    :try_start_9
    iget-object v3, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;->state:Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    invoke-virtual {v3}, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->phase()I

    move-result v0

    .line 365
    .local v0, "p":I
    iget-object v3, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;->state:Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    # getter for: Lrx/observables/AbstractOnSubscribe$SubscriptionState;->parent:Lrx/observables/AbstractOnSubscribe;
    invoke-static {v3}, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->access$600(Lrx/observables/AbstractOnSubscribe$SubscriptionState;)Lrx/observables/AbstractOnSubscribe;

    move-result-object v3

    iget-object v4, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;->state:Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    invoke-virtual {v3, v4}, Lrx/observables/AbstractOnSubscribe;->next(Lrx/observables/AbstractOnSubscribe$SubscriptionState;)V

    .line 366
    iget-object v3, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;->state:Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    invoke-virtual {v3}, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->verify()Z

    move-result v3

    if-nez v3, :cond_70

    .line 367
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No event produced or stop called @ Phase: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;->state:Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    invoke-virtual {v5}, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->phase()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Calls: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;->state:Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    invoke-virtual {v5}, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->calls()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_5b} :catch_5b
    .catchall {:try_start_9 .. :try_end_5b} :catchall_97

    .line 374
    .end local v0    # "p":I
    :catch_5b
    move-exception v1

    .line 375
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_5c
    iget-object v3, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;->state:Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    invoke-virtual {v3}, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->terminate()V

    .line 376
    iget-object v3, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;->state:Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    # getter for: Lrx/observables/AbstractOnSubscribe$SubscriptionState;->subscriber:Lrx/Subscriber;
    invoke-static {v3}, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->access$500(Lrx/observables/AbstractOnSubscribe$SubscriptionState;)Lrx/Subscriber;

    move-result-object v3

    invoke-virtual {v3, v1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_6a
    .catchall {:try_start_5c .. :try_end_6a} :catchall_97

    .line 379
    iget-object v3, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;->state:Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    invoke-virtual {v3}, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->free()V

    .line 383
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_6f
    :goto_6f
    return v2

    .line 369
    .restart local v0    # "p":I
    :cond_70
    :try_start_70
    iget-object v3, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;->state:Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    invoke-virtual {v3}, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->accept()Z

    move-result v3

    if-nez v3, :cond_80

    iget-object v3, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;->state:Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    invoke-virtual {v3}, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->stopRequested()Z

    move-result v3

    if-eqz v3, :cond_8b

    .line 370
    :cond_80
    iget-object v3, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;->state:Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    invoke-virtual {v3}, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->terminate()V
    :try_end_85
    .catch Ljava/lang/Throwable; {:try_start_70 .. :try_end_85} :catch_5b
    .catchall {:try_start_70 .. :try_end_85} :catchall_97

    .line 379
    iget-object v3, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;->state:Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    invoke-virtual {v3}, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->free()V

    goto :goto_6f

    .line 373
    :cond_8b
    :try_start_8b
    iget-object v3, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;->state:Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    # operator++ for: Lrx/observables/AbstractOnSubscribe$SubscriptionState;->calls:J
    invoke-static {v3}, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->access$708(Lrx/observables/AbstractOnSubscribe$SubscriptionState;)J
    :try_end_90
    .catch Ljava/lang/Throwable; {:try_start_8b .. :try_end_90} :catch_5b
    .catchall {:try_start_8b .. :try_end_90} :catchall_97

    .line 379
    iget-object v2, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;->state:Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    invoke-virtual {v2}, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->free()V

    .line 381
    const/4 v2, 0x1

    goto :goto_6f

    .line 379
    .end local v0    # "p":I
    :catchall_97
    move-exception v2

    iget-object v3, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;->state:Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    invoke-virtual {v3}, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->free()V

    throw v2
.end method

.method public request(J)V
    .registers 8
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;, "Lrx/observables/AbstractOnSubscribe$SubscriptionProducer<TT;TS;>;"
    const-wide/16 v2, 0x0

    .line 336
    cmp-long v0, p1, v2

    if-lez v0, :cond_2f

    iget-object v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;->state:Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    # getter for: Lrx/observables/AbstractOnSubscribe$SubscriptionState;->requestCount:Ljava/util/concurrent/atomic/AtomicLong;
    invoke-static {v0}, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->access$400(Lrx/observables/AbstractOnSubscribe$SubscriptionState;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lrx/internal/operators/BackpressureUtils;->getAndAddRequest(Ljava/util/concurrent/atomic/AtomicLong;J)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2f

    .line 337
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p1, v0

    if-nez v0, :cond_30

    .line 339
    :cond_1d
    iget-object v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;->state:Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    # getter for: Lrx/observables/AbstractOnSubscribe$SubscriptionState;->subscriber:Lrx/Subscriber;
    invoke-static {v0}, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->access$500(Lrx/observables/AbstractOnSubscribe$SubscriptionState;)Lrx/Subscriber;

    move-result-object v0

    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 340
    invoke-virtual {p0}, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;->doNext()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 353
    :cond_2f
    :goto_2f
    return-void

    .line 345
    :cond_30
    iget-object v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;->state:Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    # getter for: Lrx/observables/AbstractOnSubscribe$SubscriptionState;->subscriber:Lrx/Subscriber;
    invoke-static {v0}, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->access$500(Lrx/observables/AbstractOnSubscribe$SubscriptionState;)Lrx/Subscriber;

    move-result-object v0

    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 347
    :cond_3c
    invoke-virtual {p0}, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;->doNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 350
    iget-object v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;->state:Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    # getter for: Lrx/observables/AbstractOnSubscribe$SubscriptionState;->requestCount:Ljava/util/concurrent/atomic/AtomicLong;
    invoke-static {v0}, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->access$400(Lrx/observables/AbstractOnSubscribe$SubscriptionState;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2f

    iget-object v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;->state:Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    # getter for: Lrx/observables/AbstractOnSubscribe$SubscriptionState;->subscriber:Lrx/Subscriber;
    invoke-static {v0}, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->access$500(Lrx/observables/AbstractOnSubscribe$SubscriptionState;)Lrx/Subscriber;

    move-result-object v0

    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_3c

    goto :goto_2f
.end method
