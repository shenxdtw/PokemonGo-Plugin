.class public final Lrx/internal/operators/OnSubscribeConcatMap;
.super Ljava/lang/Object;
.source "OnSubscribeConcatMap.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapInnerScalarProducer;,
        Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapInnerSubscriber;,
        Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<TR;>;"
    }
.end annotation


# static fields
.field public static final BOUNDARY:I = 0x1

.field public static final END:I = 0x2

.field public static final IMMEDIATE:I


# instance fields
.field final delayErrorMode:I

.field final mapper:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<-TT;+",
            "Lrx/Observable",
            "<+TR;>;>;"
        }
    .end annotation
.end field

.field final prefetch:I

.field final source:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable",
            "<+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Observable;Lrx/functions/Func1;II)V
    .registers 5
    .param p3, "prefetch"    # I
    .param p4, "delayErrorMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/functions/Func1",
            "<-TT;+",
            "Lrx/Observable",
            "<+TR;>;>;II)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lrx/internal/operators/OnSubscribeConcatMap;, "Lrx/internal/operators/OnSubscribeConcatMap<TT;TR;>;"
    .local p1, "source":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p2, "mapper":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+Lrx/Observable<+TR;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeConcatMap;->source:Lrx/Observable;

    .line 67
    iput-object p2, p0, Lrx/internal/operators/OnSubscribeConcatMap;->mapper:Lrx/functions/Func1;

    .line 68
    iput p3, p0, Lrx/internal/operators/OnSubscribeConcatMap;->prefetch:I

    .line 69
    iput p4, p0, Lrx/internal/operators/OnSubscribeConcatMap;->delayErrorMode:I

    .line 70
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 42
    .local p0, "this":Lrx/internal/operators/OnSubscribeConcatMap;, "Lrx/internal/operators/OnSubscribeConcatMap<TT;TR;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OnSubscribeConcatMap;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "this":Lrx/internal/operators/OnSubscribeConcatMap;, "Lrx/internal/operators/OnSubscribeConcatMap<TT;TR;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    iget v2, p0, Lrx/internal/operators/OnSubscribeConcatMap;->delayErrorMode:I

    if-nez v2, :cond_30

    .line 77
    new-instance v1, Lrx/observers/SerializedSubscriber;

    invoke-direct {v1, p1}, Lrx/observers/SerializedSubscriber;-><init>(Lrx/Subscriber;)V

    .line 82
    .local v1, "s":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    :goto_9
    new-instance v0, Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;

    iget-object v2, p0, Lrx/internal/operators/OnSubscribeConcatMap;->mapper:Lrx/functions/Func1;

    iget v3, p0, Lrx/internal/operators/OnSubscribeConcatMap;->prefetch:I

    iget v4, p0, Lrx/internal/operators/OnSubscribeConcatMap;->delayErrorMode:I

    invoke-direct {v0, v1, v2, v3, v4}, Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;-><init>(Lrx/Subscriber;Lrx/functions/Func1;II)V

    .line 84
    .local v0, "parent":Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;, "Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber<TT;TR;>;"
    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 85
    iget-object v2, v0, Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;->inner:Lrx/subscriptions/SerialSubscription;

    invoke-virtual {p1, v2}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 86
    new-instance v2, Lrx/internal/operators/OnSubscribeConcatMap$1;

    invoke-direct {v2, p0, v0}, Lrx/internal/operators/OnSubscribeConcatMap$1;-><init>(Lrx/internal/operators/OnSubscribeConcatMap;Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;)V

    invoke-virtual {p1, v2}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 93
    invoke-virtual {p1}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v2

    if-nez v2, :cond_2f

    .line 94
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeConcatMap;->source:Lrx/Observable;

    invoke-virtual {v2, v0}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 96
    :cond_2f
    return-void

    .line 79
    .end local v0    # "parent":Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber;, "Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber<TT;TR;>;"
    .end local v1    # "s":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    :cond_30
    move-object v1, p1

    .restart local v1    # "s":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    goto :goto_9
.end method
