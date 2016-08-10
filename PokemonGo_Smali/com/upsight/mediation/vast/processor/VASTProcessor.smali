.class public final Lcom/upsight/mediation/vast/processor/VASTProcessor;
.super Ljava/lang/Object;
.source "VASTProcessor.java"


# static fields
.field private static final IS_VALIDATION_ON:Z = false

.field private static final MAX_VAST_LEVELS:I = 0x5

.field private static final TAG:Ljava/lang/String; = "VASTProcessor"


# instance fields
.field private final mVastPlayer:Lcom/upsight/mediation/vast/VASTPlayer;

.field private mediaPicker:Lcom/upsight/mediation/vast/processor/VASTMediaPicker;

.field private mergedVastDocs:Ljava/lang/StringBuilder;

.field private vastModel:Lcom/upsight/mediation/vast/model/VASTModel;


# direct methods
.method public constructor <init>(Lcom/upsight/mediation/vast/processor/VASTMediaPicker;Lcom/upsight/mediation/vast/VASTPlayer;)V
    .registers 5
    .param p1, "mediaPicker"    # Lcom/upsight/mediation/vast/processor/VASTMediaPicker;
    .param p2, "vastPlayer"    # Lcom/upsight/mediation/vast/VASTPlayer;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/upsight/mediation/vast/processor/VASTProcessor;->mergedVastDocs:Ljava/lang/StringBuilder;

    .line 54
    iput-object p1, p0, Lcom/upsight/mediation/vast/processor/VASTProcessor;->mediaPicker:Lcom/upsight/mediation/vast/processor/VASTMediaPicker;

    .line 55
    iput-object p2, p0, Lcom/upsight/mediation/vast/processor/VASTProcessor;->mVastPlayer:Lcom/upsight/mediation/vast/VASTPlayer;

    .line 56
    return-void
.end method

