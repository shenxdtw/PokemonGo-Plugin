.class Lrx/Completable$22$1;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/Completable$CompletableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable$22;->call(Lrx/Completable$CompletableSubscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lrx/Completable$22;

.field final synthetic val$ad:Lrx/internal/util/SubscriptionList;

.field final synthetic val$s:Lrx/Completable$CompletableSubscriber;

.field final synthetic val$w:Lrx/Scheduler$Worker;


# direct methods
.method constructor <init>(Lrx/Completable$22;Lrx/Scheduler$Worker;Lrx/Completable$CompletableSubscriber;Lrx/internal/util/SubscriptionList;)V
    .registers 5

    .prologue
    .line 1573
    iput-object p1, p0, Lrx/Completable$22$1;->this$1:Lrx/Completable$22;

    iput-object p2, p0, Lrx/Completable$22$1;->val$w:Lrx/Scheduler$Worker;

    iput-object p3, p0, Lrx/Completable$22$1;->val$s:Lrx/Completable$CompletableSubscriber;

    iput-object p4, p0, Lrx/Completable$22$1;->val$ad:Lrx/internal/util/SubscriptionList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 3

    .prologue
    .line 1577
    iget-object v0, p0, Lrx/Completable$22$1;->val$w:Lrx/Scheduler$Worker;

    new-instance v1, Lrx/Completable$22$1$1;

    invoke-direct {v1, p0}, Lrx/Completable$22$1$1;-><init>(Lrx/Completable$22$1;)V

    invoke-virtual {v0, v1}, Lrx/Scheduler$Worker;->schedule(Lrx/functions/Action0;)Lrx/Subscription;

    .line 1587
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1591
    iget-object v0, p0, Lrx/Completable$22$1;->val$w:Lrx/Scheduler$Worker;

    new-instance v1, Lrx/Completable$22$1$2;

    invoke-direct {v1, p0, p1}, Lrx/Completable$22$1$2;-><init>(Lrx/Completable$22$1;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lrx/Scheduler$Worker;->schedule(Lrx/functions/Action0;)Lrx/Subscription;

    .line 1601
    return-void
.end method

.method public onSubscribe(Lrx/Subscription;)V
    .registers 3
    .param p1, "d"    # Lrx/Subscription;

    .prologue
    .line 1605
    iget-object v0, p0, Lrx/Completable$22$1;->val$ad:Lrx/internal/util/SubscriptionList;

    invoke-virtual {v0, p1}, Lrx/internal/util/SubscriptionList;->add(Lrx/Subscription;)V

    .line 1606
    return-void
.end method
