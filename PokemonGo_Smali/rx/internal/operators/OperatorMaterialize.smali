.class public final Lrx/internal/operators/OperatorMaterialize;
.super Ljava/lang/Object;
.source "OperatorMaterialize.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorMaterialize$ParentSubscriber;,
        Lrx/internal/operators/OperatorMaterialize$Holder;
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
        "Lrx/Notification",
        "<TT;>;TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 50
    .local p0, "this":Lrx/internal/operators/OperatorMaterialize;, "Lrx/internal/operators/OperatorMaterialize<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method public static instance()Lrx/internal/operators/OperatorMaterialize;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/internal/operators/OperatorMaterialize",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 47
    sget-object v0, Lrx/internal/operators/OperatorMaterialize$Holder;->INSTANCE:Lrx/internal/operators/OperatorMaterialize;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 34
    .local p0, "this":Lrx/internal/operators/OperatorMaterialize;, "Lrx/internal/operators/OperatorMaterialize<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorMaterialize;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Lrx/Notification",
            "<TT;>;>;)",
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lrx/internal/operators/OperatorMaterialize;, "Lrx/internal/operators/OperatorMaterialize<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-Lrx/Notification<TT;>;>;"
    new-instance v0, Lrx/internal/operators/OperatorMaterialize$ParentSubscriber;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorMaterialize$ParentSubscriber;-><init>(Lrx/Subscriber;)V

    .line 56
    .local v0, "parent":Lrx/internal/operators/OperatorMaterialize$ParentSubscriber;, "Lrx/internal/operators/OperatorMaterialize$ParentSubscriber<TT;>;"
    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 57
    new-instance v1, Lrx/internal/operators/OperatorMaterialize$1;

    invoke-direct {v1, p0, v0}, Lrx/internal/operators/OperatorMaterialize$1;-><init>(Lrx/internal/operators/OperatorMaterialize;Lrx/internal/operators/OperatorMaterialize$ParentSubscriber;)V

    invoke-virtual {p1, v1}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 65
    return-object v0
.end method
