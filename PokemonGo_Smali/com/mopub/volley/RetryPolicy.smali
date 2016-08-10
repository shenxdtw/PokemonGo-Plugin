.class public interface abstract Lcom/mopub/volley/RetryPolicy;
.super Ljava/lang/Object;
.source "RetryPolicy.java"


# virtual methods
.method public abstract getCurrentRetryCount()I
.end method

.method public abstract getCurrentTimeout()I
.end method

.method public abstract retry(Lcom/mopub/volley/VolleyError;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/volley/VolleyError;
        }
    .end annotation
.end method
