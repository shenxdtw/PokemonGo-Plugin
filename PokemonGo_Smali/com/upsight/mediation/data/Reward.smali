.class public Lcom/upsight/mediation/data/Reward;
.super Ljava/lang/Object;
.source "Reward.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Reward"


# instance fields
.field public final itemId:I

.field public final offerId:I

.field public final postRollMessage:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final preRollMessage:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final rewardAmount:I

.field public final rewardItem:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public richMediaPostrollScript:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public richMediaPrerollScript:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final zoneId:I

.field public final zoneName:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;)V
    .registers 11
    .param p1, "preRollMessage"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "postRollMessage"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "richMediaPrerollScript"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "richMediaPostrollScript"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "rewardItem"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6, "rewardAmount"    # I
    .param p7, "itemId"    # I
    .param p8, "offerId"    # I
    .param p9, "zoneId"    # I
    .param p10, "zoneName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    if-nez p1, :cond_7

    const-string p1, ""

    .end local p1    # "preRollMessage":Ljava/lang/String;
    :cond_7
    iput-object p1, p0, Lcom/upsight/mediation/data/Reward;->preRollMessage:Ljava/lang/String;

    .line 47
    if-nez p2, :cond_d

    const-string p2, ""

    .end local p2    # "postRollMessage":Ljava/lang/String;
    :cond_d
    iput-object p2, p0, Lcom/upsight/mediation/data/Reward;->postRollMessage:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Lcom/upsight/mediation/data/Reward;->richMediaPrerollScript:Ljava/lang/String;

    .line 49
    iput-object p4, p0, Lcom/upsight/mediation/data/Reward;->richMediaPostrollScript:Ljava/lang/String;

    .line 50
    iput-object p5, p0, Lcom/upsight/mediation/data/Reward;->rewardItem:Ljava/lang/String;

    .line 51
    iput p6, p0, Lcom/upsight/mediation/data/Reward;->rewardAmount:I

    .line 52
    iput p7, p0, Lcom/upsight/mediation/data/Reward;->itemId:I

    .line 53
    iput p8, p0, Lcom/upsight/mediation/data/Reward;->offerId:I

    .line 54
    iput p9, p0, Lcom/upsight/mediation/data/Reward;->zoneId:I

    .line 55
    iput-object p10, p0, Lcom/upsight/mediation/data/Reward;->zoneName:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public static createFromValues(Ljava/util/HashMap;)Lcom/upsight/mediation/data/Reward;
    .registers 13
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/upsight/mediation/data/Reward;"
        }
    .end annotation

    .prologue
    .line 139
    .local p0, "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v11, Lcom/upsight/mediation/util/HashMapCaster;

    invoke-direct {v11, p0}, Lcom/upsight/mediation/util/HashMapCaster;-><init>(Ljava/util/HashMap;)V

    .line 140
    .local v11, "map":Lcom/upsight/mediation/util/HashMapCaster;
    const-string v0, "reward"

    invoke-virtual {v11, v0}, Lcom/upsight/mediation/util/HashMapCaster;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 141
    .local v5, "reward":Ljava/lang/String;
    const-string v0, "zone_id"

    invoke-virtual {v11, v0}, Lcom/upsight/mediation/util/HashMapCaster;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 142
    .local v10, "zoneId":Ljava/lang/String;
    if-eqz v5, :cond_15

    if-nez v10, :cond_33

    .line 143
    :cond_15
    const-string v0, "Reward"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reward ignored due to missing values: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/upsight/mediation/log/FuseLog;->public_w(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const/4 v0, 0x0

    .line 154
    :goto_32
    return-object v0

    .line 146
    :cond_33
    new-instance v0, Lcom/upsight/mediation/data/Reward;

    const-string v1, "pre_roll"

    invoke-virtual {v11, v1}, Lcom/upsight/mediation/util/HashMapCaster;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "post_roll"

    .line 147
    invoke-virtual {v11, v2}, Lcom/upsight/mediation/util/HashMapCaster;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pre_roll_script"

    .line 148
    invoke-virtual {v11, v3}, Lcom/upsight/mediation/util/HashMapCaster;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "post_roll_script"

    .line 149
    invoke-virtual {v11, v4}, Lcom/upsight/mediation/util/HashMapCaster;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "amount"

    const/4 v7, 0x0

    .line 151
    invoke-virtual {v11, v6, v7}, Lcom/upsight/mediation/util/HashMapCaster;->getInt(Ljava/lang/String;I)I

    move-result v6

    const-string v7, "item_id"

    .line 152
    invoke-virtual {v11, v7}, Lcom/upsight/mediation/util/HashMapCaster;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string v8, "offer_id"

    .line 153
    invoke-virtual {v11, v8}, Lcom/upsight/mediation/util/HashMapCaster;->getInt(Ljava/lang/String;)I

    move-result v8

    const-string v9, "id"

    .line 154
    invoke-virtual {v11, v9}, Lcom/upsight/mediation/util/HashMapCaster;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-direct/range {v0 .. v10}, Lcom/upsight/mediation/data/Reward;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;)V

    goto :goto_32
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 90
    if-ne p0, p1, :cond_6

    move v2, v1

    .line 120
    :cond_5
    :goto_5
    return v2

    .line 93
    :cond_6
    if-eqz p1, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v3, v4, :cond_5

    move-object v0, p1

    .line 97
    check-cast v0, Lcom/upsight/mediation/data/Reward;

    .line 99
    .local v0, "reward":Lcom/upsight/mediation/data/Reward;
    iget v3, p0, Lcom/upsight/mediation/data/Reward;->rewardAmount:I

    iget v4, v0, Lcom/upsight/mediation/data/Reward;->rewardAmount:I

    if-ne v3, v4, :cond_5

    .line 102
    iget v3, p0, Lcom/upsight/mediation/data/Reward;->itemId:I

    iget v4, v0, Lcom/upsight/mediation/data/Reward;->itemId:I

    if-ne v3, v4, :cond_5

    .line 105
    iget v3, p0, Lcom/upsight/mediation/data/Reward;->offerId:I

    iget v4, v0, Lcom/upsight/mediation/data/Reward;->offerId:I

    if-ne v3, v4, :cond_5

    .line 108
    iget v3, p0, Lcom/upsight/mediation/data/Reward;->zoneId:I

    iget v4, v0, Lcom/upsight/mediation/data/Reward;->zoneId:I

    if-ne v3, v4, :cond_5

    .line 111
    iget-object v3, p0, Lcom/upsight/mediation/data/Reward;->preRollMessage:Ljava/lang/String;

    if-eqz v3, :cond_68

    iget-object v3, p0, Lcom/upsight/mediation/data/Reward;->preRollMessage:Ljava/lang/String;

    iget-object v4, v0, Lcom/upsight/mediation/data/Reward;->preRollMessage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 114
    :cond_3b
    iget-object v3, p0, Lcom/upsight/mediation/data/Reward;->postRollMessage:Ljava/lang/String;

    if-eqz v3, :cond_6d

    iget-object v3, p0, Lcom/upsight/mediation/data/Reward;->postRollMessage:Ljava/lang/String;

    iget-object v4, v0, Lcom/upsight/mediation/data/Reward;->postRollMessage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 117
    :cond_49
    iget-object v3, p0, Lcom/upsight/mediation/data/Reward;->rewardItem:Ljava/lang/String;

    if-eqz v3, :cond_72

    iget-object v3, p0, Lcom/upsight/mediation/data/Reward;->rewardItem:Ljava/lang/String;

    iget-object v4, v0, Lcom/upsight/mediation/data/Reward;->rewardItem:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 120
    :cond_57
    iget-object v3, p0, Lcom/upsight/mediation/data/Reward;->zoneName:Ljava/lang/String;

    if-eqz v3, :cond_77

    iget-object v3, p0, Lcom/upsight/mediation/data/Reward;->zoneName:Ljava/lang/String;

    iget-object v4, v0, Lcom/upsight/mediation/data/Reward;->zoneName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_66

    :cond_65
    move v1, v2

    :cond_66
    :goto_66
    move v2, v1

    goto :goto_5

    .line 111
    :cond_68
    iget-object v3, v0, Lcom/upsight/mediation/data/Reward;->preRollMessage:Ljava/lang/String;

    if-eqz v3, :cond_3b

    goto :goto_5

    .line 114
    :cond_6d
    iget-object v3, v0, Lcom/upsight/mediation/data/Reward;->postRollMessage:Ljava/lang/String;

    if-eqz v3, :cond_49

    goto :goto_5

    .line 117
    :cond_72
    iget-object v3, v0, Lcom/upsight/mediation/data/Reward;->rewardItem:Ljava/lang/String;

    if-eqz v3, :cond_57

    goto :goto_5

    .line 120
    :cond_77
    iget-object v3, v0, Lcom/upsight/mediation/data/Reward;->zoneName:Ljava/lang/String;

    if-nez v3, :cond_65

    goto :goto_66
