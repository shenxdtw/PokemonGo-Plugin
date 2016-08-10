.class public final Lrx/internal/operators/CompletableOnSubscribeMerge;
.super Ljava/lang/Object;
.source "CompletableOnSubscribeMerge.java"

# interfaces
.implements Lrx/Completable$CompletableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;
    }
.end annotation


# instance fields
.field final delayErrors:Z

.field final maxConcurrency:I

.field final source:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable",
            "<",
            "Lrx/Completable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Observable;IZ)V
    .registers 4
    .param p2, "maxConcurrency"    # I
    .param p3, "delayErrors"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<+",
            "Lrx/Completable;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p1, "source":Lrx/Observable;, "Lrx/Observable<+Lrx/Completable;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lrx/internal/operators/CompletableOnSubscribeMerge;->source:Lrx/Observable;

    .line 37
    iput p2, p0, Lrx/internal/operators/CompletableOnSubscribeMerge;->maxConcurrency:I

    .line 38
    iput-boolean p3, p0, Lrx/internal/operators/CompletableOnSubscribeMerge;->delayErrors:Z

    .line 39
    return-void
.end method

.method public static collectErrors(Ljava/util/Queue;)Ljava/lang/Throwable;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .prologue
    .line 202
    .local p0, "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Throwable;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 205
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    :goto_5
    invoke-interface {p0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    .local v1, "t":Ljava/lang/Throwable;
    if-eqz v1, :cond_11

    .line 206
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 208
    :cond_11
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 209
    const/4 v2, 0x0

    .line 214
    :goto_18
    return-object v2

    .line 211
    :cond_19
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_28

    .line 212
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    goto :goto_18

    .line 214
    :cond_28
    new-instance v2, Lrx/exceptions/CompositeException;

    invoke-direct {v2, v0}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    goto :goto_18
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 30
    check-cast p1, Lrx/Completable$CompletableSubscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/CompletableOnSubscribeMerge;->call(Lrx/Completable$CompletableSubscriber;)V

    return-void
.end method

.method public call(Lrx/Completable$CompletableSubscriber;)V
    .registers 5
    .param p1, "s"    # Lrx/Completable$CompletableSubscriber;

    .prologue
    .line 43
    new-instance v0, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;

    iget v1, p0, Lrx/internal/operators/CompletableOnSubscribeMerge;->maxConcurrency:I

    iget-boolean v2, p0, Lrx/internal/operators/CompletableOnSubscribeMerge;->delayErrors:Z

    invoke-direct {v0, p1, v1, v2}, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;-><init>(Lrx/Completable$CompletableSubscriber;IZ)V

    .line 44
    .local v0, "parent":Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;
    invoke-interface {p1, v0}, Lrx/Completable$CompletableSubscriber;->onSubscribe(Lrx/Subscription;)V

    .line 45
    iget-object v1, p0, Lrx/internal/operators/CompletableOnSubscribeMerge;->source:Lrx/Observable;

    invoke-virtual {v1, v0}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 46
    return-void
.end method
