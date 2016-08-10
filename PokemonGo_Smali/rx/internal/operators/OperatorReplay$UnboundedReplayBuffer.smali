.class final Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer;
.super Ljava/util/ArrayList;
.source "OperatorReplay.java"

# interfaces
.implements Lrx/internal/operators/OperatorReplay$ReplayBuffer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorReplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UnboundedReplayBuffer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Lrx/internal/operators/OperatorReplay$ReplayBuffer",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x62057d556fa2a2d8L


# instance fields
.field final nl:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite",
            "<TT;>;"
        }
    .end annotation
.end field

.field volatile size:I


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .param p1, "capacityHint"    # I

    .prologue
    .line 775
    .local p0, "this":Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer;, "Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer<TT;>;"
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 776
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer;->nl:Lrx/internal/operators/NotificationLite;

    .line 777
    return-void
.end method


# virtual methods
.method public complete()V
    .registers 2

    .prologue
    .line 792
    .local p0, "this":Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer;, "Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v0}, Lrx/internal/operators/NotificationLite;->completed()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer;->add(Ljava/lang/Object;)Z

    .line 793
    iget v0, p0, Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer;->size:I

    .line 794
    return-void
.end method

.method public error(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 786
    .local p0, "this":Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer;, "Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v0, p1}, Lrx/internal/operators/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer;->add(Ljava/lang/Object;)Z

    .line 787
    iget v0, p0, Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer;->size:I

    .line 788
    return-void
.end method

.method public next(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 780
    .local p0, "this":Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer;, "Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v0, p1}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer;->add(Ljava/lang/Object;)Z

    .line 781
    iget v0, p0, Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer;->size:I

    .line 782
    return-void
.end method

.method public replay(Lrx/internal/operators/OperatorReplay$InnerProducer;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorReplay$InnerProducer",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 798
    .local p0, "this":Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer;, "Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer<TT;>;"
    .local p1, "output":Lrx/internal/operators/OperatorReplay$InnerProducer;, "Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    monitor-enter p1

    .line 799
    :try_start_1
    iget-boolean v11, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->emitting:Z

    if-eqz v11, :cond_a

    .line 800
    const/4 v11, 0x1

    iput-boolean v11, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->missed:Z

    .line 801
    monitor-exit p1

    .line 849
    :cond_9
    :goto_9
    return-void

    .line 803
    :cond_a
    const/4 v11, 0x1

    iput-boolean v11, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->emitting:Z

    .line 804
    monitor-exit p1
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_4e

    .line 806
    :goto_e
    invoke-virtual {p1}, Lrx/internal/operators/OperatorReplay$InnerProducer;->isUnsubscribed()Z

    move-result v11

    if-nez v11, :cond_9

    .line 809
    iget v10, p0, Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer;->size:I

    .line 811
    .local v10, "sourceIndex":I
    invoke-virtual {p1}, Lrx/internal/operators/OperatorReplay$InnerProducer;->index()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 812
    .local v1, "destIndexObject":Ljava/lang/Integer;
    if-eqz v1, :cond_51

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 814
    .local v0, "destIndex":I
    :goto_22
    invoke-virtual {p1}, Lrx/internal/operators/OperatorReplay$InnerProducer;->get()J

    move-result-wide v6

    .line 815
    .local v6, "r":J
    move-wide v8, v6

    .line 816
    .local v8, "r0":J
    const-wide/16 v2, 0x0

    .line 818
    .local v2, "e":J
    :goto_29
    const-wide/16 v12, 0x0

    cmp-long v11, v6, v12

    if-eqz v11, :cond_7a

    if-ge v0, v10, :cond_7a

    .line 819
    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 821
    .local v5, "o":Ljava/lang/Object;
    :try_start_35
    iget-object v11, p0, Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer;->nl:Lrx/internal/operators/NotificationLite;

    iget-object v12, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->child:Lrx/Subscriber;

    invoke-virtual {v11, v12, v5}, Lrx/internal/operators/NotificationLite;->accept(Lrx/Observer;Ljava/lang/Object;)Z
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_3c} :catch_53

    move-result v11

    if-nez v11, :cond_9

    .line 832
    invoke-virtual {p1}, Lrx/internal/operators/OperatorReplay$InnerProducer;->isUnsubscribed()Z

    move-result v11

    if-nez v11, :cond_9

    .line 835
    add-int/lit8 v0, v0, 0x1

    .line 836
    const-wide/16 v12, 0x1

    sub-long/2addr v6, v12

    .line 837
    const-wide/16 v12, 0x1

    add-long/2addr v2, v12

    .line 838
    goto :goto_29

    .line 804
    .end local v0    # "destIndex":I
    .end local v1    # "destIndexObject":Ljava/lang/Integer;
    .end local v2    # "e":J
    .end local v5    # "o":Ljava/lang/Object;
    .end local v6    # "r":J
    .end local v8    # "r0":J
    .end local v10    # "sourceIndex":I
    :catchall_4e
    move-exception v11

    :try_start_4f
    monitor-exit p1
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    throw v11

    .line 812
    .restart local v1    # "destIndexObject":Ljava/lang/Integer;
    .restart local v10    # "sourceIndex":I
    :cond_51
    const/4 v0, 0x0

    goto :goto_22

    .line 824
    .restart local v0    # "destIndex":I
    .restart local v2    # "e":J
    .restart local v5    # "o":Ljava/lang/Object;
    .restart local v6    # "r":J
    .restart local v8    # "r0":J
    :catch_53
    move-exception v4

    .line 825
    .local v4, "err":Ljava/lang/Throwable;
    invoke-static {v4}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 826
    invoke-virtual {p1}, Lrx/internal/operators/OperatorReplay$InnerProducer;->unsubscribe()V

    .line 827
    iget-object v11, p0, Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v11, v5}, Lrx/internal/operators/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    iget-object v11, p0, Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v11, v5}, Lrx/internal/operators/NotificationLite;->isCompleted(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    .line 828
    iget-object v11, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->child:Lrx/Subscriber;

    iget-object v12, p0, Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v12, v5}, Lrx/internal/operators/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v4, v12}, Lrx/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v12

    invoke-virtual {v11, v12}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_9

    .line 839
    .end local v4    # "err":Ljava/lang/Throwable;
    .end local v5    # "o":Ljava/lang/Object;
    :cond_7a
    const-wide/16 v12, 0x0

    cmp-long v11, v2, v12

    if-eqz v11, :cond_92

    .line 840
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iput-object v11, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->index:Ljava/lang/Object;

    .line 841
    const-wide v12, 0x7fffffffffffffffL

    cmp-long v11, v8, v12

    if-eqz v11, :cond_92

    .line 842
    invoke-virtual {p1, v2, v3}, Lrx/internal/operators/OperatorReplay$InnerProducer;->produced(J)J

    .line 846
    :cond_92
    monitor-enter p1

    .line 847
    :try_start_93
    iget-boolean v11, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->missed:Z

    if-nez v11, :cond_a0

    .line 848
    const/4 v11, 0x0

    iput-boolean v11, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->emitting:Z

    .line 849
    monitor-exit p1

    goto/16 :goto_9

    .line 852
    :catchall_9d
    move-exception v11

    monitor-exit p1
    :try_end_9f
    .catchall {:try_start_93 .. :try_end_9f} :catchall_9d

    throw v11

    .line 851
    :cond_a0
    const/4 v11, 0x0

    :try_start_a1
    iput-boolean v11, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->missed:Z

    .line 852
    monitor-exit p1
    :try_end_a4
    .catchall {:try_start_a1 .. :try_end_a4} :catchall_9d

    goto/16 :goto_e
.end method
