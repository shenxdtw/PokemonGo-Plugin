.class public Lcom/upsight/mediation/data/APIVersion;
.super Ljava/lang/Object;
.source "APIVersion.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final versionComponents:[I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "versionString"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v1, "\\."

    invoke-static {p1, v1}, Lcom/upsight/mediation/util/StringUtil;->toIntArray(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    .line 17
    .local v0, "versionComponents":[I
    iput-object v0, p0, Lcom/upsight/mediation/data/APIVersion;->versionComponents:[I

    .line 18
    return-void
.end method

.method public varargs constructor <init>([I)V
    .registers 4
    .param p1, "versionComponents"    # [I

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    if-eqz p1, :cond_8

    array-length v0, p1

    if-nez v0, :cond_10

    .line 22
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "At least one version component must be specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_10
    iput-object p1, p0, Lcom/upsight/mediation/data/APIVersion;->versionComponents:[I

    .line 25
    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .registers 8
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 36
    move-object v2, p1

    check-cast v2, Lcom/upsight/mediation/data/APIVersion;

    .line 38
    .local v2, "otherVersion":Lcom/upsight/mediation/data/APIVersion;
    const/4 v3, 0x0

    .line 40
    .local v3, "result":I
    invoke-virtual {p0, v2}, Lcom/upsight/mediation/data/APIVersion;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1e

    .line 41
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    iget-object v5, p0, Lcom/upsight/mediation/data/APIVersion;->versionComponents:[I

    array-length v5, v5

    if-ge v0, v5, :cond_1e

    .line 42
    invoke-virtual {p0, v0}, Lcom/upsight/mediation/data/APIVersion;->getVersionComponent(I)I

    move-result v4

    .local v4, "thisComponent":I
    move-object v5, p1

    .line 43
    check-cast v5, Lcom/upsight/mediation/data/APIVersion;

    invoke-virtual {v5, v0}, Lcom/upsight/mediation/data/APIVersion;->getVersionComponent(I)I

    move-result v1

    .line 45
    .local v1, "otherComponent":I
    if-le v4, v1, :cond_1f

    .line 46
    move v3, v0

    .line 54
    .end local v0    # "i":I
    .end local v1    # "otherComponent":I
    .end local v4    # "thisComponent":I
    :cond_1e
    :goto_1e
    return v3

    .line 48
    .restart local v0    # "i":I
    .restart local v1    # "otherComponent":I
    .restart local v4    # "thisComponent":I
    :cond_1f
    if-ge v4, v1, :cond_23

    .line 49
    neg-int v3, v0

    .line 50
    goto :goto_1e

    .line 41
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_b
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 67
    move-object v1, p1

    check-cast v1, Lcom/upsight/mediation/data/APIVersion;

    .line 68
    .local v1, "otherVersion":Lcom/upsight/mediation/data/APIVersion;
    iget-object v2, p0, Lcom/upsight/mediation/data/APIVersion;->versionComponents:[I

    iget-object v3, v1, Lcom/upsight/mediation/data/APIVersion;->versionComponents:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    .line 69
    .local v0, "isEqual":Z
    return v0
.end method

.method public getVersionComponent(I)I
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 58
    iget-object v0, p0, Lcom/upsight/mediation/data/APIVersion;->versionComponents:[I

    array-length v0, v0

    if-le v0, p1, :cond_a

    .line 59
    iget-object v0, p0, Lcom/upsight/mediation/data/APIVersion;->versionComponents:[I

    aget v0, v0, p1

    .line 61
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 75
    iget-object v0, p0, Lcom/upsight/mediation/data/APIVersion;->versionComponents:[I

    const-string v1, "."

    invoke-static {v0, v1}, Lcom/upsight/mediation/util/StringUtil;->join([ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
