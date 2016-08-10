.class public Lcom/mopub/volley/NoConnectionError;
.super Lcom/mopub/volley/NetworkError;
.source "NoConnectionError.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/mopub/volley/NetworkError;-><init>()V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2
    .param p1, "reason"    # Ljava/lang/Throwable;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/mopub/volley/NetworkError;-><init>(Ljava/lang/Throwable;)V

    .line 30
    return-void
.end method
