.class public Lcom/android/volley/toolbox/NoCache;
.super Ljava/lang/Object;
.source "NoCache.java"

# interfaces
.implements Lcom/android/volley/Cache;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 1

    .prologue
    .line 27
    return-void
.end method

.method public get(Ljava/lang/String;)Lcom/android/volley/Cache$Entry;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 31
    const/4 v0, 0x0

    return-object v0
.end method

.method public initialize()V
    .registers 1

    .prologue
    .line 48
    return-void
.end method

.method public invalidate(Ljava/lang/String;Z)V
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "fullExpire"    # Z

    .prologue
    .line 40
    return-void
.end method

.method public put(Ljava/lang/String;Lcom/android/volley/Cache$Entry;)V
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "entry"    # Lcom/android/volley/Cache$Entry;

    .prologue
    .line 36
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .registers 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 44
    return-void
.end method
