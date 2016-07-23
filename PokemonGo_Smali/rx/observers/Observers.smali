.class public final Lrx/observers/Observers;
.super Ljava/lang/Object;
.source "Observers.java"


# static fields
.field private static final EMPTY:Lrx/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    new-instance v0, Lrx/observers/Observers$1;

    invoke-direct {v0}, Lrx/observers/Observers$1;-><init>()V

    sput-object v0, Lrx/observers/Observers;->EMPTY:Lrx/Observer;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final create(Lrx/functions/Action1;)Lrx/Observer;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Action1",
            "<-TT;>;)",
            "Lrx/Observer",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "onNext":Lrx/functions/Action1;, "Lrx/functions/Action1<-TT;>;"
    if-nez p0, :cond_a

    .line 76
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onNext can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_a
    new-instance v0, Lrx/observers/Observers$2;

    invoke-direct {v0, p0}, Lrx/observers/Observers$2;-><init>(Lrx/functions/Action1;)V

    return-object v0
.end method

.method public static final create(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Observer;
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
            "Lrx/Observer",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 115
    .local p0, "onNext":Lrx/functions/Action1;, "Lrx/functions/Action1<-TT;>;"
    .local p1, "onError":Lrx/functions/Action1;, "Lrx/functions/Action1<Ljava/lang/Throwable;>;"
    if-nez p0, :cond_a

    .line 116
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onNext can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_a
    if-nez p1, :cond_14

    .line 119
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onError can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_14
    new-instance v0, Lrx/observers/Observers$3;

    invoke-direct {v0, p1, p0}, Lrx/observers/Observers$3;-><init>(Lrx/functions/Action1;Lrx/functions/Action1;)V

    return-object v0
.end method

.method public static final create(Lrx/functions/Action1;Lrx/functions/Action1;Lrx/functions/Action0;)Lrx/Observer;
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
            "Lrx/Observer",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 161
    .local p0, "onNext":Lrx/functions/Action1;, "Lrx/functions/Action1<-TT;>;"
    .local p1, "onError":Lrx/functions/Action1;, "Lrx/functions/Action1<Ljava/lang/Throwable;>;"
    if-nez p0, :cond_a

    .line 162
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onNext can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_a
    if-nez p1, :cond_14

    .line 165
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onError can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_14
    if-nez p2, :cond_1e

    .line 168
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onComplete can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_1e
    new-instance v0, Lrx/observers/Observers$4;

    invoke-direct {v0, p2, p1, p0}, Lrx/observers/Observers$4;-><init>(Lrx/functions/Action0;Lrx/functions/Action1;Lrx/functions/Action1;)V

    return-object v0
.end method

.method public static empty()Lrx/Observer;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/Observer",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 59
    sget-object v0, Lrx/observers/Observers;->EMPTY:Lrx/Observer;

    return-object v0
.end method
