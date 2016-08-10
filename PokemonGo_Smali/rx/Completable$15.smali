.class Lrx/Completable$15;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/Completable$CompletableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable;->await(JLjava/util/concurrent/TimeUnit;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/Completable;

.field final synthetic val$cdl:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$err:[Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lrx/Completable;Ljava/util/concurrent/CountDownLatch;[Ljava/lang/Throwable;)V
    .registers 4

    .prologue
    .line 1052
    iput-object p1, p0, Lrx/Completable$15;->this$0:Lrx/Completable;

    iput-object p2, p0, Lrx/Completable$15;->val$cdl:Ljava/util/concurrent/CountDownLatch;

    iput-object p3, p0, Lrx/Completable$15;->val$err:[Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .prologue
    .line 1056
    iget-object v0, p0, Lrx/Completable$15;->val$cdl:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1057
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1061
    iget-object v0, p0, Lrx/Completable$15;->val$err:[Ljava/lang/Throwable;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 1062
    iget-object v0, p0, Lrx/Completable$15;->val$cdl:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1063
    return-void
.end method

.method public onSubscribe(Lrx/Subscription;)V
    .registers 2
    .param p1, "d"    # Lrx/Subscription;

    .prologue
    .line 1068
    return-void
.end method
