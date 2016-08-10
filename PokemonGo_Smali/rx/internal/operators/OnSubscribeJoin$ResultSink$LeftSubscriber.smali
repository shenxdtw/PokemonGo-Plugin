.class final Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber;
.super Lrx/Subscriber;
.source "OnSubscribeJoin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeJoin$ResultSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "LeftSubscriber"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber$LeftDurationSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<TT",
        "Left;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;


# direct methods
.method constructor <init>(Lrx/internal/operators/OnSubscribeJoin$ResultSink;)V
    .registers 2

    .prologue
    .line 102
    .local p0, "this":Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber;, "Lrx/internal/operators/OnSubscribeJoin<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.ResultSink.LeftSubscriber;"
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 180
    return-void
.end method


# virtual methods
.method protected expire(ILrx/Subscription;)V
    .registers 7
    .param p1, "id"    # I
    .param p2, "resource"    # Lrx/Subscription;

    .prologue
    .line 105
    .local p0, "this":Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber;, "Lrx/internal/operators/OnSubscribeJoin<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.ResultSink.LeftSubscriber;"
    const/4 v0, 0x0

    .line 106
    .local v0, "complete":Z
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-object v2, v1, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->guard:Ljava/lang/Object;

    monitor-enter v2

    .line 107
    :try_start_6
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-object v1, v1, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->leftMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_25

    iget-object v1, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-object v1, v1, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->leftMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_25

    iget-object v1, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-boolean v1, v1, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->leftDone:Z

    if-eqz v1, :cond_25

    .line 108
    const/4 v0, 0x1

    .line 110
    :cond_25
    monitor-exit v2
    :try_end_26
    .catchall {:try_start_6 .. :try_end_26} :catchall_37

    .line 111
    if-eqz v0, :cond_3a

    .line 112
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-object v1, v1, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->subscriber:Lrx/Subscriber;

    invoke-virtual {v1}, Lrx/Subscriber;->onCompleted()V

    .line 113
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-object v1, v1, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->subscriber:Lrx/Subscriber;

    invoke-virtual {v1}, Lrx/Subscriber;->unsubscribe()V

    .line 117
    :goto_36
    return-void

    .line 110
    :catchall_37
    move-exception v1

    :try_start_38
    monitor-exit v2
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw v1

    .line 115
    :cond_3a
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-object v1, v1, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->group:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v1, p2}, Lrx/subscriptions/CompositeSubscription;->remove(Lrx/Subscription;)V

    goto :goto_36
.end method

