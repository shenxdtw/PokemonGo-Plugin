.class public final Ldagger/internal/DoubleCheckLazy;
.super Ljava/lang/Object;
.source "DoubleCheckLazy.java"

# interfaces
.implements Ldagger/Lazy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ldagger/Lazy",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final UNINITIALIZED:Ljava/lang/Object;


# instance fields
.field private volatile instance:Ljava/lang/Object;

.field private final provider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    const-class v0, Ldagger/internal/DoubleCheckLazy;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Ldagger/internal/DoubleCheckLazy;->$assertionsDisabled:Z

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ldagger/internal/DoubleCheckLazy;->UNINITIALIZED:Ljava/lang/Object;

    return-void

    .line 29
    :cond_13
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private constructor <init>(Ljavax/inject/Provider;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Ldagger/internal/DoubleCheckLazy;, "Ldagger/internal/DoubleCheckLazy<TT;>;"
    .local p1, "provider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    sget-object v0, Ldagger/internal/DoubleCheckLazy;->UNINITIALIZED:Ljava/lang/Object;

    iput-object v0, p0, Ldagger/internal/DoubleCheckLazy;->instance:Ljava/lang/Object;

    .line 36
    sget-boolean v0, Ldagger/internal/DoubleCheckLazy;->$assertionsDisabled:Z

    if-nez v0, :cond_13

    if-nez p1, :cond_13

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 37
    :cond_13
    iput-object p1, p0, Ldagger/internal/DoubleCheckLazy;->provider:Ljavax/inject/Provider;

    .line 38
    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Ldagger/Lazy;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavax/inject/Provider",
            "<TT;>;)",
            "Ldagger/Lazy",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "provider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<TT;>;"
    if-nez p0, :cond_8

    .line 58
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 60
    :cond_8
    new-instance v0, Ldagger/internal/DoubleCheckLazy;

    invoke-direct {v0, p0}, Ldagger/internal/DoubleCheckLazy;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "this":Ldagger/internal/DoubleCheckLazy;, "Ldagger/internal/DoubleCheckLazy<TT;>;"
    iget-object v0, p0, Ldagger/internal/DoubleCheckLazy;->instance:Ljava/lang/Object;

    .line 45
    .local v0, "result":Ljava/lang/Object;
    sget-object v1, Ldagger/internal/DoubleCheckLazy;->UNINITIALIZED:Ljava/lang/Object;

    if-ne v0, v1, :cond_16

    .line 46
    monitor-enter p0

    .line 47
    :try_start_7
    iget-object v0, p0, Ldagger/internal/DoubleCheckLazy;->instance:Ljava/lang/Object;

    .line 48
    sget-object v1, Ldagger/internal/DoubleCheckLazy;->UNINITIALIZED:Ljava/lang/Object;

    if-ne v0, v1, :cond_15

    .line 49
    iget-object v1, p0, Ldagger/internal/DoubleCheckLazy;->provider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ldagger/internal/DoubleCheckLazy;->instance:Ljava/lang/Object;

    .line 51
    :cond_15
    monitor-exit p0

    .line 53
    :cond_16
    return-object v0

    .line 51
    :catchall_17
    move-exception v1

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_17

    throw v1
.end method
