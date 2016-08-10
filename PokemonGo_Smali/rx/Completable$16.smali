.class Lrx/Completable$16;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/Completable$CompletableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable;->delay(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;Z)Lrx/Completable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/Completable;

.field final synthetic val$delay:J

.field final synthetic val$delayError:Z

.field final synthetic val$scheduler:Lrx/Scheduler;

.field final synthetic val$unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method constructor <init>(Lrx/Completable;Lrx/Scheduler;JLjava/util/concurrent/TimeUnit;Z)V
    .registers 8

    .prologue
    .line 1184
    iput-object p1, p0, Lrx/Completable$16;->this$0:Lrx/Completable;

    iput-object p2, p0, Lrx/Completable$16;->val$scheduler:Lrx/Scheduler;

    iput-wide p3, p0, Lrx/Completable$16;->val$delay:J

    iput-object p5, p0, Lrx/Completable$16;->val$unit:Ljava/util/concurrent/TimeUnit;

    iput-boolean p6, p0, Lrx/Completable$16;->val$delayError:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1184
    check-cast p1, Lrx/Completable$CompletableSubscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/Completable$16;->call(Lrx/Completable$CompletableSubscriber;)V

    return-void
.end method

.method public call(Lrx/Completable$CompletableSubscriber;)V
    .registers 6
    .param p1, "s"    # Lrx/Completable$CompletableSubscriber;

    .prologue
    .line 1187
    new-instance v0, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v0}, Lrx/subscriptions/CompositeSubscription;-><init>()V

    .line 1189
    .local v0, "set":Lrx/subscriptions/CompositeSubscription;
    iget-object v2, p0, Lrx/Completable$16;->val$scheduler:Lrx/Scheduler;

    invoke-virtual {v2}, Lrx/Scheduler;->createWorker()Lrx/Scheduler$Worker;

    move-result-object v1

    .line 1190
    .local v1, "w":Lrx/Scheduler$Worker;
    invoke-virtual {v0, v1}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    .line 1192
    iget-object v2, p0, Lrx/Completable$16;->this$0:Lrx/Completable;

    new-instance v3, Lrx/Completable$16$1;

    invoke-direct {v3, p0, v0, v1, p1}, Lrx/Completable$16$1;-><init>(Lrx/Completable$16;Lrx/subscriptions/CompositeSubscription;Lrx/Scheduler$Worker;Lrx/Completable$CompletableSubscriber;)V

    invoke-virtual {v2, v3}, Lrx/Completable;->subscribe(Lrx/Completable$CompletableSubscriber;)V

    .line 1234
    return-void
.end method
