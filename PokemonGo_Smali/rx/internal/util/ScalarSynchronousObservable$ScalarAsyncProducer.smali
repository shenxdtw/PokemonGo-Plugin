.class final Lrx/internal/util/ScalarSynchronousObservable$ScalarAsyncProducer;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "ScalarSynchronousObservable.java"

# interfaces
.implements Lrx/Producer;
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/util/ScalarSynchronousObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ScalarAsyncProducer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "Lrx/Producer;",
        "Lrx/functions/Action0;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x223a1f24fb024573L


# instance fields
.field final actual:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final onSchedule:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<",
            "Lrx/functions/Action0;",
            "Lrx/Subscription;",
            ">;"
        }
    .end annotation
.end field

.field final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Subscriber;Ljava/lang/Object;Lrx/functions/Func1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;TT;",
            "Lrx/functions/Func1",
            "<",
            "Lrx/functions/Action0;",
            "Lrx/Subscription;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 168
    .local p0, "this":Lrx/internal/util/ScalarSynchronousObservable$ScalarAsyncProducer;, "Lrx/internal/util/ScalarSynchronousObservable$ScalarAsyncProducer<TT;>;"
    .local p1, "actual":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    .local p3, "onSchedule":Lrx/functions/Func1;, "Lrx/functions/Func1<Lrx/functions/Action0;Lrx/Subscription;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 169
    iput-object p1, p0, Lrx/internal/util/ScalarSynchronousObservable$ScalarAsyncProducer;->actual:Lrx/Subscriber;

    .line 170
    iput-object p2, p0, Lrx/internal/util/ScalarSynchronousObservable$ScalarAsyncProducer;->value:Ljava/lang/Object;

    .line 171
    iput-object p3, p0, Lrx/internal/util/ScalarSynchronousObservable$ScalarAsyncProducer;->onSchedule:Lrx/functions/Func1;

    .line 172
    return-void
.end method


# virtual methods
.method public call()V
    .registers 5

    .prologue
    .line 186
    .local p0, "this":Lrx/internal/util/ScalarSynchronousObservable$ScalarAsyncProducer;, "Lrx/internal/util/ScalarSynchronousObservable$ScalarAsyncProducer<TT;>;"
    iget-object v0, p0, Lrx/internal/util/ScalarSynchronousObservable$ScalarAsyncProducer;->actual:Lrx/Subscriber;

    .line 187
    .local v0, "a":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 201
    :cond_8
    :goto_8
    return-void

    .line 190
    :cond_9
    iget-object v2, p0, Lrx/internal/util/ScalarSynchronousObservable$ScalarAsyncProducer;->value:Ljava/lang/Object;

    .line 192
    .local v2, "v":Ljava/lang/Object;, "TT;"
    :try_start_b
    invoke-virtual {v0, v2}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_e} :catch_18

    .line 197
    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v3

    if-nez v3, :cond_8

    .line 200
    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    goto :goto_8

    .line 193
    :catch_18
    move-exception v1

    .line 194
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v1, v0, v2}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;Ljava/lang/Object;)V

    goto :goto_8
.end method

.method public request(J)V
    .registers 8
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/internal/util/ScalarSynchronousObservable$ScalarAsyncProducer;, "Lrx/internal/util/ScalarSynchronousObservable$ScalarAsyncProducer<TT;>;"
    const-wide/16 v2, 0x0

    .line 176
    cmp-long v0, p1, v2

    if-gez v0, :cond_1f

    .line 177
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

    .line 179
    :cond_1f
    cmp-long v0, p1, v2

    if-eqz v0, :cond_38

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lrx/internal/util/ScalarSynchronousObservable$ScalarAsyncProducer;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 180
    iget-object v1, p0, Lrx/internal/util/ScalarSynchronousObservable$ScalarAsyncProducer;->actual:Lrx/Subscriber;

    iget-object v0, p0, Lrx/internal/util/ScalarSynchronousObservable$ScalarAsyncProducer;->onSchedule:Lrx/functions/Func1;

    invoke-interface {v0, p0}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Subscription;

    invoke-virtual {v1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 182
    :cond_38
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 205
    .local p0, "this":Lrx/internal/util/ScalarSynchronousObservable$ScalarAsyncProducer;, "Lrx/internal/util/ScalarSynchronousObservable$ScalarAsyncProducer<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScalarAsyncProducer["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lrx/internal/util/ScalarSynchronousObservable$ScalarAsyncProducer;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lrx/internal/util/ScalarSynchronousObservable$ScalarAsyncProducer;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
