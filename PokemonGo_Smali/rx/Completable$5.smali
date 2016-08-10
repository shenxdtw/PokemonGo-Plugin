.class final Lrx/Completable$5;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/Completable$CompletableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable;->defer(Lrx/functions/Func0;)Lrx/Completable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$completableFunc0:Lrx/functions/Func0;


# direct methods
.method constructor <init>(Lrx/functions/Func0;)V
    .registers 2

    .prologue
    .line 399
    iput-object p1, p0, Lrx/Completable$5;->val$completableFunc0:Lrx/functions/Func0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 399
    check-cast p1, Lrx/Completable$CompletableSubscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/Completable$5;->call(Lrx/Completable$CompletableSubscriber;)V

    return-void
.end method

.method public call(Lrx/Completable$CompletableSubscriber;)V
    .registers 6
    .param p1, "s"    # Lrx/Completable$CompletableSubscriber;

    .prologue
    .line 405
    :try_start_0
    iget-object v2, p0, Lrx/Completable$5;->val$completableFunc0:Lrx/functions/Func0;

    invoke-interface {v2}, Lrx/functions/Func0;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Completable;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_8} :catch_1c

    .line 412
    .local v0, "c":Lrx/Completable;
    if-nez v0, :cond_28

    .line 413
    invoke-static {}, Lrx/subscriptions/Subscriptions;->unsubscribed()Lrx/Subscription;

    move-result-object v2

    invoke-interface {p1, v2}, Lrx/Completable$CompletableSubscriber;->onSubscribe(Lrx/Subscription;)V

    .line 414
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "The completable returned is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v2}, Lrx/Completable$CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 419
    .end local v0    # "c":Lrx/Completable;
    :goto_1b
    return-void

    .line 406
    :catch_1c
    move-exception v1

    .line 407
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {}, Lrx/subscriptions/Subscriptions;->unsubscribed()Lrx/Subscription;

    move-result-object v2

    invoke-interface {p1, v2}, Lrx/Completable$CompletableSubscriber;->onSubscribe(Lrx/Subscription;)V

    .line 408
    invoke-interface {p1, v1}, Lrx/Completable$CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_1b

    .line 418
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local v0    # "c":Lrx/Completable;
    :cond_28
    invoke-virtual {v0, p1}, Lrx/Completable;->subscribe(Lrx/Completable$CompletableSubscriber;)V

    goto :goto_1b
.end method
