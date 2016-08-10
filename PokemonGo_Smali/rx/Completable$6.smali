.class final Lrx/Completable$6;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/Completable$CompletableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable;->error(Lrx/functions/Func0;)Lrx/Completable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$errorFunc0:Lrx/functions/Func0;


# direct methods
.method constructor <init>(Lrx/functions/Func0;)V
    .registers 2

    .prologue
    .line 435
    iput-object p1, p0, Lrx/Completable$6;->val$errorFunc0:Lrx/functions/Func0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 435
    check-cast p1, Lrx/Completable$CompletableSubscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/Completable$6;->call(Lrx/Completable$CompletableSubscriber;)V

    return-void
.end method

.method public call(Lrx/Completable$CompletableSubscriber;)V
    .registers 5
    .param p1, "s"    # Lrx/Completable$CompletableSubscriber;

    .prologue
    .line 438
    invoke-static {}, Lrx/subscriptions/Subscriptions;->unsubscribed()Lrx/Subscription;

    move-result-object v2

    invoke-interface {p1, v2}, Lrx/Completable$CompletableSubscriber;->onSubscribe(Lrx/Subscription;)V

    .line 442
    :try_start_7
    iget-object v2, p0, Lrx/Completable$6;->val$errorFunc0:Lrx/functions/Func0;

    invoke-interface {v2}, Lrx/functions/Func0;->call()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_f} :catch_1c

    .line 447
    .local v1, "error":Ljava/lang/Throwable;
    :goto_f
    if-nez v1, :cond_18

    .line 448
    new-instance v1, Ljava/lang/NullPointerException;

    .end local v1    # "error":Ljava/lang/Throwable;
    const-string v2, "The error supplied is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 450
    .restart local v1    # "error":Ljava/lang/Throwable;
    :cond_18
    invoke-interface {p1, v1}, Lrx/Completable$CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 451
    return-void

    .line 443
    .end local v1    # "error":Ljava/lang/Throwable;
    :catch_1c
    move-exception v0

    .line 444
    .local v0, "e":Ljava/lang/Throwable;
    move-object v1, v0

    .restart local v1    # "error":Ljava/lang/Throwable;
    goto :goto_f
.end method
