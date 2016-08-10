.class final Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightDurationObserver;
.super Lrx/Subscriber;
.source "OnSubscribeGroupJoin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "RightDurationObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<TD2;>;"
    }
.end annotation


# instance fields
.field final id:I

.field once:Z

.field final synthetic this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;


# direct methods
.method public constructor <init>(Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;I)V
    .registers 4
    .param p2, "id"    # I

    .prologue
    .line 301
    .local p0, "this":Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightDurationObserver;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>.ResultManager.RightDurationObserver;"
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightDurationObserver;->this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 300
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightDurationObserver;->once:Z

    .line 302
    iput p2, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightDurationObserver;->id:I

    .line 303
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 4

    .prologue
    .line 307
    .local p0, "this":Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightDurationObserver;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>.ResultManager.RightDurationObserver;"
    iget-boolean v0, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightDurationObserver;->once:Z

    if-eqz v0, :cond_21

    .line 308
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightDurationObserver;->once:Z

    .line 309
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightDurationObserver;->this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    iget-object v1, v0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->guard:Ljava/lang/Object;

    monitor-enter v1

    .line 310
    :try_start_c
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightDurationObserver;->this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    iget-object v0, v0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->rightMap:Ljava/util/Map;

    iget v2, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightDurationObserver;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_c .. :try_end_1a} :catchall_22

    .line 312
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightDurationObserver;->this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    iget-object v0, v0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->group:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0, p0}, Lrx/subscriptions/CompositeSubscription;->remove(Lrx/Subscription;)V

    .line 314
    :cond_21
    return-void

    .line 311
    :catchall_22
    move-exception v0

    :try_start_23
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 318
    .local p0, "this":Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightDurationObserver;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>.ResultManager.RightDurationObserver;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightDurationObserver;->this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    invoke-virtual {v0, p1}, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->errorMain(Ljava/lang/Throwable;)V

    .line 319
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD2;)V"
        }
    .end annotation

    .prologue
    .line 323
    .local p0, "this":Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightDurationObserver;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>.ResultManager.RightDurationObserver;"
    .local p1, "args":Ljava/lang/Object;, "TD2;"
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightDurationObserver;->onCompleted()V

    .line 324
    return-void
.end method
