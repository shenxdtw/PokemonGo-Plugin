.class public interface abstract Lcom/mopub/volley/toolbox/HttpStack;
.super Ljava/lang/Object;
.source "HttpStack.java"


# virtual methods
.method public abstract performRequest(Lcom/mopub/volley/Request;Ljava/util/Map;)Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/volley/Request",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/mopub/volley/AuthFailureError;
        }
    .end annotation
.end method
