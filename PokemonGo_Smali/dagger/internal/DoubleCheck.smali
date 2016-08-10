.class public final Ldagger/internal/DoubleCheck;
.super Ljava/lang/Object;
.source "DoubleCheck.java"

# interfaces
.implements Ljavax/inject/Provider;
.implements Ldagger/Lazy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider",
        "<TT;>;",
        "Ldagger/Lazy",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final UNINITIALIZED:Ljava/lang/Object;


# instance fields
.field private volatile instance:Ljava/lang/Object;

.field private volatile provider:Ljavax/inject/Provider;
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
    .line 27
    const-class v0, Ldagger/internal/DoubleCheck;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Ldagger/internal/DoubleCheck;->$assertionsDisabled:Z

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ldagger/internal/DoubleCheck;->UNINITIALIZED:Ljava/lang/Object;

    return-void

    .line 27
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
    .line 33
    .local p0, "this":Ldagger/internal/DoubleCheck;, "Ldagger/internal/DoubleCheck<TT;>;"
    .local p1, "provider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    sget-object v0, Ldagger/internal/DoubleCheck;->UNINITIALIZED:Ljava/lang/Object;

    iput-object v0, p0, Ldagger/internal/DoubleCheck;->instance:Ljava/lang/Object;

    .line 34
    sget-boolean v0, Ldagger/internal/DoubleCheck;->$assertionsDisabled:Z

    if-nez v0, :cond_13

    if-nez p1, :cond_13

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 35
    :cond_13
    iput-object p1, p0, Ldagger/internal/DoubleCheck;->provider:Ljavax/inject/Provider;

    .line 36
    return-void
.end method

.method public static lazy(Ljavax/inject/Provider;)Ldagger/Lazy;
    .registers 3
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
    .line 69
    .local p0, "provider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<TT;>;"
    instance-of v1, p0, Ldagger/Lazy;

    if-eqz v1, :cond_8

    move-object v0, p0

    .line 71
    check-cast v0, Ldagger/Lazy;

    .line 79
    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Ldagger/internal/DoubleCheck;

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/inject/Provider;

    invoke-direct {v0, v1}, Ldagger/internal/DoubleCheck;-><init>(Ljavax/inject/Provider;)V

    goto :goto_7
.end method

.method public static provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavax/inject/Provider",
            "<TT;>;)",
            "Ljavax/inject/Provider",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "delegate":Ljavax/inject/Provider;, "Ljavax/inject/Provider<TT;>;"
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    instance-of v0, p0, Ldagger/internal/DoubleCheck;

    if-eqz v0, :cond_8

    .line 64
    .end local p0    # "delegate":Ljavax/inject/Provider;, "Ljavax/inject/Provider<TT;>;"
    :goto_7
    return-object p0

    .restart local p0    # "delegate":Ljavax/inject/Provider;, "Ljavax/inject/Provider<TT;>;"
    :cond_8
    new-instance v0, Ldagger/internal/DoubleCheck;

    invoke-direct {v0, p0}, Ldagger/internal/DoubleCheck;-><init>(Ljavax/inject/Provider;)V

    move-object p0, v0

    goto :goto_7
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
    .line 41
    .local p0, "this":Ldagger/internal/DoubleCheck;, "Ldagger/internal/DoubleCheck<TT;>;"
    iget-object v0, p0, Ldagger/internal/DoubleCheck;->instance:Ljava/lang/Object;

    .line 42
    .local v0, "result":Ljava/lang/Object;
    sget-object v1, Ldagger/internal/DoubleCheck;->UNINITIALIZED:Ljava/lang/Object;

    if-ne v0, v1, :cond_19

    .line 43
    monitor-enter p0

    .line 44
    :try_start_7
    iget-object v0, p0, Ldagger/internal/DoubleCheck;->instance:Ljava/lang/Object;

    .line 45
    sget-object v1, Ldagger/internal/DoubleCheck;->UNINITIALIZED:Ljava/lang/Object;

    if-ne v0, v1, :cond_18

    .line 46
    iget-object v1, p0, Ldagger/internal/DoubleCheck;->provider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ldagger/internal/DoubleCheck;->instance:Ljava/lang/Object;

    .line 49
    const/4 v1, 0x0

    iput-object v1, p0, Ldagger/internal/DoubleCheck;->provider:Ljavax/inject/Provider;

    .line 51
    :cond_18
    monitor-exit p0

    .line 53
    :cond_19
    return-object v0

    .line 51
    :catchall_1a
    move-exception v1

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_1a

    throw v1
.end method
