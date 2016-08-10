.class public final Lrx/internal/operators/OperatorWindowWithSize;
.super Ljava/lang/Object;
.source "OperatorWindowWithSize.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;,
        Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;,
        Lrx/internal/operators/OperatorWindowWithSize$WindowExact;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator",
        "<",
        "Lrx/Observable",
        "<TT;>;TT;>;"
    }
.end annotation


# instance fields
.field final size:I

.field final skip:I


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .param p1, "size"    # I
    .param p2, "skip"    # I

    .prologue
    .line 45
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize;, "Lrx/internal/operators/OperatorWindowWithSize<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Lrx/internal/operators/OperatorWindowWithSize;->size:I

    .line 47
    iput p2, p0, Lrx/internal/operators/OperatorWindowWithSize;->skip:I

    .line 48
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 41
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize;, "Lrx/internal/operators/OperatorWindowWithSize<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorWindowWithSize;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Lrx/Observable",
            "<TT;>;>;)",
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize;, "Lrx/internal/operators/OperatorWindowWithSize<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-Lrx/Observable<TT;>;>;"
    iget v3, p0, Lrx/internal/operators/OperatorWindowWithSize;->skip:I

    iget v4, p0, Lrx/internal/operators/OperatorWindowWithSize;->size:I

    if-ne v3, v4, :cond_1a

    .line 53
    new-instance v0, Lrx/internal/operators/OperatorWindowWithSize$WindowExact;

    iget v3, p0, Lrx/internal/operators/OperatorWindowWithSize;->size:I

    invoke-direct {v0, p1, v3}, Lrx/internal/operators/OperatorWindowWithSize$WindowExact;-><init>(Lrx/Subscriber;I)V

    .line 55
    .local v0, "parent":Lrx/internal/operators/OperatorWindowWithSize$WindowExact;, "Lrx/internal/operators/OperatorWindowWithSize$WindowExact<TT;>;"
    iget-object v3, v0, Lrx/internal/operators/OperatorWindowWithSize$WindowExact;->cancel:Lrx/Subscription;

    invoke-virtual {p1, v3}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 56
    invoke-virtual {v0}, Lrx/internal/operators/OperatorWindowWithSize$WindowExact;->createProducer()Lrx/Producer;

    move-result-object v3

    invoke-virtual {p1, v3}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 74
    .end local v0    # "parent":Lrx/internal/operators/OperatorWindowWithSize$WindowExact;, "Lrx/internal/operators/OperatorWindowWithSize$WindowExact<TT;>;"
    :goto_19
    return-object v0

    .line 60
    :cond_1a
    iget v3, p0, Lrx/internal/operators/OperatorWindowWithSize;->skip:I

    iget v4, p0, Lrx/internal/operators/OperatorWindowWithSize;->size:I

    if-le v3, v4, :cond_37

    .line 61
    new-instance v2, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;

    iget v3, p0, Lrx/internal/operators/OperatorWindowWithSize;->size:I

    iget v4, p0, Lrx/internal/operators/OperatorWindowWithSize;->skip:I

    invoke-direct {v2, p1, v3, v4}, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;-><init>(Lrx/Subscriber;II)V

    .line 63
    .local v2, "parent":Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;, "Lrx/internal/operators/OperatorWindowWithSize$WindowSkip<TT;>;"
    iget-object v3, v2, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->cancel:Lrx/Subscription;

    invoke-virtual {p1, v3}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 64
    invoke-virtual {v2}, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->createProducer()Lrx/Producer;

    move-result-object v3

    invoke-virtual {p1, v3}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    move-object v0, v2

    .line 66
    goto :goto_19

    .line 69
    .end local v2    # "parent":Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;, "Lrx/internal/operators/OperatorWindowWithSize$WindowSkip<TT;>;"
    :cond_37
    new-instance v1, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;

    iget v3, p0, Lrx/internal/operators/OperatorWindowWithSize;->size:I

    iget v4, p0, Lrx/internal/operators/OperatorWindowWithSize;->skip:I

    invoke-direct {v1, p1, v3, v4}, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;-><init>(Lrx/Subscriber;II)V

    .line 71
    .local v1, "parent":Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;, "Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap<TT;>;"
    iget-object v3, v1, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->cancel:Lrx/Subscription;

    invoke-virtual {p1, v3}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 72
    invoke-virtual {v1}, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->createProducer()Lrx/Producer;

    move-result-object v3

    invoke-virtual {p1, v3}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    move-object v0, v1

    .line 74
    goto :goto_19
.end method
