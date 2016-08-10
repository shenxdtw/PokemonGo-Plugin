.class public Lcom/upsight/mediation/mraid/internal/MRAIDParser;
.super Ljava/lang/Object;
.source "MRAIDParser.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MRAIDParser"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkParamsForCommand(Ljava/lang/String;Ljava/util/Map;)Z
    .registers 6
    .param p1, "command"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 81
    const-string v2, "createCalendarEvent"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 82
    const-string v0, "eventJSON"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 98
    :cond_10
    :goto_10
    return v0

    .line 83
    :cond_11
    const-string v2, "open"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    const-string v2, "playVideo"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    const-string v2, "storePicture"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 84
    :cond_29
    const-string v0, "url"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_10

    .line 85
    :cond_30
    const-string v2, "setOrientationProperties"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 86
    const-string v2, "allowOrientationChange"

    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    const-string v2, "forceOrientation"

    .line 87
    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    :cond_48
    move v0, v1

    goto :goto_10

    .line 88
    :cond_4a
    const-string v2, "setResizeProperties"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_84

    .line 89
    const-string v2, "width"

    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_82

    const-string v2, "height"

    .line 90
    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_82

    const-string v2, "offsetX"

    .line 91
    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_82

    const-string v2, "offsetY"

    .line 92
    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_82

    const-string v2, "customClosePosition"

    .line 93
    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_82

    const-string v2, "allowOffscreen"

    .line 94
    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    :cond_82
    move v0, v1

    goto :goto_10

    .line 95
    :cond_84
    const-string v1, "useCustomClose"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 96
    const-string v0, "useCustomClose"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    goto/16 :goto_10
.end method

.method private isValidCommand(Ljava/lang/String;)Z
    .registers 5
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 62
    const/16 v1, 0xd

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "replay"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "success"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "close"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "createCalendarEvent"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "expand"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "open"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "playVideo"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "resize"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "rewardComplete"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "setOrientationProperties"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "setResizeProperties"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "storePicture"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "useCustomClose"

    aput-object v2, v0, v1

    .line 77
    .local v0, "commands":[Ljava/lang/String;
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public parseCommandUrl(Ljava/lang/String;)Ljava/util/Map;
    .registers 16
    .param p1, "commandUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v11, 0x0

    .line 19
    const-string v10, "MRAIDParser"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "parseCommandUrl "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/upsight/mediation/mraid/internal/MRAIDLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    const/16 v10, 0x8

    invoke-virtual {p1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 25
    .local v8, "s":Ljava/lang/String;
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 28
    .local v7, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v10, 0x3f

    invoke-virtual {v8, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 29
    .local v2, "idx":I
    const/4 v10, -0x1

    if-eq v2, v10, :cond_5a

    .line 30
    invoke-virtual {v8, v11, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, "command":Ljava/lang/String;
    add-int/lit8 v10, v2, 0x1

    invoke-virtual {v8, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 32
    .local v6, "paramStr":Ljava/lang/String;
    const-string v10, "&"

    invoke-virtual {v6, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 33
    .local v5, "paramArray":[Ljava/lang/String;
    array-length v12, v5

    move v10, v11

    :goto_40
    if-ge v10, v12, :cond_5b

    aget-object v4, v5, v10

    .line 34
    .local v4, "param":Ljava/lang/String;
    const/16 v13, 0x3d

    invoke-virtual {v4, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 35
    invoke-virtual {v4, v11, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 36
    .local v3, "key":Ljava/lang/String;
    add-int/lit8 v13, v2, 0x1

    invoke-virtual {v4, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 37
    .local v9, "val":Ljava/lang/String;
    invoke-interface {v7, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    add-int/lit8 v10, v10, 0x1

    goto :goto_40

    .line 40
    .end local v0    # "command":Ljava/lang/String;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "param":Ljava/lang/String;
    .end local v5    # "paramArray":[Ljava/lang/String;
    .end local v6    # "paramStr":Ljava/lang/String;
    .end local v9    # "val":Ljava/lang/String;
    :cond_5a
    move-object v0, v8

    .line 44
    .restart local v0    # "command":Ljava/lang/String;
    :cond_5b
    invoke-direct {p0, v0}, Lcom/upsight/mediation/mraid/internal/MRAIDParser;->isValidCommand(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_7e

    .line 45
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "command "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is unknown"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/upsight/mediation/mraid/internal/MRAIDLog;->i(Ljava/lang/String;)V

    .line 58
    :goto_7d
    return-object v1

    .line 50
    :cond_7e
    invoke-direct {p0, v0, v7}, Lcom/upsight/mediation/mraid/internal/MRAIDParser;->checkParamsForCommand(Ljava/lang/String;Ljava/util/Map;)Z

    move-result v10

    if-nez v10, :cond_a1

    .line 51
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "command URL "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is missing parameters"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/upsight/mediation/mraid/internal/MRAIDLog;->i(Ljava/lang/String;)V

    goto :goto_7d

    .line 55
    :cond_a1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 56
    .local v1, "commandMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v10, "command"

    invoke-interface {v1, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-interface {v1, v7}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_7d
.end method
