.class public Lcom/mopub/volley/toolbox/JsonObjectRequest;
.super Lcom/mopub/volley/toolbox/JsonRequest;
.source "JsonObjectRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mopub/volley/toolbox/JsonRequest",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/mopub/volley/Response$Listener;Lcom/mopub/volley/Response$ErrorListener;)V
    .registers 12
    .param p1, "method"    # I
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "jsonRequest"    # Lorg/json/JSONObject;
    .param p5, "errorListener"    # Lcom/mopub/volley/Response$ErrorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Lcom/mopub/volley/Response$Listener",
            "<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/mopub/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 47
    .local p4, "listener":Lcom/mopub/volley/Response$Listener;, "Lcom/mopub/volley/Response$Listener<Lorg/json/JSONObject;>;"
    if-nez p3, :cond_c

    const/4 v3, 0x0

    :goto_3
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/mopub/volley/toolbox/JsonRequest;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/mopub/volley/Response$Listener;Lcom/mopub/volley/Response$ErrorListener;)V

    .line 49
    return-void

    .line 47
    :cond_c
    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;Lcom/mopub/volley/Response$Listener;Lcom/mopub/volley/Response$ErrorListener;)V
    .registers 11
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "jsonRequest"    # Lorg/json/JSONObject;
    .param p4, "errorListener"    # Lcom/mopub/volley/Response$ErrorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Lcom/mopub/volley/Response$Listener",
            "<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/mopub/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 59
    .local p3, "listener":Lcom/mopub/volley/Response$Listener;, "Lcom/mopub/volley/Response$Listener<Lorg/json/JSONObject;>;"
    if-nez p2, :cond_c

    const/4 v1, 0x0

    :goto_3
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/mopub/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/mopub/volley/Response$Listener;Lcom/mopub/volley/Response$ErrorListener;)V

    .line 61
    return-void

    .line 59
    :cond_c
    const/4 v1, 0x1

    goto :goto_3
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
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    :try_start_0
    new-instance v2, Ljava/lang/String;

    iget-object v3, p1, Lcom/mopub/volley/NetworkResponse;->data:[B

    iget-object v4, p1, Lcom/mopub/volley/NetworkResponse;->headers:Ljava/util/Map;

    invoke-static {v4}, Lcom/mopub/volley/toolbox/HttpHeaderParser;->parseCharset(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 68
    .local v2, "jsonString":Ljava/lang/String;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/mopub/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/mopub/volley/NetworkResponse;)Lcom/mopub/volley/Cache$Entry;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mopub/volley/Response;->success(Ljava/lang/Object;Lcom/mopub/volley/Cache$Entry;)Lcom/mopub/volley/Response;
    :try_end_19
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_19} :catch_1b
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_19} :catch_26

    move-result-object v3

    .line 73
    .end local v2    # "jsonString":Ljava/lang/String;
    :goto_1a
    return-object v3

    .line 70
    :catch_1b
    move-exception v0

    .line 71
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Lcom/mopub/volley/ParseError;

    invoke-direct {v3, v0}, Lcom/mopub/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v3}, Lcom/mopub/volley/Response;->error(Lcom/mopub/volley/VolleyError;)Lcom/mopub/volley/Response;

    move-result-object v3

    goto :goto_1a

    .line 72
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_26
    move-exception v1

    .line 73
    .local v1, "je":Lorg/json/JSONException;
    new-instance v3, Lcom/mopub/volley/ParseError;

    invoke-direct {v3, v1}, Lcom/mopub/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v3}, Lcom/mopub/volley/Response;->error(Lcom/mopub/volley/VolleyError;)Lcom/mopub/volley/Response;

    move-result-object v3

    goto :goto_1a
.end method
