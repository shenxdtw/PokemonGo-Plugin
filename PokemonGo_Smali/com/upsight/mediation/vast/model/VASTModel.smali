.class public Lcom/upsight/mediation/vast/model/VASTModel;
.super Ljava/lang/Object;
.source "VASTModel.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/mediation/vast/model/VASTModel$DownloadTask;
    }
.end annotation


# static fields
.field public static final DOWNLOAD_TIMEOUT_LIMIT:J = 0x7530L

.field private static TAG:Ljava/lang/String; = null

.field private static final adSystemXPATH:Ljava/lang/String; = "/VAST/Ad/InLine/AdSystem"

.field private static final adTitleXPATH:Ljava/lang/String; = "/VAST/Ad/InLine/AdTitle"

.field private static final combinedTrackingXPATH:Ljava/lang/String; = "/VAST/Ad/InLine/Creatives/Creative/Linear/TrackingEvents/Tracking|/VAST/Ad/InLine/Creatives/Creative/NonLinearAds/TrackingEvents/Tracking|/VAST/Ad/Wrapper/Creatives/Creative/Linear/TrackingEvents/Tracking|/VAST/Ad/Wrapper/Creatives/Creative/NonLinearAds/TrackingEvents/Tracking"

.field private static final durationXPATH:Ljava/lang/String; = "/VAST/Ad/InLine/Creatives/Creative/Linear/Duration"

.field private static final errorUrlXPATH:Ljava/lang/String; = "//Error"

.field private static final impressionXPATH:Ljava/lang/String; = "/VAST/Ad/InLine/Impression"

.field private static final inlineLinearTrackingXPATH:Ljava/lang/String; = "/VAST/Ad/InLine/Creatives/Creative/Linear/TrackingEvents/Tracking"

.field private static final inlineNonLinearTrackingXPATH:Ljava/lang/String; = "/VAST/Ad/InLine/Creatives/Creative/NonLinearAds/TrackingEvents/Tracking"

.field private static final mediaFileXPATH:Ljava/lang/String; = "/VAST/Ad/InLine/Creatives/Creative/Linear/MediaFiles/MediaFile"

.field private static final serialVersionUID:J = 0x3beded0d26129615L

.field private static final skipOffsetXPATH:Ljava/lang/String; = "/VAST/Ad/InLine/Creatives/Creative/Linear[@skipoffset]"

.field private static final vastXPATH:Ljava/lang/String; = "//VAST"

.field private static final videoClicksXPATH:Ljava/lang/String; = "//VideoClicks"

.field private static final wrapperLinearTrackingXPATH:Ljava/lang/String; = "/VAST/Ad/Wrapper/Creatives/Creative/Linear/TrackingEvents/Tracking"

.field private static final wrapperNonLinearTrackingXPATH:Ljava/lang/String; = "/VAST/Ad/Wrapper/Creatives/Creative/NonLinearAds/TrackingEvents/Tracking"


# instance fields
.field private mediaFileDeliveryType:Ljava/lang/String;

.field private mediaFileLocation:Ljava/lang/String;

