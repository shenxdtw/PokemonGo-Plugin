.class Lrx/Completable$22;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/Completable$CompletableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable;->observeOn(Lrx/Scheduler;)Lrx/Completable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/Completable;

.field final synthetic val$scheduler:Lrx/Scheduler;


# direct methods
.method constructor <init>(Lrx/Completable;Lrx/Scheduler;)V
    .registers 3

    .prologue
    .line 1562
    iput-object p1, p0, Lrx/Completable$22;->this$0:Lrx/Completable;

    iput-object p2, p0, Lrx/Completable$22;->val$scheduler:Lrx/Scheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1562
    check-cast p1, Lrx/Completable$CompletableSubscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/Completable$22;->call(Lrx/Completable$CompletableSubscriber;)V

    return-void
.end method

.method public call(Lrx/Completable$CompletableSubscriber;)V
    .registers 6
    .param p1, "s"    # Lrx/Completable$CompletableSubscriber;

    .prologue
    .line 1566
    new-instance v0, Lrx/internal/util/SubscriptionList;

    invoke-direct {v0}, Lrx/internal/util/SubscriptionList;-><init>()V

    .line 1568
    .local v0, "ad":Lrx/internal/util/SubscriptionList;
    iget-object v2, p0, Lrx/Completable$22;->val$scheduler:Lrx/Scheduler;

    invoke-virtual {v2}, Lrx/Scheduler;->createWorker()Lrx/Scheduler$Worker;

    move-result-object v1

    .line 1569
    .local v1, "w":Lrx/Scheduler$Worker;
    invoke-virtual {v0, v1}, Lrx/internal/util/SubscriptionList;->add(Lrx/Subscription;)V

    .line 1571
    invoke-interface {p1, v0}, Lrx/Completable$CompletableSubscriber;->onSubscribe(Lrx/Subscription;)V

    .line 1573
    iget-object v2, p0, Lrx/Completable$22;->this$0:Lrx/Completable;

    new-instance v3, Lrx/Completable$22$1;

    invoke-direct {v3, p0, v1, p1, v0}, Lrx/Completable$22$1;-><init>(Lrx/Completable$22;Lrx/Scheduler$Worker;Lrx/Completable$CompletableSubscriber;Lrx/internal/util/SubscriptionList;)V

    invoke-virtual {v2, v3}, Lrx/Completable;->subscribe(Lrx/Completable$CompletableSubscriber;)V

    .line 1609
    return-void
.end method
