.class Lrx/internal/operators/OperatorMaterialize$1;
.super Ljava/lang/Object;
.source "OperatorMaterialize.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorMaterialize;->call(Lrx/Subscriber;)Lrx/Subscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OperatorMaterialize;

.field final synthetic val$parent:Lrx/internal/operators/OperatorMaterialize$ParentSubscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorMaterialize;Lrx/internal/operators/OperatorMaterialize$ParentSubscriber;)V
    .registers 3

    .prologue
    .line 57
    .local p0, "this":Lrx/internal/operators/OperatorMaterialize$1;, "Lrx/internal/operators/OperatorMaterialize.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorMaterialize$1;->this$0:Lrx/internal/operators/OperatorMaterialize;

    iput-object p2, p0, Lrx/internal/operators/OperatorMaterialize$1;->val$parent:Lrx/internal/operators/OperatorMaterialize$ParentSubscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public request(J)V
    .registers 6
    .param p1, "n"    # J

    .prologue
    .line 60
    .local p0, "this":Lrx/internal/operators/OperatorMaterialize$1;, "Lrx/internal/operators/OperatorMaterialize.1;"
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_b

    .line 61
    iget-object v0, p0, Lrx/internal/operators/OperatorMaterialize$1;->val$parent:Lrx/internal/operators/OperatorMaterialize$ParentSubscriber;

    invoke-virtual {v0, p1, p2}, Lrx/internal/operators/OperatorMaterialize$ParentSubscriber;->requestMore(J)V

    .line 63
    :cond_b
    return-void
.end method
