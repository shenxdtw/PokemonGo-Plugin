.class Lrx/internal/operators/OperatorTakeLast$1;
.super Ljava/lang/Object;
.source "OperatorTakeLast.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorTakeLast;->call(Lrx/Subscriber;)Lrx/Subscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OperatorTakeLast;

.field final synthetic val$parent:Lrx/internal/operators/OperatorTakeLast$TakeLastSubscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorTakeLast;Lrx/internal/operators/OperatorTakeLast$TakeLastSubscriber;)V
    .registers 3

    .prologue
    .line 48
    .local p0, "this":Lrx/internal/operators/OperatorTakeLast$1;, "Lrx/internal/operators/OperatorTakeLast.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorTakeLast$1;->this$0:Lrx/internal/operators/OperatorTakeLast;

    iput-object p2, p0, Lrx/internal/operators/OperatorTakeLast$1;->val$parent:Lrx/internal/operators/OperatorTakeLast$TakeLastSubscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public request(J)V
    .registers 4
    .param p1, "n"    # J

    .prologue
    .line 51
    .local p0, "this":Lrx/internal/operators/OperatorTakeLast$1;, "Lrx/internal/operators/OperatorTakeLast.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeLast$1;->val$parent:Lrx/internal/operators/OperatorTakeLast$TakeLastSubscriber;

    invoke-virtual {v0, p1, p2}, Lrx/internal/operators/OperatorTakeLast$TakeLastSubscriber;->requestMore(J)V

    .line 52
    return-void
.end method
