.class Lrx/Completable$31$1;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/Completable$CompletableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable$31;->call(Lrx/SingleSubscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lrx/Completable$31;

.field final synthetic val$s:Lrx/SingleSubscriber;


# direct methods
.method constructor <init>(Lrx/Completable$31;Lrx/SingleSubscriber;)V
    .registers 3

    .prologue
    .line 2160
    iput-object p1, p0, Lrx/Completable$31$1;->this$1:Lrx/Completable$31;

    iput-object p2, p0, Lrx/Completable$31$1;->val$s:Lrx/SingleSubscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 6

    .prologue
    .line 2167
    :try_start_0
    iget-object v2, p0, Lrx/Completable$31$1;->this$1:Lrx/Completable$31;

    iget-object v2, v2, Lrx/Completable$31;->val$completionValueFunc0:Lrx/functions/Func0;

    invoke-interface {v2}, Lrx/functions/Func0;->call()Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_17

    move-result-object v1

    .line 2173
    .local v1, "v":Ljava/lang/Object;, "TT;"
    if-nez v1, :cond_1e

    .line 2174
    iget-object v2, p0, Lrx/Completable$31$1;->val$s:Lrx/SingleSubscriber;

    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "The value supplied is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lrx/SingleSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 2178
    .end local v1    # "v":Ljava/lang/Object;, "TT;"
    :goto_16
    return-void

    .line 2168
    :catch_17
    move-exception v0

    .line 2169
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lrx/Completable$31$1;->val$s:Lrx/SingleSubscriber;

    invoke-virtual {v2, v0}, Lrx/SingleSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_16

    .line 2176
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v1    # "v":Ljava/lang/Object;, "TT;"
    :cond_1e
    iget-object v2, p0, Lrx/Completable$31$1;->val$s:Lrx/SingleSubscriber;

    invoke-virtual {v2, v1}, Lrx/SingleSubscriber;->onSuccess(Ljava/lang/Object;)V

    goto :goto_16
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 2182
    iget-object v0, p0, Lrx/Completable$31$1;->val$s:Lrx/SingleSubscriber;

    invoke-virtual {v0, p1}, Lrx/SingleSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 2183
    return-void
.end method

.method public onSubscribe(Lrx/Subscription;)V
    .registers 3
    .param p1, "d"    # Lrx/Subscription;

    .prologue
    .line 2187
    iget-object v0, p0, Lrx/Completable$31$1;->val$s:Lrx/SingleSubscriber;

    invoke-virtual {v0, p1}, Lrx/SingleSubscriber;->add(Lrx/Subscription;)V

    .line 2188
    return-void
.end method
