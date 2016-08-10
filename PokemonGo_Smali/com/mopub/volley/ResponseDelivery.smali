.class public interface abstract Lcom/mopub/volley/ResponseDelivery;
.super Ljava/lang/Object;
.source "ResponseDelivery.java"


# virtual methods
.method public abstract postError(Lcom/mopub/volley/Request;Lcom/mopub/volley/VolleyError;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/volley/Request",
            "<*>;",
            "Lcom/mopub/volley/VolleyError;",
            ")V"
        }
    .end annotation
.end method

.method public abstract postResponse(Lcom/mopub/volley/Request;Lcom/mopub/volley/Response;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/volley/Request",
            "<*>;",
            "Lcom/mopub/volley/Response",
            "<*>;)V"
        }
    .end annotation
.end method

.method public abstract postResponse(Lcom/mopub/volley/Request;Lcom/mopub/volley/Response;Ljava/lang/Runnable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/volley/Request",
            "<*>;",
            "Lcom/mopub/volley/Response",
            "<*>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation
.end method
