.class public final Lrx/internal/operators/OperatorToMultimap;
.super Ljava/lang/Object;
.source "OperatorToMultimap.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorToMultimap$DefaultMultimapCollectionFactory;,
        Lrx/internal/operators/OperatorToMultimap$DefaultToMultimapFactory;
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
        "<TK;",
        "Ljava/util/Collection",
        "<TV;>;>;TT;>;"
    }
.end annotation


# instance fields
.field final collectionFactory:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<-TK;+",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation
.end field

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
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;"
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
    .registers 5
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
    .line 73
    .local p0, "this":Lrx/internal/operators/OperatorToMultimap;, "Lrx/internal/operators/OperatorToMultimap<TT;TK;TV;>;"
    .local p1, "keySelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TK;>;"
    .local p2, "valueSelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TV;>;"
    new-instance v0, Lrx/internal/operators/OperatorToMultimap$DefaultToMultimapFactory;

    invoke-direct {v0}, Lrx/internal/operators/OperatorToMultimap$DefaultToMultimapFactory;-><init>()V

    new-instance v1, Lrx/internal/operators/OperatorToMultimap$DefaultMultimapCollectionFactory;

    invoke-direct {v1}, Lrx/internal/operators/OperatorToMultimap$DefaultMultimapCollectionFactory;-><init>()V

    invoke-direct {p0, p1, p2, v0, v1}, Lrx/internal/operators/OperatorToMultimap;-><init>(Lrx/functions/Func1;Lrx/functions/Func1;Lrx/functions/Func0;Lrx/functions/Func1;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Lrx/functions/Func1;Lrx/functions/Func1;Lrx/functions/Func0;)V
    .registers 5
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
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "this":Lrx/internal/operators/OperatorToMultimap;, "Lrx/internal/operators/OperatorToMultimap<TT;TK;TV;>;"
    .local p1, "keySelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TK;>;"
    .local p2, "valueSelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TV;>;"
    .local p3, "mapFactory":Lrx/functions/Func0;, "Lrx/functions/Func0<+Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;>;"
    new-instance v0, Lrx/internal/operators/OperatorToMultimap$DefaultMultimapCollectionFactory;

    invoke-direct {v0}, Lrx/internal/operators/OperatorToMultimap$DefaultMultimapCollectionFactory;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lrx/internal/operators/OperatorToMultimap;-><init>(Lrx/functions/Func1;Lrx/functions/Func1;Lrx/functions/Func0;Lrx/functions/Func1;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Lrx/functions/Func1;Lrx/functions/Func1;Lrx/functions/Func0;Lrx/functions/Func1;)V
    .registers 5
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
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;",
            "Lrx/functions/Func1",
            "<-TK;+",
            "Ljava/util/Collection",
            "<TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, "this":Lrx/internal/operators/OperatorToMultimap;, "Lrx/internal/operators/OperatorToMultimap<TT;TK;TV;>;"
    .local p1, "keySelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TK;>;"
    .local p2, "valueSelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TV;>;"
    .local p3, "mapFactory":Lrx/functions/Func0;, "Lrx/functions/Func0<+Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;>;"
    .local p4, "collectionFactory":Lrx/functions/Func1;, "Lrx/functions/Func1<-TK;+Ljava/util/Collection<TV;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lrx/internal/operators/OperatorToMultimap;->keySelector:Lrx/functions/Func1;

    .line 101
    iput-object p2, p0, Lrx/internal/operators/OperatorToMultimap;->valueSelector:Lrx/functions/Func1;

    .line 102
    iput-object p3, p0, Lrx/internal/operators/OperatorToMultimap;->mapFactory:Lrx/functions/Func0;

    .line 103
    iput-object p4, p0, Lrx/internal/operators/OperatorToMultimap;->collectionFactory:Lrx/functions/Func1;

    .line 104
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 38
    .local p0, "this":Lrx/internal/operators/OperatorToMultimap;, "Lrx/internal/operators/OperatorToMultimap<TT;TK;TV;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorToMultimap;->call(Lrx/Subscriber;)Lrx/Subscriber;

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
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;)",
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 112
    .local p0, "this":Lrx/internal/operators/OperatorToMultimap;, "Lrx/internal/operators/OperatorToMultimap<TT;TK;TV;>;"
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;>;"
    :try_start_0
    iget-object v4, p0, Lrx/internal/operators/OperatorToMultimap;->mapFactory:Lrx/functions/Func0;

    invoke-interface {v4}, Lrx/functions/Func0;->call()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_8} :catch_f

    .line 122
    .local v2, "localMap":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;"
    move-object v1, v2

    .line 124
    .local v1, "fLocalMap":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;"
    new-instance v3, Lrx/internal/operators/OperatorToMultimap$1;

    invoke-direct {v3, p0, p1, v1, p1}, Lrx/internal/operators/OperatorToMultimap$1;-><init>(Lrx/internal/operators/OperatorToMultimap;Lrx/Subscriber;Ljava/util/Map;Lrx/Subscriber;)V

    .end local v1    # "fLocalMap":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;"
    .end local v2    # "localMap":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;"
    :goto_e
    return-object v3

    .line 113
    :catch_f
    move-exception v0

    .line 114
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 115
    invoke-virtual {p1, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 117
    invoke-static {}, Lrx/observers/Subscribers;->empty()Lrx/Subscriber;

    move-result-object v3

    .line 118
    .local v3, "parent":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    invoke-virtual {v3}, Lrx/Subscriber;->unsubscribe()V

    goto :goto_e
.end method
