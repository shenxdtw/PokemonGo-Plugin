.class final Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$LeftDurationObserver;
.super Lrx/Subscriber;
.source "OnSubscribeGroupJoin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "LeftDurationObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<TD1;>;"
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
    .line 267
    .local p0, "this":Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$LeftDurationObserver;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>.ResultManager.LeftDurationObserver;"
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$LeftDurationObserver;->this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 265
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$LeftDurationObserver;->once:Z

    .line 268
    iput p2, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$LeftDurationObserver;->id:I

    .line 269
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 5

    .prologue
    .line 273
    .local p0, "this":Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$LeftDurationObserver;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>.ResultManager.LeftDurationObserver;"
    iget-boolean v1, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$LeftDurationObserver;->once:Z

    if-eqz v1, :cond_29

    .line 274
    const/4 v1, 0x0

    iput-boolean v1, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$LeftDurationObserver;->once:Z

    .line 276
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$LeftDurationObserver;->this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    iget-object v2, v1, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->guard:Ljava/lang/Object;

    monitor-enter v2

    .line 277
    :try_start_c
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$LeftDurationObserver;->this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    iget-object v1, v1, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->leftMap:Ljava/util/Map;

    iget v3, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$LeftDurationObserver;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Observer;

    .line 278
    .local v0, "gr":Lrx/Observer;, "Lrx/Observer<TT2;>;"
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_c .. :try_end_1d} :catchall_2a

    .line 279
    if-eqz v0, :cond_22

    .line 280
    invoke-interface {v0}, Lrx/Observer;->onCompleted()V

    .line 282
    :cond_22
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$LeftDurationObserver;->this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    iget-object v1, v1, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->group:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v1, p0}, Lrx/subscriptions/CompositeSubscription;->remove(Lrx/Subscription;)V

    .line 284
    .end local v0    # "gr":Lrx/Observer;, "Lrx/Observer<TT2;>;"
    :cond_29
    return-void

    .line 278
    :catchall_2a
    move-exception v1

    :try_start_2b
    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 288
    .local p0, "this":Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$LeftDurationObserver;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>.ResultManager.LeftDurationObserver;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$LeftDurationObserver;->this$1:Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    invoke-virtual {v0, p1}, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->errorMain(Ljava/lang/Throwable;)V

    .line 289
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD1;)V"
        }
    .end annotation

    .prologue
    .line 293
    .local p0, "this":Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$LeftDurationObserver;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>.ResultManager.LeftDurationObserver;"
    .local p1, "args":Ljava/lang/Object;, "TD1;"
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$LeftDurationObserver;->onCompleted()V

    .line 294
    return-void
.end method
