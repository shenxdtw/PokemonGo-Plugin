.class public abstract Lrx/observables/AsyncOnSubscribe;
.super Ljava/lang/Object;
.source "AsyncOnSubscribe.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/observables/AsyncOnSubscribe$UnicastSubject;,
        Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;,
        Lrx/observables/AsyncOnSubscribe$AsyncOnSubscribeImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<TT;>;"
    }
.end annotation

.annotation build Lrx/annotations/Experimental;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 48
    .local p0, "this":Lrx/observables/AsyncOnSubscribe;, "Lrx/observables/AsyncOnSubscribe<TS;TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 623
    return-void
.end method

.method public static createSingleState(Lrx/functions/Func0;Lrx/functions/Action3;)Lrx/observables/AsyncOnSubscribe;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func0",
            "<+TS;>;",
            "Lrx/functions/Action3",
            "<-TS;",
            "Ljava/lang/Long;",
            "-",
            "Lrx/Observer",
            "<",
            "Lrx/Observable",
            "<+TT;>;>;>;)",
            "Lrx/observables/AsyncOnSubscribe",
            "<TS;TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 114
    .local p0, "generator":Lrx/functions/Func0;, "Lrx/functions/Func0<+TS;>;"
    .local p1, "next":Lrx/functions/Action3;, "Lrx/functions/Action3<-TS;Ljava/lang/Long;-Lrx/Observer<Lrx/Observable<+TT;>;>;>;"
    new-instance v0, Lrx/observables/AsyncOnSubscribe$1;

    invoke-direct {v0, p1}, Lrx/observables/AsyncOnSubscribe$1;-><init>(Lrx/functions/Action3;)V

    .line 121
    .local v0, "nextFunc":Lrx/functions/Func3;, "Lrx/functions/Func3<TS;Ljava/lang/Long;-Lrx/Observer<Lrx/Observable<+TT;>;>;TS;>;"
    new-instance v1, Lrx/observables/AsyncOnSubscribe$AsyncOnSubscribeImpl;

    invoke-direct {v1, p0, v0}, Lrx/observables/AsyncOnSubscribe$AsyncOnSubscribeImpl;-><init>(Lrx/functions/Func0;Lrx/functions/Func3;)V

    return-object v1
.end method

.method public static createSingleState(Lrx/functions/Func0;Lrx/functions/Action3;Lrx/functions/Action1;)Lrx/observables/AsyncOnSubscribe;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func0",
            "<+TS;>;",
            "Lrx/functions/Action3",
            "<-TS;",
            "Ljava/lang/Long;",
            "-",
            "Lrx/Observer",
            "<",
            "Lrx/Observable",
            "<+TT;>;>;>;",
            "Lrx/functions/Action1",
            "<-TS;>;)",
            "Lrx/observables/AsyncOnSubscribe",
            "<TS;TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 144
    .local p0, "generator":Lrx/functions/Func0;, "Lrx/functions/Func0<+TS;>;"
    .local p1, "next":Lrx/functions/Action3;, "Lrx/functions/Action3<-TS;Ljava/lang/Long;-Lrx/Observer<Lrx/Observable<+TT;>;>;>;"
    .local p2, "onUnsubscribe":Lrx/functions/Action1;, "Lrx/functions/Action1<-TS;>;"
    new-instance v0, Lrx/observables/AsyncOnSubscribe$2;

    invoke-direct {v0, p1}, Lrx/observables/AsyncOnSubscribe$2;-><init>(Lrx/functions/Action3;)V

    .line 151
    .local v0, "nextFunc":Lrx/functions/Func3;, "Lrx/functions/Func3<TS;Ljava/lang/Long;Lrx/Observer<Lrx/Observable<+TT;>;>;TS;>;"
    new-instance v1, Lrx/observables/AsyncOnSubscribe$AsyncOnSubscribeImpl;

    invoke-direct {v1, p0, v0, p2}, Lrx/observables/AsyncOnSubscribe$AsyncOnSubscribeImpl;-><init>(Lrx/functions/Func0;Lrx/functions/Func3;Lrx/functions/Action1;)V

    return-object v1
.end method

