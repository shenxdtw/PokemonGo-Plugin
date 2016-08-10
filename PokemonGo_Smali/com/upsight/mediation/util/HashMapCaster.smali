.class public Lcom/upsight/mediation/util/HashMapCaster;
.super Ljava/lang/Object;
.source "HashMapCaster.java"


# instance fields
.field private final map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/HashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/upsight/mediation/util/HashMapCaster;->map:Ljava/util/HashMap;

    .line 21
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lcom/upsight/mediation/util/HashMapCaster;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAPIVersion(Ljava/lang/String;)Lcom/upsight/mediation/data/APIVersion;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 69
    iget-object v1, p0, Lcom/upsight/mediation/util/HashMapCaster;->map:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 70
    .local v0, "val":Ljava/lang/String;
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_12

    .line 71
    :cond_10
    const/4 v1, 0x0

    .line 73
    :goto_11
    return-object v1

    :cond_12
    new-instance v1, Lcom/upsight/mediation/data/APIVersion;

    invoke-direct {v1, v0}, Lcom/upsight/mediation/data/APIVersion;-><init>(Ljava/lang/String;)V

    goto :goto_11
.end method

.method public getAPIVersions(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 9
    .param p1, "key"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/upsight/mediation/data/APIVersion;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 78
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v3, "versions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/upsight/mediation/data/APIVersion;>;"
    iget-object v5, p0, Lcom/upsight/mediation/util/HashMapCaster;->map:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 82
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2a

    .line 83
    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "sArray":[Ljava/lang/String;
    :goto_1a
    array-length v5, v1

    :goto_1b
    if-ge v4, v5, :cond_2d

    aget-object v0, v1, v4

    .line 89
    .local v0, "s":Ljava/lang/String;
    new-instance v6, Lcom/upsight/mediation/data/APIVersion;

    invoke-direct {v6, v0}, Lcom/upsight/mediation/data/APIVersion;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 85
    .end local v0    # "s":Ljava/lang/String;
    .end local v1    # "sArray":[Ljava/lang/String;
    :cond_2a
    new-array v1, v4, [Ljava/lang/String;

    .restart local v1    # "sArray":[Ljava/lang/String;
    goto :goto_1a

    .line 91
    :cond_2d
    return-object v3
.end method

.method public getBool(Ljava/lang/String;)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 38
    iget-object v1, p0, Lcom/upsight/mediation/util/HashMapCaster;->map:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 40
    .local v0, "val":Ljava/lang/String;
    if-eqz v0, :cond_11

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_10
    return v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public getDate(Ljava/lang/String;)Ljava/util/Date;
    .registers 8
    .param p1, "key"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 100
    iget-object v3, p0, Lcom/upsight/mediation/util/HashMapCaster;->map:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 101
    .local v2, "value":Ljava/lang/String;
    if-eqz v2, :cond_10

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_12

    .line 102
    :cond_10
    const/4 v3, 0x0

    .line 105
    :goto_11
    return-object v3

    .line 104
    :cond_12
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 105
    .local v0, "longVal":J
    new-instance v3, Ljava/util/Date;

    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, v0

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    goto :goto_11
.end method

.method public getFloat(Ljava/lang/String;)F
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 95
    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p0, p1, v0}, Lcom/upsight/mediation/util/HashMapCaster;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getFloat(Ljava/lang/String;F)F
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultVal"    # F

    .prologue
    .line 109
    iget-object v1, p0, Lcom/upsight/mediation/util/HashMapCaster;->map:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 110
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_14

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    .end local p2    # "defaultVal":F
    :cond_14
    return p2
.end method

.method public getInt(Ljava/lang/String;)I
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 29
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/upsight/mediation/util/HashMapCaster;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;I)I
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 33
    iget-object v1, p0, Lcom/upsight/mediation/util/HashMapCaster;->map:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 34
    .local v0, "val":Ljava/lang/String;
    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1c

    iget-object v1, p0, Lcom/upsight/mediation/util/HashMapCaster;->map:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .end local p2    # "defaultValue":I
    :cond_1c
    return p2
.end method

.method public getIntArray(Ljava/lang/String;)[I
    .registers 8
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 45
    iget-object v5, p0, Lcom/upsight/mediation/util/HashMapCaster;->map:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 48
    .local v4, "value":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_26

    .line 49
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, "sArray":[Ljava/lang/String;
    :goto_14
    array-length v5, v2

    new-array v0, v5, [I

    .line 55
    .local v0, "iArray":[I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_18
    array-length v5, v0

    if-ge v1, v5, :cond_2a

    .line 56
    aget-object v3, v2, v1

    .line 57
    .local v3, "val":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v0, v1

    .line 55
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 51
    .end local v0    # "iArray":[I
    .end local v1    # "j":I
    .end local v2    # "sArray":[Ljava/lang/String;
    .end local v3    # "val":Ljava/lang/String;
    :cond_26
    const/4 v5, 0x0

    new-array v2, v5, [Ljava/lang/String;

    .restart local v2    # "sArray":[Ljava/lang/String;
    goto :goto_14

    .line 59
    .restart local v0    # "iArray":[I
    .restart local v1    # "j":I
    :cond_2a
    return-object v0
.end method

.method public getLong(Ljava/lang/String;)J
    .registers 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 63
    iget-object v1, p0, Lcom/upsight/mediation/util/HashMapCaster;->map:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 64
    .local v0, "val":Ljava/lang/String;
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_15

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    :goto_14
    return-wide v2

    :cond_15
    const-wide/16 v2, -0x1

    goto :goto_14
.end method
