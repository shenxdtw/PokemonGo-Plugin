.class public final Lrx/observers/Subscribers;
.super Ljava/lang/Object;
.source "Subscribers.java"


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static create(Lrx/functions/Action1;)Lrx/Subscriber;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Action1",
            "<-TT;>;)",
            "Lrx/Subscriber",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "onNext":Lrx/functions/Action1;, "Lrx/functions/Action1<-TT;>;"
    if-nez p0, :cond_a

    .line 83
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onNext can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_a
    new-instance v0, Lrx/observers/Subscribers$2;

    invoke-direct {v0, p0}, Lrx/observers/Subscribers$2;-><init>(Lrx/functions/Action1;)V

    return-object v0
.end method

.method public static create(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscriber;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Action1",
            "<-TT;>;",
            "Lrx/functions/Action1",
            "<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lrx/Subscriber",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 122
    .local p0, "onNext":Lrx/functions/Action1;, "Lrx/functions/Action1<-TT;>;"
    .local p1, "onError":Lrx/functions/Action1;, "Lrx/functions/Action1<Ljava/lang/Throwable;>;"
    if-nez p0, :cond_a

    .line 123
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onNext can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_a
    if-nez p1, :cond_14

    .line 126
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onError can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_14
    new-instance v0, Lrx/observers/Subscribers$3;

    invoke-direct {v0, p1, p0}, Lrx/observers/Subscribers$3;-><init>(Lrx/functions/Action1;Lrx/functions/Action1;)V

    return-object v0
.end method

.method public static create(Lrx/functions/Action1;Lrx/functions/Action1;Lrx/functions/Action0;)Lrx/Subscriber;
    .registers 5
    .param p2, "onComplete"    # Lrx/functions/Action0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Action1",
            "<-TT;>;",
            "Lrx/functions/Action1",
            "<",
            "Ljava/lang/Throwable;",
            ">;",
            "Lrx/functions/Action0;",
            ")",
            "Lrx/Subscriber",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 168
    .local p0, "onNext":Lrx/functions/Action1;, "Lrx/functions/Action1<-TT;>;"
    .local p1, "onError":Lrx/functions/Action1;, "Lrx/functions/Action1<Ljava/lang/Throwable;>;"
    if-nez p0, :cond_a

    .line 169
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onNext can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_a
    if-nez p1, :cond_14

    .line 172
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onError can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_14
    if-nez p2, :cond_1e

    .line 175
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onComplete can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_1e
    new-instance v0, Lrx/observers/Subscribers$4;

    invoke-direct {v0, p2, p1, p0}, Lrx/observers/Subscribers$4;-><init>(Lrx/functions/Action0;Lrx/functions/Action1;Lrx/functions/Action1;)V

    return-object v0
.end method

.method public static empty()Lrx/Subscriber;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/Subscriber",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 38
    invoke-static {}, Lrx/observers/Observers;->empty()Lrx/Observer;

    move-result-object v0

    invoke-static {v0}, Lrx/observers/Subscribers;->from(Lrx/Observer;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public static from(Lrx/Observer;)Lrx/Subscriber;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observer",
            "<-TT;>;)",
            "Lrx/Subscriber",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "o":Lrx/Observer;, "Lrx/Observer<-TT;>;"
    new-instance v0, Lrx/observers/Subscribers$1;

    invoke-direct {v0, p0}, Lrx/observers/Subscribers$1;-><init>(Lrx/Observer;)V

    return-object v0
.end method

.method public static wrap(Lrx/Subscriber;)Lrx/Subscriber;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Subscriber",
            "<-TT;>;)",
            "Lrx/Subscriber",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 215
    .local p0, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lrx/observers/Subscribers$5;

    invoke-direct {v0, p0, p0}, Lrx/observers/Subscribers$5;-><init>(Lrx/Subscriber;Lrx/Subscriber;)V

    return-object v0
.end method
