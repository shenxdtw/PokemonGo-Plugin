.class public final Ldagger/internal/ProviderOfLazy;
.super Ljava/lang/Object;
.source "ProviderOfLazy.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider",
        "<",
        "Ldagger/Lazy",
        "<TT;>;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
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
    .line 26
    const-class v0, Ldagger/internal/ProviderOfLazy;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Ldagger/internal/ProviderOfLazy;->$assertionsDisabled:Z

    return-void

    :cond_c
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
    .line 30
    .local p0, "this":Ldagger/internal/ProviderOfLazy;, "Ldagger/internal/ProviderOfLazy<TT;>;"
    .local p1, "provider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    sget-boolean v0, Ldagger/internal/ProviderOfLazy;->$assertionsDisabled:Z

    if-nez v0, :cond_f

    if-nez p1, :cond_f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 32
    :cond_f
    iput-object p1, p0, Ldagger/internal/ProviderOfLazy;->provider:Ljavax/inject/Provider;

    .line 33
    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Ljavax/inject/Provider;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavax/inject/Provider",
            "<TT;>;)",
            "Ljavax/inject/Provider",
            "<",
            "Ldagger/Lazy",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "provider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<TT;>;"
    new-instance v1, Ldagger/internal/ProviderOfLazy;

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/inject/Provider;

    invoke-direct {v1, v0}, Ldagger/internal/ProviderOfLazy;-><init>(Ljavax/inject/Provider;)V

    return-object v1
.end method


# virtual methods
.method public get()Ldagger/Lazy;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldagger/Lazy",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Ldagger/internal/ProviderOfLazy;, "Ldagger/internal/ProviderOfLazy<TT;>;"
    iget-object v0, p0, Ldagger/internal/ProviderOfLazy;->provider:Ljavax/inject/Provider;

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 26
    .local p0, "this":Ldagger/internal/ProviderOfLazy;, "Ldagger/internal/ProviderOfLazy<TT;>;"
    invoke-virtual {p0}, Ldagger/internal/ProviderOfLazy;->get()Ldagger/Lazy;

    move-result-object v0

    return-object v0
.end method
