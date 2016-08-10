.class Lrx/internal/operators/OperatorTakeLastTimed$1;
.super Ljava/lang/Object;
.source "OperatorTakeLastTimed.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorTakeLastTimed;->call(Lrx/Subscriber;)Lrx/Subscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OperatorTakeLastTimed;

.field final synthetic val$parent:Lrx/internal/operators/OperatorTakeLastTimed$TakeLastTimedSubscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorTakeLastTimed;Lrx/internal/operators/OperatorTakeLastTimed$TakeLastTimedSubscriber;)V
    .registers 3

    .prologue
    .line 59
    .local p0, "this":Lrx/internal/operators/OperatorTakeLastTimed$1;, "Lrx/internal/operators/OperatorTakeLastTimed.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorTakeLastTimed$1;->this$0:Lrx/internal/operators/OperatorTakeLastTimed;

    iput-object p2, p0, Lrx/internal/operators/OperatorTakeLastTimed$1;->val$parent:Lrx/internal/operators/OperatorTakeLastTimed$TakeLastTimedSubscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public request(J)V
    .registers 4
    .param p1, "n"    # J

    .prologue
    .line 62
    .local p0, "this":Lrx/internal/operators/OperatorTakeLastTimed$1;, "Lrx/internal/operators/OperatorTakeLastTimed.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeLastTimed$1;->val$parent:Lrx/internal/operators/OperatorTakeLastTimed$TakeLastTimedSubscriber;

    invoke-virtual {v0, p1, p2}, Lrx/internal/operators/OperatorTakeLastTimed$TakeLastTimedSubscriber;->requestMore(J)V

    .line 63
    return-void
.end method
