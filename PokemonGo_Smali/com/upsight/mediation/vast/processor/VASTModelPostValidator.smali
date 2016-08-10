.class public Lcom/upsight/mediation/vast/processor/VASTModelPostValidator;
.super Ljava/lang/Object;
.source "VASTModelPostValidator.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VASTModelPostValidator"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static pickMediaFile(Lcom/upsight/mediation/vast/model/VASTModel;Lcom/upsight/mediation/vast/processor/VASTMediaPicker;)Z
    .registers 8
    .param p0, "model"    # Lcom/upsight/mediation/vast/model/VASTModel;
    .param p1, "mediaPicker"    # Lcom/upsight/mediation/vast/processor/VASTMediaPicker;

    .prologue
    .line 84
    const/4 v1, 0x0

    .line 87
    .local v1, "isValid":Z
    if-eqz p1, :cond_22

    .line 88
    invoke-virtual {p0}, Lcom/upsight/mediation/vast/model/VASTModel;->getMediaFiles()Ljava/util/List;

    move-result-object v3

    .line 89
    .local v3, "mediaFiles":Ljava/util/List;, "Ljava/util/List<Lcom/upsight/mediation/vast/model/VASTMediaFile;>;"
    invoke-interface {p1, v3}, Lcom/upsight/mediation/vast/processor/VASTMediaPicker;->pickVideo(Ljava/util/List;)Lcom/upsight/mediation/vast/model/VASTMediaFile;

    move-result-object v2

    .line 91
    .local v2, "mediaFile":Lcom/upsight/mediation/vast/model/VASTMediaFile;
    if-eqz v2, :cond_22

    .line 92
    invoke-virtual {v2}, Lcom/upsight/mediation/vast/model/VASTMediaFile;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 93
    .local v4, "url":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/upsight/mediation/vast/model/VASTMediaFile;->getDelivery()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "deliveryType":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_22

    .line 95
    const/4 v1, 0x1

    .line 98
    invoke-virtual {p0, v4}, Lcom/upsight/mediation/vast/model/VASTModel;->setPickedMediaFileLocation(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0, v0}, Lcom/upsight/mediation/vast/model/VASTModel;->setPickedMediaFileDeliveryType(Ljava/lang/String;)V

    .line 107
    .end local v0    # "deliveryType":Ljava/lang/String;
    .end local v2    # "mediaFile":Lcom/upsight/mediation/vast/model/VASTMediaFile;
    .end local v3    # "mediaFiles":Ljava/util/List;, "Ljava/util/List<Lcom/upsight/mediation/vast/model/VASTMediaFile;>;"
    .end local v4    # "url":Ljava/lang/String;
    :cond_22
    return v1
.end method

.method public static validate(Lcom/upsight/mediation/vast/model/VASTModel;)Z
    .registers 3
    .param p0, "model"    # Lcom/upsight/mediation/vast/model/VASTModel;

    .prologue
    .line 31
    const/4 v0, 0x0

    .line 33
    .local v0, "isValid":Z
    invoke-static {p0}, Lcom/upsight/mediation/vast/processor/VASTModelPostValidator;->validateModel(Lcom/upsight/mediation/vast/model/VASTModel;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 35
    const/4 v1, 0x0

    .line 42
    :goto_8
    return v1

    .line 38
    :cond_9
    const/4 v0, 0x1

    move v1, v0

    .line 42
    goto :goto_8
.end method

.method private static validateModel(Lcom/upsight/mediation/vast/model/VASTModel;)Z
    .registers 6
    .param p0, "model"    # Lcom/upsight/mediation/vast/model/VASTModel;

    .prologue
    const/4 v3, 0x0

    .line 48
    const/4 v1, 0x1

    .line 51
    .local v1, "isValid":Z
    invoke-virtual {p0}, Lcom/upsight/mediation/vast/model/VASTModel;->evaluateAdTitle()Z

    move-result v4

    if-nez v4, :cond_a

    move v1, v3

    .line 78
    .end local v1    # "isValid":Z
    :cond_9
    :goto_9
    return v1

    .line 55
    .restart local v1    # "isValid":Z
    :cond_a
    invoke-virtual {p0}, Lcom/upsight/mediation/vast/model/VASTModel;->evaluateAdSystem()Z

    move-result v4

    if-nez v4, :cond_12

    move v1, v3

    .line 56
    goto :goto_9

    .line 60
    :cond_12
    invoke-virtual {p0}, Lcom/upsight/mediation/vast/model/VASTModel;->getImpressions()Ljava/util/List;

    move-result-object v0

    .line 61
    .local v0, "impressions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_1e

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_20

    :cond_1e
    move v1, v3

    .line 62
    goto :goto_9

    .line 69
    :cond_20
    invoke-virtual {p0}, Lcom/upsight/mediation/vast/model/VASTModel;->getMediaFiles()Ljava/util/List;

    move-result-object v2

    .line 70
    .local v2, "mediaFiles":Ljava/util/List;, "Ljava/util/List<Lcom/upsight/mediation/vast/model/VASTMediaFile;>;"
    if-eqz v2, :cond_2c

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_9

    :cond_2c
    move v1, v3

    .line 72
    goto :goto_9
.end method
