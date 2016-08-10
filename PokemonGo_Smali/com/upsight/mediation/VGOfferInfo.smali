.class public Lcom/upsight/mediation/VGOfferInfo;
.super Ljava/lang/Object;
.source "VGOfferInfo.java"


# instance fields
.field public currencyID:I

.field public endTime:Ljava/util/Date;

.field public itemAmount:I

.field public itemName:Ljava/lang/String;

.field public metadata:Ljava/lang/String;

.field public purchaseCurrency:Ljava/lang/String;

.field public purchasePrice:F

.field public startTime:Ljava/util/Date;

.field public virtualGoodID:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 25
    if-ne p0, p1, :cond_6

    move v2, v1

    .line 41
    :cond_5
    :goto_5
    return v2

    .line 26
    :cond_6
    if-eqz p1, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v3, v4, :cond_5

    move-object v0, p1

    .line 28
    check-cast v0, Lcom/upsight/mediation/VGOfferInfo;

    .line 30
    .local v0, "that":Lcom/upsight/mediation/VGOfferInfo;
    iget v3, v0, Lcom/upsight/mediation/VGOfferInfo;->purchasePrice:F

    iget v4, p0, Lcom/upsight/mediation/VGOfferInfo;->purchasePrice:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_5

    .line 31
    iget v3, p0, Lcom/upsight/mediation/VGOfferInfo;->itemAmount:I

    iget v4, v0, Lcom/upsight/mediation/VGOfferInfo;->itemAmount:I

    if-ne v3, v4, :cond_5

    .line 32
    iget v3, p0, Lcom/upsight/mediation/VGOfferInfo;->virtualGoodID:I

    iget v4, v0, Lcom/upsight/mediation/VGOfferInfo;->virtualGoodID:I

    if-ne v3, v4, :cond_5

    .line 33
    iget v3, p0, Lcom/upsight/mediation/VGOfferInfo;->currencyID:I

    iget v4, v0, Lcom/upsight/mediation/VGOfferInfo;->currencyID:I

    if-ne v3, v4, :cond_5

    .line 34
    iget-object v3, p0, Lcom/upsight/mediation/VGOfferInfo;->purchaseCurrency:Ljava/lang/String;

    if-eqz v3, :cond_7a

    iget-object v3, p0, Lcom/upsight/mediation/VGOfferInfo;->purchaseCurrency:Ljava/lang/String;

    iget-object v4, v0, Lcom/upsight/mediation/VGOfferInfo;->purchaseCurrency:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 36
    :cond_3f
    iget-object v3, p0, Lcom/upsight/mediation/VGOfferInfo;->itemName:Ljava/lang/String;

    if-eqz v3, :cond_7f

    iget-object v3, p0, Lcom/upsight/mediation/VGOfferInfo;->itemName:Ljava/lang/String;

    iget-object v4, v0, Lcom/upsight/mediation/VGOfferInfo;->itemName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 38
    :cond_4d
    iget-object v3, p0, Lcom/upsight/mediation/VGOfferInfo;->startTime:Ljava/util/Date;

    if-eqz v3, :cond_84

    iget-object v3, p0, Lcom/upsight/mediation/VGOfferInfo;->startTime:Ljava/util/Date;

    iget-object v4, v0, Lcom/upsight/mediation/VGOfferInfo;->startTime:Ljava/util/Date;

    invoke-virtual {v3, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 40
    :cond_5b
    iget-object v3, p0, Lcom/upsight/mediation/VGOfferInfo;->endTime:Ljava/util/Date;

    if-eqz v3, :cond_8a

    iget-object v3, p0, Lcom/upsight/mediation/VGOfferInfo;->endTime:Ljava/util/Date;

    iget-object v4, v0, Lcom/upsight/mediation/VGOfferInfo;->endTime:Ljava/util/Date;

    invoke-virtual {v3, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 41
    :cond_69
    iget-object v3, p0, Lcom/upsight/mediation/VGOfferInfo;->metadata:Ljava/lang/String;

    if-eqz v3, :cond_90

    iget-object v3, p0, Lcom/upsight/mediation/VGOfferInfo;->metadata:Ljava/lang/String;

    iget-object v4, v0, Lcom/upsight/mediation/VGOfferInfo;->metadata:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_78

    :cond_77
    move v1, v2

    :cond_78
    :goto_78
    move v2, v1

    goto :goto_5

    .line 34
    :cond_7a
    iget-object v3, v0, Lcom/upsight/mediation/VGOfferInfo;->purchaseCurrency:Ljava/lang/String;

    if-eqz v3, :cond_3f

    goto :goto_5

    .line 36
    :cond_7f
    iget-object v3, v0, Lcom/upsight/mediation/VGOfferInfo;->itemName:Ljava/lang/String;

    if-eqz v3, :cond_4d

    goto :goto_5

    .line 38
    :cond_84
    iget-object v3, v0, Lcom/upsight/mediation/VGOfferInfo;->startTime:Ljava/util/Date;

    if-eqz v3, :cond_5b

    goto/16 :goto_5

    .line 40
    :cond_8a
    iget-object v3, v0, Lcom/upsight/mediation/VGOfferInfo;->endTime:Ljava/util/Date;

    if-eqz v3, :cond_69

    goto/16 :goto_5

    .line 41
    :cond_90
    iget-object v3, v0, Lcom/upsight/mediation/VGOfferInfo;->metadata:Ljava/lang/String;

    if-nez v3, :cond_77

    goto :goto_78
.end method

.method public hashCode()I
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 47
    iget-object v2, p0, Lcom/upsight/mediation/VGOfferInfo;->purchaseCurrency:Ljava/lang/String;

    if-eqz v2, :cond_67

    iget-object v2, p0, Lcom/upsight/mediation/VGOfferInfo;->purchaseCurrency:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 48
    .local v0, "result":I
    :goto_b
    mul-int/lit8 v3, v0, 0x1f

    iget v2, p0, Lcom/upsight/mediation/VGOfferInfo;->purchasePrice:F

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_69

    iget v2, p0, Lcom/upsight/mediation/VGOfferInfo;->purchasePrice:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    :goto_1a
    add-int v0, v3, v2

    .line 49
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/upsight/mediation/VGOfferInfo;->itemName:Ljava/lang/String;

    if-eqz v2, :cond_6b

    iget-object v2, p0, Lcom/upsight/mediation/VGOfferInfo;->itemName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_28
    add-int v0, v3, v2

    .line 50
    mul-int/lit8 v2, v0, 0x1f

    iget v3, p0, Lcom/upsight/mediation/VGOfferInfo;->itemAmount:I

    add-int v0, v2, v3

    .line 51
    mul-int/lit8 v2, v0, 0x1f

    iget v3, p0, Lcom/upsight/mediation/VGOfferInfo;->virtualGoodID:I

    add-int v0, v2, v3

    .line 52
    mul-int/lit8 v2, v0, 0x1f

    iget v3, p0, Lcom/upsight/mediation/VGOfferInfo;->currencyID:I

    add-int v0, v2, v3

    .line 53
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/upsight/mediation/VGOfferInfo;->startTime:Ljava/util/Date;

    if-eqz v2, :cond_6d

    iget-object v2, p0, Lcom/upsight/mediation/VGOfferInfo;->startTime:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v2

    :goto_48
    add-int v0, v3, v2

    .line 54
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/upsight/mediation/VGOfferInfo;->endTime:Ljava/util/Date;

    if-eqz v2, :cond_6f

    iget-object v2, p0, Lcom/upsight/mediation/VGOfferInfo;->endTime:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v2

    :goto_56
    add-int v0, v3, v2

    .line 55
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/upsight/mediation/VGOfferInfo;->metadata:Ljava/lang/String;

    if-eqz v3, :cond_64

    iget-object v1, p0, Lcom/upsight/mediation/VGOfferInfo;->metadata:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_64
    add-int v0, v2, v1

    .line 56
    return v0

    .end local v0    # "result":I
    :cond_67
    move v0, v1

    .line 47
    goto :goto_b

    .restart local v0    # "result":I
    :cond_69
    move v2, v1

    .line 48
    goto :goto_1a

    :cond_6b
    move v2, v1

    .line 49
    goto :goto_28

    :cond_6d
    move v2, v1

    .line 53
    goto :goto_48

    :cond_6f
    move v2, v1

    .line 54
    goto :goto_56
.end method

.method public toJSONString()Ljava/lang/String;
    .registers 7

    .prologue
    const-wide/16 v0, 0x0

    .line 77
    :try_start_2
    new-instance v2, Lorg/json/JSONStringer;

    invoke-direct {v2}, Lorg/json/JSONStringer;-><init>()V

    invoke-virtual {v2}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v2

    const-string v3, "VGOfferInfo"

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    .line 78
    invoke-virtual {v2}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v2

    const-string v3, "purchaseCurrency"

    .line 79
    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    iget-object v3, p0, Lcom/upsight/mediation/VGOfferInfo;->purchaseCurrency:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v2

    const-string v3, "purchasePrice"

    .line 80
    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    iget v3, p0, Lcom/upsight/mediation/VGOfferInfo;->purchasePrice:F

    float-to-double v4, v3

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONStringer;->value(D)Lorg/json/JSONStringer;

    move-result-object v2

    const-string v3, "itemName"

    .line 81
    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    iget-object v3, p0, Lcom/upsight/mediation/VGOfferInfo;->itemName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v2

    const-string v3, "itemAmount"

    .line 82
    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    iget v3, p0, Lcom/upsight/mediation/VGOfferInfo;->itemAmount:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v2

    const-string v3, "virtualGoodID"

    .line 83
    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    iget v3, p0, Lcom/upsight/mediation/VGOfferInfo;->virtualGoodID:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v2

    const-string v3, "currencyID"

    .line 84
    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    iget v3, p0, Lcom/upsight/mediation/VGOfferInfo;->currencyID:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v2

    const-string v3, "startTime"

    .line 85
    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v4

    iget-object v2, p0, Lcom/upsight/mediation/VGOfferInfo;->startTime:Ljava/util/Date;

    if-nez v2, :cond_9b

    move-wide v2, v0

    :goto_6c
    invoke-virtual {v4, v2, v3}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v2

    const-string v3, "endTime"

    .line 86
    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    iget-object v3, p0, Lcom/upsight/mediation/VGOfferInfo;->endTime:Ljava/util/Date;

    if-nez v3, :cond_a2

    :goto_7a
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v0

    const-string v1, "metadata"

    .line 87
    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    iget-object v0, p0, Lcom/upsight/mediation/VGOfferInfo;->metadata:Ljava/lang/String;

    if-nez v0, :cond_a9

    const-string v0, ""

    :goto_8a
    invoke-virtual {v1, v0}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    :goto_9a
    return-object v0

    .line 85
    :cond_9b
    iget-object v2, p0, Lcom/upsight/mediation/VGOfferInfo;->startTime:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    goto :goto_6c

    .line 86
    :cond_a2
    iget-object v0, p0, Lcom/upsight/mediation/VGOfferInfo;->endTime:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_7a

    .line 87
    :cond_a9
    iget-object v0, p0, Lcom/upsight/mediation/VGOfferInfo;->metadata:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_b3
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_b3} :catch_b5

    move-result-object v0

    goto :goto_8a

    .line 89
    :catch_b5
    move-exception v0

    .line 90
    const-string v0, "{ \"VGOfferInfo\" : \"\" }"

    goto :goto_9a
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    const/16 v3, 0x27

    .line 61
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "VGOfferInfo{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 62
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "purchaseCurrency=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/upsight/mediation/VGOfferInfo;->purchaseCurrency:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 63
    const-string v1, ", purchasePrice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/upsight/mediation/VGOfferInfo;->purchasePrice:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 64
    const-string v1, ", itemName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/upsight/mediation/VGOfferInfo;->itemName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 65
    const-string v1, ", itemAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/upsight/mediation/VGOfferInfo;->itemAmount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 66
    const-string v1, ", virtualGoodID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/upsight/mediation/VGOfferInfo;->virtualGoodID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 67
    const-string v1, ", currencyID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/upsight/mediation/VGOfferInfo;->currencyID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 68
    const-string v1, ", startTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/upsight/mediation/VGOfferInfo;->startTime:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 69
    const-string v1, ", endTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/upsight/mediation/VGOfferInfo;->endTime:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 70
    const-string v1, ", metadata=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/upsight/mediation/VGOfferInfo;->metadata:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 71
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
