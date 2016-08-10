.class public Lcom/upsight/mediation/IAPOfferInfo;
.super Ljava/lang/Object;
.source "IAPOfferInfo.java"


# instance fields
.field public endTime:Ljava/util/Date;

.field public itemAmount:I

.field public itemName:Ljava/lang/String;

.field public metadata:Ljava/lang/String;

.field public productID:Ljava/lang/String;

.field public productPrice:F

.field public startTime:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
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

    .line 38
    if-ne p0, p1, :cond_6

    move v2, v1

    .line 52
    :cond_5
    :goto_5
    return v2

    .line 39
    :cond_6
    if-eqz p1, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v3, v4, :cond_5

    move-object v0, p1

    .line 41
    check-cast v0, Lcom/upsight/mediation/IAPOfferInfo;

    .line 43
    .local v0, "that":Lcom/upsight/mediation/IAPOfferInfo;
    iget v3, v0, Lcom/upsight/mediation/IAPOfferInfo;->productPrice:F

    iget v4, p0, Lcom/upsight/mediation/IAPOfferInfo;->productPrice:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_5

    .line 44
    iget v3, p0, Lcom/upsight/mediation/IAPOfferInfo;->itemAmount:I

    iget v4, v0, Lcom/upsight/mediation/IAPOfferInfo;->itemAmount:I

    if-ne v3, v4, :cond_5

    .line 45
    iget-object v3, p0, Lcom/upsight/mediation/IAPOfferInfo;->itemName:Ljava/lang/String;

    if-eqz v3, :cond_6e

    iget-object v3, p0, Lcom/upsight/mediation/IAPOfferInfo;->itemName:Ljava/lang/String;

    iget-object v4, v0, Lcom/upsight/mediation/IAPOfferInfo;->itemName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 47
    :cond_33
    iget-object v3, p0, Lcom/upsight/mediation/IAPOfferInfo;->productID:Ljava/lang/String;

    if-eqz v3, :cond_73

    iget-object v3, p0, Lcom/upsight/mediation/IAPOfferInfo;->productID:Ljava/lang/String;

    iget-object v4, v0, Lcom/upsight/mediation/IAPOfferInfo;->productID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 49
    :cond_41
    iget-object v3, p0, Lcom/upsight/mediation/IAPOfferInfo;->startTime:Ljava/util/Date;

    if-eqz v3, :cond_78

    iget-object v3, p0, Lcom/upsight/mediation/IAPOfferInfo;->startTime:Ljava/util/Date;

    iget-object v4, v0, Lcom/upsight/mediation/IAPOfferInfo;->startTime:Ljava/util/Date;

    invoke-virtual {v3, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 51
    :cond_4f
    iget-object v3, p0, Lcom/upsight/mediation/IAPOfferInfo;->endTime:Ljava/util/Date;

    if-eqz v3, :cond_7d

    iget-object v3, p0, Lcom/upsight/mediation/IAPOfferInfo;->endTime:Ljava/util/Date;

    iget-object v4, v0, Lcom/upsight/mediation/IAPOfferInfo;->endTime:Ljava/util/Date;

    invoke-virtual {v3, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 52
    :cond_5d
    iget-object v3, p0, Lcom/upsight/mediation/IAPOfferInfo;->metadata:Ljava/lang/String;

    if-eqz v3, :cond_82

    iget-object v3, p0, Lcom/upsight/mediation/IAPOfferInfo;->metadata:Ljava/lang/String;

    iget-object v4, v0, Lcom/upsight/mediation/IAPOfferInfo;->metadata:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6c

    :cond_6b
    move v1, v2

    :cond_6c
    :goto_6c
    move v2, v1

    goto :goto_5

    .line 45
    :cond_6e
    iget-object v3, v0, Lcom/upsight/mediation/IAPOfferInfo;->itemName:Ljava/lang/String;

    if-eqz v3, :cond_33

    goto :goto_5

    .line 47
    :cond_73
    iget-object v3, v0, Lcom/upsight/mediation/IAPOfferInfo;->productID:Ljava/lang/String;

    if-eqz v3, :cond_41

    goto :goto_5

    .line 49
    :cond_78
    iget-object v3, v0, Lcom/upsight/mediation/IAPOfferInfo;->startTime:Ljava/util/Date;

    if-eqz v3, :cond_4f

    goto :goto_5

    .line 51
    :cond_7d
    iget-object v3, v0, Lcom/upsight/mediation/IAPOfferInfo;->endTime:Ljava/util/Date;

    if-eqz v3, :cond_5d

    goto :goto_5

    .line 52
    :cond_82
    iget-object v3, v0, Lcom/upsight/mediation/IAPOfferInfo;->metadata:Ljava/lang/String;

    if-nez v3, :cond_6b

    goto :goto_6c
.end method

.method public hashCode()I
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 58
    iget v2, p0, Lcom/upsight/mediation/IAPOfferInfo;->productPrice:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_5b

    iget v2, p0, Lcom/upsight/mediation/IAPOfferInfo;->productPrice:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 59
    .local v0, "result":I
    :goto_e
    mul-int/lit8 v2, v0, 0x1f

    iget v3, p0, Lcom/upsight/mediation/IAPOfferInfo;->itemAmount:I

    add-int v0, v2, v3

    .line 60
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/upsight/mediation/IAPOfferInfo;->itemName:Ljava/lang/String;

    if-eqz v2, :cond_5d

    iget-object v2, p0, Lcom/upsight/mediation/IAPOfferInfo;->itemName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_20
    add-int v0, v3, v2

    .line 61
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/upsight/mediation/IAPOfferInfo;->productID:Ljava/lang/String;

    if-eqz v2, :cond_5f

    iget-object v2, p0, Lcom/upsight/mediation/IAPOfferInfo;->productID:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2e
    add-int v0, v3, v2

    .line 62
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/upsight/mediation/IAPOfferInfo;->startTime:Ljava/util/Date;

    if-eqz v2, :cond_61

    iget-object v2, p0, Lcom/upsight/mediation/IAPOfferInfo;->startTime:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v2

    :goto_3c
    add-int v0, v3, v2

    .line 63
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/upsight/mediation/IAPOfferInfo;->endTime:Ljava/util/Date;

    if-eqz v2, :cond_63

    iget-object v2, p0, Lcom/upsight/mediation/IAPOfferInfo;->endTime:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v2

    :goto_4a
    add-int v0, v3, v2

    .line 64
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/upsight/mediation/IAPOfferInfo;->metadata:Ljava/lang/String;

    if-eqz v3, :cond_58

    iget-object v1, p0, Lcom/upsight/mediation/IAPOfferInfo;->metadata:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_58
    add-int v0, v2, v1

    .line 65
    return v0

    .end local v0    # "result":I
    :cond_5b
    move v0, v1

    .line 58
    goto :goto_e

    .restart local v0    # "result":I
    :cond_5d
    move v2, v1

    .line 60
    goto :goto_20

    :cond_5f
    move v2, v1

    .line 61
    goto :goto_2e

    :cond_61
    move v2, v1

    .line 62
    goto :goto_3c

    :cond_63
    move v2, v1

    .line 63
    goto :goto_4a
.end method

.method public toJSONString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 70
    :try_start_0
    new-instance v0, Lorg/json/JSONStringer;

    invoke-direct {v0}, Lorg/json/JSONStringer;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v0

    const-string v1, "IAPOfferInfo"

    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v0

    const-string v1, "productPrice"

    .line 72
    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v0

    iget v1, p0, Lcom/upsight/mediation/IAPOfferInfo;->productPrice:F

    float-to-double v2, v1

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONStringer;->value(D)Lorg/json/JSONStringer;

    move-result-object v0

    const-string v1, "itemAmount"

    .line 73
    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v0

    iget v1, p0, Lcom/upsight/mediation/IAPOfferInfo;->itemAmount:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v0

    const-string v1, "itemName"

    .line 74
    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/mediation/IAPOfferInfo;->itemName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v0

    const-string v1, "productID"

    .line 75
    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/mediation/IAPOfferInfo;->productID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v0

    const-string v1, "startTime"

    .line 76
    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    iget-object v0, p0, Lcom/upsight/mediation/IAPOfferInfo;->startTime:Ljava/util/Date;

    if-nez v0, :cond_82

    const-string v0, ""

    :goto_51
    invoke-virtual {v1, v0}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v0

    const-string v1, "endTime"

    .line 77
    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    iget-object v0, p0, Lcom/upsight/mediation/IAPOfferInfo;->endTime:Ljava/util/Date;

    if-nez v0, :cond_8d

    const-string v0, ""

    :goto_61
    invoke-virtual {v1, v0}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v0

    const-string v1, "metadata"

    .line 78
    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    iget-object v0, p0, Lcom/upsight/mediation/IAPOfferInfo;->metadata:Ljava/lang/String;

    if-nez v0, :cond_98

    const-string v0, ""

    :goto_71
    invoke-virtual {v1, v0}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    :goto_81
    return-object v0

    .line 76
    :cond_82
    iget-object v0, p0, Lcom/upsight/mediation/IAPOfferInfo;->startTime:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_51

    .line 77
    :cond_8d
    iget-object v0, p0, Lcom/upsight/mediation/IAPOfferInfo;->endTime:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_61

    .line 78
    :cond_98
    iget-object v0, p0, Lcom/upsight/mediation/IAPOfferInfo;->metadata:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_a2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_a2} :catch_a4

    move-result-object v0

    goto :goto_71

    .line 80
    :catch_a4
    move-exception v0

    .line 81
    const-string v0, "{ \"IAPOfferInfo\" : \"\" }"

    goto :goto_81
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    const/16 v3, 0x27

    .line 24
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "IAPOfferInfo{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 25
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "productPrice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/upsight/mediation/IAPOfferInfo;->productPrice:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 26
    const-string v1, ", itemAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/upsight/mediation/IAPOfferInfo;->itemAmount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 27
    const-string v1, ", itemName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/upsight/mediation/IAPOfferInfo;->itemName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 28
    const-string v1, ", productID=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/upsight/mediation/IAPOfferInfo;->productID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 29
    const-string v1, ", startTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/upsight/mediation/IAPOfferInfo;->startTime:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 30
    const-string v1, ", endTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/upsight/mediation/IAPOfferInfo;->endTime:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 31
    const-string v1, ", metadata=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/upsight/mediation/IAPOfferInfo;->metadata:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 32
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
