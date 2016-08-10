.class public final Ldagger/internal/SetFactory;
.super Ljava/lang/Object;
.source "SetFactory.java"

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
        "<",
        "Ljava/util/Set",
        "<TT;>;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final ARGUMENTS_MUST_BE_NON_NULL:Ljava/lang/String; = "SetFactory.create() requires its arguments to be non-null"

.field private static final EMPTY_FACTORY:Ldagger/internal/Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Factory",
            "<",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final contributingProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/Set",
            "<TT;>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    const-class v0, Ldagger/internal/SetFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Ldagger/internal/SetFactory;->$assertionsDisabled:Z

    .line 44
    new-instance v0, Ldagger/internal/SetFactory$1;

    invoke-direct {v0}, Ldagger/internal/SetFactory$1;-><init>()V

    sput-object v0, Ldagger/internal/SetFactory;->EMPTY_FACTORY:Ldagger/internal/Factory;

    return-void

    .line 37
    :cond_13
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/Set",
            "<TT;>;>;>;)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, "this":Ldagger/internal/SetFactory;, "Ldagger/internal/SetFactory<TT;>;"
    .local p1, "contributingProviders":Ljava/util/List;, "Ljava/util/List<Ljavax/inject/Provider<Ljava/util/Set<TT;>;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Ldagger/internal/SetFactory;->contributingProviders:Ljava/util/List;

    .line 97
    return-void
.end method

.method public static create()Ldagger/internal/Factory;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ldagger/internal/Factory",
            "<",
            "Ljava/util/Set",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 54
    sget-object v0, Ldagger/internal/SetFactory;->EMPTY_FACTORY:Ldagger/internal/Factory;

    return-object v0
.end method

.method public static create(Ldagger/internal/Factory;)Ldagger/internal/Factory;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ldagger/internal/Factory",
            "<",
            "Ljava/util/Set",
            "<TT;>;>;)",
            "Ldagger/internal/Factory",
            "<",
            "Ljava/util/Set",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "factory":Ldagger/internal/Factory;, "Ldagger/internal/Factory<Ljava/util/Set<TT;>;>;"
    sget-boolean v0, Ldagger/internal/SetFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_e

    if-nez p0, :cond_e

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "SetFactory.create() requires its arguments to be non-null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 63
    :cond_e
    return-object p0
.end method

.method public static varargs create([Ljavax/inject/Provider;)Ldagger/internal/Factory;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/Set",
            "<TT;>;>;)",
            "Ldagger/internal/Factory",
            "<",
            "Ljava/util/Set",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "providers":[Ljavax/inject/Provider;, "[Ljavax/inject/Provider<Ljava/util/Set<TT;>;>;"
    sget-boolean v1, Ldagger/internal/SetFactory;->$assertionsDisabled:Z

    if-nez v1, :cond_e

    if-nez p0, :cond_e

    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "SetFactory.create() requires its arguments to be non-null"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 75
    :cond_e
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 77
    .local v0, "contributingProviders":Ljava/util/List;, "Ljava/util/List<Ljavax/inject/Provider<Ljava/util/Set<TT;>;>;>;"
    sget-boolean v1, Ldagger/internal/SetFactory;->$assertionsDisabled:Z

    if-nez v1, :cond_25

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Codegen error?  Null within provider list."

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 79
    :cond_25
    sget-boolean v1, Ldagger/internal/SetFactory;->$assertionsDisabled:Z

    if-nez v1, :cond_37

    invoke-static {v0}, Ldagger/internal/SetFactory;->hasDuplicates(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_37

    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Codegen error?  Duplicates in the provider list"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 82
    :cond_37
    new-instance v1, Ldagger/internal/SetFactory;

    invoke-direct {v1, v0}, Ldagger/internal/SetFactory;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method private static hasDuplicates(Ljava/util/List;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 89
    .local p0, "original":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Object;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 90
    .local v0, "asSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    if-eq v1, v2, :cond_11

    const/4 v1, 0x1

    :goto_10
    return v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 37
    .local p0, "this":Ldagger/internal/SetFactory;, "Ldagger/internal/SetFactory<TT;>;"
    invoke-virtual {p0}, Ldagger/internal/SetFactory;->get()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/Set;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 108
    .local p0, "this":Ldagger/internal/SetFactory;, "Ldagger/internal/SetFactory<TT;>;"
    const/4 v7, 0x0

    .line 114
    .local v7, "size":I
    new-instance v4, Ljava/util/ArrayList;

    iget-object v8, p0, Ldagger/internal/SetFactory;->contributingProviders:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 115
    .local v4, "providedSets":Ljava/util/List;, "Ljava/util/List<Ljava/util/Set<TT;>;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v8, p0, Ldagger/internal/SetFactory;->contributingProviders:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "c":I
    :goto_13
    if-ge v2, v0, :cond_57

    .line 116
    iget-object v8, p0, Ldagger/internal/SetFactory;->contributingProviders:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/inject/Provider;

    .line 117
    .local v5, "provider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Ljava/util/Set<TT;>;>;"
    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 118
    .local v3, "providedSet":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    if-nez v3, :cond_4c

    .line 119
    new-instance v8, Ljava/lang/NullPointerException;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, 0xe

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " returned null"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 121
    :cond_4c
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v8

    add-int/2addr v7, v8

    .line 115
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 125
    .end local v3    # "providedSet":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    .end local v5    # "provider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Ljava/util/Set<TT;>;>;"
    :cond_57
    invoke-static {v7}, Ldagger/internal/Collections;->newLinkedHashSetWithExpectedSize(I)Ljava/util/LinkedHashSet;

    move-result-object v6

    .line 126
    .local v6, "result":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    const/4 v2, 0x0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    :goto_60
    if-ge v2, v0, :cond_87

    .line 127
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_6c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_84

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 128
    .local v1, "element":Ljava/lang/Object;, "TT;"
    if-nez v1, :cond_80

    .line 129
    new-instance v8, Ljava/lang/NullPointerException;

    const-string v9, "a null element was provided"

    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 131
    :cond_80
    invoke-interface {v6, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6c

    .line 126
    .end local v1    # "element":Ljava/lang/Object;, "TT;"
    :cond_84
    add-int/lit8 v2, v2, 0x1

    goto :goto_60

    .line 134
    :cond_87
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v8

    return-object v8
.end method