.field private transient vastsDocument:Lorg/w3c/dom/Document;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 46
    const-string v0, "VASTModel"

    sput-object v0, Lcom/upsight/mediation/vast/model/VASTModel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Document;)V
    .registers 3
    .param p1, "vasts"    # Lorg/w3c/dom/Document;

    .prologue
    const/4 v0, 0x0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object v0, p0, Lcom/upsight/mediation/vast/model/VASTModel;->mediaFileLocation:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lcom/upsight/mediation/vast/model/VASTModel;->mediaFileDeliveryType:Ljava/lang/String;

    .line 96
    iput-object p1, p0, Lcom/upsight/mediation/vast/model/VASTModel;->vastsDocument:Lorg/w3c/dom/Document;

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/upsight/mediation/vast/model/VASTModel;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/mediation/vast/model/VASTModel;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/upsight/mediation/vast/model/VASTModel;->mediaFileLocation:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/upsight/mediation/vast/model/VASTModel;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/mediation/vast/model/VASTModel;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/upsight/mediation/vast/model/VASTModel;->mediaFileLocation:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .prologue
    .line 44
    sget-object v0, Lcom/upsight/mediation/vast/model/VASTModel;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getListFromXPath(Ljava/lang/String;)Ljava/util/List;
    .registers 11
    .param p1, "xPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 387
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 389
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v7

    invoke-virtual {v7}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v6

    .line 391
    .local v6, "xpath":Ljavax/xml/xpath/XPath;
    :try_start_d
    iget-object v7, p0, Lcom/upsight/mediation/vast/model/VASTModel;->vastsDocument:Lorg/w3c/dom/Document;

    sget-object v8, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-interface {v6, p1, v7, v8}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/NodeList;

    .line 394
    .local v4, "nodes":Lorg/w3c/dom/NodeList;
    if-eqz v4, :cond_3a

    .line 395
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1a
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v1, v7, :cond_3a

    .line 396
    invoke-interface {v4, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 397
    .local v3, "node":Lorg/w3c/dom/Node;
    invoke-static {v3}, Lcom/upsight/mediation/vast/util/XmlTools;->getElementValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    .line 398
    .local v5, "value":Ljava/lang/String;
    if-nez v5, :cond_32

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_35

    .line 399
    :cond_32
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_35} :catch_38

    .line 395
    :cond_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 403
    .end local v1    # "i":I
    .end local v3    # "node":Lorg/w3c/dom/Node;
    .end local v4    # "nodes":Lorg/w3c/dom/NodeList;
    .end local v5    # "value":Ljava/lang/String;
    :catch_38
    move-exception v0

    .line 405
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 408
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3a
    return-object v2
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "ois"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 423
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 425
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 428
    .local v0, "vastString":Ljava/lang/String;
    invoke-static {v0}, Lcom/upsight/mediation/vast/util/XmlTools;->stringToDocument(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v1

    iput-object v1, p0, Lcom/upsight/mediation/vast/model/VASTModel;->vastsDocument:Lorg/w3c/dom/Document;

    .line 430
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 4
    .param p1, "oos"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 413
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 415
    iget-object v1, p0, Lcom/upsight/mediation/vast/model/VASTModel;->vastsDocument:Lorg/w3c/dom/Document;

    invoke-static {v1}, Lcom/upsight/mediation/vast/util/XmlTools;->xmlDocumentToString(Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object v0

    .line 417
    .local v0, "data":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 419
    return-void
.end method


# virtual methods
.method public cache(Landroid/content/Context;Lcom/upsight/mediation/vast/VASTPlayer;I)I
    .registers 6
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "vastPlayer"    # Lcom/upsight/mediation/vast/VASTPlayer;
    .param p3, "downloadTimeout"    # I

    .prologue
    .line 272
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/upsight/mediation/vast/model/VASTModel$1;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/upsight/mediation/vast/model/VASTModel$1;-><init>(Lcom/upsight/mediation/vast/model/VASTModel;Lcom/upsight/mediation/vast/VASTPlayer;Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 280
    const/4 v0, 0x0

    return v0
.end method

.method public evaluateAdSystem()Z
    .registers 6

    .prologue
    .line 100
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v1

    .line 102
    .local v1, "xpath":Ljavax/xml/xpath/XPath;
    :try_start_8
    const-string v2, "/VAST/Ad/InLine/AdSystem"

    iget-object v3, p0, Lcom/upsight/mediation/vast/model/VASTModel;->vastsDocument:Lorg/w3c/dom/Document;

    sget-object v4, Ljavax/xml/xpath/XPathConstants;->NODE:Ljavax/xml/namespace/QName;

    invoke-interface {v1, v2, v3, v4}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Node;
    :try_end_14
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_8 .. :try_end_14} :catch_16

    .line 106
    const/4 v2, 0x1

    :goto_15
    return v2

    .line 103
    :catch_16
    move-exception v0

    .line 104
    .local v0, "e":Ljavax/xml/xpath/XPathExpressionException;
    const/4 v2, 0x0

    goto :goto_15
.end method

.method public evaluateAdTitle()Z
    .registers 6

    .prologue
    .line 110
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v1

    .line 112
    .local v1, "xpath":Ljavax/xml/xpath/XPath;
    :try_start_8
    const-string v2, "/VAST/Ad/InLine/AdTitle"

    iget-object v3, p0, Lcom/upsight/mediation/vast/model/VASTModel;->vastsDocument:Lorg/w3c/dom/Document;

    sget-object v4, Ljavax/xml/xpath/XPathConstants;->NODE:Ljavax/xml/namespace/QName;

    invoke-interface {v1, v2, v3, v4}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Node;
    :try_end_14
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_8 .. :try_end_14} :catch_16

    .line 116
    const/4 v2, 0x1

    :goto_15
    return v2

    .line 113
    :catch_16
    move-exception v0

    .line 114
    .local v0, "e":Ljavax/xml/xpath/XPathExpressionException;
    const/4 v2, 0x0

    goto :goto_15
.end method

.method public getDuration()Ljava/lang/String;
    .registers 10

    .prologue
    .line 287
    sget-object v6, Lcom/upsight/mediation/vast/model/VASTModel;->TAG:Ljava/lang/String;

    const-string v7, "getDuration"

    invoke-static {v6, v7}, Lcom/upsight/mediation/log/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const/4 v0, 0x0

    .line 290
    .local v0, "duration":Ljava/lang/String;
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v6

    invoke-virtual {v6}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v5

    .line 292
    .local v5, "xpath":Ljavax/xml/xpath/XPath;
    :try_start_10
    const-string v6, "/VAST/Ad/InLine/Creatives/Creative/Linear/Duration"

    iget-object v7, p0, Lcom/upsight/mediation/vast/model/VASTModel;->vastsDocument:Lorg/w3c/dom/Document;

    sget-object v8, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-interface {v5, v6, v7, v8}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/NodeList;

    .line 295
    .local v4, "nodes":Lorg/w3c/dom/NodeList;
    if-eqz v4, :cond_33

    .line 296
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1f
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v2, v6, :cond_33

    .line 297
    invoke-interface {v4, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 298
    .local v3, "node":Lorg/w3c/dom/Node;
    invoke-static {v3}, Lcom/upsight/mediation/vast/util/XmlTools;->getElementValue(Lorg/w3c/dom/Node;)Ljava/lang/String;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_2c} :catch_30

    move-result-object v0

    .line 296
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 301
    .end local v2    # "i":I
    .end local v3    # "node":Lorg/w3c/dom/Node;
    .end local v4    # "nodes":Lorg/w3c/dom/NodeList;
    :catch_30
    move-exception v1

    .line 303
    .local v1, "e":Ljava/lang/Exception;
    const/4 v6, 0x0

    .line 305
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_32
    return-object v6

    .restart local v4    # "nodes":Lorg/w3c/dom/NodeList;
    :cond_33
    move-object v6, v0

    goto :goto_32
.end method

.method public getErrorUrl()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 380
    const-string v1, "//Error"

    invoke-direct {p0, v1}, Lcom/upsight/mediation/vast/model/VASTModel;->getListFromXPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 381
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-object v0
.end method

.method public getImpressions()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 374
    const-string v1, "/VAST/Ad/InLine/Impression"

    invoke-direct {p0, v1}, Lcom/upsight/mediation/vast/model/VASTModel;->getListFromXPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 375
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-object v0
.end method

.method public getMediaFiles()Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/upsight/mediation/vast/model/VASTMediaFile;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 208
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 210
    .local v5, "mediaFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/upsight/mediation/vast/model/VASTMediaFile;>;"
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v11

    invoke-virtual {v11}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v9

    .line 213
    .local v9, "xpath":Ljavax/xml/xpath/XPath;
    :try_start_e
    const-string v11, "/VAST/Ad/InLine/Creatives/Creative/Linear/MediaFiles/MediaFile"

    iget-object v12, p0, Lcom/upsight/mediation/vast/model/VASTModel;->vastsDocument:Lorg/w3c/dom/Document;

    sget-object v13, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-interface {v9, v11, v12, v13}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/w3c/dom/NodeList;

    .line 219
    .local v8, "nodes":Lorg/w3c/dom/NodeList;
    if-eqz v8, :cond_bb

    .line 220
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1d
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    if-ge v3, v11, :cond_bb

    .line 221
    new-instance v4, Lcom/upsight/mediation/vast/model/VASTMediaFile;

    invoke-direct {v4}, Lcom/upsight/mediation/vast/model/VASTMediaFile;-><init>()V

    .line 222
    .local v4, "mediaFile":Lcom/upsight/mediation/vast/model/VASTMediaFile;
    invoke-interface {v8, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    .line 223
    .local v7, "node":Lorg/w3c/dom/Node;
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    .line 225
    .local v1, "attributes":Lorg/w3c/dom/NamedNodeMap;
    const-string v11, "apiFramework"

    invoke-interface {v1, v11}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 226
    .local v0, "attributeNode":Lorg/w3c/dom/Node;
    if-nez v0, :cond_aa

    move-object v11, v10

    :goto_39
    invoke-virtual {v4, v11}, Lcom/upsight/mediation/vast/model/VASTMediaFile;->setApiFramework(Ljava/lang/String;)V

    .line 228
    const-string v11, "bitrate"

    invoke-interface {v1, v11}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 229
    if-nez v0, :cond_af

    move-object v11, v10

    :goto_45
    invoke-virtual {v4, v11}, Lcom/upsight/mediation/vast/model/VASTMediaFile;->setBitrate(Ljava/math/BigInteger;)V

    .line 231
    const-string v11, "delivery"

    invoke-interface {v1, v11}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 232
    if-nez v0, :cond_bc

    move-object v11, v10

    :goto_51
    invoke-virtual {v4, v11}, Lcom/upsight/mediation/vast/model/VASTMediaFile;->setDelivery(Ljava/lang/String;)V

    .line 234
    const-string v11, "height"

    invoke-interface {v1, v11}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 235
    if-nez v0, :cond_c1

    move-object v11, v10

    :goto_5d
    invoke-virtual {v4, v11}, Lcom/upsight/mediation/vast/model/VASTMediaFile;->setHeight(Ljava/math/BigInteger;)V

    .line 237
    const-string v11, "id"

    invoke-interface {v1, v11}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 238
    if-nez v0, :cond_cb

    move-object v11, v10

    :goto_69
    invoke-virtual {v4, v11}, Lcom/upsight/mediation/vast/model/VASTMediaFile;->setId(Ljava/lang/String;)V

    .line 240
    const-string v11, "maintainAspectRatio"

    invoke-interface {v1, v11}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 241
    if-nez v0, :cond_d0

    move-object v11, v10

    :goto_75
    invoke-virtual {v4, v11}, Lcom/upsight/mediation/vast/model/VASTMediaFile;->setMaintainAspectRatio(Ljava/lang/Boolean;)V

    .line 243
    const-string v11, "scalable"

    invoke-interface {v1, v11}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 244
    if-nez v0, :cond_d9

    move-object v11, v10

    :goto_81
    invoke-virtual {v4, v11}, Lcom/upsight/mediation/vast/model/VASTMediaFile;->setScalable(Ljava/lang/Boolean;)V

    .line 246
    const-string v11, "type"

    invoke-interface {v1, v11}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 247
    if-nez v0, :cond_e2

    move-object v11, v10

    :goto_8d
    invoke-virtual {v4, v11}, Lcom/upsight/mediation/vast/model/VASTMediaFile;->setType(Ljava/lang/String;)V

    .line 249
    const-string v11, "width"

    invoke-interface {v1, v11}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 250
    if-nez v0, :cond_e7

    move-object v11, v10

    :goto_99
    invoke-virtual {v4, v11}, Lcom/upsight/mediation/vast/model/VASTMediaFile;->setWidth(Ljava/math/BigInteger;)V

    .line 252
    invoke-static {v7}, Lcom/upsight/mediation/vast/util/XmlTools;->getElementValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    .line 253
    .local v6, "mediaURL":Ljava/lang/String;
    invoke-virtual {v4, v6}, Lcom/upsight/mediation/vast/model/VASTMediaFile;->setValue(Ljava/lang/String;)V

    .line 255
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1d

    .line 226
    .end local v6    # "mediaURL":Ljava/lang/String;
    :cond_aa
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v11

    goto :goto_39

    .line 229
    :cond_af
    new-instance v11, Ljava/math/BigInteger;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    goto :goto_45

    .line 258
    .end local v0    # "attributeNode":Lorg/w3c/dom/Node;
    .end local v1    # "attributes":Lorg/w3c/dom/NamedNodeMap;
    .end local v3    # "i":I
    .end local v4    # "mediaFile":Lcom/upsight/mediation/vast/model/VASTMediaFile;
    .end local v7    # "node":Lorg/w3c/dom/Node;
    .end local v8    # "nodes":Lorg/w3c/dom/NodeList;
    :catch_b9
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    move-object v5, v10

    .line 262
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "mediaFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/upsight/mediation/vast/model/VASTMediaFile;>;"
    :cond_bb
    return-object v5

    .line 232
    .restart local v0    # "attributeNode":Lorg/w3c/dom/Node;
    .restart local v1    # "attributes":Lorg/w3c/dom/NamedNodeMap;
    .restart local v3    # "i":I
    .restart local v4    # "mediaFile":Lcom/upsight/mediation/vast/model/VASTMediaFile;
    .restart local v5    # "mediaFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/upsight/mediation/vast/model/VASTMediaFile;>;"
    .restart local v7    # "node":Lorg/w3c/dom/Node;
    .restart local v8    # "nodes":Lorg/w3c/dom/NodeList;
    :cond_bc
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v11

    goto :goto_51

    .line 235
    :cond_c1
    new-instance v11, Ljava/math/BigInteger;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    goto :goto_5d

    .line 238
    :cond_cb
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v11

    goto :goto_69

    .line 241
    :cond_d0
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v11

    goto :goto_75

    .line 244
    :cond_d9
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v11

    goto :goto_81

    .line 247
    :cond_e2
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v11

    goto :goto_8d

    .line 250
    :cond_e7
    new-instance v11, Ljava/math/BigInteger;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V
    :try_end_f0
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_f0} :catch_b9

    goto :goto_99
.end method

.method public getPickedMediaFileDeliveryType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 448
    iget-object v0, p0, Lcom/upsight/mediation/vast/model/VASTModel;->mediaFileDeliveryType:Ljava/lang/String;

    return-object v0
.end method

.method public getPickedMediaFileLocation()Ljava/lang/String;
    .registers 2

    .prologue
    .line 439
    iget-object v0, p0, Lcom/upsight/mediation/vast/model/VASTModel;->mediaFileLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getSkipOffset()Ljava/lang/String;
    .registers 8

    .prologue
    .line 312
    const/4 v2, 0x0

    .line 314
    .local v2, "skipOffset":Ljava/lang/String;
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v3

    .line 317
    .local v3, "xpath":Ljavax/xml/xpath/XPath;
    :try_start_9
    const-string v4, "/VAST/Ad/InLine/Creatives/Creative/Linear[@skipoffset]"

    iget-object v5, p0, Lcom/upsight/mediation/vast/model/VASTModel;->vastsDocument:Lorg/w3c/dom/Document;

    sget-object v6, Ljavax/xml/xpath/XPathConstants;->NODE:Ljavax/xml/namespace/QName;

    invoke-interface {v3, v4, v5, v6}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Node;

    .line 318
    .local v1, "node":Lorg/w3c/dom/Node;
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    const-string v5, "skipoffset"

    invoke-interface {v4, v5}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_26} :catch_29

    move-result-object v2

    move-object v4, v2

    .line 323
    .end local v1    # "node":Lorg/w3c/dom/Node;
    :goto_28
    return-object v4

    .line 319
    :catch_29
    move-exception v0

    .line 321
    .local v0, "e":Ljava/lang/Exception;
    const/4 v4, 0x0

    goto :goto_28
