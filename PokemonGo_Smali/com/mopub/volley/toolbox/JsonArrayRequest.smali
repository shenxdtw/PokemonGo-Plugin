.class public Lcom/mopub/volley/toolbox/JsonArrayRequest;
.super Lcom/mopub/volley/toolbox/JsonRequest;
.source "JsonArrayRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mopub/volley/toolbox/JsonRequest",
        "<",
        "Lorg/json/JSONArray;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/mopub/volley/Response$Listener;Lcom/mopub/volley/Response$ErrorListener;)V
    .registers 10
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "errorListener"    # Lcom/mopub/volley/Response$ErrorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mopub/volley/Response$Listener",
            "<",
            "Lorg/json/JSONArray;",
            ">;",
            "Lcom/mopub/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    .local p2, "listener":Lcom/mopub/volley/Response$Listener;, "Lcom/mopub/volley/Response$Listener<Lorg/json/JSONArray;>;"
    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/mopub/volley/toolbox/JsonRequest;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/mopub/volley/Response$Listener;Lcom/mopub/volley/Response$ErrorListener;)V

    .line 43
    return-void
.end method


# virtual methods
.method protected parseNetworkResponse(Lcom/mopub/volley/NetworkResponse;)Lcom/mopub/volley/Response;
    .registers 7
    .param p1, "response"    # Lcom/mopub/volley/NetworkResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/volley/NetworkResponse;",
            ")",
            "Lcom/mopub/volley/Response",
            "<",
            "Lorg/json/JSONArray;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    :try_start_0
    new-instance v2, Ljava/lang/String;

    iget-object v3, p1, Lcom/mopub/volley/NetworkResponse;->data:[B

    iget-object v4, p1, Lcom/mopub/volley/NetworkResponse;->headers:Ljava/util/Map;

    invoke-static {v4}, Lcom/mopub/volley/toolbox/HttpHeaderParser;->parseCharset(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 50
    .local v2, "jsonString":Ljava/lang/String;
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/mopub/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/mopub/volley/NetworkResponse;)Lcom/mopub/volley/Cache$Entry;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mopub/volley/Response;->success(Ljava/lang/Object;Lcom/mopub/volley/Cache$Entry;)Lcom/mopub/volley/Response;
    :try_end_19
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_19} :catch_1b
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_19} :catch_26

    move-result-object v3

    .line 55
    .end local v2    # "jsonString":Ljava/lang/String;
    :goto_1a
    return-object v3

    .line 52
    :catch_1b
    move-exception v0

    .line 53
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Lcom/mopub/volley/ParseError;

    invoke-direct {v3, v0}, Lcom/mopub/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v3}, Lcom/mopub/volley/Response;->error(Lcom/mopub/volley/VolleyError;)Lcom/mopub/volley/Response;

    move-result-object v3

    goto :goto_1a

    .line 54
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_26
    move-exception v1

    .line 55
    .local v1, "je":Lorg/json/JSONException;
    new-instance v3, Lcom/mopub/volley/ParseError;

    invoke-direct {v3, v1}, Lcom/mopub/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v3}, Lcom/mopub/volley/Response;->error(Lcom/mopub/volley/VolleyError;)Lcom/mopub/volley/Response;

    move-result-object v3

    goto :goto_1a
.end method
