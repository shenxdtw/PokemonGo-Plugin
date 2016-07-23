.class public final Lcom/upsight/android/analytics/configuration/UpsightConfiguration;
.super Ljava/lang/Object;
.source "UpsightConfiguration.java"


# annotations
.annotation runtime Lcom/upsight/android/persistence/annotation/UpsightStorableType;
    value = "upsight.configuration"
.end annotation


# instance fields
.field id:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "id"
    .end annotation

    .annotation runtime Lcom/upsight/android/persistence/annotation/UpsightStorableIdentifier;
    .end annotation
.end field

.field private mScope:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "scope"
    .end annotation
.end field

.field private mSessionNumCreated:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "session_num_created"
    .end annotation
.end field

.field private mValue:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "value"
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4
    .param p1, "scope"    # Ljava/lang/String;
    .param p2, "configuration"    # Ljava/lang/String;
    .param p3, "sessionNumCreated"    # I

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/upsight/android/analytics/configuration/UpsightConfiguration;->mScope:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/upsight/android/analytics/configuration/UpsightConfiguration;->mValue:Ljava/lang/String;

    .line 39
    iput p3, p0, Lcom/upsight/android/analytics/configuration/UpsightConfiguration;->mSessionNumCreated:I

    .line 40
    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;I)Lcom/upsight/android/analytics/configuration/UpsightConfiguration;
    .registers 4
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "configuration"    # Ljava/lang/String;
    .param p2, "currentSessionNum"    # I

    .prologue
    .line 20
    new-instance v0, Lcom/upsight/android/analytics/configuration/UpsightConfiguration;

    invoke-direct {v0, p0, p1, p2}, Lcom/upsight/android/analytics/configuration/UpsightConfiguration;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 69
    if-ne p0, p1, :cond_5

    .line 79
    :cond_4
    :goto_4
    return v1

    .line 73
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_13

    :cond_11
    move v1, v2

    .line 74
    goto :goto_4

    :cond_13
    move-object v0, p1

    .line 77
    check-cast v0, Lcom/upsight/android/analytics/configuration/UpsightConfiguration;

    .line 79
    .local v0, "that":Lcom/upsight/android/analytics/configuration/UpsightConfiguration;
    iget-object v3, p0, Lcom/upsight/android/analytics/configuration/UpsightConfiguration;->id:Ljava/lang/String;

    if-eqz v3, :cond_28

    iget-object v3, v0, Lcom/upsight/android/analytics/configuration/UpsightConfiguration;->id:Ljava/lang/String;

    if-eqz v3, :cond_28

    iget-object v3, p0, Lcom/upsight/android/analytics/configuration/UpsightConfiguration;->id:Ljava/lang/String;

    iget-object v4, v0, Lcom/upsight/android/analytics/configuration/UpsightConfiguration;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_28
    move v1, v2

    goto :goto_4
.end method

.method public getConfiguration()Ljava/lang/String;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/upsight/android/analytics/configuration/UpsightConfiguration;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/upsight/android/analytics/configuration/UpsightConfiguration;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getScope()Ljava/lang/String;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/upsight/android/analytics/configuration/UpsightConfiguration;->mScope:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionNumberCreated()I
    .registers 2

    .prologue
    .line 59
    iget v0, p0, Lcom/upsight/android/analytics/configuration/UpsightConfiguration;->mSessionNumCreated:I

    return v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/upsight/android/analytics/configuration/UpsightConfiguration;->id:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/upsight/android/analytics/configuration/UpsightConfiguration;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method
