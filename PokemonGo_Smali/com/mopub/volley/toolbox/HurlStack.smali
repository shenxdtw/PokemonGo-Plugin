.class public Lcom/mopub/volley/toolbox/HurlStack;
.super Ljava/lang/Object;
.source "HurlStack.java"

# interfaces
.implements Lcom/mopub/volley/toolbox/HttpStack;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/volley/toolbox/HurlStack$UrlRewriter;
    }
.end annotation


# static fields
.field private static final HEADER_CONTENT_TYPE:Ljava/lang/String; = "Content-Type"


# instance fields
.field private final mSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private final mUrlRewriter:Lcom/mopub/volley/toolbox/HurlStack$UrlRewriter;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mopub/volley/toolbox/HurlStack;-><init>(Lcom/mopub/volley/toolbox/HurlStack$UrlRewriter;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Lcom/mopub/volley/toolbox/HurlStack$UrlRewriter;)V
    .registers 3
    .param p1, "urlRewriter"    # Lcom/mopub/volley/toolbox/HurlStack$UrlRewriter;

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mopub/volley/toolbox/HurlStack;-><init>(Lcom/mopub/volley/toolbox/HurlStack$UrlRewriter;Ljavax/net/ssl/SSLSocketFactory;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Lcom/mopub/volley/toolbox/HurlStack$UrlRewriter;Ljavax/net/ssl/SSLSocketFactory;)V
    .registers 3
    .param p1, "urlRewriter"    # Lcom/mopub/volley/toolbox/HurlStack$UrlRewriter;
    .param p2, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/mopub/volley/toolbox/HurlStack;->mUrlRewriter:Lcom/mopub/volley/toolbox/HurlStack$UrlRewriter;

    .line 84
    iput-object p2, p0, Lcom/mopub/volley/toolbox/HurlStack;->mSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 85
    return-void
.end method

