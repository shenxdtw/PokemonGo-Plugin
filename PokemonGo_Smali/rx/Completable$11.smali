.class final Lrx/Completable$11;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/Completable$CompletableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable;->fromSingle(Lrx/Single;)Lrx/Completable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$single:Lrx/Single;


# direct methods
.method constructor <init>(Lrx/Single;)V
    .registers 2

    .prologue
    .line 585
    iput-object p1, p0, Lrx/Completable$11;->val$single:Lrx/Single;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 585
    check-cast p1, Lrx/Completable$CompletableSubscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/Completable$11;->call(Lrx/Completable$CompletableSubscriber;)V

    return-void
.end method

.method public call(Lrx/Completable$CompletableSubscriber;)V
    .registers 4
    .param p1, "s"    # Lrx/Completable$CompletableSubscriber;

    .prologue
    .line 588
    new-instance v0, Lrx/Completable$11$1;

    invoke-direct {v0, p0, p1}, Lrx/Completable$11$1;-><init>(Lrx/Completable$11;Lrx/Completable$CompletableSubscriber;)V

    .line 601
    .local v0, "te":Lrx/SingleSubscriber;, "Lrx/SingleSubscriber<Ljava/lang/Object;>;"
    invoke-interface {p1, v0}, Lrx/Completable$CompletableSubscriber;->onSubscribe(Lrx/Subscription;)V

    .line 602
    iget-object v1, p0, Lrx/Completable$11;->val$single:Lrx/Single;

    invoke-virtual {v1, v0}, Lrx/Single;->subscribe(Lrx/SingleSubscriber;)Lrx/Subscription;

    .line 603
    return-void
.end method
