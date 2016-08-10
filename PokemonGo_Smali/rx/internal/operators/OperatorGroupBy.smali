.class public final Lrx/internal/operators/OperatorGroupBy;
.super Ljava/lang/Object;
.source "OperatorGroupBy.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorGroupBy$State;,
        Lrx/internal/operators/OperatorGroupBy$GroupedUnicast;,
        Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;,
        Lrx/internal/operators/OperatorGroupBy$GroupByProducer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator",
        "<",
        "Lrx/observables/GroupedObservable",
        "<TK;TV;>;TT;>;"
    }
.end annotation


# instance fields
.field final bufferSize:I

.field final delayError:Z

.field final keySelector:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<-TT;+TK;>;"
        }
    .end annotation
.end field

.field final valueSelector:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<-TT;+TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/functions/Func1;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<-TT;+TK;>;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy;, "Lrx/internal/operators/OperatorGroupBy<TT;TK;TV;>;"
    .local p1, "keySelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TK;>;"
    invoke-static {}, Lrx/internal/util/UtilityFunctions;->identity()Lrx/functions/Func1;

    move-result-object v0

    sget v1, Lrx/internal/util/RxRingBuffer;->SIZE:I

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lrx/internal/operators/OperatorGroupBy;-><init>(Lrx/functions/Func1;Lrx/functions/Func1;IZ)V

    .line 53
    return-void
.end method

.method public constructor <init>(Lrx/functions/Func1;Lrx/functions/Func1;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<-TT;+TK;>;",
            "Lrx/functions/Func1",
            "<-TT;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy;, "Lrx/internal/operators/OperatorGroupBy<TT;TK;TV;>;"
    .local p1, "keySelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TK;>;"
    .local p2, "valueSelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TV;>;"
    sget v0, Lrx/internal/util/RxRingBuffer;->SIZE:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lrx/internal/operators/OperatorGroupBy;-><init>(Lrx/functions/Func1;Lrx/functions/Func1;IZ)V

    .line 57
    return-void
.end method

.method public constructor <init>(Lrx/functions/Func1;Lrx/functions/Func1;IZ)V
    .registers 5
    .param p3, "bufferSize"    # I
    .param p4, "delayError"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<-TT;+TK;>;",
            "Lrx/functions/Func1",
            "<-TT;+TV;>;IZ)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy;, "Lrx/internal/operators/OperatorGroupBy<TT;TK;TV;>;"
    .local p1, "keySelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TK;>;"
    .local p2, "valueSelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lrx/internal/operators/OperatorGroupBy;->keySelector:Lrx/functions/Func1;

    .line 61
    iput-object p2, p0, Lrx/internal/operators/OperatorGroupBy;->valueSelector:Lrx/functions/Func1;

    .line 62
    iput p3, p0, Lrx/internal/operators/OperatorGroupBy;->bufferSize:I

    .line 63
    iput-boolean p4, p0, Lrx/internal/operators/OperatorGroupBy;->delayError:Z

    .line 64
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 44
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy;, "Lrx/internal/operators/OperatorGroupBy<TT;TK;TV;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorGroupBy;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Lrx/observables/GroupedObservable",
            "<TK;TV;>;>;)",
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy;, "Lrx/internal/operators/OperatorGroupBy<TT;TK;TV;>;"
    .local p1, "t":Lrx/Subscriber;, "Lrx/Subscriber<-Lrx/observables/GroupedObservable<TK;TV;>;>;"
    new-instance v0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;

    iget-object v2, p0, Lrx/internal/operators/OperatorGroupBy;->keySelector:Lrx/functions/Func1;

    iget-object v3, p0, Lrx/internal/operators/OperatorGroupBy;->valueSelector:Lrx/functions/Func1;

    iget v4, p0, Lrx/internal/operators/OperatorGroupBy;->bufferSize:I

    iget-boolean v5, p0, Lrx/internal/operators/OperatorGroupBy;->delayError:Z

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;-><init>(Lrx/Subscriber;Lrx/functions/Func1;Lrx/functions/Func1;IZ)V

    .line 70
    .local v0, "parent":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber<TT;TK;TV;>;"
    new-instance v1, Lrx/internal/operators/OperatorGroupBy$1;

    invoke-direct {v1, p0, v0}, Lrx/internal/operators/OperatorGroupBy$1;-><init>(Lrx/internal/operators/OperatorGroupBy;Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;)V

    invoke-static {v1}, Lrx/subscriptions/Subscriptions;->create(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v1

    invoke-virtual {p1, v1}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 77
    iget-object v1, v0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->producer:Lrx/internal/operators/OperatorGroupBy$GroupByProducer;

    invoke-virtual {p1, v1}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 79
    return-object v0
.end method
