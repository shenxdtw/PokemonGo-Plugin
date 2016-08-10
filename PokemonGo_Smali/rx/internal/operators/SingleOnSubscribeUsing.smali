.class public final Lrx/internal/operators/SingleOnSubscribeUsing;
.super Ljava/lang/Object;
.source "SingleOnSubscribeUsing.java"

# interfaces
.implements Lrx/Single$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "Resource:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Single$OnSubscribe",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final disposeAction:Lrx/functions/Action1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Action1",
            "<-TResource;>;"
        }
    .end annotation
.end field

.field final disposeEagerly:Z

.field final resourceFactory:Lrx/functions/Func0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func0",
            "<TResource;>;"
        }
    .end annotation
.end field

.field final singleFactory:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<-TResource;+",
            "Lrx/Single",
            "<+TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/functions/Func0;Lrx/functions/Func1;Lrx/functions/Action1;Z)V
    .registers 5
    .param p4, "disposeEagerly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func0",
            "<TResource;>;",
            "Lrx/functions/Func1",
            "<-TResource;+",
            "Lrx/Single",
            "<+TT;>;>;",
            "Lrx/functions/Action1",
            "<-TResource;>;Z)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p0, "this":Lrx/internal/operators/SingleOnSubscribeUsing;, "Lrx/internal/operators/SingleOnSubscribeUsing<TT;TResource;>;"
    .local p1, "resourceFactory":Lrx/functions/Func0;, "Lrx/functions/Func0<TResource;>;"
    .local p2, "observableFactory":Lrx/functions/Func1;, "Lrx/functions/Func1<-TResource;+Lrx/Single<+TT;>;>;"
    .local p3, "disposeAction":Lrx/functions/Action1;, "Lrx/functions/Action1<-TResource;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lrx/internal/operators/SingleOnSubscribeUsing;->resourceFactory:Lrx/functions/Func0;

    .line 26
    iput-object p2, p0, Lrx/internal/operators/SingleOnSubscribeUsing;->singleFactory:Lrx/functions/Func1;

    .line 27
    iput-object p3, p0, Lrx/internal/operators/SingleOnSubscribeUsing;->disposeAction:Lrx/functions/Action1;

    .line 28
    iput-boolean p4, p0, Lrx/internal/operators/SingleOnSubscribeUsing;->disposeEagerly:Z

    .line 29
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 16
    .local p0, "this":Lrx/internal/operators/SingleOnSubscribeUsing;, "Lrx/internal/operators/SingleOnSubscribeUsing<TT;TResource;>;"
    check-cast p1, Lrx/SingleSubscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/SingleOnSubscribeUsing;->call(Lrx/SingleSubscriber;)V

    return-void
.end method