.end method

.method public getInfo()Lcom/upsight/mediation/RewardedInfo;
    .registers 7
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 64
    new-instance v0, Lcom/upsight/mediation/RewardedInfo;

    iget-object v1, p0, Lcom/upsight/mediation/data/Reward;->preRollMessage:Ljava/lang/String;

    iget-object v2, p0, Lcom/upsight/mediation/data/Reward;->postRollMessage:Ljava/lang/String;

    iget-object v3, p0, Lcom/upsight/mediation/data/Reward;->rewardItem:Ljava/lang/String;

    iget v4, p0, Lcom/upsight/mediation/data/Reward;->rewardAmount:I

    iget v5, p0, Lcom/upsight/mediation/data/Reward;->itemId:I

    invoke-direct/range {v0 .. v5}, Lcom/upsight/mediation/RewardedInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 69
    .local v0, "info":Lcom/upsight/mediation/RewardedInfo;
    return-object v0
.end method

.method public hasPostRollMessage()Z
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/upsight/mediation/data/Reward;->postRollMessage:Ljava/lang/String;

    invoke-static {v0}, Lcom/upsight/mediation/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasPreRollMessage()Z
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/upsight/mediation/data/Reward;->preRollMessage:Ljava/lang/String;

    invoke-static {v0}, Lcom/upsight/mediation/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasRichMediaPostroll()Z
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/upsight/mediation/data/Reward;->richMediaPostrollScript:Ljava/lang/String;

    invoke-static {v0}, Lcom/upsight/mediation/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasRichMediaPreroll()Z
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/upsight/mediation/data/Reward;->richMediaPrerollScript:Ljava/lang/String;

    invoke-static {v0}, Lcom/upsight/mediation/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hashCode()I
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 126
    iget-object v2, p0, Lcom/upsight/mediation/data/Reward;->preRollMessage:Ljava/lang/String;

    if-eqz v2, :cond_4e

    iget-object v2, p0, Lcom/upsight/mediation/data/Reward;->preRollMessage:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 127
    .local v0, "result":I
    :goto_b
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/upsight/mediation/data/Reward;->postRollMessage:Ljava/lang/String;

    if-eqz v2, :cond_50

    iget-object v2, p0, Lcom/upsight/mediation/data/Reward;->postRollMessage:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_17
    add-int v0, v3, v2

    .line 128
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/upsight/mediation/data/Reward;->rewardItem:Ljava/lang/String;

    if-eqz v2, :cond_52

    iget-object v2, p0, Lcom/upsight/mediation/data/Reward;->rewardItem:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_25
    add-int v0, v3, v2

    .line 129
    mul-int/lit8 v2, v0, 0x1f

    iget v3, p0, Lcom/upsight/mediation/data/Reward;->rewardAmount:I

    add-int v0, v2, v3

    .line 130
    mul-int/lit8 v2, v0, 0x1f

    iget v3, p0, Lcom/upsight/mediation/data/Reward;->itemId:I

    add-int v0, v2, v3

    .line 131
    mul-int/lit8 v2, v0, 0x1f

    iget v3, p0, Lcom/upsight/mediation/data/Reward;->offerId:I

    add-int v0, v2, v3

    .line 132
    mul-int/lit8 v2, v0, 0x1f

    iget v3, p0, Lcom/upsight/mediation/data/Reward;->zoneId:I

    add-int v0, v2, v3

    .line 133
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/upsight/mediation/data/Reward;->zoneName:Ljava/lang/String;

    if-eqz v3, :cond_4b

    iget-object v1, p0, Lcom/upsight/mediation/data/Reward;->zoneName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_4b
    add-int v0, v2, v1

    .line 134
    return v0

    .end local v0    # "result":I
    :cond_4e
    move v0, v1

    .line 126
    goto :goto_b

    .restart local v0    # "result":I
    :cond_50
    move v2, v1

    .line 127
    goto :goto_17

    :cond_52
    move v2, v1

    .line 128
    goto :goto_25
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RewardObject {zoneId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/upsight/mediation/data/Reward;->zoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", offerId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/upsight/mediation/data/Reward;->offerId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", itemId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/upsight/mediation/data/Reward;->itemId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rewardItem: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/mediation/data/Reward;->rewardItem:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rewardAmount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/upsight/mediation/data/Reward;->rewardAmount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", preRollMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/mediation/data/Reward;->preRollMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rewardMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/mediation/data/Reward;->postRollMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