.method public onCompleted()V
    .registers 5

    .prologue
    .line 164
    .local p0, "this":Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber;, "Lrx/internal/operators/OnSubscribeJoin<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.ResultSink.LeftSubscriber;"
    const/4 v0, 0x0

    .line 165
    .local v0, "complete":Z
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-object v2, v1, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->guard:Ljava/lang/Object;

    monitor-enter v2

    .line 166
    :try_start_6
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->leftDone:Z

    .line 167
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-boolean v1, v1, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->rightDone:Z

    if-nez v1, :cond_1b

    iget-object v1, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-object v1, v1, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->leftMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 168
    :cond_1b
    const/4 v0, 0x1

    .line 170
    :cond_1c
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_6 .. :try_end_1d} :catchall_2e

    .line 171
    if-eqz v0, :cond_31

    .line 172
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-object v1, v1, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->subscriber:Lrx/Subscriber;

    invoke-virtual {v1}, Lrx/Subscriber;->onCompleted()V

    .line 173
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-object v1, v1, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->subscriber:Lrx/Subscriber;

    invoke-virtual {v1}, Lrx/Subscriber;->unsubscribe()V

    .line 177
    :goto_2d
    return-void

    .line 170
    :catchall_2e
    move-exception v1

    :try_start_2f
    monitor-exit v2
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v1

    .line 175
    :cond_31
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-object v1, v1, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->group:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v1, p0}, Lrx/subscriptions/CompositeSubscription;->remove(Lrx/Subscription;)V

    goto :goto_2d
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 158
    .local p0, "this":Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber;, "Lrx/internal/operators/OnSubscribeJoin<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.ResultSink.LeftSubscriber;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-object v0, v0, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->subscriber:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 159
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-object v0, v0, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->subscriber:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->unsubscribe()V

    .line 160
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT",
            "Left;",
            ")V"
        }
    .end annotation

    .prologue
    .line 124
    .local p0, "this":Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber;, "Lrx/internal/operators/OnSubscribeJoin<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.ResultSink.LeftSubscriber;"
    .local p1, "args":Ljava/lang/Object;, "TTLeft;"
    iget-object v10, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-object v11, v10, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->guard:Ljava/lang/Object;

    monitor-enter v11

    .line 125
    :try_start_5
    iget-object v10, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget v5, v10, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->leftId:I

    add-int/lit8 v12, v5, 0x1

    iput v12, v10, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->leftId:I

    .line 126
    .local v5, "id":I
    iget-object v10, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-object v10, v10, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->leftMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v10, v12, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v10, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget v3, v10, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->rightId:I

    .line 128
    .local v3, "highRightId":I
    monitor-exit v11
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_76

    .line 132
    :try_start_1d
    iget-object v10, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-object v10, v10, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->this$0:Lrx/internal/operators/OnSubscribeJoin;

    iget-object v10, v10, Lrx/internal/operators/OnSubscribeJoin;->leftDurationSelector:Lrx/functions/Func1;

    invoke-interface {v10, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Observable;

    .line 134
    .local v1, "duration":Lrx/Observable;, "Lrx/Observable<TTLeftDuration;>;"
    new-instance v0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber$LeftDurationSubscriber;

    invoke-direct {v0, p0, v5}, Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber$LeftDurationSubscriber;-><init>(Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber;I)V

    .line 135
    .local v0, "d1":Lrx/Subscriber;, "Lrx/Subscriber<TTLeftDuration;>;"
    iget-object v10, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-object v10, v10, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->group:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v10, v0}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    .line 137
    invoke-virtual {v1, v0}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 139
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 140
    .local v8, "rightValues":Ljava/util/List;, "Ljava/util/List<TTRight;>;"
    iget-object v10, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-object v11, v10, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->guard:Ljava/lang/Object;

    monitor-enter v11
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_42} :catch_71

    .line 141
    :try_start_42
    iget-object v10, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-object v10, v10, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->rightMap:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_4e
    :goto_4e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_79

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 142
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;TTRight;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ge v10, v3, :cond_4e

    .line 143
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4e

    .line 146
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;TTRight;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    :catchall_6e
    move-exception v10

    monitor-exit v11
    :try_end_70
    .catchall {:try_start_42 .. :try_end_70} :catchall_6e

    :try_start_70
    throw v10
    :try_end_71
    .catch Ljava/lang/Throwable; {:try_start_70 .. :try_end_71} :catch_71

    .line 151
    .end local v0    # "d1":Lrx/Subscriber;, "Lrx/Subscriber<TTLeftDuration;>;"
    .end local v1    # "duration":Lrx/Observable;, "Lrx/Observable<TTLeftDuration;>;"
    .end local v8    # "rightValues":Ljava/util/List;, "Ljava/util/List<TTRight;>;"
    :catch_71
    move-exception v9

    .line 152
    .local v9, "t":Ljava/lang/Throwable;
    invoke-static {v9, p0}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;)V

    .line 154
    .end local v9    # "t":Ljava/lang/Throwable;
    :cond_75
    return-void

    .line 128
    .end local v3    # "highRightId":I
    .end local v5    # "id":I
    :catchall_76
    move-exception v10

    :try_start_77
    monitor-exit v11
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_76

    throw v10

    .line 146
    .restart local v0    # "d1":Lrx/Subscriber;, "Lrx/Subscriber<TTLeftDuration;>;"
    .restart local v1    # "duration":Lrx/Observable;, "Lrx/Observable<TTLeftDuration;>;"
    .restart local v3    # "highRightId":I
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v5    # "id":I
    .restart local v8    # "rightValues":Ljava/util/List;, "Ljava/util/List<TTRight;>;"
    :cond_79
    :try_start_79
    monitor-exit v11
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_6e

    .line 147
    :try_start_7a
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_75

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 148
    .local v6, "r":Ljava/lang/Object;, "TTRight;"
    iget-object v10, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-object v10, v10, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->this$0:Lrx/internal/operators/OnSubscribeJoin;

    iget-object v10, v10, Lrx/internal/operators/OnSubscribeJoin;->resultSelector:Lrx/functions/Func2;

    invoke-interface {v10, p1, v6}, Lrx/functions/Func2;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 149
    .local v7, "result":Ljava/lang/Object;, "TR;"
    iget-object v10, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber;->this$1:Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    iget-object v10, v10, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->subscriber:Lrx/Subscriber;

    invoke-virtual {v10, v7}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_99
    .catch Ljava/lang/Throwable; {:try_start_7a .. :try_end_99} :catch_71

    goto :goto_7e
.end method
