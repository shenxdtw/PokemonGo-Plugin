.class Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "OperatorReplay.java"

# interfaces
.implements Lrx/internal/operators/OperatorReplay$ReplayBuffer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorReplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BoundedReplayBuffer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference",
        "<",
        "Lrx/internal/operators/OperatorReplay$Node;",
        ">;",
        "Lrx/internal/operators/OperatorReplay$ReplayBuffer",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2090aef8efde5e9eL


# instance fields
.field index:J

.field final nl:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite",
            "<TT;>;"
        }
    .end annotation
.end field

.field size:I

.field tail:Lrx/internal/operators/OperatorReplay$Node;


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    .line 894
    .local p0, "this":Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;, "Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 895
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v1

    iput-object v1, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->nl:Lrx/internal/operators/NotificationLite;

    .line 896
    new-instance v0, Lrx/internal/operators/OperatorReplay$Node;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lrx/internal/operators/OperatorReplay$Node;-><init>(Ljava/lang/Object;J)V

    .line 897
    .local v0, "n":Lrx/internal/operators/OperatorReplay$Node;
    iput-object v0, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->tail:Lrx/internal/operators/OperatorReplay$Node;

    .line 898
    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->set(Ljava/lang/Object;)V

    .line 899
    return-void
.end method


# virtual methods
.method final addLast(Lrx/internal/operators/OperatorReplay$Node;)V
    .registers 3
    .param p1, "n"    # Lrx/internal/operators/OperatorReplay$Node;

    .prologue
    .line 906
    .local p0, "this":Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;, "Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->tail:Lrx/internal/operators/OperatorReplay$Node;

    invoke-virtual {v0, p1}, Lrx/internal/operators/OperatorReplay$Node;->set(Ljava/lang/Object;)V

    .line 907
    iput-object p1, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->tail:Lrx/internal/operators/OperatorReplay$Node;

    .line 908
    iget v0, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->size:I

    .line 909
    return-void
.end method

.method final collect(Ljava/util/Collection;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1080
    .local p0, "this":Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;, "Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer<TT;>;"
    .local p1, "output":Ljava/util/Collection;, "Ljava/util/Collection<-TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/OperatorReplay$Node;

    .line 1082
    .local v0, "n":Lrx/internal/operators/OperatorReplay$Node;
    :goto_6
    invoke-virtual {v0}, Lrx/internal/operators/OperatorReplay$Node;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/internal/operators/OperatorReplay$Node;

    .line 1083
    .local v1, "next":Lrx/internal/operators/OperatorReplay$Node;
    if-eqz v1, :cond_24

    .line 1084
    iget-object v2, v1, Lrx/internal/operators/OperatorReplay$Node;->value:Ljava/lang/Object;

    .line 1085
    .local v2, "o":Ljava/lang/Object;
    invoke-virtual {p0, v2}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->leaveTransform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1086
    .local v3, "v":Ljava/lang/Object;
    iget-object v4, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v4, v3}, Lrx/internal/operators/NotificationLite;->isCompleted(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_24

    iget-object v4, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v4, v3}, Lrx/internal/operators/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 1095
    .end local v2    # "o":Ljava/lang/Object;
    .end local v3    # "v":Ljava/lang/Object;
    :cond_24
    return-void

    .line 1089
    .restart local v2    # "o":Ljava/lang/Object;
    .restart local v3    # "v":Ljava/lang/Object;
    :cond_25
    iget-object v4, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v4, v3}, Lrx/internal/operators/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1090
    move-object v0, v1

    .line 1094
    goto :goto_6
.end method

.method public final complete()V
    .registers 7

    .prologue
    .line 960
    .local p0, "this":Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;, "Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer<TT;>;"
    iget-object v2, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v2}, Lrx/internal/operators/NotificationLite;->completed()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->enterTransform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 961
    .local v1, "o":Ljava/lang/Object;
    new-instance v0, Lrx/internal/operators/OperatorReplay$Node;

    iget-wide v2, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->index:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->index:J

    invoke-direct {v0, v1, v2, v3}, Lrx/internal/operators/OperatorReplay$Node;-><init>(Ljava/lang/Object;J)V

    .line 962
    .local v0, "n":Lrx/internal/operators/OperatorReplay$Node;
    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->addLast(Lrx/internal/operators/OperatorReplay$Node;)V

    .line 963
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->truncateFinal()V

    .line 964
    return-void
