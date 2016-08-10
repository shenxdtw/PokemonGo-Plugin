.class public final Ldagger/internal/SingleCheck;
.super Ljava/lang/Object;
.source "SingleCheck.java"

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
.field private volatile factory:Ldagger/internal/Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Factory",
            "<TT;>;"
        }
    .end annotation
.end field

.field private volatile instance:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const-class v0, Ldagger/internal/SingleCheck;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Ldagger/internal/SingleCheck;->$assertionsDisabled:Z

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ldagger/internal/SingleCheck;->UNINITIALIZED:Ljava/lang/Object;

    return-void

    .line 27
    :cond_13
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private constructor <init>(Ldagger/internal/Factory;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Factory",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Ldagger/internal/SingleCheck;, "Ldagger/internal/SingleCheck<TT;>;"
    .local p1, "factory":Ldagger/internal/Factory;, "Ldagger/internal/Factory<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    sget-object v0, Ldagger/internal/SingleCheck;->UNINITIALIZED:Ljava/lang/Object;

    iput-object v0, p0, Ldagger/internal/SingleCheck;->instance:Ljava/lang/Object;

    .line 34
    sget-boolean v0, Ldagger/internal/SingleCheck;->$assertionsDisabled:Z

    if-nez v0, :cond_13

    if-nez p1, :cond_13

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 35
    :cond_13
    iput-object p1, p0, Ldagger/internal/SingleCheck;->factory:Ldagger/internal/Factory;

    .line 36
    return-void
.end method

.method public static provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ldagger/internal/Factory",
            "<TT;>;)",
            "Ljavax/inject/Provider",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "factory":Ldagger/internal/Factory;, "Ldagger/internal/Factory<TT;>;"
    new-instance v1, Ldagger/internal/SingleCheck;

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldagger/internal/Factory;

    invoke-direct {v1, v0}, Ldagger/internal/SingleCheck;-><init>(Ldagger/internal/Factory;)V

    return-object v1
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Ldagger/internal/SingleCheck;, "Ldagger/internal/SingleCheck<TT;>;"
    iget-object v0, p0, Ldagger/internal/SingleCheck;->factory:Ldagger/internal/Factory;

    .line 46
    .local v0, "factoryReference":Ldagger/internal/Factory;, "Ldagger/internal/Factory<TT;>;"
    iget-object v1, p0, Ldagger/internal/SingleCheck;->instance:Ljava/lang/Object;

    sget-object v2, Ldagger/internal/SingleCheck;->UNINITIALIZED:Ljava/lang/Object;

    if-ne v1, v2, :cond_11

    .line 47
    invoke-interface {v0}, Ldagger/internal/Factory;->get()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Ldagger/internal/SingleCheck;->instance:Ljava/lang/Object;

    .line 50
    const/4 v1, 0x0

    iput-object v1, p0, Ldagger/internal/SingleCheck;->factory:Ldagger/internal/Factory;

    .line 52
    :cond_11
    iget-object v1, p0, Ldagger/internal/SingleCheck;->instance:Ljava/lang/Object;

    return-object v1
.end method
