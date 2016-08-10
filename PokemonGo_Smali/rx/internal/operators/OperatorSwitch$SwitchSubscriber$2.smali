.class Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$2;
.super Ljava/lang/Object;
.source "OperatorSwitch.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;)V
    .registers 2

    .prologue
    .line 119
    .local p0, "this":Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$2;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber.2;"
    iput-object p1, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$2;->this$0:Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public request(J)V
    .registers 8
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$2;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber.2;"
    const-wide/16 v2, 0x0

    .line 123
    cmp-long v0, p1, v2

    if-lez v0, :cond_c

    .line 124
    iget-object v0, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$2;->this$0:Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;

    invoke-virtual {v0, p1, p2}, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->childRequested(J)V

    .line 129
    :cond_b
    return-void

    .line 126
    :cond_c
    cmp-long v0, p1, v2

    if-gez v0, :cond_b

    .line 127
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "n >= 0 expected but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
