.class public Lrx/subjects/SerializedSubject;
.super Lrx/subjects/Subject;
.source "SerializedSubject.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/subjects/Subject",
        "<TT;TR;>;"
    }
.end annotation


# instance fields
.field private final actual:Lrx/subjects/Subject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/Subject",
            "<TT;TR;>;"
        }
    .end annotation
.end field

.field private final observer:Lrx/observers/SerializedObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/observers/SerializedObserver",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/subjects/Subject;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/subjects/Subject",
            "<TT;TR;>;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lrx/subjects/SerializedSubject;, "Lrx/subjects/SerializedSubject<TT;TR;>;"
    .local p1, "actual":Lrx/subjects/Subject;, "Lrx/subjects/Subject<TT;TR;>;"
    new-instance v0, Lrx/subjects/SerializedSubject$1;

    invoke-direct {v0, p1}, Lrx/subjects/SerializedSubject$1;-><init>(Lrx/subjects/Subject;)V

    invoke-direct {p0, v0}, Lrx/subjects/Subject;-><init>(Lrx/Observable$OnSubscribe;)V

    .line 48
    iput-object p1, p0, Lrx/subjects/SerializedSubject;->actual:Lrx/subjects/Subject;

    .line 49
    new-instance v0, Lrx/observers/SerializedObserver;

    invoke-direct {v0, p1}, Lrx/observers/SerializedObserver;-><init>(Lrx/Observer;)V

    iput-object v0, p0, Lrx/subjects/SerializedSubject;->observer:Lrx/observers/SerializedObserver;

    .line 50
    return-void
.end method


# virtual methods
.method public hasObservers()Z
    .registers 2

    .prologue
    .line 69
    .local p0, "this":Lrx/subjects/SerializedSubject;, "Lrx/subjects/SerializedSubject<TT;TR;>;"
    iget-object v0, p0, Lrx/subjects/SerializedSubject;->actual:Lrx/subjects/Subject;

    invoke-virtual {v0}, Lrx/subjects/Subject;->hasObservers()Z

    move-result v0

    return v0
.end method

.method public onCompleted()V
    .registers 2

    .prologue
    .line 54
    .local p0, "this":Lrx/subjects/SerializedSubject;, "Lrx/subjects/SerializedSubject<TT;TR;>;"
    iget-object v0, p0, Lrx/subjects/SerializedSubject;->observer:Lrx/observers/SerializedObserver;

    invoke-virtual {v0}, Lrx/observers/SerializedObserver;->onCompleted()V

    .line 55
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 59
    .local p0, "this":Lrx/subjects/SerializedSubject;, "Lrx/subjects/SerializedSubject<TT;TR;>;"
    iget-object v0, p0, Lrx/subjects/SerializedSubject;->observer:Lrx/observers/SerializedObserver;

    invoke-virtual {v0, p1}, Lrx/observers/SerializedObserver;->onError(Ljava/lang/Throwable;)V

    .line 60
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
    .line 64
    .local p0, "this":Lrx/subjects/SerializedSubject;, "Lrx/subjects/SerializedSubject<TT;TR;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/subjects/SerializedSubject;->observer:Lrx/observers/SerializedObserver;

    invoke-virtual {v0, p1}, Lrx/observers/SerializedObserver;->onNext(Ljava/lang/Object;)V

    .line 65
    return-void
.end method
