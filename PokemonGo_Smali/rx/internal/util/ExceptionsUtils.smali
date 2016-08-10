.class public final enum Lrx/internal/util/ExceptionsUtils;
.super Ljava/lang/Enum;
.source "ExceptionsUtils.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lrx/internal/util/ExceptionsUtils;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lrx/internal/util/ExceptionsUtils;

.field private static final TERMINATED:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 29
    const/4 v0, 0x0

    new-array v0, v0, [Lrx/internal/util/ExceptionsUtils;

    sput-object v0, Lrx/internal/util/ExceptionsUtils;->$VALUES:[Lrx/internal/util/ExceptionsUtils;

    .line 33
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "Terminated"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    sput-object v0, Lrx/internal/util/ExceptionsUtils;->TERMINATED:Ljava/lang/Throwable;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static addThrowable(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z
    .registers 8
    .param p1, "error"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/Throwable;",
            ">;",
            "Ljava/lang/Throwable;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "field":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Throwable;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 45
    :cond_2
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 46
    .local v0, "current":Ljava/lang/Throwable;
    sget-object v3, Lrx/internal/util/ExceptionsUtils;->TERMINATED:Ljava/lang/Throwable;

    if-ne v0, v3, :cond_e

    move v3, v4

    .line 63
    :goto_d
    return v3

    .line 51
    :cond_e
    if-nez v0, :cond_19

    .line 52
    move-object v2, p1

    .line 62
    .local v2, "next":Ljava/lang/Throwable;
    :goto_11
    invoke-virtual {p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v5

    .line 63
    goto :goto_d

    .line 54
    .end local v2    # "next":Ljava/lang/Throwable;
    :cond_19
    instance-of v3, v0, Lrx/exceptions/CompositeException;

    if-eqz v3, :cond_32

    .line 55
    new-instance v1, Ljava/util/ArrayList;

    move-object v3, v0

    check-cast v3, Lrx/exceptions/CompositeException;

    invoke-virtual {v3}, Lrx/exceptions/CompositeException;->getExceptions()Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 56
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    new-instance v2, Lrx/exceptions/CompositeException;

    invoke-direct {v2, v1}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    .line 58
    .restart local v2    # "next":Ljava/lang/Throwable;
    goto :goto_11

    .line 59
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    .end local v2    # "next":Ljava/lang/Throwable;
    :cond_32
    new-instance v2, Lrx/exceptions/CompositeException;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Throwable;

    aput-object v0, v3, v4

    aput-object p1, v3, v5

    invoke-direct {v2, v3}, Lrx/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    .restart local v2    # "next":Ljava/lang/Throwable;
    goto :goto_11
.end method

.method public static isTerminated(Ljava/lang/Throwable;)Z
    .registers 2
    .param p0, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 100
    sget-object v0, Lrx/internal/util/ExceptionsUtils;->TERMINATED:Ljava/lang/Throwable;

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static isTerminated(Ljava/util/concurrent/atomic/AtomicReference;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/Throwable;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 90
    .local p0, "field":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Throwable;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v0}, Lrx/internal/util/ExceptionsUtils;->isTerminated(Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method public static terminate(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "field":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Throwable;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 77
    .local v0, "current":Ljava/lang/Throwable;
    sget-object v1, Lrx/internal/util/ExceptionsUtils;->TERMINATED:Ljava/lang/Throwable;

    if-eq v0, v1, :cond_12

    .line 78
    sget-object v1, Lrx/internal/util/ExceptionsUtils;->TERMINATED:Ljava/lang/Throwable;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "current":Ljava/lang/Throwable;
    check-cast v0, Ljava/lang/Throwable;

    .line 80
    .restart local v0    # "current":Ljava/lang/Throwable;
    :cond_12
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lrx/internal/util/ExceptionsUtils;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 29
    const-class v0, Lrx/internal/util/ExceptionsUtils;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lrx/internal/util/ExceptionsUtils;

    return-object v0
.end method

.method public static values()[Lrx/internal/util/ExceptionsUtils;
    .registers 1

    .prologue
    .line 29
    sget-object v0, Lrx/internal/util/ExceptionsUtils;->$VALUES:[Lrx/internal/util/ExceptionsUtils;

    invoke-virtual {v0}, [Lrx/internal/util/ExceptionsUtils;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/internal/util/ExceptionsUtils;

    return-object v0
.end method
