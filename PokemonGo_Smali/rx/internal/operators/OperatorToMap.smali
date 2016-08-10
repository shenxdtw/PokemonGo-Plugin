.class public final Lrx/internal/operators/OperatorToMap;
.super Ljava/lang/Object;
.source "OperatorToMap.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorToMap$DefaultToMapFactory;
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
        "Ljava/util/Map",
        "<TK;TV;>;TT;>;"
    }
.end annotation


# instance fields
.field final keySelector:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<-TT;+TK;>;"
        }
    .end annotation
.end field

.field private final mapFactory:Lrx/functions/Func0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func0",
            "<+",
            "Ljava/util/Map",
            "<TK;TV;>;>;"
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
.method public constructor <init>(Lrx/functions/Func1;Lrx/functions/Func1;)V
    .registers 4
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
    .line 61
    .local p0, "this":Lrx/internal/operators/OperatorToMap;, "Lrx/internal/operators/OperatorToMap<TT;TK;TV;>;"
    .local p1, "keySelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TK;>;"
    .local p2, "valueSelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TV;>;"
    new-instance v0, Lrx/internal/operators/OperatorToMap$DefaultToMapFactory;

    invoke-direct {v0}, Lrx/internal/operators/OperatorToMap$DefaultToMapFactory;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lrx/internal/operators/OperatorToMap;-><init>(Lrx/functions/Func1;Lrx/functions/Func1;Lrx/functions/Func0;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Lrx/functions/Func1;Lrx/functions/Func1;Lrx/functions/Func0;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<-TT;+TK;>;",
            "Lrx/functions/Func1",
            "<-TT;+TV;>;",
            "Lrx/functions/Func0",
            "<+",
            "Ljava/util/Map",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Lrx/internal/operators/OperatorToMap;, "Lrx/internal/operators/OperatorToMap<TT;TK;TV;>;"
    .local p1, "keySelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TK;>;"
    .local p2, "valueSelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TV;>;"
    .local p3, "mapFactory":Lrx/functions/Func0;, "Lrx/functions/Func0<+Ljava/util/Map<TK;TV;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lrx/internal/operators/OperatorToMap;->keySelector:Lrx/functions/Func1;

    .line 73
    iput-object p2, p0, Lrx/internal/operators/OperatorToMap;->valueSelector:Lrx/functions/Func1;

    .line 74
    iput-object p3, p0, Lrx/internal/operators/OperatorToMap;->mapFactory:Lrx/functions/Func0;

    .line 76
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 35
    .local p0, "this":Lrx/internal/operators/OperatorToMap;, "Lrx/internal/operators/OperatorToMap<TT;TK;TV;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorToMap;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Ljava/util/Map",
            "<TK;TV;>;>;)",
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, "this":Lrx/internal/operators/OperatorToMap;, "Lrx/internal/operators/OperatorToMap<TT;TK;TV;>;"
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Ljava/util/Map<TK;TV;>;>;"
    :try_start_0
    iget-object v4, p0, Lrx/internal/operators/OperatorToMap;->mapFactory:Lrx/functions/Func0;

    invoke-interface {v4}, Lrx/functions/Func0;->call()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_8} :catch_f

    .line 92
    .local v2, "localMap":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    move-object v1, v2

    .line 94
    .local v1, "fLocalMap":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    new-instance v3, Lrx/internal/operators/OperatorToMap$1;

    invoke-direct {v3, p0, p1, v1, p1}, Lrx/internal/operators/OperatorToMap$1;-><init>(Lrx/internal/operators/OperatorToMap;Lrx/Subscriber;Ljava/util/Map;Lrx/Subscriber;)V

    .end local v1    # "fLocalMap":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .end local v2    # "localMap":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    :goto_e
    return-object v3

    .line 85
    :catch_f
    move-exception v0

    .line 86
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0, p1}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;)V

    .line 87
    invoke-static {}, Lrx/observers/Subscribers;->empty()Lrx/Subscriber;

    move-result-object v3

    .line 88
    .local v3, "parent":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    invoke-virtual {v3}, Lrx/Subscriber;->unsubscribe()V

    goto :goto_e
.end method
