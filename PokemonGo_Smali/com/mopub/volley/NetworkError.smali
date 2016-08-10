.class public Lcom/mopub/volley/NetworkError;
.super Lcom/mopub/volley/VolleyError;
.source "NetworkError.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/mopub/volley/VolleyError;-><init>()V

    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/mopub/volley/NetworkResponse;)V
    .registers 2
    .param p1, "networkResponse"    # Lcom/mopub/volley/NetworkResponse;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/mopub/volley/VolleyError;-><init>(Lcom/mopub/volley/NetworkResponse;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/mopub/volley/VolleyError;-><init>(Ljava/lang/Throwable;)V

    .line 33
    return-void
.end method
