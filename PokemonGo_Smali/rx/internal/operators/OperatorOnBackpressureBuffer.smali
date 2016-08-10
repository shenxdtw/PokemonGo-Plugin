.class public Lrx/internal/operators/OperatorOnBackpressureBuffer;
.super Ljava/lang/Object;
.source "OperatorOnBackpressureBuffer.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;,
        Lrx/internal/operators/OperatorOnBackpressureBuffer$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field private final capacity:Ljava/lang/Long;

.field private final onOverflow:Lrx/functions/Action0;

.field private final overflowStrategy:Lrx/BackpressureOverflow$Strategy;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureBuffer;, "Lrx/internal/operators/OperatorOnBackpressureBuffer<TT;>;"
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer;->capacity:Ljava/lang/Long;

    .line 50
    iput-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer;->onOverflow:Lrx/functions/Action0;

    .line 51
    sget-object v0, Lrx/BackpressureOverflow;->ON_OVERFLOW_DEFAULT:Lrx/BackpressureOverflow$Strategy;

    iput-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer;->overflowStrategy:Lrx/BackpressureOverflow$Strategy;

    .line 52
    return-void
.end method

.method public constructor <init>(J)V
    .registers 6
    .param p1, "capacity"    # J

    .prologue
    .line 61
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureBuffer;, "Lrx/internal/operators/OperatorOnBackpressureBuffer<TT;>;"
    const/4 v0, 0x0

    sget-object v1, Lrx/BackpressureOverflow;->ON_OVERFLOW_DEFAULT:Lrx/BackpressureOverflow$Strategy;

    invoke-direct {p0, p1, p2, v0, v1}, Lrx/internal/operators/OperatorOnBackpressureBuffer;-><init>(JLrx/functions/Action0;Lrx/BackpressureOverflow$Strategy;)V

    .line 62
    return-void
.end method

.method public constructor <init>(JLrx/functions/Action0;)V
    .registers 5
    .param p1, "capacity"    # J
    .param p3, "onOverflow"    # Lrx/functions/Action0;

    .prologue
    .line 72
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureBuffer;, "Lrx/internal/operators/OperatorOnBackpressureBuffer<TT;>;"
    sget-object v0, Lrx/BackpressureOverflow;->ON_OVERFLOW_DEFAULT:Lrx/BackpressureOverflow$Strategy;

    invoke-direct {p0, p1, p2, p3, v0}, Lrx/internal/operators/OperatorOnBackpressureBuffer;-><init>(JLrx/functions/Action0;Lrx/BackpressureOverflow$Strategy;)V

    .line 73
    return-void
.end method

.method public constructor <init>(JLrx/functions/Action0;Lrx/BackpressureOverflow$Strategy;)V
    .registers 8
    .param p1, "capacity"    # J
    .param p3, "onOverflow"    # Lrx/functions/Action0;
    .param p4, "overflowStrategy"    # Lrx/BackpressureOverflow$Strategy;

    .prologue
    .line 83
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureBuffer;, "Lrx/internal/operators/OperatorOnBackpressureBuffer<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_11

    .line 85
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Buffer capacity must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_11
    if-nez p4, :cond_1b

    .line 88
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The BackpressureOverflow strategy must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_1b
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer;->capacity:Ljava/lang/Long;

    .line 91
    iput-object p3, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer;->onOverflow:Lrx/functions/Action0;

    .line 92
    iput-object p4, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer;->overflowStrategy:Lrx/BackpressureOverflow$Strategy;

    .line 93
    return-void
.end method

.method public static instance()Lrx/internal/operators/OperatorOnBackpressureBuffer;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/internal/operators/OperatorOnBackpressureBuffer",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 45
    sget-object v0, Lrx/internal/operators/OperatorOnBackpressureBuffer$Holder;->INSTANCE:Lrx/internal/operators/OperatorOnBackpressureBuffer;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 33
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureBuffer;, "Lrx/internal/operators/OperatorOnBackpressureBuffer<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorOnBackpressureBuffer;->call(Lrx/Subscriber;)Lrx/Subscriber;

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
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureBuffer;, "Lrx/internal/operators/OperatorOnBackpressureBuffer<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;

    iget-object v1, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer;->capacity:Ljava/lang/Long;

    iget-object v2, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer;->onOverflow:Lrx/functions/Action0;

    iget-object v3, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer;->overflowStrategy:Lrx/BackpressureOverflow$Strategy;

    invoke-direct {v0, p1, v1, v2, v3}, Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;-><init>(Lrx/Subscriber;Ljava/lang/Long;Lrx/functions/Action0;Lrx/BackpressureOverflow$Strategy;)V

    .line 104
    .local v0, "parent":Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;, "Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber<TT;>;"
    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 105
    invoke-virtual {v0}, Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;->manager()Lrx/Producer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 107
    return-object v0
.end method