.method public static createStateful(Lrx/functions/Func0;Lrx/functions/Func3;)Lrx/observables/AsyncOnSubscribe;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func0",
            "<+TS;>;",
            "Lrx/functions/Func3",
            "<-TS;",
            "Ljava/lang/Long;",
            "-",
            "Lrx/Observer",
            "<",
            "Lrx/Observable",
            "<+TT;>;>;+TS;>;)",
            "Lrx/observables/AsyncOnSubscribe",
            "<TS;TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 190
    .local p0, "generator":Lrx/functions/Func0;, "Lrx/functions/Func0<+TS;>;"
    .local p1, "next":Lrx/functions/Func3;, "Lrx/functions/Func3<-TS;Ljava/lang/Long;-Lrx/Observer<Lrx/Observable<+TT;>;>;+TS;>;"
    new-instance v0, Lrx/observables/AsyncOnSubscribe$AsyncOnSubscribeImpl;

    invoke-direct {v0, p0, p1}, Lrx/observables/AsyncOnSubscribe$AsyncOnSubscribeImpl;-><init>(Lrx/functions/Func0;Lrx/functions/Func3;)V

    return-object v0
.end method

.method public static createStateful(Lrx/functions/Func0;Lrx/functions/Func3;Lrx/functions/Action1;)Lrx/observables/AsyncOnSubscribe;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func0",
            "<+TS;>;",
            "Lrx/functions/Func3",
            "<-TS;",
            "Ljava/lang/Long;",
            "-",
            "Lrx/Observer",
            "<",
            "Lrx/Observable",
            "<+TT;>;>;+TS;>;",
            "Lrx/functions/Action1",
            "<-TS;>;)",
            "Lrx/observables/AsyncOnSubscribe",
            "<TS;TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 172
    .local p0, "generator":Lrx/functions/Func0;, "Lrx/functions/Func0<+TS;>;"
    .local p1, "next":Lrx/functions/Func3;, "Lrx/functions/Func3<-TS;Ljava/lang/Long;-Lrx/Observer<Lrx/Observable<+TT;>;>;+TS;>;"
    .local p2, "onUnsubscribe":Lrx/functions/Action1;, "Lrx/functions/Action1<-TS;>;"
    new-instance v0, Lrx/observables/AsyncOnSubscribe$AsyncOnSubscribeImpl;

    invoke-direct {v0, p0, p1, p2}, Lrx/observables/AsyncOnSubscribe$AsyncOnSubscribeImpl;-><init>(Lrx/functions/Func0;Lrx/functions/Func3;Lrx/functions/Action1;)V

    return-object v0
.end method

.method public static createStateless(Lrx/functions/Action2;)Lrx/observables/AsyncOnSubscribe;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Action2",
            "<",
            "Ljava/lang/Long;",
            "-",
            "Lrx/Observer",
            "<",
            "Lrx/Observable",
            "<+TT;>;>;>;)",
            "Lrx/observables/AsyncOnSubscribe",
            "<",
            "Ljava/lang/Void;",
            "TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 208
    .local p0, "next":Lrx/functions/Action2;, "Lrx/functions/Action2<Ljava/lang/Long;-Lrx/Observer<Lrx/Observable<+TT;>;>;>;"
    new-instance v0, Lrx/observables/AsyncOnSubscribe$3;

    invoke-direct {v0, p0}, Lrx/observables/AsyncOnSubscribe$3;-><init>(Lrx/functions/Action2;)V

    .line 215
    .local v0, "nextFunc":Lrx/functions/Func3;, "Lrx/functions/Func3<Ljava/lang/Void;Ljava/lang/Long;Lrx/Observer<Lrx/Observable<+TT;>;>;Ljava/lang/Void;>;"
    new-instance v1, Lrx/observables/AsyncOnSubscribe$AsyncOnSubscribeImpl;

    invoke-direct {v1, v0}, Lrx/observables/AsyncOnSubscribe$AsyncOnSubscribeImpl;-><init>(Lrx/functions/Func3;)V

    return-object v1
.end method

