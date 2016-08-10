.class final Lrx/observables/AsyncOnSubscribe$UnicastSubject$State;
.super Ljava/lang/Object;
.source "AsyncOnSubscribe.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/observables/AsyncOnSubscribe$UnicastSubject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "State"
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
.field subscriber:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 650
    .local p0, "this":Lrx/observables/AsyncOnSubscribe$UnicastSubject$State;, "Lrx/observables/AsyncOnSubscribe$UnicastSubject$State<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 650
    .local p0, "this":Lrx/observables/AsyncOnSubscribe$UnicastSubject$State;, "Lrx/observables/AsyncOnSubscribe$UnicastSubject$State<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/observables/AsyncOnSubscribe$UnicastSubject$State;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 654
    .local p0, "this":Lrx/observables/AsyncOnSubscribe$UnicastSubject$State;, "Lrx/observables/AsyncOnSubscribe$UnicastSubject$State<TT;>;"
    .local p1, "s":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    monitor-enter p0

    .line 655
    :try_start_1
    iget-object v0, p0, Lrx/observables/AsyncOnSubscribe$UnicastSubject$State;->subscriber:Lrx/Subscriber;

    if-nez v0, :cond_9

    .line 656
    iput-object p1, p0, Lrx/observables/AsyncOnSubscribe$UnicastSubject$State;->subscriber:Lrx/Subscriber;

    .line 657
    monitor-exit p0

    .line 661
    :goto_8
    return-void

    .line 659
    :cond_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_15

    .line 660
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There can be only one subscriber"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_8

    .line 659
    :catchall_15
    move-exception v0

    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v0
.end method
