.class final Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;
.super Ljava/lang/Object;
.source "OnSubscribeGroupJoin.java"

# interfaces
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeGroupJoin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ResultManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightDurationObserver;,
        Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$LeftDurationObserver;,
        Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightObserver;,
        Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$LeftObserver;
    }
.end annotation


# instance fields
.field final cancel:Lrx/subscriptions/RefCountSubscription;

.field final group:Lrx/subscriptions/CompositeSubscription;

.field final guard:Ljava/lang/Object;

.field leftDone:Z

.field leftIds:I

.field final leftMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lrx/Observer",
            "<TT2;>;>;"
        }
    .end annotation
.end field

.field rightDone:Z

.field rightIds:I

.field final rightMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "TT2;>;"
        }
    .end annotation
.end field

.field final subscriber:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TR;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lrx/internal/operators/OnSubscribeGroupJoin;


# direct methods
.method public constructor <init>(Lrx/internal/operators/OnSubscribeGroupJoin;Lrx/Subscriber;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "this":Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>.ResultManager;"
    .local p2, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->this$0:Lrx/internal/operators/OnSubscribeGroupJoin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->guard:Ljava/lang/Object;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->leftMap:Ljava/util/Map;

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->rightMap:Ljava/util/Map;

    .line 87
    iput-object p2, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->subscriber:Lrx/Subscriber;

    .line 88
    new-instance v0, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v0}, Lrx/subscriptions/CompositeSubscription;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->group:Lrx/subscriptions/CompositeSubscription;

    .line 89
    new-instance v0, Lrx/subscriptions/RefCountSubscription;

    iget-object v1, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->group:Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v0, v1}, Lrx/subscriptions/RefCountSubscription;-><init>(Lrx/Subscription;)V

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->cancel:Lrx/subscriptions/RefCountSubscription;

    .line 90
    return-void
.end method


# virtual methods
.method complete(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lrx/Observer",
            "<TT2;>;>;)V"
        }
    .end annotation

    .prologue
    .line 143
    .local p0, "this":Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>.ResultManager;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lrx/Observer<TT2;>;>;"
    if-eqz p1, :cond_20

    .line 144
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Observer;

    .line 145
    .local v1, "o":Lrx/Observer;, "Lrx/Observer<TT2;>;"
    invoke-interface {v1}, Lrx/Observer;->onCompleted()V

    goto :goto_6

    .line 147
    .end local v1    # "o":Lrx/Observer;, "Lrx/Observer<TT2;>;"
    :cond_16
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->subscriber:Lrx/Subscriber;

    invoke-virtual {v2}, Lrx/Subscriber;->onCompleted()V

    .line 148
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->cancel:Lrx/subscriptions/RefCountSubscription;

    invoke-virtual {v2}, Lrx/subscriptions/RefCountSubscription;->unsubscribe()V

    .line 150
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_20
    return-void
.end method

.method errorAll(Ljava/lang/Throwable;)V
    .registers 7
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 119
    .local p0, "this":Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>.ResultManager;"
    iget-object v4, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->guard:Ljava/lang/Object;

    monitor-enter v4

    .line 120
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->leftMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 121
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lrx/Observer<TT2;>;>;"
    iget-object v3, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->leftMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 122
    iget-object v3, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->rightMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 123
    monitor-exit v4
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_2d

    .line 124
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrx/Observer;

    .line 125
    .local v2, "o":Lrx/Observer;, "Lrx/Observer<TT2;>;"
    invoke-interface {v2, p1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    goto :goto_1d

    .line 123
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/Observer<TT2;>;>;"
    .end local v2    # "o":Lrx/Observer;, "Lrx/Observer<TT2;>;"
    :catchall_2d
    move-exception v3

    :try_start_2e
    monitor-exit v4
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v3

    .line 127
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/Observer<TT2;>;>;"
    :cond_30
    iget-object v3, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->subscriber:Lrx/Subscriber;

    invoke-virtual {v3, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 128
    iget-object v3, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->cancel:Lrx/subscriptions/RefCountSubscription;

    invoke-virtual {v3}, Lrx/subscriptions/RefCountSubscription;->unsubscribe()V

    .line 129
    return-void
.end method

.method errorMain(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 135
    .local p0, "this":Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>.ResultManager;"
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->guard:Ljava/lang/Object;

    monitor-enter v1

    .line 136
    :try_start_3
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->leftMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 137
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->rightMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 138
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_19

    .line 139
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->subscriber:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 140
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->cancel:Lrx/subscriptions/RefCountSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/RefCountSubscription;->unsubscribe()V

    .line 141
    return-void

    .line 138
    :catchall_19
    move-exception v0

    :try_start_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public init()V
    .registers 4

    .prologue
    .line 94
    .local p0, "this":Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>.ResultManager;"
    new-instance v0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$LeftObserver;

    invoke-direct {v0, p0}, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$LeftObserver;-><init>(Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;)V

    .line 95
    .local v0, "s1":Lrx/Subscriber;, "Lrx/Subscriber<TT1;>;"
    new-instance v1, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightObserver;

    invoke-direct {v1, p0}, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightObserver;-><init>(Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;)V

    .line 97
    .local v1, "s2":Lrx/Subscriber;, "Lrx/Subscriber<TT2;>;"
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->group:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v2, v0}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    .line 98
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->group:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v2, v1}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    .line 100
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->this$0:Lrx/internal/operators/OnSubscribeGroupJoin;

    iget-object v2, v2, Lrx/internal/operators/OnSubscribeGroupJoin;->left:Lrx/Observable;

    invoke-virtual {v2, v0}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 101
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->this$0:Lrx/internal/operators/OnSubscribeGroupJoin;

    iget-object v2, v2, Lrx/internal/operators/OnSubscribeGroupJoin;->right:Lrx/Observable;

    invoke-virtual {v2, v1}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 102
    return-void
.end method

.method public isUnsubscribed()Z
    .registers 2

    .prologue
    .line 111
    .local p0, "this":Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>.ResultManager;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->cancel:Lrx/subscriptions/RefCountSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/RefCountSubscription;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public unsubscribe()V
    .registers 2

    .prologue
    .line 106
    .local p0, "this":Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>.ResultManager;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->cancel:Lrx/subscriptions/RefCountSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/RefCountSubscription;->unsubscribe()V

    .line 107
    return-void
.end method
