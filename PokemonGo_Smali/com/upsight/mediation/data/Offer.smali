.class public Lcom/upsight/mediation/data/Offer;
.super Ljava/lang/Object;
.source "Offer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/mediation/data/Offer$OfferCategory;,
        Lcom/upsight/mediation/data/Offer$OfferType;
    }
.end annotation


# static fields
.field public static final IAP_OFFER:I = 0x33

.field public static final VIRTUAL_GOODS_OFFER:I = 0x34


# instance fields
.field public final adZoneID:I

.field public consumed:Z

.field public final contentId:Ljava/lang/Integer;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final endTime:Ljava/util/Date;

.field public final id:I

.field public final itemId:Ljava/lang/String;

.field public final itemName:Ljava/lang/String;

.field public final itemQuantity:I

.field public final metadata:Ljava/lang/String;

.field public final offerHtml:Ljava/lang/String;

.field public final purchaseCurrency:Ljava/lang/String;

.field public final purchasePrice:F

.field public final startTime:Ljava/util/Date;

.field public final t:I

.field public final type:Lcom/upsight/mediation/data/Offer$OfferType;

.field public final vg_currencyID:I

.field public final vg_virtualGoodID:I

.field public final zoneName:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/Integer;IIILjava/lang/String;ILjava/lang/String;IFLjava/lang/String;Lcom/upsight/mediation/data/Offer$OfferType;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;)V
    .registers 20
    .param p1, "id"    # I
    .param p2, "itemId"    # Ljava/lang/String;
    .param p3, "contentId"    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "vg_virtualGoodID"    # I
    .param p5, "vg_currencyID"    # I
    .param p6, "adZoneID"    # I
    .param p7, "zoneName"    # Ljava/lang/String;
    .param p8, "t"    # I
    .param p9, "itemName"    # Ljava/lang/String;
    .param p10, "itemQuantity"    # I
    .param p11, "purchasePrice"    # F
    .param p12, "purchaseCurrency"    # Ljava/lang/String;
    .param p13, "type"    # Lcom/upsight/mediation/data/Offer$OfferType;
    .param p14, "offerHtml"    # Ljava/lang/String;
    .param p15, "startTime"    # Ljava/util/Date;
    .param p16, "endTime"    # Ljava/util/Date;
    .param p17, "metadata"    # Ljava/lang/String;

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/upsight/mediation/data/Offer;->consumed:Z

    .line 113
    iput p1, p0, Lcom/upsight/mediation/data/Offer;->id:I

    .line 114
    iput-object p2, p0, Lcom/upsight/mediation/data/Offer;->itemId:Ljava/lang/String;

    .line 115
    iput-object p3, p0, Lcom/upsight/mediation/data/Offer;->contentId:Ljava/lang/Integer;

    .line 116
    iput p4, p0, Lcom/upsight/mediation/data/Offer;->vg_virtualGoodID:I

    .line 117
    iput p5, p0, Lcom/upsight/mediation/data/Offer;->vg_currencyID:I

    .line 118
    iput p6, p0, Lcom/upsight/mediation/data/Offer;->adZoneID:I

    .line 119
    iput-object p7, p0, Lcom/upsight/mediation/data/Offer;->zoneName:Ljava/lang/String;

    .line 120
    iput p8, p0, Lcom/upsight/mediation/data/Offer;->t:I

    .line 121
    iput-object p9, p0, Lcom/upsight/mediation/data/Offer;->itemName:Ljava/lang/String;

    .line 122
    iput p10, p0, Lcom/upsight/mediation/data/Offer;->itemQuantity:I

    .line 123
    iput p11, p0, Lcom/upsight/mediation/data/Offer;->purchasePrice:F

    .line 124
    iput-object p12, p0, Lcom/upsight/mediation/data/Offer;->purchaseCurrency:Ljava/lang/String;

    .line 125
    iput-object p13, p0, Lcom/upsight/mediation/data/Offer;->type:Lcom/upsight/mediation/data/Offer$OfferType;

    .line 126
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/upsight/mediation/data/Offer;->offerHtml:Ljava/lang/String;

    .line 127
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/upsight/mediation/data/Offer;->startTime:Ljava/util/Date;

    .line 128
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/upsight/mediation/data/Offer;->endTime:Ljava/util/Date;

    .line 129
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/upsight/mediation/data/Offer;->metadata:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public static createFromValues(Ljava/util/HashMap;)Lcom/upsight/mediation/data/Offer;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/upsight/mediation/data/Offer;"
        }
    .end annotation

    .prologue
    .line 169
    .local p0, "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v20, Lcom/upsight/mediation/util/HashMapCaster;

    invoke-direct/range {v20 .. v21}, Lcom/upsight/mediation/util/HashMapCaster;-><init>(Ljava/util/HashMap;)V

    .line 170
    .local v20, "map":Lcom/upsight/mediation/util/HashMapCaster;
    const-string v2, "content_id"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/upsight/mediation/util/HashMapCaster;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 171
    .local v5, "contentId":Ljava/lang/Integer;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_19

    .line 172
    const/4 v5, 0x0

    .line 175
    :cond_19
    new-instance v2, Lcom/upsight/mediation/data/Offer;

    const-string v3, "offer_id"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/upsight/mediation/util/HashMapCaster;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "bundle_id"

    .line 176
    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/upsight/mediation/util/HashMapCaster;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "virtualgoodID"

    .line 178
    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Lcom/upsight/mediation/util/HashMapCaster;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string v7, "currencyID"

    .line 179
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/upsight/mediation/util/HashMapCaster;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string v8, "id"

    .line 180
    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Lcom/upsight/mediation/util/HashMapCaster;->getInt(Ljava/lang/String;)I

    move-result v8

    const-string v9, "zone_id"

    .line 181
    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Lcom/upsight/mediation/util/HashMapCaster;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "t"

    .line 182
    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Lcom/upsight/mediation/util/HashMapCaster;->getInt(Ljava/lang/String;)I

    move-result v10

    const-string v11, "item"

    .line 183
    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Lcom/upsight/mediation/util/HashMapCaster;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "itemQty"

    const/4 v13, 0x0

    .line 184
    move-object/from16 v0, v20

    invoke-virtual {v0, v12, v13}, Lcom/upsight/mediation/util/HashMapCaster;->getInt(Ljava/lang/String;I)I

    move-result v12

    const-string v13, "price"

    const/4 v14, 0x0

    .line 185
    move-object/from16 v0, v20

    invoke-virtual {v0, v13, v14}, Lcom/upsight/mediation/util/HashMapCaster;->getFloat(Ljava/lang/String;F)F

    move-result v13

    const-string v14, "currency"

    .line 186
    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Lcom/upsight/mediation/util/HashMapCaster;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "type"

    .line 187
    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Lcom/upsight/mediation/util/HashMapCaster;->getInt(Ljava/lang/String;)I

    move-result v15

    invoke-static {v15}, Lcom/upsight/mediation/data/Offer$OfferType;->getType(I)Lcom/upsight/mediation/data/Offer$OfferType;

    move-result-object v15

    const-string v16, "script"

    .line 188
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/upsight/mediation/util/HashMapCaster;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v17, "start_date"

    .line 189
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/upsight/mediation/util/HashMapCaster;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v17

    const-string v18, "end_date"

    .line 190
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/upsight/mediation/util/HashMapCaster;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v18

    const-string v19, "metadata"

    .line 191
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/upsight/mediation/util/HashMapCaster;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v2 .. v19}, Lcom/upsight/mediation/data/Offer;-><init>(ILjava/lang/String;Ljava/lang/Integer;IIILjava/lang/String;ILjava/lang/String;IFLjava/lang/String;Lcom/upsight/mediation/data/Offer$OfferType;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method public consume()V
    .registers 2

    .prologue
    .line 159
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/upsight/mediation/data/Offer;->consumed:Z

    .line 160
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 196
    if-ne p0, p1, :cond_6

    move v2, v1

    .line 256
    :cond_5
    :goto_5
    return v2

    .line 199
    :cond_6
    if-eqz p1, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v3, v4, :cond_5

    move-object v0, p1

    .line 203
    check-cast v0, Lcom/upsight/mediation/data/Offer;

    .line 205
    .local v0, "offer":Lcom/upsight/mediation/data/Offer;
    iget v3, p0, Lcom/upsight/mediation/data/Offer;->id:I

    iget v4, v0, Lcom/upsight/mediation/data/Offer;->id:I

    if-ne v3, v4, :cond_5

    .line 208
    iget-object v3, p0, Lcom/upsight/mediation/data/Offer;->contentId:Ljava/lang/Integer;

    if-eqz v3, :cond_d1

    iget-object v3, p0, Lcom/upsight/mediation/data/Offer;->contentId:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/upsight/mediation/data/Offer;->contentId:Ljava/lang/Integer;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 211
    :cond_29
    iget v3, p0, Lcom/upsight/mediation/data/Offer;->vg_virtualGoodID:I

    iget v4, v0, Lcom/upsight/mediation/data/Offer;->vg_virtualGoodID:I

    if-ne v3, v4, :cond_5

    .line 214
    iget v3, p0, Lcom/upsight/mediation/data/Offer;->vg_currencyID:I

    iget v4, v0, Lcom/upsight/mediation/data/Offer;->vg_currencyID:I

    if-ne v3, v4, :cond_5

    .line 217
    iget v3, p0, Lcom/upsight/mediation/data/Offer;->adZoneID:I

    iget v4, v0, Lcom/upsight/mediation/data/Offer;->adZoneID:I

    if-ne v3, v4, :cond_5

    .line 220
    iget v3, p0, Lcom/upsight/mediation/data/Offer;->t:I

    iget v4, v0, Lcom/upsight/mediation/data/Offer;->t:I

    if-ne v3, v4, :cond_5

    .line 223
    iget v3, p0, Lcom/upsight/mediation/data/Offer;->itemQuantity:I

    iget v4, v0, Lcom/upsight/mediation/data/Offer;->itemQuantity:I

    if-ne v3, v4, :cond_5

    .line 226
    iget v3, v0, Lcom/upsight/mediation/data/Offer;->purchasePrice:F

    iget v4, p0, Lcom/upsight/mediation/data/Offer;->purchasePrice:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_5

    .line 229
    iget-boolean v3, p0, Lcom/upsight/mediation/data/Offer;->consumed:Z

    iget-boolean v4, v0, Lcom/upsight/mediation/data/Offer;->consumed:Z

    if-ne v3, v4, :cond_5

    .line 232
    iget-object v3, p0, Lcom/upsight/mediation/data/Offer;->itemId:Ljava/lang/String;

    if-eqz v3, :cond_d7

    iget-object v3, p0, Lcom/upsight/mediation/data/Offer;->itemId:Ljava/lang/String;

    iget-object v4, v0, Lcom/upsight/mediation/data/Offer;->itemId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 235
    :cond_65
    iget-object v3, p0, Lcom/upsight/mediation/data/Offer;->zoneName:Ljava/lang/String;

    if-eqz v3, :cond_dd

    iget-object v3, p0, Lcom/upsight/mediation/data/Offer;->zoneName:Ljava/lang/String;

    iget-object v4, v0, Lcom/upsight/mediation/data/Offer;->zoneName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 238
    :cond_73
    iget-object v3, p0, Lcom/upsight/mediation/data/Offer;->itemName:Ljava/lang/String;

    if-eqz v3, :cond_e3

    iget-object v3, p0, Lcom/upsight/mediation/data/Offer;->itemName:Ljava/lang/String;

    iget-object v4, v0, Lcom/upsight/mediation/data/Offer;->itemName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 241
    :cond_81
    iget-object v3, p0, Lcom/upsight/mediation/data/Offer;->purchaseCurrency:Ljava/lang/String;

    if-eqz v3, :cond_e9

    iget-object v3, p0, Lcom/upsight/mediation/data/Offer;->purchaseCurrency:Ljava/lang/String;

    iget-object v4, v0, Lcom/upsight/mediation/data/Offer;->purchaseCurrency:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 244
    :cond_8f
    iget-object v3, p0, Lcom/upsight/mediation/data/Offer;->type:Lcom/upsight/mediation/data/Offer$OfferType;

    iget-object v4, v0, Lcom/upsight/mediation/data/Offer;->type:Lcom/upsight/mediation/data/Offer$OfferType;

    if-ne v3, v4, :cond_5

    .line 247
    iget-object v3, p0, Lcom/upsight/mediation/data/Offer;->offerHtml:Ljava/lang/String;

    if-eqz v3, :cond_ef

    iget-object v3, p0, Lcom/upsight/mediation/data/Offer;->offerHtml:Ljava/lang/String;

    iget-object v4, v0, Lcom/upsight/mediation/data/Offer;->offerHtml:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 250
    :cond_a3
    iget-object v3, p0, Lcom/upsight/mediation/data/Offer;->startTime:Ljava/util/Date;

    if-eqz v3, :cond_f5

    iget-object v3, p0, Lcom/upsight/mediation/data/Offer;->startTime:Ljava/util/Date;

    iget-object v4, v0, Lcom/upsight/mediation/data/Offer;->startTime:Ljava/util/Date;

    invoke-virtual {v3, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 253
    :cond_b1
    iget-object v3, p0, Lcom/upsight/mediation/data/Offer;->endTime:Ljava/util/Date;

    if-eqz v3, :cond_fb

    iget-object v3, p0, Lcom/upsight/mediation/data/Offer;->endTime:Ljava/util/Date;

    iget-object v4, v0, Lcom/upsight/mediation/data/Offer;->endTime:Ljava/util/Date;

    invoke-virtual {v3, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 256
    :cond_bf
    iget-object v3, p0, Lcom/upsight/mediation/data/Offer;->metadata:Ljava/lang/String;

    if-eqz v3, :cond_101

    iget-object v3, p0, Lcom/upsight/mediation/data/Offer;->metadata:Ljava/lang/String;

    iget-object v4, v0, Lcom/upsight/mediation/data/Offer;->metadata:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_ce

    :cond_cd
    move v1, v2

    :cond_ce
    :goto_ce
    move v2, v1

    goto/16 :goto_5

    .line 208
    :cond_d1
    iget-object v3, v0, Lcom/upsight/mediation/data/Offer;->contentId:Ljava/lang/Integer;

    if-eqz v3, :cond_29

    goto/16 :goto_5

    .line 232
    :cond_d7
    iget-object v3, v0, Lcom/upsight/mediation/data/Offer;->itemId:Ljava/lang/String;

    if-eqz v3, :cond_65

    goto/16 :goto_5

    .line 235
    :cond_dd
    iget-object v3, v0, Lcom/upsight/mediation/data/Offer;->zoneName:Ljava/lang/String;

    if-eqz v3, :cond_73

    goto/16 :goto_5

    .line 238
    :cond_e3
    iget-object v3, v0, Lcom/upsight/mediation/data/Offer;->itemName:Ljava/lang/String;

    if-eqz v3, :cond_81

    goto/16 :goto_5

    .line 241
    :cond_e9
    iget-object v3, v0, Lcom/upsight/mediation/data/Offer;->purchaseCurrency:Ljava/lang/String;

    if-eqz v3, :cond_8f

    goto/16 :goto_5

    .line 247
    :cond_ef
    iget-object v3, v0, Lcom/upsight/mediation/data/Offer;->offerHtml:Ljava/lang/String;

    if-eqz v3, :cond_a3

    goto/16 :goto_5

    .line 250
    :cond_f5
    iget-object v3, v0, Lcom/upsight/mediation/data/Offer;->startTime:Ljava/util/Date;

    if-eqz v3, :cond_b1

    goto/16 :goto_5

    .line 253
    :cond_fb
    iget-object v3, v0, Lcom/upsight/mediation/data/Offer;->endTime:Ljava/util/Date;

    if-eqz v3, :cond_bf

    goto/16 :goto_5

    .line 256
    :cond_101
    iget-object v3, v0, Lcom/upsight/mediation/data/Offer;->metadata:Ljava/lang/String;

    if-nez v3, :cond_cd

    goto :goto_ce
.end method

.method public getInfo()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 133
    iget v1, p0, Lcom/upsight/mediation/data/Offer;->t:I

    const/16 v2, 0x33

    if-ne v1, v2, :cond_28

    .line 134
    new-instance v0, Lcom/upsight/mediation/IAPOfferInfo;

    invoke-direct {v0}, Lcom/upsight/mediation/IAPOfferInfo;-><init>()V

    .line 135
    .local v0, "info":Lcom/upsight/mediation/IAPOfferInfo;
    iget v1, p0, Lcom/upsight/mediation/data/Offer;->itemQuantity:I

    iput v1, v0, Lcom/upsight/mediation/IAPOfferInfo;->itemAmount:I

    .line 136
    iget v1, p0, Lcom/upsight/mediation/data/Offer;->purchasePrice:F

    iput v1, v0, Lcom/upsight/mediation/IAPOfferInfo;->productPrice:F

    .line 137
    iget-object v1, p0, Lcom/upsight/mediation/data/Offer;->itemName:Ljava/lang/String;

    iput-object v1, v0, Lcom/upsight/mediation/IAPOfferInfo;->itemName:Ljava/lang/String;

    .line 138
    iget-object v1, p0, Lcom/upsight/mediation/data/Offer;->itemId:Ljava/lang/String;

    iput-object v1, v0, Lcom/upsight/mediation/IAPOfferInfo;->productID:Ljava/lang/String;

    .line 139
    iget-object v1, p0, Lcom/upsight/mediation/data/Offer;->startTime:Ljava/util/Date;

    iput-object v1, v0, Lcom/upsight/mediation/IAPOfferInfo;->startTime:Ljava/util/Date;

    .line 140
    iget-object v1, p0, Lcom/upsight/mediation/data/Offer;->endTime:Ljava/util/Date;

    iput-object v1, v0, Lcom/upsight/mediation/IAPOfferInfo;->endTime:Ljava/util/Date;

    .line 141
    iget-object v1, p0, Lcom/upsight/mediation/data/Offer;->metadata:Ljava/lang/String;

    iput-object v1, v0, Lcom/upsight/mediation/IAPOfferInfo;->metadata:Ljava/lang/String;

    .line 154
    .end local v0    # "info":Lcom/upsight/mediation/IAPOfferInfo;
    :goto_27
    return-object v0

    .line 144
    :cond_28
    new-instance v0, Lcom/upsight/mediation/VGOfferInfo;

    invoke-direct {v0}, Lcom/upsight/mediation/VGOfferInfo;-><init>()V

    .line 145
    .local v0, "info":Lcom/upsight/mediation/VGOfferInfo;
    iget-object v1, p0, Lcom/upsight/mediation/data/Offer;->purchaseCurrency:Ljava/lang/String;

    iput-object v1, v0, Lcom/upsight/mediation/VGOfferInfo;->purchaseCurrency:Ljava/lang/String;

    .line 146
    iget v1, p0, Lcom/upsight/mediation/data/Offer;->purchasePrice:F

    iput v1, v0, Lcom/upsight/mediation/VGOfferInfo;->purchasePrice:F

    .line 147
    iget-object v1, p0, Lcom/upsight/mediation/data/Offer;->itemName:Ljava/lang/String;

    iput-object v1, v0, Lcom/upsight/mediation/VGOfferInfo;->itemName:Ljava/lang/String;

    .line 148
    iget v1, p0, Lcom/upsight/mediation/data/Offer;->itemQuantity:I

    iput v1, v0, Lcom/upsight/mediation/VGOfferInfo;->itemAmount:I

    .line 149
    iget v1, p0, Lcom/upsight/mediation/data/Offer;->vg_virtualGoodID:I

    iput v1, v0, Lcom/upsight/mediation/VGOfferInfo;->virtualGoodID:I

    .line 150
    iget v1, p0, Lcom/upsight/mediation/data/Offer;->vg_currencyID:I

    iput v1, v0, Lcom/upsight/mediation/VGOfferInfo;->currencyID:I

    .line 151
    iget-object v1, p0, Lcom/upsight/mediation/data/Offer;->startTime:Ljava/util/Date;

    iput-object v1, v0, Lcom/upsight/mediation/VGOfferInfo;->startTime:Ljava/util/Date;

    .line 152
    iget-object v1, p0, Lcom/upsight/mediation/data/Offer;->endTime:Ljava/util/Date;

    iput-object v1, v0, Lcom/upsight/mediation/VGOfferInfo;->endTime:Ljava/util/Date;

    .line 153
    iget-object v1, p0, Lcom/upsight/mediation/data/Offer;->metadata:Ljava/lang/String;

    iput-object v1, v0, Lcom/upsight/mediation/VGOfferInfo;->metadata:Ljava/lang/String;

    goto :goto_27
.end method

.method public hashCode()I
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 262
    iget v0, p0, Lcom/upsight/mediation/data/Offer;->id:I

    .line 263
    .local v0, "result":I
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/upsight/mediation/data/Offer;->itemId:Ljava/lang/String;

    if-eqz v1, :cond_c8

    iget-object v1, p0, Lcom/upsight/mediation/data/Offer;->itemId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_f
    add-int v0, v3, v1

    .line 264
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/upsight/mediation/data/Offer;->contentId:Ljava/lang/Integer;

    if-eqz v1, :cond_cb

    iget-object v1, p0, Lcom/upsight/mediation/data/Offer;->contentId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :goto_1d
    add-int v0, v3, v1

    .line 265
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Lcom/upsight/mediation/data/Offer;->vg_virtualGoodID:I

    add-int v0, v1, v3

    .line 266
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Lcom/upsight/mediation/data/Offer;->vg_currencyID:I

    add-int v0, v1, v3

    .line 267
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Lcom/upsight/mediation/data/Offer;->adZoneID:I

    add-int v0, v1, v3

    .line 268
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/upsight/mediation/data/Offer;->zoneName:Ljava/lang/String;

    if-eqz v1, :cond_ce

    iget-object v1, p0, Lcom/upsight/mediation/data/Offer;->zoneName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_3d
    add-int v0, v3, v1

    .line 269
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Lcom/upsight/mediation/data/Offer;->t:I

    add-int v0, v1, v3

    .line 270
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/upsight/mediation/data/Offer;->itemName:Ljava/lang/String;

    if-eqz v1, :cond_d1

    iget-object v1, p0, Lcom/upsight/mediation/data/Offer;->itemName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_51
    add-int v0, v3, v1

    .line 271
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Lcom/upsight/mediation/data/Offer;->itemQuantity:I

    add-int v0, v1, v3

    .line 272
    mul-int/lit8 v3, v0, 0x1f

    iget v1, p0, Lcom/upsight/mediation/data/Offer;->purchasePrice:F

    const/4 v4, 0x0

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_d4

    iget v1, p0, Lcom/upsight/mediation/data/Offer;->purchasePrice:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    :goto_68
    add-int v0, v3, v1

    .line 273
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/upsight/mediation/data/Offer;->purchaseCurrency:Ljava/lang/String;

    if-eqz v1, :cond_d6

    iget-object v1, p0, Lcom/upsight/mediation/data/Offer;->purchaseCurrency:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_76
    add-int v0, v3, v1

    .line 274
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/upsight/mediation/data/Offer;->type:Lcom/upsight/mediation/data/Offer$OfferType;

    if-eqz v1, :cond_d8

    iget-object v1, p0, Lcom/upsight/mediation/data/Offer;->type:Lcom/upsight/mediation/data/Offer$OfferType;

    invoke-virtual {v1}, Lcom/upsight/mediation/data/Offer$OfferType;->hashCode()I

    move-result v1

    :goto_84
    add-int v0, v3, v1

    .line 275
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/upsight/mediation/data/Offer;->offerHtml:Ljava/lang/String;

    if-eqz v1, :cond_da

    iget-object v1, p0, Lcom/upsight/mediation/data/Offer;->offerHtml:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_92
    add-int v0, v3, v1

    .line 276
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/upsight/mediation/data/Offer;->startTime:Ljava/util/Date;

    if-eqz v1, :cond_dc

    iget-object v1, p0, Lcom/upsight/mediation/data/Offer;->startTime:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->hashCode()I

    move-result v1

    :goto_a0
    add-int v0, v3, v1

    .line 277
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/upsight/mediation/data/Offer;->endTime:Ljava/util/Date;

    if-eqz v1, :cond_de

    iget-object v1, p0, Lcom/upsight/mediation/data/Offer;->endTime:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->hashCode()I

    move-result v1

    :goto_ae
    add-int v0, v3, v1

    .line 278
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/upsight/mediation/data/Offer;->metadata:Ljava/lang/String;

    if-eqz v1, :cond_e0

    iget-object v1, p0, Lcom/upsight/mediation/data/Offer;->metadata:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_bc
    add-int v0, v3, v1

    .line 279
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v3, p0, Lcom/upsight/mediation/data/Offer;->consumed:Z

    if-eqz v3, :cond_c5

    const/4 v2, 0x1

    :cond_c5
    add-int v0, v1, v2

    .line 280
    return v0

    :cond_c8
    move v1, v2

    .line 263
    goto/16 :goto_f

    :cond_cb
    move v1, v2

    .line 264
    goto/16 :goto_1d

    :cond_ce
    move v1, v2

    .line 268
    goto/16 :goto_3d

    :cond_d1
    move v1, v2

    .line 270
    goto/16 :goto_51

    :cond_d4
    move v1, v2

    .line 272
    goto :goto_68

    :cond_d6
    move v1, v2

    .line 273
    goto :goto_76

    :cond_d8
    move v1, v2

    .line 274
    goto :goto_84

    :cond_da
    move v1, v2

    .line 275
    goto :goto_92

    :cond_dc
    move v1, v2

    .line 276
    goto :goto_a0

    :cond_de
    move v1, v2

    .line 277
    goto :goto_ae

    :cond_e0
    move v1, v2

    .line 278
    goto :goto_bc
.end method

.method public isExpired(Ljava/util/Date;)Z
    .registers 3
    .param p1, "currentTime"    # Ljava/util/Date;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 164
    iget-object v0, p0, Lcom/upsight/mediation/data/Offer;->endTime:Ljava/util/Date;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/upsight/mediation/data/Offer;->endTime:Ljava/util/Date;

    invoke-virtual {v0, p1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    const/16 v2, 0x27

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Offer{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/upsight/mediation/data/Offer;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", itemId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/mediation/data/Offer;->itemId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", contentId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/mediation/data/Offer;->contentId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", vg_virtualGoodID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/upsight/mediation/data/Offer;->vg_virtualGoodID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", vg_currencyID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/upsight/mediation/data/Offer;->vg_currencyID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", adZoneID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/upsight/mediation/data/Offer;->adZoneID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", zoneName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/mediation/data/Offer;->zoneName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", t="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/upsight/mediation/data/Offer;->t:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", itemName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/mediation/data/Offer;->itemName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", itemQuantity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/upsight/mediation/data/Offer;->itemQuantity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", purchasePrice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/upsight/mediation/data/Offer;->purchasePrice:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", purchaseCurrency=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/mediation/data/Offer;->purchaseCurrency:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/mediation/data/Offer;->type:Lcom/upsight/mediation/data/Offer$OfferType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", offerHtml=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/mediation/data/Offer;->offerHtml:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", startTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/mediation/data/Offer;->startTime:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", endTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/mediation/data/Offer;->endTime:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", metadata=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/mediation/data/Offer;->metadata:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", consumed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/upsight/mediation/data/Offer;->consumed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
