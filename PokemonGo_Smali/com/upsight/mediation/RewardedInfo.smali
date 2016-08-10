.class public Lcom/upsight/mediation/RewardedInfo;
.super Ljava/lang/Object;
.source "RewardedInfo.java"


# instance fields
.field public final preRollMessage:Ljava/lang/String;

.field public final rewardAmount:I

.field public final rewardItem:Ljava/lang/String;

.field public final rewardItemId:I

.field public final rewardMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 6
    .param p1, "preRollMessage"    # Ljava/lang/String;
    .param p2, "rewardMessage"    # Ljava/lang/String;
    .param p3, "rewardItem"    # Ljava/lang/String;
    .param p4, "rewardAmount"    # I
    .param p5, "rewardItemId"    # I

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/upsight/mediation/RewardedInfo;->preRollMessage:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/upsight/mediation/RewardedInfo;->rewardMessage:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/upsight/mediation/RewardedInfo;->rewardItem:Ljava/lang/String;

    .line 24
    iput p4, p0, Lcom/upsight/mediation/RewardedInfo;->rewardAmount:I

    .line 25
    iput p5, p0, Lcom/upsight/mediation/RewardedInfo;->rewardItemId:I

    .line 26
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 31
    if-ne p0, p1, :cond_6

    move v2, v1

    .line 42
    :cond_5
    :goto_5
    return v2

    .line 32
    :cond_6
    if-eqz p1, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v3, v4, :cond_5

    move-object v0, p1

    .line 34
    check-cast v0, Lcom/upsight/mediation/RewardedInfo;

    .line 36
    .local v0, "that":Lcom/upsight/mediation/RewardedInfo;
    iget v3, p0, Lcom/upsight/mediation/RewardedInfo;->rewardAmount:I

    iget v4, v0, Lcom/upsight/mediation/RewardedInfo;->rewardAmount:I

    if-ne v3, v4, :cond_5

    .line 37
    iget v3, p0, Lcom/upsight/mediation/RewardedInfo;->rewardItemId:I

    iget v4, v0, Lcom/upsight/mediation/RewardedInfo;->rewardItemId:I

    if-ne v3, v4, :cond_5

    .line 38
    iget-object v3, p0, Lcom/upsight/mediation/RewardedInfo;->preRollMessage:Ljava/lang/String;

    if-eqz v3, :cond_4e

    iget-object v3, p0, Lcom/upsight/mediation/RewardedInfo;->preRollMessage:Ljava/lang/String;

    iget-object v4, v0, Lcom/upsight/mediation/RewardedInfo;->preRollMessage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 40
    :cond_2f
    iget-object v3, p0, Lcom/upsight/mediation/RewardedInfo;->rewardMessage:Ljava/lang/String;

    if-eqz v3, :cond_53

    iget-object v3, p0, Lcom/upsight/mediation/RewardedInfo;->rewardMessage:Ljava/lang/String;

    iget-object v4, v0, Lcom/upsight/mediation/RewardedInfo;->rewardMessage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 42
    :cond_3d
    iget-object v3, p0, Lcom/upsight/mediation/RewardedInfo;->rewardItem:Ljava/lang/String;

    if-eqz v3, :cond_58

    iget-object v3, p0, Lcom/upsight/mediation/RewardedInfo;->rewardItem:Ljava/lang/String;

    iget-object v4, v0, Lcom/upsight/mediation/RewardedInfo;->rewardItem:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4c

    :cond_4b
    move v1, v2

    :cond_4c
    :goto_4c
    move v2, v1

    goto :goto_5

    .line 38
    :cond_4e
    iget-object v3, v0, Lcom/upsight/mediation/RewardedInfo;->preRollMessage:Ljava/lang/String;

    if-eqz v3, :cond_2f

    goto :goto_5

    .line 40
    :cond_53
    iget-object v3, v0, Lcom/upsight/mediation/RewardedInfo;->rewardMessage:Ljava/lang/String;

    if-eqz v3, :cond_3d

    goto :goto_5

    .line 42
    :cond_58
    iget-object v3, v0, Lcom/upsight/mediation/RewardedInfo;->rewardItem:Ljava/lang/String;

    if-nez v3, :cond_4b

    goto :goto_4c
.end method

.method public hashCode()I
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 48
    iget-object v2, p0, Lcom/upsight/mediation/RewardedInfo;->preRollMessage:Ljava/lang/String;

    if-eqz v2, :cond_34

    iget-object v2, p0, Lcom/upsight/mediation/RewardedInfo;->preRollMessage:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 49
    .local v0, "result":I
    :goto_b
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/upsight/mediation/RewardedInfo;->rewardMessage:Ljava/lang/String;

    if-eqz v2, :cond_36

    iget-object v2, p0, Lcom/upsight/mediation/RewardedInfo;->rewardMessage:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_17
    add-int v0, v3, v2

    .line 50
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/upsight/mediation/RewardedInfo;->rewardItem:Ljava/lang/String;

    if-eqz v3, :cond_25

    iget-object v1, p0, Lcom/upsight/mediation/RewardedInfo;->rewardItem:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_25
    add-int v0, v2, v1

    .line 51
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/upsight/mediation/RewardedInfo;->rewardAmount:I

    add-int v0, v1, v2

    .line 52
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/upsight/mediation/RewardedInfo;->rewardItemId:I

    add-int v0, v1, v2

    .line 53
    return v0

    .end local v0    # "result":I
    :cond_34
    move v0, v1

    .line 48
    goto :goto_b

    .restart local v0    # "result":I
    :cond_36
    move v2, v1

    .line 49
    goto :goto_17
.end method

.method public toJSONString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 69
    :try_start_0
    new-instance v0, Lorg/json/JSONStringer;

    invoke-direct {v0}, Lorg/json/JSONStringer;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v0

    const-string v1, "RewardedInfo"

    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v0

    const-string v1, "preRollMessage"

    .line 71
    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/mediation/RewardedInfo;->preRollMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v0

    const-string v1, "rewardMessage"

    .line 72
    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/mediation/RewardedInfo;->rewardMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v0

    const-string v1, "rewardItem"

    .line 73
    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/mediation/RewardedInfo;->rewardItem:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v0

    const-string v1, "rewardAmount"

    .line 74
    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v0

    iget v1, p0, Lcom/upsight/mediation/RewardedInfo;->rewardAmount:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v0

    const-string v1, "rewardItemId"

    .line 75
    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v0

    iget v1, p0, Lcom/upsight/mediation/RewardedInfo;->rewardItemId:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;
    :try_end_5c
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5c} :catch_5e

    move-result-object v0

    .line 79
    :goto_5d
    return-object v0

    .line 77
    :catch_5e
    move-exception v0

    .line 79
    const-string v0, "{ \"RewardedInfo\" : \"\" }"

    goto :goto_5d
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    const/16 v2, 0x27

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RewardedInfo{preRollMessage=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/mediation/RewardedInfo;->preRollMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rewardMessage=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/mediation/RewardedInfo;->rewardMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rewardItem=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/mediation/RewardedInfo;->rewardItem:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rewardAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/upsight/mediation/RewardedInfo;->rewardAmount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rewardItemId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/upsight/mediation/RewardedInfo;->rewardItemId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
