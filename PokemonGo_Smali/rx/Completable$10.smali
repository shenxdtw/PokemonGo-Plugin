.class final Lrx/Completable$10;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/Completable$CompletableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable;->fromObservable(Lrx/Observable;)Lrx/Completable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$flowable:Lrx/Observable;


# direct methods
.method constructor <init>(Lrx/Observable;)V
    .registers 2

    .prologue
    .line 550
    iput-object p1, p0, Lrx/Completable$10;->val$flowable:Lrx/Observable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 550
    check-cast p1, Lrx/Completable$CompletableSubscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/Completable$10;->call(Lrx/Completable$CompletableSubscriber;)V

    return-void
.end method

.method public call(Lrx/Completable$CompletableSubscriber;)V
    .registers 4
    .param p1, "cs"    # Lrx/Completable$CompletableSubscriber;

    .prologue
    .line 553
    new-instance v0, Lrx/Completable$10$1;

    invoke-direct {v0, p0, p1}, Lrx/Completable$10$1;-><init>(Lrx/Completable$10;Lrx/Completable$CompletableSubscriber;)V

    .line 570
    .local v0, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<Ljava/lang/Object;>;"
    invoke-interface {p1, v0}, Lrx/Completable$CompletableSubscriber;->onSubscribe(Lrx/Subscription;)V

    .line 571
    iget-object v1, p0, Lrx/Completable$10;->val$flowable:Lrx/Observable;

    invoke-virtual {v1, v0}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 572
    return-void
.end method
