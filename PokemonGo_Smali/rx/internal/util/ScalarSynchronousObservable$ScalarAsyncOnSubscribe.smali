.class final Lrx/internal/util/ScalarSynchronousObservable$ScalarAsyncOnSubscribe;
.super Ljava/lang/Object;
.source "ScalarSynchronousObservable.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/util/ScalarSynchronousObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ScalarAsyncOnSubscribe"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final onSchedule:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<",
            "Lrx/functions/Action0;",
            "Lrx/Subscription;",
            ">;"
        }
    .end annotation
.end field

.field final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Lrx/functions/Func1;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lrx/functions/Func1",
            "<",
            "Lrx/functions/Action0;",
            "Lrx/Subscription;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 144
    .local p0, "this":Lrx/internal/util/ScalarSynchronousObservable$ScalarAsyncOnSubscribe;, "Lrx/internal/util/ScalarSynchronousObservable$ScalarAsyncOnSubscribe<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    .local p2, "onSchedule":Lrx/functions/Func1;, "Lrx/functions/Func1<Lrx/functions/Action0;Lrx/Subscription;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-object p1, p0, Lrx/internal/util/ScalarSynchronousObservable$ScalarAsyncOnSubscribe;->value:Ljava/lang/Object;

    .line 146
    iput-object p2, p0, Lrx/internal/util/ScalarSynchronousObservable$ScalarAsyncOnSubscribe;->onSchedule:Lrx/functions/Func1;

    .line 147
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 140
    .local p0, "this":Lrx/internal/util/ScalarSynchronousObservable$ScalarAsyncOnSubscribe;, "Lrx/internal/util/ScalarSynchronousObservable$ScalarAsyncOnSubscribe<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/util/ScalarSynchronousObservable$ScalarAsyncOnSubscribe;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 151
    .local p0, "this":Lrx/internal/util/ScalarSynchronousObservable$ScalarAsyncOnSubscribe;, "Lrx/internal/util/ScalarSynchronousObservable$ScalarAsyncOnSubscribe<TT;>;"
    .local p1, "s":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lrx/internal/util/ScalarSynchronousObservable$ScalarAsyncProducer;

    iget-object v1, p0, Lrx/internal/util/ScalarSynchronousObservable$ScalarAsyncOnSubscribe;->value:Ljava/lang/Object;

    iget-object v2, p0, Lrx/internal/util/ScalarSynchronousObservable$ScalarAsyncOnSubscribe;->onSchedule:Lrx/functions/Func1;

    invoke-direct {v0, p1, v1, v2}, Lrx/internal/util/ScalarSynchronousObservable$ScalarAsyncProducer;-><init>(Lrx/Subscriber;Ljava/lang/Object;Lrx/functions/Func1;)V

    invoke-virtual {p1, v0}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 152
    return-void
.end method
