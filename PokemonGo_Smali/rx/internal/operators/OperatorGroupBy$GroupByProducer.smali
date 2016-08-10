.class public final Lrx/internal/operators/OperatorGroupBy$GroupByProducer;
.super Ljava/lang/Object;
.source "OperatorGroupBy.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorGroupBy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GroupByProducer"
.end annotation


# instance fields
.field final parent:Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber",
            "<***>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber",
            "<***>;)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p1, "parent":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber<***>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lrx/internal/operators/OperatorGroupBy$GroupByProducer;->parent:Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;

    .line 87
    return-void
.end method


# virtual methods
.method public request(J)V
    .registers 4
    .param p1, "n"    # J

    .prologue
    .line 90
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupByProducer;->parent:Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;

    invoke-virtual {v0, p1, p2}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->requestMore(J)V

    .line 91
    return-void
.end method
