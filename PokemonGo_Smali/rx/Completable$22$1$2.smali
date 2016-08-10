.class Lrx/Completable$22$1$2;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable$22$1;->onError(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lrx/Completable$22$1;

.field final synthetic val$e:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lrx/Completable$22$1;Ljava/lang/Throwable;)V
    .registers 3

    .prologue
    .line 1591
    iput-object p1, p0, Lrx/Completable$22$1$2;->this$2:Lrx/Completable$22$1;

    iput-object p2, p0, Lrx/Completable$22$1$2;->val$e:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 3

    .prologue
    .line 1595
    :try_start_0
    iget-object v0, p0, Lrx/Completable$22$1$2;->this$2:Lrx/Completable$22$1;

    iget-object v0, v0, Lrx/Completable$22$1;->val$s:Lrx/Completable$CompletableSubscriber;

    iget-object v1, p0, Lrx/Completable$22$1$2;->val$e:Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Lrx/Completable$CompletableSubscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_11

    .line 1597
    iget-object v0, p0, Lrx/Completable$22$1$2;->this$2:Lrx/Completable$22$1;

    iget-object v0, v0, Lrx/Completable$22$1;->val$ad:Lrx/internal/util/SubscriptionList;

    invoke-virtual {v0}, Lrx/internal/util/SubscriptionList;->unsubscribe()V

    .line 1599
    return-void

    .line 1597
    :catchall_11
    move-exception v0

    iget-object v1, p0, Lrx/Completable$22$1$2;->this$2:Lrx/Completable$22$1;

    iget-object v1, v1, Lrx/Completable$22$1;->val$ad:Lrx/internal/util/SubscriptionList;

    invoke-virtual {v1}, Lrx/internal/util/SubscriptionList;->unsubscribe()V

    throw v0
.end method