.end method

.method enterTransform(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 1054
    .local p0, "this":Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;, "Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer<TT;>;"
    return-object p1
.end method

.method public final error(Ljava/lang/Throwable;)V
    .registers 8
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 952
    .local p0, "this":Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;, "Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer<TT;>;"
    iget-object v2, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v2, p1}, Lrx/internal/operators/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->enterTransform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 953
    .local v1, "o":Ljava/lang/Object;
    new-instance v0, Lrx/internal/operators/OperatorReplay$Node;

    iget-wide v2, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->index:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->index:J

    invoke-direct {v0, v1, v2, v3}, Lrx/internal/operators/OperatorReplay$Node;-><init>(Ljava/lang/Object;J)V

    .line 954
    .local v0, "n":Lrx/internal/operators/OperatorReplay$Node;
    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->addLast(Lrx/internal/operators/OperatorReplay$Node;)V

    .line 955
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->truncateFinal()V

    .line 956
    return-void
.end method

.method hasCompleted()Z
    .registers 3

    .prologue
    .line 1100
    .local p0, "this":Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;, "Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->tail:Lrx/internal/operators/OperatorReplay$Node;

    iget-object v0, v0, Lrx/internal/operators/OperatorReplay$Node;->value:Ljava/lang/Object;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->nl:Lrx/internal/operators/NotificationLite;

    iget-object v1, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->tail:Lrx/internal/operators/OperatorReplay$Node;

    iget-object v1, v1, Lrx/internal/operators/OperatorReplay$Node;->value:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->leaveTransform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/internal/operators/NotificationLite;->isCompleted(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method hasError()Z
    .registers 3

    .prologue
    .line 1097
    .local p0, "this":Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;, "Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->tail:Lrx/internal/operators/OperatorReplay$Node;

    iget-object v0, v0, Lrx/internal/operators/OperatorReplay$Node;->value:Ljava/lang/Object;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->nl:Lrx/internal/operators/NotificationLite;

    iget-object v1, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->tail:Lrx/internal/operators/OperatorReplay$Node;

    iget-object v1, v1, Lrx/internal/operators/OperatorReplay$Node;->value:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->leaveTransform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/internal/operators/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method leaveTransform(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 1063
    .local p0, "this":Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;, "Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer<TT;>;"
    return-object p1
.end method

.method public final next(Ljava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 944
    .local p0, "this":Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;, "Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v2, p1}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->enterTransform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 945
    .local v1, "o":Ljava/lang/Object;
    new-instance v0, Lrx/internal/operators/OperatorReplay$Node;

    iget-wide v2, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->index:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->index:J

    invoke-direct {v0, v1, v2, v3}, Lrx/internal/operators/OperatorReplay$Node;-><init>(Ljava/lang/Object;J)V

    .line 946
    .local v0, "n":Lrx/internal/operators/OperatorReplay$Node;
    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->addLast(Lrx/internal/operators/OperatorReplay$Node;)V

    .line 947
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->truncate()V

    .line 948
    return-void
.end method

.method final removeFirst()V
    .registers 5

    .prologue
    .line 914
    .local p0, "this":Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;, "Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer<TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/OperatorReplay$Node;

    .line 915
    .local v0, "head":Lrx/internal/operators/OperatorReplay$Node;
    invoke-virtual {v0}, Lrx/internal/operators/OperatorReplay$Node;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/internal/operators/OperatorReplay$Node;

    .line 916
    .local v1, "next":Lrx/internal/operators/OperatorReplay$Node;
    if-nez v1, :cond_16

    .line 917
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Empty list!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 919
    :cond_16
    iget v2, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->size:I

    .line 922
    invoke-virtual {p0, v1}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->setFirst(Lrx/internal/operators/OperatorReplay$Node;)V

    .line 923
    return-void
.end method

.method final removeSome(I)V
    .registers 4
    .param p1, "n"    # I

    .prologue
    .line 925
    .local p0, "this":Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;, "Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer<TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/OperatorReplay$Node;

    .line 926
    .local v0, "head":Lrx/internal/operators/OperatorReplay$Node;
    :goto_6
    if-lez p1, :cond_17

    .line 927
    invoke-virtual {v0}, Lrx/internal/operators/OperatorReplay$Node;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "head":Lrx/internal/operators/OperatorReplay$Node;
    check-cast v0, Lrx/internal/operators/OperatorReplay$Node;

    .line 928
    .restart local v0    # "head":Lrx/internal/operators/OperatorReplay$Node;
    add-int/lit8 p1, p1, -0x1

    .line 929
    iget v1, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->size:I

    goto :goto_6

    .line 932
    :cond_17
    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->setFirst(Lrx/internal/operators/OperatorReplay$Node;)V

    .line 933
    return-void
.end method

.method public final replay(Lrx/internal/operators/OperatorReplay$InnerProducer;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorReplay$InnerProducer",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 968
    .local p0, "this":Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;, "Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer<TT;>;"
    .local p1, "output":Lrx/internal/operators/OperatorReplay$InnerProducer;, "Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    monitor-enter p1

    .line 969
    :try_start_1
    iget-boolean v9, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->emitting:Z

    if-eqz v9, :cond_a

    .line 970
    const/4 v9, 0x1

    iput-boolean v9, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->missed:Z

    .line 971
    monitor-exit p1

    .line 1039
    :cond_9
    :goto_9
    return-void

    .line 973
    :cond_a
    const/4 v9, 0x1

    iput-boolean v9, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->emitting:Z

    .line 974
    monitor-exit p1
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_8c

    .line 976
    :goto_e
    invoke-virtual {p1}, Lrx/internal/operators/OperatorReplay$InnerProducer;->isUnsubscribed()Z

    move-result v9

    if-nez v9, :cond_9

    .line 980
    invoke-virtual {p1}, Lrx/internal/operators/OperatorReplay$InnerProducer;->get()J

    move-result-wide v6

    .line 981
    .local v6, "r":J
    const-wide v10, 0x7fffffffffffffffL

    cmp-long v9, v6, v10

    if-nez v9, :cond_8f

    const/4 v5, 0x1

    .line 982
    .local v5, "unbounded":Z
    :goto_22
    const-wide/16 v0, 0x0

    .line 984
    .local v0, "e":J
    invoke-virtual {p1}, Lrx/internal/operators/OperatorReplay$InnerProducer;->index()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lrx/internal/operators/OperatorReplay$Node;

    .line 985
    .local v3, "node":Lrx/internal/operators/OperatorReplay$Node;
    if-nez v3, :cond_39

    .line 986
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->get()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "node":Lrx/internal/operators/OperatorReplay$Node;
    check-cast v3, Lrx/internal/operators/OperatorReplay$Node;

    .line 987
    .restart local v3    # "node":Lrx/internal/operators/OperatorReplay$Node;
    iput-object v3, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->index:Ljava/lang/Object;

    .line 993
    iget-wide v10, v3, Lrx/internal/operators/OperatorReplay$Node;->index:J

    invoke-virtual {p1, v10, v11}, Lrx/internal/operators/OperatorReplay$InnerProducer;->addTotalRequested(J)V

    .line 996
    :cond_39
    invoke-virtual {p1}, Lrx/internal/operators/OperatorReplay$InnerProducer;->isUnsubscribed()Z

    move-result v9

    if-nez v9, :cond_9

    .line 1000
    :cond_3f
    const-wide/16 v10, 0x0

    cmp-long v9, v6, v10

    if-eqz v9, :cond_a0

    .line 1001
    invoke-virtual {v3}, Lrx/internal/operators/OperatorReplay$Node;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lrx/internal/operators/OperatorReplay$Node;

    .line 1002
    .local v8, "v":Lrx/internal/operators/OperatorReplay$Node;
    if-eqz v8, :cond_a0

    .line 1003
    iget-object v9, v8, Lrx/internal/operators/OperatorReplay$Node;->value:Ljava/lang/Object;

    invoke-virtual {p0, v9}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->leaveTransform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1005
    .local v4, "o":Ljava/lang/Object;
    :try_start_53
    iget-object v9, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->nl:Lrx/internal/operators/NotificationLite;

    iget-object v10, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->child:Lrx/Subscriber;

    invoke-virtual {v9, v10, v4}, Lrx/internal/operators/NotificationLite;->accept(Lrx/Observer;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_91

    .line 1006
    const/4 v9, 0x0

    iput-object v9, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->index:Ljava/lang/Object;
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_60} :catch_61

    goto :goto_9

    .line 1009
    :catch_61
    move-exception v2

    .line 1010
    .local v2, "err":Ljava/lang/Throwable;
    const/4 v9, 0x0

    iput-object v9, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->index:Ljava/lang/Object;

    .line 1011
    invoke-static {v2}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 1012
    invoke-virtual {p1}, Lrx/internal/operators/OperatorReplay$InnerProducer;->unsubscribe()V

    .line 1013
    iget-object v9, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v9, v4}, Lrx/internal/operators/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    iget-object v9, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v9, v4}, Lrx/internal/operators/NotificationLite;->isCompleted(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 1014
    iget-object v9, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->child:Lrx/Subscriber;

    iget-object v10, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v10, v4}, Lrx/internal/operators/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v2, v10}, Lrx/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v10

    invoke-virtual {v9, v10}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_9

    .line 974
    .end local v0    # "e":J
    .end local v2    # "err":Ljava/lang/Throwable;
    .end local v3    # "node":Lrx/internal/operators/OperatorReplay$Node;
    .end local v4    # "o":Ljava/lang/Object;
    .end local v5    # "unbounded":Z
    .end local v6    # "r":J
    .end local v8    # "v":Lrx/internal/operators/OperatorReplay$Node;
    :catchall_8c
    move-exception v9

    :try_start_8d
    monitor-exit p1
    :try_end_8e
    .catchall {:try_start_8d .. :try_end_8e} :catchall_8c

    throw v9

    .line 981
    .restart local v6    # "r":J
    :cond_8f
    const/4 v5, 0x0

    goto :goto_22

    .line 1018
    .restart local v0    # "e":J
    .restart local v3    # "node":Lrx/internal/operators/OperatorReplay$Node;
    .restart local v4    # "o":Ljava/lang/Object;
    .restart local v5    # "unbounded":Z
    .restart local v8    # "v":Lrx/internal/operators/OperatorReplay$Node;
    :cond_91
    const-wide/16 v10, 0x1

    add-long/2addr v0, v10

    .line 1019
    const-wide/16 v10, 0x1

    sub-long/2addr v6, v10

    .line 1020
    move-object v3, v8

    .line 1024
    invoke-virtual {p1}, Lrx/internal/operators/OperatorReplay$InnerProducer;->isUnsubscribed()Z

    move-result v9

    if-eqz v9, :cond_3f

    goto/16 :goto_9

    .line 1029
    .end local v4    # "o":Ljava/lang/Object;
    .end local v8    # "v":Lrx/internal/operators/OperatorReplay$Node;
    :cond_a0
    const-wide/16 v10, 0x0

    cmp-long v9, v0, v10

    if-eqz v9, :cond_ad

    .line 1030
    iput-object v3, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->index:Ljava/lang/Object;

    .line 1031
    if-nez v5, :cond_ad

    .line 1032
    invoke-virtual {p1, v0, v1}, Lrx/internal/operators/OperatorReplay$InnerProducer;->produced(J)J

    .line 1036
    :cond_ad
    monitor-enter p1

    .line 1037
    :try_start_ae
    iget-boolean v9, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->missed:Z

    if-nez v9, :cond_bb

    .line 1038
    const/4 v9, 0x0

    iput-boolean v9, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->emitting:Z

    .line 1039
    monitor-exit p1

    goto/16 :goto_9

    .line 1042
    :catchall_b8
    move-exception v9

    monitor-exit p1
    :try_end_ba
    .catchall {:try_start_ae .. :try_end_ba} :catchall_b8

    throw v9

    .line 1041
    :cond_bb
    const/4 v9, 0x0

    :try_start_bc
    iput-boolean v9, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->missed:Z

    .line 1042
    monitor-exit p1
    :try_end_bf
    .catchall {:try_start_bc .. :try_end_bf} :catchall_b8

    goto/16 :goto_e
.end method

.method final setFirst(Lrx/internal/operators/OperatorReplay$Node;)V
    .registers 2
    .param p1, "n"    # Lrx/internal/operators/OperatorReplay$Node;

    .prologue
    .line 939
    .local p0, "this":Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;, "Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer<TT;>;"
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->set(Ljava/lang/Object;)V

    .line 940
    return-void
.end method

.method truncate()V
    .registers 1

    .prologue
    .line 1071
    .local p0, "this":Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;, "Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer<TT;>;"
    return-void
.end method

.method truncateFinal()V
    .registers 1

    .prologue
    .line 1078
    .local p0, "this":Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;, "Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer<TT;>;"
    return-void
.end method