.method private createDoc(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    .registers 5
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    .line 199
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    .line 200
    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 201
    .local v0, "doc":Lorg/w3c/dom/Document;
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Element;->normalize()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    .line 206
    .end local v0    # "doc":Lorg/w3c/dom/Document;
    :goto_13
    return-object v0

    .line 204
    :catch_14
    move-exception v1

    .line 206
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private merge(Lorg/w3c/dom/Document;)V
    .registers 6
    .param p1, "newDoc"    # Lorg/w3c/dom/Document;

    .prologue
    .line 211
    const-string v3, "VAST"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 213
    .local v2, "nl":Lorg/w3c/dom/NodeList;
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 215
    .local v1, "newDocElement":Lorg/w3c/dom/Node;
    invoke-static {v1}, Lcom/upsight/mediation/vast/util/XmlTools;->xmlDocumentToString(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, "doc":Ljava/lang/String;
    iget-object v3, p0, Lcom/upsight/mediation/vast/processor/VASTProcessor;->mergedVastDocs:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    return-void
.end method

.method private processUri(Ljava/io/InputStream;I)I
    .registers 18
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "depth"    # I

    .prologue
    .line 127
    const/4 v12, 0x5

    move/from16 v0, p2

    if-lt v0, v12, :cond_8

    .line 131
    const/16 v5, 0x12e

    .line 192
    :goto_7
    return v5

    .line 134
    :cond_8
    invoke-direct/range {p0 .. p1}, Lcom/upsight/mediation/vast/processor/VASTProcessor;->createDoc(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v3

    .line 135
    .local v3, "doc":Lorg/w3c/dom/Document;
    if-nez v3, :cond_11

    .line 136
    const/16 v5, 0x64

    goto :goto_7

    .line 146
    :cond_11
    invoke-interface {v3}, Lorg/w3c/dom/Document;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "VAST"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4a

    invoke-interface {v3}, Lorg/w3c/dom/Document;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v12

    const-string v13, "version"

    invoke-interface {v12, v13}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v11

    .line 147
    .local v11, "version":Ljava/lang/String;
    :goto_37
    const-string v12, "2.0"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_66

    const-string v12, "3.0"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_66

    .line 148
    const/16 v5, 0x66

    goto :goto_7

    .line 146
    .end local v11    # "version":Ljava/lang/String;
    :cond_4a
    invoke-interface {v3}, Lorg/w3c/dom/Document;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v12

    const/4 v13, 0x1

    invoke-interface {v12, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v12

    const-string v13, "version"

    invoke-interface {v12, v13}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_37

    .line 152
    .restart local v11    # "version":Ljava/lang/String;
    :cond_66
    sget-object v12, Lcom/upsight/mediation/vast/model/VAST_DOC_ELEMENTS;->vastAdTagURI:Lcom/upsight/mediation/vast/model/VAST_DOC_ELEMENTS;

    .line 153
    invoke-virtual {v12}, Lcom/upsight/mediation/vast/model/VAST_DOC_ELEMENTS;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v3, v12}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v10

    .line 154
    .local v10, "uriToNextDoc":Lorg/w3c/dom/NodeList;
    if-eqz v10, :cond_78

    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v12

    if-nez v12, :cond_7d

    .line 156
    :cond_78
    invoke-direct {p0, v3}, Lcom/upsight/mediation/vast/processor/VASTProcessor;->merge(Lorg/w3c/dom/Document;)V

    .line 157
    const/4 v5, 0x0

    goto :goto_7

    .line 161
    :cond_7d
    const-string v12, "VASTProcessor"

    const-string v13, "Doc is a wrapper. "

    invoke-static {v12, v13}, Lcom/upsight/mediation/log/FuseLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const/4 v12, 0x0

    invoke-interface {v10, v12}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    .line 163
    .local v9, "node":Lorg/w3c/dom/Node;
    invoke-static {v9}, Lcom/upsight/mediation/vast/util/XmlTools;->getElementValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    .line 164
    .local v7, "nextUri":Ljava/lang/String;
    const-string v12, "VASTProcessor"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Wrapper URL: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/upsight/mediation/log/FuseLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const/4 v6, 0x0

    .line 167
    .local v6, "nextInputStream":Ljava/io/InputStream;
    :try_start_a6
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 168
    .local v8, "nextUrl":Ljava/net/URL;
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 169
    .local v2, "connection":Ljava/net/HttpURLConnection;
    const/16 v12, 0x1388

    invoke-virtual {v2, v12}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 170
    const/16 v12, 0x1388

    invoke-virtual {v2, v12}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 171
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 173
    .local v1, "code":I
    const/16 v12, 0xc8

    if-eq v1, v12, :cond_c7

    .line 174
    const/16 v5, 0x12f

    goto/16 :goto_7

    .line 176
    :cond_c7
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_ca
    .catch Ljava/net/MalformedURLException; {:try_start_a6 .. :try_end_ca} :catch_d9
    .catch Ljava/net/SocketTimeoutException; {:try_start_a6 .. :try_end_ca} :catch_de
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_ca} :catch_e3

    move-result-object v6

    .line 187
    add-int/lit8 v12, p2, 0x1

    invoke-direct {p0, v6, v12}, Lcom/upsight/mediation/vast/processor/VASTProcessor;->processUri(Ljava/io/InputStream;I)I

    move-result v5

    .line 189
    .local v5, "error":I
    :try_start_d1
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_d4
    .catch Ljava/io/IOException; {:try_start_d1 .. :try_end_d4} :catch_d6

    goto/16 :goto_7

    .line 190
    :catch_d6
    move-exception v12

    goto/16 :goto_7

    .line 177
    .end local v1    # "code":I
    .end local v2    # "connection":Ljava/net/HttpURLConnection;
    .end local v5    # "error":I
    .end local v8    # "nextUrl":Ljava/net/URL;
    :catch_d9
    move-exception v4

    .line 179
    .local v4, "e":Ljava/net/MalformedURLException;
    const/16 v5, 0x12f

    goto/16 :goto_7

    .line 180
    .end local v4    # "e":Ljava/net/MalformedURLException;
    :catch_de
    move-exception v4

    .line 182
    .local v4, "e":Ljava/net/SocketTimeoutException;
    const/16 v5, 0x12d

    goto/16 :goto_7

    .line 183
    .end local v4    # "e":Ljava/net/SocketTimeoutException;
    :catch_e3
    move-exception v4

    .line 184
    .local v4, "e":Ljava/io/IOException;
    const-string v12, "VASTProcessor"

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v4}, Lcom/upsight/mediation/log/FuseLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 185
    const/16 v5, 0x12c

    goto/16 :goto_7
.end method

.method private wrapMergedVastDocWithVasts()Lorg/w3c/dom/Document;
    .registers 4

    .prologue
    .line 118
    iget-object v2, p0, Lcom/upsight/mediation/vast/processor/VASTProcessor;->mergedVastDocs:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, "merged":Ljava/lang/String;
    invoke-static {v1}, Lcom/upsight/mediation/vast/util/XmlTools;->stringToDocument(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 122
    .local v0, "doc":Lorg/w3c/dom/Document;
    return-object v0
.end method


# virtual methods
.method public getModel()Lcom/upsight/mediation/vast/model/VASTModel;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/upsight/mediation/vast/processor/VASTProcessor;->vastModel:Lcom/upsight/mediation/vast/model/VASTModel;

    return-object v0
.end method

.method public process(Landroid/content/Context;Ljava/lang/String;ZI)I
    .registers 14
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "xmlData"    # Ljava/lang/String;
    .param p3, "shouldValidateSchema"    # Z
    .param p4, "downloadTimeout"    # I

    .prologue
    const/16 v5, 0x64

    const/4 v6, 0x0

    .line 63
    const-string v7, "VASTProcessor"

    const-string v8, "process"

    invoke-static {v7, v8}, Lcom/upsight/mediation/log/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/upsight/mediation/vast/processor/VASTProcessor;->vastModel:Lcom/upsight/mediation/vast/model/VASTModel;

    .line 65
    const/4 v2, 0x0

    .line 68
    .local v2, "is":Ljava/io/InputStream;
    :try_start_e
    new-instance v3, Ljava/io/ByteArrayInputStream;

    .line 69
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v7

    .line 68
    invoke-virtual {p2, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_e .. :try_end_1f} :catch_2a

    .line 75
    .end local v2    # "is":Ljava/io/InputStream;
    .local v3, "is":Ljava/io/InputStream;
    invoke-direct {p0, v3, v6}, Lcom/upsight/mediation/vast/processor/VASTProcessor;->processUri(Ljava/io/InputStream;I)I

    move-result v1

    .line 77
    .local v1, "error":I
    :try_start_23
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_91

    .line 80
    :goto_26
    if-eqz v1, :cond_36

    move-object v2, v3

    .line 110
    .end local v1    # "error":I
    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    :goto_29
    return v1

    .line 70
    :catch_2a
    move-exception v0

    .line 71
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v6, "VASTProcessor"

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Lcom/upsight/mediation/log/FuseLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v1, v5

    .line 72
    goto :goto_29

    .line 84
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "error":I
    .restart local v3    # "is":Ljava/io/InputStream;
    :cond_36
    invoke-direct {p0}, Lcom/upsight/mediation/vast/processor/VASTProcessor;->wrapMergedVastDocWithVasts()Lorg/w3c/dom/Document;

    move-result-object v4

    .line 85
    .local v4, "mainDoc":Lorg/w3c/dom/Document;
    new-instance v7, Lcom/upsight/mediation/vast/model/VASTModel;

    invoke-direct {v7, v4}, Lcom/upsight/mediation/vast/model/VASTModel;-><init>(Lorg/w3c/dom/Document;)V

    iput-object v7, p0, Lcom/upsight/mediation/vast/processor/VASTProcessor;->vastModel:Lcom/upsight/mediation/vast/model/VASTModel;

    .line 87
    if-nez v4, :cond_46

    move-object v2, v3

    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    move v1, v5

    .line 88
    goto :goto_29

    .line 92
    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    :cond_46
    if-eqz p3, :cond_54

    .line 93
    iget-object v5, p0, Lcom/upsight/mediation/vast/processor/VASTProcessor;->vastModel:Lcom/upsight/mediation/vast/model/VASTModel;

    invoke-static {v5}, Lcom/upsight/mediation/vast/processor/VASTModelPostValidator;->validate(Lcom/upsight/mediation/vast/model/VASTModel;)Z

    move-result v5

    if-nez v5, :cond_54

    .line 94
    const/16 v1, 0x65

    move-object v2, v3

    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    goto :goto_29

    .line 99
    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    :cond_54
    iget-object v5, p0, Lcom/upsight/mediation/vast/processor/VASTProcessor;->vastModel:Lcom/upsight/mediation/vast/model/VASTModel;

    iget-object v7, p0, Lcom/upsight/mediation/vast/processor/VASTProcessor;->mediaPicker:Lcom/upsight/mediation/vast/processor/VASTMediaPicker;

    invoke-static {v5, v7}, Lcom/upsight/mediation/vast/processor/VASTModelPostValidator;->pickMediaFile(Lcom/upsight/mediation/vast/model/VASTModel;Lcom/upsight/mediation/vast/processor/VASTMediaPicker;)Z

    move-result v5

    if-nez v5, :cond_62

    .line 100
    const/16 v1, 0x193

    move-object v2, v3

    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    goto :goto_29

    .line 104
    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    :cond_62
    iget-object v5, p0, Lcom/upsight/mediation/vast/processor/VASTProcessor;->vastModel:Lcom/upsight/mediation/vast/model/VASTModel;

    invoke-virtual {v5}, Lcom/upsight/mediation/vast/model/VASTModel;->getPickedMediaFileDeliveryType()Ljava/lang/String;

    move-result-object v5

    const-string v7, "progressive"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7a

    .line 105
    iget-object v5, p0, Lcom/upsight/mediation/vast/processor/VASTProcessor;->vastModel:Lcom/upsight/mediation/vast/model/VASTModel;

    iget-object v6, p0, Lcom/upsight/mediation/vast/processor/VASTProcessor;->mVastPlayer:Lcom/upsight/mediation/vast/VASTPlayer;

    invoke-virtual {v5, p1, v6, p4}, Lcom/upsight/mediation/vast/model/VASTModel;->cache(Landroid/content/Context;Lcom/upsight/mediation/vast/VASTPlayer;I)I

    move-result v1

    .end local v1    # "error":I
    move-object v2, v3

    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    goto :goto_29

    .line 106
    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "error":I
    .restart local v3    # "is":Ljava/io/InputStream;
    :cond_7a
    iget-object v5, p0, Lcom/upsight/mediation/vast/processor/VASTProcessor;->vastModel:Lcom/upsight/mediation/vast/model/VASTModel;

    invoke-virtual {v5}, Lcom/upsight/mediation/vast/model/VASTModel;->getPickedMediaFileDeliveryType()Ljava/lang/String;

    move-result-object v5

    const-string v7, "streaming"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8e

    .line 107
    iget-object v5, p0, Lcom/upsight/mediation/vast/processor/VASTProcessor;->mVastPlayer:Lcom/upsight/mediation/vast/VASTPlayer;

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lcom/upsight/mediation/vast/VASTPlayer;->setLoaded(Z)V

    :cond_8e
    move-object v2, v3

    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    move v1, v6

    .line 110
    goto :goto_29

    .line 78
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v4    # "mainDoc":Lorg/w3c/dom/Document;
    .restart local v3    # "is":Ljava/io/InputStream;
    :catch_91
    move-exception v7

    goto :goto_26
.end method