.method public static createStateless(Lrx/functions/Action2;Lrx/functions/Action0;)Lrx/observables/AsyncOnSubscribe;
    .registers 5
    .param p1, "onUnsubscribe"    # Lrx/functions/Action0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Action2",
            "<",
            "Ljava/lang/Long;",
            "-",
            "Lrx/Observer",
            "<",
            "Lrx/Observable",
            "<+TT;>;>;>;",
            "Lrx/functions/Action0;",
            ")",
            "Lrx/observables/AsyncOnSubscribe",
            "<",
            "Ljava/lang/Void;",
            "TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 236
    .local p0, "next":Lrx/functions/Action2;, "Lrx/functions/Action2<Ljava/lang/Long;-Lrx/Observer<Lrx/Observable<+TT;>;>;>;"
    new-instance v0, Lrx/observables/AsyncOnSubscribe$4;

    invoke-direct {v0, p0}, Lrx/observables/AsyncOnSubscribe$4;-><init>(Lrx/functions/Action2;)V

    .line 243
    .local v0, "nextFunc":Lrx/functions/Func3;, "Lrx/functions/Func3<Ljava/lang/Void;Ljava/lang/Long;Lrx/Observer<Lrx/Observable<+TT;>;>;Ljava/lang/Void;>;"
    new-instance v1, Lrx/observables/AsyncOnSubscribe$5;

    invoke-direct {v1, p1}, Lrx/observables/AsyncOnSubscribe$5;-><init>(Lrx/functions/Action0;)V

    .line 248
    .local v1, "wrappedOnUnsubscribe":Lrx/functions/Action1;, "Lrx/functions/Action1<-Ljava/lang/Void;>;"
    new-instance v2, Lrx/observables/AsyncOnSubscribe$AsyncOnSubscribeImpl;

    invoke-direct {v2, v0, v1}, Lrx/observables/AsyncOnSubscribe$AsyncOnSubscribeImpl;-><init>(Lrx/functions/Func3;Lrx/functions/Action1;)V

    return-object v2
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 47
    .local p0, "this":Lrx/observables/AsyncOnSubscribe;, "Lrx/observables/AsyncOnSubscribe<TS;TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/observables/AsyncOnSubscribe;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public final call(Lrx/Subscriber;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 306
    .local p0, "this":Lrx/observables/AsyncOnSubscribe;, "Lrx/observables/AsyncOnSubscribe<TS;TT;>;"
    .local p1, "actualSubscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    :try_start_0
    invoke-virtual {p0}, Lrx/observables/AsyncOnSubscribe;->generateState()Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_2c

    move-result-object v3

    .line 311
    .local v3, "state":Ljava/lang/Object;, "TS;"
    invoke-static {}, Lrx/observables/AsyncOnSubscribe$UnicastSubject;->create()Lrx/observables/AsyncOnSubscribe$UnicastSubject;

    move-result-object v4

    .line 313
    .local v4, "subject":Lrx/observables/AsyncOnSubscribe$UnicastSubject;, "Lrx/observables/AsyncOnSubscribe$UnicastSubject<Lrx/Observable<TT;>;>;"
    new-instance v2, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;

    invoke-direct {v2, p0, v3, v4}, Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;-><init>(Lrx/observables/AsyncOnSubscribe;Ljava/lang/Object;Lrx/observables/AsyncOnSubscribe$UnicastSubject;)V

    .line 315
    .local v2, "outerProducer":Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;, "Lrx/observables/AsyncOnSubscribe$AsyncOuterManager<TS;TT;>;"
    new-instance v0, Lrx/observables/AsyncOnSubscribe$6;

    invoke-direct {v0, p0, p1, v2}, Lrx/observables/AsyncOnSubscribe$6;-><init>(Lrx/observables/AsyncOnSubscribe;Lrx/Subscriber;Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;)V

    .line 337
    .local v0, "concatSubscriber":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    invoke-virtual {v4}, Lrx/observables/AsyncOnSubscribe$UnicastSubject;->onBackpressureBuffer()Lrx/Observable;

    move-result-object v5

    new-instance v6, Lrx/observables/AsyncOnSubscribe$7;

    invoke-direct {v6, p0}, Lrx/observables/AsyncOnSubscribe$7;-><init>(Lrx/observables/AsyncOnSubscribe;)V

    invoke-virtual {v5, v6}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v5

    invoke-virtual {v5, v0}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 344
    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 345
    invoke-virtual {p1, v2}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 346
    invoke-virtual {p1, v2}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 348
    .end local v0    # "concatSubscriber":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    .end local v2    # "outerProducer":Lrx/observables/AsyncOnSubscribe$AsyncOuterManager;, "Lrx/observables/AsyncOnSubscribe$AsyncOuterManager<TS;TT;>;"
    .end local v3    # "state":Ljava/lang/Object;, "TS;"
    .end local v4    # "subject":Lrx/observables/AsyncOnSubscribe$UnicastSubject;, "Lrx/observables/AsyncOnSubscribe$UnicastSubject<Lrx/Observable<TT;>;>;"
    :goto_2b
    return-void

    .line 307
    :catch_2c
    move-exception v1

    .line 308
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-virtual {p1, v1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_2b
.end method

.method protected abstract generateState()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation
.end method

.method protected abstract next(Ljava/lang/Object;JLrx/Observer;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;J",
            "Lrx/Observer",
            "<",
            "Lrx/Observable",
            "<+TT;>;>;)TS;"
        }
    .end annotation
.end method

.method protected onUnsubscribe(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "this":Lrx/observables/AsyncOnSubscribe;, "Lrx/observables/AsyncOnSubscribe<TS;TT;>;"
    .local p1, "state":Ljava/lang/Object;, "TS;"
    return-void
.end method
