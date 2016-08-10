.class final Lrx/internal/operators/OperatorReplay$SizeBoundReplayBuffer;
.super Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;
.source "OperatorReplay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorReplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SizeBoundReplayBuffer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x51dae9f17ccbb88eL


# instance fields
.field final limit:I


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1, "limit"    # I

    .prologue
    .line 1114
    .local p0, "this":Lrx/internal/operators/OperatorReplay$SizeBoundReplayBuffer;, "Lrx/internal/operators/OperatorReplay$SizeBoundReplayBuffer<TT;>;"
    invoke-direct {p0}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;-><init>()V

    .line 1115
    iput p1, p0, Lrx/internal/operators/OperatorReplay$SizeBoundReplayBuffer;->limit:I

    .line 1116
    return-void
.end method


# virtual methods
.method truncate()V
    .registers 3

    .prologue
    .line 1121
    .local p0, "this":Lrx/internal/operators/OperatorReplay$SizeBoundReplayBuffer;, "Lrx/internal/operators/OperatorReplay$SizeBoundReplayBuffer<TT;>;"
    iget v0, p0, Lrx/internal/operators/OperatorReplay$SizeBoundReplayBuffer;->size:I

    iget v1, p0, Lrx/internal/operators/OperatorReplay$SizeBoundReplayBuffer;->limit:I

    if-le v0, v1, :cond_9

    .line 1122
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$SizeBoundReplayBuffer;->removeFirst()V

    .line 1124
    :cond_9
    return-void
.end method
