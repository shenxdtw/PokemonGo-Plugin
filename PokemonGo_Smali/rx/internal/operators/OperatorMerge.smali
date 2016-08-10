.class public final Lrx/internal/operators/OperatorMerge;
.super Ljava/lang/Object;
.source "OperatorMerge.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorMerge$InnerSubscriber;,
        Lrx/internal/operators/OperatorMerge$MergeSubscriber;,
        Lrx/internal/operators/OperatorMerge$MergeProducer;,
        Lrx/internal/operators/OperatorMerge$HolderDelayErrors;,
        Lrx/internal/operators/OperatorMerge$HolderNoDelay;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator",
        "<TT;",
        "Lrx/Observable",
        "<+TT;>;>;"
    }
.end annotation


# instance fields
.field final delayErrors:Z

.field final maxConcurrent:I


# direct methods
.method constructor <init>(ZI)V
    .registers 3
    .param p1, "delayErrors"    # Z
    .param p2, "maxConcurrent"    # I

    .prologue
    .line 96
    .local p0, "this":Lrx/internal/operators/OperatorMerge;, "Lrx/internal/operators/OperatorMerge<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-boolean p1, p0, Lrx/internal/operators/OperatorMerge;->delayErrors:Z

    .line 98
    iput p2, p0, Lrx/internal/operators/OperatorMerge;->maxConcurrent:I

    .line 99
    return-void
.end method

.method public static instance(Z)Lrx/internal/operators/OperatorMerge;
    .registers 2
    .param p0, "delayErrors"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(Z)",
            "Lrx/internal/operators/OperatorMerge",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 72
    if-eqz p0, :cond_5

    .line 73
    sget-object v0, Lrx/internal/operators/OperatorMerge$HolderDelayErrors;->INSTANCE:Lrx/internal/operators/OperatorMerge;

    .line 75
    :goto_4
    return-object v0

    :cond_5
    sget-object v0, Lrx/internal/operators/OperatorMerge$HolderNoDelay;->INSTANCE:Lrx/internal/operators/OperatorMerge;

    goto :goto_4
.end method

.method public static instance(ZI)Lrx/internal/operators/OperatorMerge;
    .registers 5
    .param p0, "delayErrors"    # Z
    .param p1, "maxConcurrent"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ZI)",
            "Lrx/internal/operators/OperatorMerge",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 84
    if-gtz p1, :cond_1b

    .line 85
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxConcurrent > 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_1b
    const v0, 0x7fffffff

    if-ne p1, v0, :cond_25

    .line 88
    invoke-static {p0}, Lrx/internal/operators/OperatorMerge;->instance(Z)Lrx/internal/operators/OperatorMerge;

    move-result-object v0

    .line 90
    :goto_24
    return-object v0

    :cond_25
    new-instance v0, Lrx/internal/operators/OperatorMerge;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/OperatorMerge;-><init>(ZI)V

    goto :goto_24
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 55
    .local p0, "this":Lrx/internal/operators/OperatorMerge;, "Lrx/internal/operators/OperatorMerge<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorMerge;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)",
            "Lrx/Subscriber",
            "<",
            "Lrx/Observable",
            "<+TT;>;>;"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, "this":Lrx/internal/operators/OperatorMerge;, "Lrx/internal/operators/OperatorMerge<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v1, Lrx/internal/operators/OperatorMerge$MergeSubscriber;

    iget-boolean v2, p0, Lrx/internal/operators/OperatorMerge;->delayErrors:Z

    iget v3, p0, Lrx/internal/operators/OperatorMerge;->maxConcurrent:I

    invoke-direct {v1, p1, v2, v3}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;-><init>(Lrx/Subscriber;ZI)V

    .line 104
    .local v1, "subscriber":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorMerge$MergeProducer;

    invoke-direct {v0, v1}, Lrx/internal/operators/OperatorMerge$MergeProducer;-><init>(Lrx/internal/operators/OperatorMerge$MergeSubscriber;)V

    .line 105
    .local v0, "producer":Lrx/internal/operators/OperatorMerge$MergeProducer;, "Lrx/internal/operators/OperatorMerge$MergeProducer<TT;>;"
    iput-object v0, v1, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->producer:Lrx/internal/operators/OperatorMerge$MergeProducer;

    .line 107
    invoke-virtual {p1, v1}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 108
    invoke-virtual {p1, v0}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 110
    return-object v1
.end method
