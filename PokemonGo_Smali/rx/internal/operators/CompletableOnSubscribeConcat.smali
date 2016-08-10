.class public final Lrx/internal/operators/CompletableOnSubscribeConcat;
.super Ljava/lang/Object;
.source "CompletableOnSubscribeConcat.java"

# interfaces
.implements Lrx/Completable$CompletableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber;
    }
.end annotation


# instance fields
.field final prefetch:I

.field final sources:Lrx/Observable;
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
.method public constructor <init>(Lrx/Observable;I)V
    .registers 3
    .param p2, "prefetch"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<+",
            "Lrx/Completable;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, "sources":Lrx/Observable;, "Lrx/Observable<+Lrx/Completable;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lrx/internal/operators/CompletableOnSubscribeConcat;->sources:Lrx/Observable;

    .line 34
    iput p2, p0, Lrx/internal/operators/CompletableOnSubscribeConcat;->prefetch:I

    .line 35
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 28
    check-cast p1, Lrx/Completable$CompletableSubscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/CompletableOnSubscribeConcat;->call(Lrx/Completable$CompletableSubscriber;)V

    return-void
.end method

.method public call(Lrx/Completable$CompletableSubscriber;)V
    .registers 4
    .param p1, "s"    # Lrx/Completable$CompletableSubscriber;

    .prologue
    .line 39
    new-instance v0, Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber;

    iget v1, p0, Lrx/internal/operators/CompletableOnSubscribeConcat;->prefetch:I

    invoke-direct {v0, p1, v1}, Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber;-><init>(Lrx/Completable$CompletableSubscriber;I)V

    .line 40
    .local v0, "parent":Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber;
    invoke-interface {p1, v0}, Lrx/Completable$CompletableSubscriber;->onSubscribe(Lrx/Subscription;)V

    .line 41
    iget-object v1, p0, Lrx/internal/operators/CompletableOnSubscribeConcat;->sources:Lrx/Observable;

    invoke-virtual {v1, v0}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 42
    return-void
.end method
