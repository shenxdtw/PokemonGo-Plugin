.class final Lrx/observables/AsyncOnSubscribe$UnicastSubject;
.super Lrx/Observable;
.source "AsyncOnSubscribe.java"

# interfaces
.implements Lrx/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/observables/AsyncOnSubscribe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UnicastSubject"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/observables/AsyncOnSubscribe$UnicastSubject$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Observable",
        "<TT;>;",
        "Lrx/Observer",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private state:Lrx/observables/AsyncOnSubscribe$UnicastSubject$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/observables/AsyncOnSubscribe$UnicastSubject$State",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lrx/observables/AsyncOnSubscribe$UnicastSubject$State;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/observables/AsyncOnSubscribe$UnicastSubject$State",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 631
    .local p0, "this":Lrx/observables/AsyncOnSubscribe$UnicastSubject;, "Lrx/observables/AsyncOnSubscribe$UnicastSubject<TT;>;"
    .local p1, "state":Lrx/observables/AsyncOnSubscribe$UnicastSubject$State;, "Lrx/observables/AsyncOnSubscribe$UnicastSubject$State<TT;>;"
    invoke-direct {p0, p1}, Lrx/Observable;-><init>(Lrx/Observable$OnSubscribe;)V

    .line 632
    iput-object p1, p0, Lrx/observables/AsyncOnSubscribe$UnicastSubject;->state:Lrx/observables/AsyncOnSubscribe$UnicastSubject$State;

    .line 633
    return-void
.end method

.method public static create()Lrx/observables/AsyncOnSubscribe$UnicastSubject;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/observables/AsyncOnSubscribe$UnicastSubject",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 625
    new-instance v0, Lrx/observables/AsyncOnSubscribe$UnicastSubject;

    new-instance v1, Lrx/observables/AsyncOnSubscribe$UnicastSubject$State;

    invoke-direct {v1}, Lrx/observables/AsyncOnSubscribe$UnicastSubject$State;-><init>()V

    invoke-direct {v0, v1}, Lrx/observables/AsyncOnSubscribe$UnicastSubject;-><init>(Lrx/observables/AsyncOnSubscribe$UnicastSubject$State;)V

    return-object v0
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .prologue
    .line 637
    .local p0, "this":Lrx/observables/AsyncOnSubscribe$UnicastSubject;, "Lrx/observables/AsyncOnSubscribe$UnicastSubject<TT;>;"
    iget-object v0, p0, Lrx/observables/AsyncOnSubscribe$UnicastSubject;->state:Lrx/observables/AsyncOnSubscribe$UnicastSubject$State;

    iget-object v0, v0, Lrx/observables/AsyncOnSubscribe$UnicastSubject$State;->subscriber:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 638
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 642
    .local p0, "this":Lrx/observables/AsyncOnSubscribe$UnicastSubject;, "Lrx/observables/AsyncOnSubscribe$UnicastSubject<TT;>;"
    iget-object v0, p0, Lrx/observables/AsyncOnSubscribe$UnicastSubject;->state:Lrx/observables/AsyncOnSubscribe$UnicastSubject$State;

    iget-object v0, v0, Lrx/observables/AsyncOnSubscribe$UnicastSubject$State;->subscriber:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 643
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 647
    .local p0, "this":Lrx/observables/AsyncOnSubscribe$UnicastSubject;, "Lrx/observables/AsyncOnSubscribe$UnicastSubject<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/observables/AsyncOnSubscribe$UnicastSubject;->state:Lrx/observables/AsyncOnSubscribe$UnicastSubject$State;

    iget-object v0, v0, Lrx/observables/AsyncOnSubscribe$UnicastSubject$State;->subscriber:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 648
    return-void
.end method
