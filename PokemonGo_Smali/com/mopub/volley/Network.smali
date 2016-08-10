.class public interface abstract Lcom/mopub/volley/Network;
.super Ljava/lang/Object;
.source "Network.java"


# virtual methods
.method public abstract performRequest(Lcom/mopub/volley/Request;)Lcom/mopub/volley/NetworkResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/volley/Request",
            "<*>;)",
            "Lcom/mopub/volley/NetworkResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/volley/VolleyError;
        }
    .end annotation
.end method