.end method

.method public getTrackingEvents()Ljava/util/HashMap;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;",
            "Ljava/util/List",
            "<",
            "Lcom/upsight/mediation/vast/model/VASTTracking;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 141
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 143
    .local v12, "trackings":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;Ljava/util/List<Lcom/upsight/mediation/vast/model/VASTTracking;>;>;"
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v15

    invoke-virtual {v15}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v14

    .line 146
    .local v14, "xpath":Ljavax/xml/xpath/XPath;
    :try_start_d
    const-string v15, "/VAST/Ad/InLine/Creatives/Creative/Linear/TrackingEvents/Tracking|/VAST/Ad/InLine/Creatives/Creative/NonLinearAds/TrackingEvents/Tracking|/VAST/Ad/Wrapper/Creatives/Creative/Linear/TrackingEvents/Tracking|/VAST/Ad/Wrapper/Creatives/Creative/NonLinearAds/TrackingEvents/Tracking"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/upsight/mediation/vast/model/VASTModel;->vastsDocument:Lorg/w3c/dom/Document;

    move-object/from16 v16, v0

    sget-object v17, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-interface/range {v14 .. v17}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/NodeList;

    .line 150
    .local v7, "nodes":Lorg/w3c/dom/NodeList;
    const-string v9, ""

    .line 151
    .local v9, "progressOffset":Ljava/lang/String;
    const/4 v5, 0x0

    .line 153
    .local v5, "key":Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;
    if-eqz v7, :cond_92

    .line 154
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_23
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v15

    if-ge v4, v15, :cond_92

    .line 155
    invoke-interface {v7, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 156
    .local v6, "node":Lorg/w3c/dom/Node;
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    .line 158
    .local v1, "attributes":Lorg/w3c/dom/NamedNodeMap;
    const-string v15, "event"

    invoke-interface {v1, v15}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v15

    invoke-interface {v15}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    .line 161
    .local v3, "eventName":Ljava/lang/String;
    const-string v15, "progress"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_40} :catch_90

    move-result v15

    if-eqz v15, :cond_4d

    .line 163
    :try_start_43
    const-string v15, "offset"

    invoke-interface {v1, v15}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v15

    invoke-interface {v15}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;
    :try_end_4c
    .catch Ljava/lang/NullPointerException; {:try_start_43 .. :try_end_4c} :catch_7f
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_4c} :catch_90

    move-result-object v9

    .line 169
    :cond_4d
    :goto_4d
    :try_start_4d
    invoke-static {v3}, Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;->valueOf(Ljava/lang/String;)Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;
    :try_end_50
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4d .. :try_end_50} :catch_82
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_50} :catch_90

    move-result-object v5

    .line 175
    :try_start_51
    invoke-static {v6}, Lcom/upsight/mediation/vast/util/XmlTools;->getElementValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v11

    .line 178
    .local v11, "trackingURL":Ljava/lang/String;
    new-instance v13, Lcom/upsight/mediation/vast/model/VASTTracking;

    invoke-direct {v13}, Lcom/upsight/mediation/vast/model/VASTTracking;-><init>()V

    .line 179
    .local v13, "vastTracking":Lcom/upsight/mediation/vast/model/VASTTracking;
    invoke-virtual {v13, v5}, Lcom/upsight/mediation/vast/model/VASTTracking;->setEvent(Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;)V

    .line 180
    invoke-virtual {v13, v11}, Lcom/upsight/mediation/vast/model/VASTTracking;->setValue(Ljava/lang/String;)V

    .line 183
    sget-object v15, Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;->progress:Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;

    invoke-virtual {v5, v15}, Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6d

    if-eqz v9, :cond_6d

    .line 184
    invoke-virtual {v13, v9}, Lcom/upsight/mediation/vast/model/VASTTracking;->setOffset(Ljava/lang/String;)V

    .line 188
    :cond_6d
    invoke-virtual {v12, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_84

    .line 189
    invoke-virtual {v12, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 190
    .local v10, "tracking":Ljava/util/List;, "Ljava/util/List<Lcom/upsight/mediation/vast/model/VASTTracking;>;"
    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    .end local v10    # "tracking":Ljava/util/List;, "Ljava/util/List<Lcom/upsight/mediation/vast/model/VASTTracking;>;"
    .end local v11    # "trackingURL":Ljava/lang/String;
    .end local v13    # "vastTracking":Lcom/upsight/mediation/vast/model/VASTTracking;
    :goto_7c
    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    .line 164
    :catch_7f
    move-exception v8

    .line 165
    .local v8, "npe":Ljava/lang/NullPointerException;
    const/4 v9, 0x0

    goto :goto_4d

    .line 170
    .end local v8    # "npe":Ljava/lang/NullPointerException;
    :catch_82
    move-exception v2

    .line 172
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_7c

    .line 192
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v11    # "trackingURL":Ljava/lang/String;
    .restart local v13    # "vastTracking":Lcom/upsight/mediation/vast/model/VASTTracking;
    :cond_84
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 193
    .restart local v10    # "tracking":Ljava/util/List;, "Ljava/util/List<Lcom/upsight/mediation/vast/model/VASTTracking;>;"
    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    invoke-virtual {v12, v5, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_8f} :catch_90

    goto :goto_7c

    .line 198
    .end local v1    # "attributes":Lorg/w3c/dom/NamedNodeMap;
    .end local v3    # "eventName":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v5    # "key":Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;
    .end local v6    # "node":Lorg/w3c/dom/Node;
    .end local v7    # "nodes":Lorg/w3c/dom/NodeList;
    .end local v9    # "progressOffset":Ljava/lang/String;
    .end local v10    # "tracking":Ljava/util/List;, "Ljava/util/List<Lcom/upsight/mediation/vast/model/VASTTracking;>;"
    .end local v11    # "trackingURL":Ljava/lang/String;
    .end local v13    # "vastTracking":Lcom/upsight/mediation/vast/model/VASTTracking;
    :catch_90
    move-exception v2

    .line 200
    .local v2, "e":Ljava/lang/Exception;
    const/4 v12, 0x0

    .line 202
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v12    # "trackings":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;Ljava/util/List<Lcom/upsight/mediation/vast/model/VASTTracking;>;>;"
    :cond_92
    return-object v12
.end method

.method public getVastVersion()Ljava/lang/String;
    .registers 8

    .prologue
    .line 124
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v3

    .line 126
    .local v3, "xpath":Ljavax/xml/xpath/XPath;
    :try_start_8
    const-string v4, "//VAST"

    iget-object v5, p0, Lcom/upsight/mediation/vast/model/VASTModel;->vastsDocument:Lorg/w3c/dom/Document;

    sget-object v6, Ljavax/xml/xpath/XPathConstants;->NODE:Ljavax/xml/namespace/QName;

    invoke-interface {v3, v4, v5, v6}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Node;

    .line 127
    .local v1, "node":Lorg/w3c/dom/Node;
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    const-string v5, "version"

    invoke-interface {v4, v5}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_25} :catch_27

    move-result-object v2

    .line 131
    .end local v1    # "node":Lorg/w3c/dom/Node;
    :goto_26
    return-object v2

    .line 129
    :catch_27
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_26
.end method

.method public getVideoClicks()Lcom/upsight/mediation/vast/model/VideoClicks;
    .registers 15

    .prologue
    .line 329
    new-instance v9, Lcom/upsight/mediation/vast/model/VideoClicks;

    invoke-direct {v9}, Lcom/upsight/mediation/vast/model/VideoClicks;-><init>()V

    .line 330
    .local v9, "videoClicks":Lcom/upsight/mediation/vast/model/VideoClicks;
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v11

    invoke-virtual {v11}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v10

    .line 332
    .local v10, "xpath":Ljavax/xml/xpath/XPath;
    :try_start_d
    const-string v11, "//VideoClicks"

    iget-object v12, p0, Lcom/upsight/mediation/vast/model/VASTModel;->vastsDocument:Lorg/w3c/dom/Document;

    sget-object v13, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-interface {v10, v11, v12, v13}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/NodeList;

    .line 335
    .local v7, "nodes":Lorg/w3c/dom/NodeList;
    if-eqz v7, :cond_62

    .line 336
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1c
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    if-ge v4, v11, :cond_62

    .line 337
    invoke-interface {v7, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 339
    .local v5, "node":Lorg/w3c/dom/Node;
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 342
    .local v2, "childNodes":Lorg/w3c/dom/NodeList;
    const/4 v8, 0x0

    .line 344
    .local v8, "value":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "childIndex":I
    :goto_2c
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    if-ge v1, v11, :cond_77

    .line 346
    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 347
    .local v0, "child":Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    .line 349
    .local v6, "nodeName":Ljava/lang/String;
    const-string v11, "ClickTracking"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_50

    .line 350
    invoke-static {v0}, Lcom/upsight/mediation/vast/util/XmlTools;->getElementValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v8

    .line 351
    invoke-virtual {v9}, Lcom/upsight/mediation/vast/model/VideoClicks;->getClickTracking()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    :cond_4d
    :goto_4d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    .line 353
    :cond_50
    const-string v11, "ClickThrough"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_63

    .line 354
    invoke-static {v0}, Lcom/upsight/mediation/vast/util/XmlTools;->getElementValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v8

    .line 355
    invoke-virtual {v9, v8}, Lcom/upsight/mediation/vast/model/VideoClicks;->setClickThrough(Ljava/lang/String;)V

    goto :goto_4d

    .line 365
    .end local v0    # "child":Lorg/w3c/dom/Node;
    .end local v1    # "childIndex":I
    .end local v2    # "childNodes":Lorg/w3c/dom/NodeList;
    .end local v4    # "i":I
    .end local v5    # "node":Lorg/w3c/dom/Node;
    .end local v6    # "nodeName":Ljava/lang/String;
    .end local v7    # "nodes":Lorg/w3c/dom/NodeList;
    .end local v8    # "value":Ljava/lang/String;
    :catch_60
    move-exception v3

    .line 367
    .local v3, "e":Ljava/lang/Exception;
    const/4 v9, 0x0

    .line 369
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v9    # "videoClicks":Lcom/upsight/mediation/vast/model/VideoClicks;
    :cond_62
    return-object v9

    .line 357
    .restart local v0    # "child":Lorg/w3c/dom/Node;
    .restart local v1    # "childIndex":I
    .restart local v2    # "childNodes":Lorg/w3c/dom/NodeList;
    .restart local v4    # "i":I
    .restart local v5    # "node":Lorg/w3c/dom/Node;
    .restart local v6    # "nodeName":Ljava/lang/String;
    .restart local v7    # "nodes":Lorg/w3c/dom/NodeList;
    .restart local v8    # "value":Ljava/lang/String;
    .restart local v9    # "videoClicks":Lcom/upsight/mediation/vast/model/VideoClicks;
    :cond_63
    const-string v11, "CustomClick"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4d

    .line 358
    invoke-static {v0}, Lcom/upsight/mediation/vast/util/XmlTools;->getElementValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v8

    .line 359
    invoke-virtual {v9}, Lcom/upsight/mediation/vast/model/VideoClicks;->getCustomClick()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_76} :catch_60

    goto :goto_4d

    .line 336
    .end local v0    # "child":Lorg/w3c/dom/Node;
    .end local v6    # "nodeName":Ljava/lang/String;
    :cond_77
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c
.end method

.method public setPickedMediaFileDeliveryType(Ljava/lang/String;)V
    .registers 2
    .param p1, "deliveryType"    # Ljava/lang/String;

    .prologue
    .line 444
    iput-object p1, p0, Lcom/upsight/mediation/vast/model/VASTModel;->mediaFileDeliveryType:Ljava/lang/String;

    .line 445
    return-void
.end method

.method public setPickedMediaFileLocation(Ljava/lang/String;)V
    .registers 2
    .param p1, "mediaFileLocation"    # Ljava/lang/String;

    .prologue
    .line 434
    iput-object p1, p0, Lcom/upsight/mediation/vast/model/VASTModel;->mediaFileLocation:Ljava/lang/String;

    .line 435
    return-void
.end method
