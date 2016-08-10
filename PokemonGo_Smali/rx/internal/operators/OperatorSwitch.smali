.class public final Lrx/internal/operators/OperatorSwitch;
.super Ljava/lang/Object;
.source "OperatorSwitch.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorSwitch$InnerSubscriber;,
        Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;,
        Lrx/internal/operators/OperatorSwitch$HolderDelayError;,
        Lrx/internal/operators/OperatorSwitch$Holder;
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
.field final delayError:Z


# direct methods
.method constructor <init>(Z)V
    .registers 2
    .param p1, "delayError"    # Z

    .prologue
    .line 66
    .local p0, "this":Lrx/internal/operators/OperatorSwitch;, "Lrx/internal/operators/OperatorSwitch<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-boolean p1, p0, Lrx/internal/operators/OperatorSwitch;->delayError:Z

    .line 68
    return-void
.end method

.method public static instance(Z)Lrx/internal/operators/OperatorSwitch;
    .registers 2
    .param p0, "delayError"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(Z)",
            "Lrx/internal/operators/OperatorSwitch",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 58
    if-eqz p0, :cond_5

    .line 59
    sget-object v0, Lrx/internal/operators/OperatorSwitch$HolderDelayError;->INSTANCE:Lrx/internal/operators/OperatorSwitch;

    .line 61
    :goto_4
    return-object v0

    :cond_5
    sget-object v0, Lrx/internal/operators/OperatorSwitch$Holder;->INSTANCE:Lrx/internal/operators/OperatorSwitch;

    goto :goto_4
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 39
    .local p0, "this":Lrx/internal/operators/OperatorSwitch;, "Lrx/internal/operators/OperatorSwitch<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorSwitch;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)",
            "Lrx/Subscriber",
            "<-",
            "Lrx/Observable",
            "<+TT;>;>;"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "this":Lrx/internal/operators/OperatorSwitch;, "Lrx/internal/operators/OperatorSwitch<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;

    iget-boolean v1, p0, Lrx/internal/operators/OperatorSwitch;->delayError:Z

    invoke-direct {v0, p1, v1}, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;-><init>(Lrx/Subscriber;Z)V

    .line 73
    .local v0, "sws":Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber<TT;>;"
    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 74
    invoke-virtual {v0}, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->init()V

    .line 75
    return-object v0
.end method
