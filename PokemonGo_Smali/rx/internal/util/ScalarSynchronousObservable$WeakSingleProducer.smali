.class final Lrx/internal/util/ScalarSynchronousObservable$WeakSingleProducer;
.super Ljava/lang/Object;
.source "ScalarSynchronousObservable.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/util/ScalarSynchronousObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WeakSingleProducer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Producer;"
    }
.end annotation


# instance fields
.field final actual:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation
.end field

.field once:Z

.field final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Subscriber;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 245
    .local p0, "this":Lrx/internal/util/ScalarSynchronousObservable$WeakSingleProducer;, "Lrx/internal/util/ScalarSynchronousObservable$WeakSingleProducer<TT;>;"
    .local p1, "actual":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    iput-object p1, p0, Lrx/internal/util/ScalarSynchronousObservable$WeakSingleProducer;->actual:Lrx/Subscriber;

    .line 247
    iput-object p2, p0, Lrx/internal/util/ScalarSynchronousObservable$WeakSingleProducer;->value:Ljava/lang/Object;

    .line 248
    return-void
.end method


# virtual methods
.method public request(J)V
    .registers 10
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/internal/util/ScalarSynchronousObservable$WeakSingleProducer;, "Lrx/internal/util/ScalarSynchronousObservable$WeakSingleProducer<TT;>;"
    const-wide/16 v4, 0x0

    .line 252
    iget-boolean v3, p0, Lrx/internal/util/ScalarSynchronousObservable$WeakSingleProducer;->once:Z

    if-eqz v3, :cond_7

    .line 277
    :cond_6
    :goto_6
    return-void

    .line 255
    :cond_7
    cmp-long v3, p1, v4

    if-gez v3, :cond_24

    .line 256
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "n >= required but it was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 258
    :cond_24
    cmp-long v3, p1, v4

    if-eqz v3, :cond_6

    .line 259
    const/4 v3, 0x1

    iput-boolean v3, p0, Lrx/internal/util/ScalarSynchronousObservable$WeakSingleProducer;->once:Z

    .line 260
    iget-object v0, p0, Lrx/internal/util/ScalarSynchronousObservable$WeakSingleProducer;->actual:Lrx/Subscriber;

    .line 261
    .local v0, "a":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v3

    if-nez v3, :cond_6

    .line 264
    iget-object v2, p0, Lrx/internal/util/ScalarSynchronousObservable$WeakSingleProducer;->value:Ljava/lang/Object;

    .line 266
    .local v2, "v":Ljava/lang/Object;, "TT;"
    :try_start_35
    invoke-virtual {v0, v2}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_38} :catch_42

    .line 272
    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v3

    if-nez v3, :cond_6

    .line 275
    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    goto :goto_6

    .line 267
    :catch_42
    move-exception v1

    .line 268
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v1, v0, v2}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;Ljava/lang/Object;)V

    goto :goto_6
.end method
