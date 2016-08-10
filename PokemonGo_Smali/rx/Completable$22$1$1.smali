.class Lrx/Completable$22$1$1;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable$22$1;->onCompleted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lrx/Completable$22$1;


# direct methods
.method constructor <init>(Lrx/Completable$22$1;)V
    .registers 2

    .prologue
    .line 1577
    iput-object p1, p0, Lrx/Completable$22$1$1;->this$2:Lrx/Completable$22$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 3

    .prologue
    .line 1581
    :try_start_0
    iget-object v0, p0, Lrx/Completable$22$1$1;->this$2:Lrx/Completable$22$1;

    iget-object v0, v0, Lrx/Completable$22$1;->val$s:Lrx/Completable$CompletableSubscriber;

    invoke-interface {v0}, Lrx/Completable$CompletableSubscriber;->onCompleted()V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_f

    .line 1583
    iget-object v0, p0, Lrx/Completable$22$1$1;->this$2:Lrx/Completable$22$1;

    iget-object v0, v0, Lrx/Completable$22$1;->val$ad:Lrx/internal/util/SubscriptionList;

    invoke-virtual {v0}, Lrx/internal/util/SubscriptionList;->unsubscribe()V

    .line 1585
    return-void

    .line 1583
    :catchall_f
    move-exception v0

    iget-object v1, p0, Lrx/Completable$22$1$1;->this$2:Lrx/Completable$22$1;

    iget-object v1, v1, Lrx/Completable$22$1;->val$ad:Lrx/internal/util/SubscriptionList;

    invoke-virtual {v1}, Lrx/internal/util/SubscriptionList;->unsubscribe()V

    throw v0
.end method
