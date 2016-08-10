.class public final Ldagger/internal/DelegateFactory;
.super Ljava/lang/Object;
.source "DelegateFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private delegate:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    .local p0, "this":Ldagger/internal/DelegateFactory;, "Ldagger/internal/DelegateFactory<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "this":Ldagger/internal/DelegateFactory;, "Ldagger/internal/DelegateFactory<TT;>;"
    iget-object v0, p0, Ldagger/internal/DelegateFactory;->delegate:Ljavax/inject/Provider;

    if-nez v0, :cond_a

    .line 31
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 33
    :cond_a
    iget-object v0, p0, Ldagger/internal/DelegateFactory;->delegate:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setDelegatedProvider(Ljavax/inject/Provider;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Ldagger/internal/DelegateFactory;, "Ldagger/internal/DelegateFactory<TT;>;"
    .local p1, "delegate":Ljavax/inject/Provider;, "Ljavax/inject/Provider<TT;>;"
    if-nez p1, :cond_8

    .line 38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 40
    :cond_8
    iget-object v0, p0, Ldagger/internal/DelegateFactory;->delegate:Ljavax/inject/Provider;

    if-eqz v0, :cond_12

    .line 41
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 43
    :cond_12
    iput-object p1, p0, Ldagger/internal/DelegateFactory;->delegate:Ljavax/inject/Provider;

    .line 44
    return-void
.end method