.method private static addBodyIfExists(Ljava/net/HttpURLConnection;Lcom/mopub/volley/Request;)V
    .registers 6
    .param p0, "connection"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Lcom/mopub/volley/Request",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/mopub/volley/AuthFailureError;
        }
    .end annotation

    .prologue
    .line 236
    .local p1, "request":Lcom/mopub/volley/Request;, "Lcom/mopub/volley/Request<*>;"
    invoke-virtual {p1}, Lcom/mopub/volley/Request;->getBody()[B

    move-result-object v0

    .line 237
    .local v0, "body":[B
    if-eqz v0, :cond_22

    .line 238
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 239
    const-string v2, "Content-Type"

    invoke-virtual {p1}, Lcom/mopub/volley/Request;->getBodyContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 241
    .local v1, "out":Ljava/io/DataOutputStream;
    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 242
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 244
    .end local v1    # "out":Ljava/io/DataOutputStream;
    :cond_22
    return-void
.end method

.method private static entityFromConnection(Ljava/net/HttpURLConnection;)Lorg/apache/http/HttpEntity;
    .registers 7
    .param p0, "connection"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 134
    new-instance v0, Lorg/apache/http/entity/BasicHttpEntity;

    invoke-direct {v0}, Lorg/apache/http/entity/BasicHttpEntity;-><init>()V

    .line 137
    .local v0, "entity":Lorg/apache/http/entity/BasicHttpEntity;
    :try_start_5
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_23

    move-result-object v1

    .line 141
    .local v1, "inputStream":Ljava/io/InputStream;
    :goto_9
    invoke-virtual {v0, v1}, Lorg/apache/http/entity/BasicHttpEntity;->setContent(Ljava/io/InputStream;)V

    .line 142
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Lorg/apache/http/entity/BasicHttpEntity;->setContentLength(J)V

    .line 143
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/http/entity/BasicHttpEntity;->setContentEncoding(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/http/entity/BasicHttpEntity;->setContentType(Ljava/lang/String;)V

    .line 145
    return-object v0

    .line 138
    .end local v1    # "inputStream":Ljava/io/InputStream;
    :catch_23
    move-exception v2

    .line 139
    .local v2, "ioe":Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    .restart local v1    # "inputStream":Ljava/io/InputStream;
    goto :goto_9
.end method

.method private openConnection(Ljava/net/URL;Lcom/mopub/volley/Request;)Ljava/net/HttpURLConnection;
    .registers 7
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Lcom/mopub/volley/Request",
            "<*>;)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    .local p2, "request":Lcom/mopub/volley/Request;, "Lcom/mopub/volley/Request<*>;"
    invoke-virtual {p0, p1}, Lcom/mopub/volley/toolbox/HurlStack;->createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 164
    .local v0, "connection":Ljava/net/HttpURLConnection;
    invoke-virtual {p2}, Lcom/mopub/volley/Request;->getTimeoutMs()I

    move-result v1

    .line 165
    .local v1, "timeoutMs":I
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 166
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 167
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 168
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 171
    const-string v2, "https"

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    iget-object v2, p0, Lcom/mopub/volley/toolbox/HurlStack;->mSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v2, :cond_2e

    move-object v2, v0

    .line 172
    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;

    iget-object v3, p0, Lcom/mopub/volley/toolbox/HurlStack;->mSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 175
    :cond_2e
    return-object v0
.end method

.method static setConnectionParametersForRequest(Ljava/net/HttpURLConnection;Lcom/mopub/volley/Request;)V
    .registers 6
    .param p0, "connection"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Lcom/mopub/volley/Request",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/mopub/volley/AuthFailureError;
        }
    .end annotation

    .prologue
    .line 181
    .local p1, "request":Lcom/mopub/volley/Request;, "Lcom/mopub/volley/Request<*>;"
    invoke-virtual {p1}, Lcom/mopub/volley/Request;->getMethod()I

    move-result v2

    packed-switch v2, :pswitch_data_70

    .line 230
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Unknown method type."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 186
    :pswitch_f
    invoke-virtual {p1}, Lcom/mopub/volley/Request;->getPostBody()[B

    move-result-object v1

    .line 187
    .local v1, "postBody":[B
    if-eqz v1, :cond_36

    .line 191
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 192
    const-string v2, "POST"

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 193
    const-string v2, "Content-Type"

    invoke-virtual {p1}, Lcom/mopub/volley/Request;->getPostBodyContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 196
    .local v0, "out":Ljava/io/DataOutputStream;
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 197
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 232
    .end local v0    # "out":Ljava/io/DataOutputStream;
    .end local v1    # "postBody":[B
    :cond_36
    :goto_36
    return-void

    .line 203
    :pswitch_37
    const-string v2, "GET"

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_36

    .line 206
    :pswitch_3d
    const-string v2, "DELETE"

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_36

    .line 209
    :pswitch_43
    const-string v2, "POST"

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 210
    invoke-static {p0, p1}, Lcom/mopub/volley/toolbox/HurlStack;->addBodyIfExists(Ljava/net/HttpURLConnection;Lcom/mopub/volley/Request;)V

    goto :goto_36

    .line 213
    :pswitch_4c
    const-string v2, "PUT"

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 214
    invoke-static {p0, p1}, Lcom/mopub/volley/toolbox/HurlStack;->addBodyIfExists(Ljava/net/HttpURLConnection;Lcom/mopub/volley/Request;)V

    goto :goto_36

    .line 217
    :pswitch_55
    const-string v2, "HEAD"

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_36

    .line 220
    :pswitch_5b
    const-string v2, "OPTIONS"

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_36

    .line 223
    :pswitch_61
    const-string v2, "TRACE"

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_36

    .line 226
    :pswitch_67
    const-string v2, "PATCH"

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 227
    invoke-static {p0, p1}, Lcom/mopub/volley/toolbox/HurlStack;->addBodyIfExists(Ljava/net/HttpURLConnection;Lcom/mopub/volley/Request;)V

    goto :goto_36

    .line 181
    :pswitch_data_70
    .packed-switch -0x1
        :pswitch_f
        :pswitch_37
        :pswitch_43
        :pswitch_4c
        :pswitch_3d
        :pswitch_55
        :pswitch_5b
        :pswitch_61
        :pswitch_67
    .end packed-switch
.end method


# virtual methods
.method protected createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .registers 3
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method public performRequest(Lcom/mopub/volley/Request;Ljava/util/Map;)Lorg/apache/http/HttpResponse;
    .registers 21
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

    .prologue
    .line 90
    .local p1, "request":Lcom/mopub/volley/Request;, "Lcom/mopub/volley/Request<*>;"
    .local p2, "additionalHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/mopub/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v14

    .line 91
    .local v14, "url":Ljava/lang/String;
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 92
    .local v7, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/mopub/volley/Request;->getHeaders()Ljava/util/Map;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 93
    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 94
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mopub/volley/toolbox/HurlStack;->mUrlRewriter:Lcom/mopub/volley/toolbox/HurlStack$UrlRewriter;

    if-eqz v15, :cond_41

    .line 95
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mopub/volley/toolbox/HurlStack;->mUrlRewriter:Lcom/mopub/volley/toolbox/HurlStack$UrlRewriter;

    invoke-interface {v15, v14}, Lcom/mopub/volley/toolbox/HurlStack$UrlRewriter;->rewriteUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 96
    .local v13, "rewritten":Ljava/lang/String;
    if-nez v13, :cond_40

    .line 97
    new-instance v15, Ljava/io/IOException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "URL blocked by rewriter: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 99
    :cond_40
    move-object v14, v13

    .line 101
    .end local v13    # "rewritten":Ljava/lang/String;
    :cond_41
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, v14}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 102
    .local v8, "parsedUrl":Ljava/net/URL;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v8, v1}, Lcom/mopub/volley/toolbox/HurlStack;->openConnection(Ljava/net/URL;Lcom/mopub/volley/Request;)Ljava/net/HttpURLConnection;

    move-result-object v2

    .line 103
    .local v2, "connection":Ljava/net/HttpURLConnection;
    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_56
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 104
    .local v5, "headerName":Ljava/lang/String;
    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v2, v5, v15}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_56

    .line 106
    .end local v5    # "headerName":Ljava/lang/String;
    :cond_6c
    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lcom/mopub/volley/toolbox/HurlStack;->setConnectionParametersForRequest(Ljava/net/HttpURLConnection;Lcom/mopub/volley/Request;)V

    .line 108
    new-instance v9, Lorg/apache/http/ProtocolVersion;

    const-string v15, "HTTP"

    const/16 v16, 0x1

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v9, v15, v0, v1}, Lorg/apache/http/ProtocolVersion;-><init>(Ljava/lang/String;II)V

    .line 109
    .local v9, "protocolVersion":Lorg/apache/http/ProtocolVersion;
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v11

    .line 110
    .local v11, "responseCode":I
    const/4 v15, -0x1

    if-ne v11, v15, :cond_8f

    .line 113
    new-instance v15, Ljava/io/IOException;

    const-string v16, "Could not retrieve response code from HttpUrlConnection."

    invoke-direct/range {v15 .. v16}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 115
    :cond_8f
    new-instance v12, Lorg/apache/http/message/BasicStatusLine;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v15

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v12, v9, v15, v0}, Lorg/apache/http/message/BasicStatusLine;-><init>(Lorg/apache/http/ProtocolVersion;ILjava/lang/String;)V

    .line 117
    .local v12, "responseStatus":Lorg/apache/http/StatusLine;
    new-instance v10, Lorg/apache/http/message/BasicHttpResponse;

    invoke-direct {v10, v12}, Lorg/apache/http/message/BasicHttpResponse;-><init>(Lorg/apache/http/StatusLine;)V

    .line 118
    .local v10, "response":Lorg/apache/http/message/BasicHttpResponse;
    invoke-static {v2}, Lcom/mopub/volley/toolbox/HurlStack;->entityFromConnection(Ljava/net/HttpURLConnection;)Lorg/apache/http/HttpEntity;

    move-result-object v15

    invoke-virtual {v10, v15}, Lorg/apache/http/message/BasicHttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 119
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_b6
    :goto_b6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_e7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 120
    .local v4, "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    if-eqz v15, :cond_b6

    .line 121
    new-instance v3, Lorg/apache/http/message/BasicHeader;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/List;

    const/16 v17, 0x0

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v3, v15, v0}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .local v3, "h":Lorg/apache/http/Header;
    invoke-virtual {v10, v3}, Lorg/apache/http/message/BasicHttpResponse;->addHeader(Lorg/apache/http/Header;)V

    goto :goto_b6

    .line 125
    .end local v3    # "h":Lorg/apache/http/Header;
    .end local v4    # "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_e7
    return-object v10
.end method