.method public call(Lrx/SingleSubscriber;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/SingleSubscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Lrx/internal/operators/SingleOnSubscribeUsing;, "Lrx/internal/operators/SingleOnSubscribeUsing<TT;TResource;>;"
    .local p1, "child":Lrx/SingleSubscriber;, "Lrx/SingleSubscriber<-TT;>;"
    :try_start_0
    iget-object v4, p0, Lrx/internal/operators/SingleOnSubscribeUsing;->resourceFactory:Lrx/functions/Func0;

    invoke-interface {v4}, Lrx/functions/Func0;->call()Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_1b

    move-result-object v2

    .line 46
    .local v2, "resource":Ljava/lang/Object;, "TResource;"
    :try_start_6
    iget-object v4, p0, Lrx/internal/operators/SingleOnSubscribeUsing;->singleFactory:Lrx/functions/Func1;

    invoke-interface {v4, v2}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lrx/Single;
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_e} :catch_23

    .line 52
    .local v3, "single":Lrx/Single;, "Lrx/Single<+TT;>;"
    if-nez v3, :cond_28

    .line 53
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "The single"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v2, v4}, Lrx/internal/operators/SingleOnSubscribeUsing;->handleSubscriptionTimeError(Lrx/SingleSubscriber;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 91
    .end local v2    # "resource":Ljava/lang/Object;, "TResource;"
    .end local v3    # "single":Lrx/Single;, "Lrx/Single<+TT;>;"
    :goto_1a
    return-void

    .line 37
    :catch_1b
    move-exception v0

    .line 38
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 39
    invoke-virtual {p1, v0}, Lrx/SingleSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_1a

    .line 47
    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v2    # "resource":Ljava/lang/Object;, "TResource;"
    :catch_23
    move-exception v0

    .line 48
    .restart local v0    # "ex":Ljava/lang/Throwable;
    invoke-virtual {p0, p1, v2, v0}, Lrx/internal/operators/SingleOnSubscribeUsing;->handleSubscriptionTimeError(Lrx/SingleSubscriber;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1a

    .line 57
    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v3    # "single":Lrx/Single;, "Lrx/Single<+TT;>;"
    :cond_28
    new-instance v1, Lrx/internal/operators/SingleOnSubscribeUsing$1;

    invoke-direct {v1, p0, v2, p1}, Lrx/internal/operators/SingleOnSubscribeUsing$1;-><init>(Lrx/internal/operators/SingleOnSubscribeUsing;Ljava/lang/Object;Lrx/SingleSubscriber;)V

    .line 88
    .local v1, "parent":Lrx/SingleSubscriber;, "Lrx/SingleSubscriber<TT;>;"
    invoke-virtual {p1, v1}, Lrx/SingleSubscriber;->add(Lrx/Subscription;)V

    .line 90
    invoke-virtual {v3, v1}, Lrx/Single;->subscribe(Lrx/SingleSubscriber;)Lrx/Subscription;

    goto :goto_1a
.end method

.method handleSubscriptionTimeError(Lrx/SingleSubscriber;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 8
    .param p3, "ex"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/SingleSubscriber",
            "<-TT;>;TResource;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 94
    .local p0, "this":Lrx/internal/operators/SingleOnSubscribeUsing;, "Lrx/internal/operators/SingleOnSubscribeUsing<TT;TResource;>;"
    .local p1, "t":Lrx/SingleSubscriber;, "Lrx/SingleSubscriber<-TT;>;"
    .local p2, "resource":Ljava/lang/Object;, "TResource;"
    invoke-static {p3}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 96
    iget-boolean v2, p0, Lrx/internal/operators/SingleOnSubscribeUsing;->disposeEagerly:Z

    if-eqz v2, :cond_c

    .line 98
    :try_start_7
    iget-object v2, p0, Lrx/internal/operators/SingleOnSubscribeUsing;->disposeAction:Lrx/functions/Action1;

    invoke-interface {v2, p2}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_c} :catch_19

    .line 105
    :cond_c
    :goto_c
    invoke-virtual {p1, p3}, Lrx/SingleSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 107
    iget-boolean v2, p0, Lrx/internal/operators/SingleOnSubscribeUsing;->disposeEagerly:Z

    if-nez v2, :cond_18

    .line 109
    :try_start_13
    iget-object v2, p0, Lrx/internal/operators/SingleOnSubscribeUsing;->disposeAction:Lrx/functions/Action1;

    invoke-interface {v2, p2}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_18} :catch_31

    .line 115
    :cond_18
    :goto_18
    return-void

    .line 99
    :catch_19
    move-exception v1

    .line 100
    .local v1, "ex2":Ljava/lang/Throwable;
    invoke-static {v1}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 101
    new-instance v0, Lrx/exceptions/CompositeException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Throwable;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    .end local p3    # "ex":Ljava/lang/Throwable;
    .local v0, "ex":Ljava/lang/Throwable;
    move-object p3, v0

    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local p3    # "ex":Ljava/lang/Throwable;
    goto :goto_c

    .line 110
    .end local v1    # "ex2":Ljava/lang/Throwable;
    :catch_31
    move-exception v1

    .line 111
    .restart local v1    # "ex2":Ljava/lang/Throwable;
    invoke-static {v1}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 112
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v2

    invoke-virtual {v2}, Lrx/plugins/RxJavaPlugins;->getErrorHandler()Lrx/plugins/RxJavaErrorHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lrx/plugins/RxJavaErrorHandler;->handleError(Ljava/lang/Throwable;)V

    goto :goto_18
.end method
