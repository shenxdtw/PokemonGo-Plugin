.class public final Lcom/upsight/android/marketing/internal/vast/VastContentModel;
.super Ljava/lang/Object;
.source "VastContentModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/marketing/internal/vast/VastContentModel$Settings;
    }
.end annotation


# instance fields
.field adapterId:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "adapter_id"
    .end annotation
.end field

.field isRewarded:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_rewarded"
    .end annotation
.end field

.field maxVastFileSize:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "max_vast_file_size"
    .end annotation
.end field

.field settings:Lcom/upsight/android/marketing/internal/vast/VastContentModel$Settings;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "settings"
    .end annotation
.end field

.field shouldValidateSchema:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "should_validate_schema"
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    return-void
.end method

.method static synthetic access$000(Lcom/upsight/android/marketing/internal/vast/VastContentModel;Ljava/util/Map;)V
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/marketing/internal/vast/VastContentModel;
    .param p1, "x1"    # Ljava/util/Map;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/upsight/android/marketing/internal/vast/VastContentModel;->appendEndcard(Ljava/util/Map;)V

    return-void
.end method

.method private appendEndcard(Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 170
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/vast/VastContentModel;->settings:Lcom/upsight/android/marketing/internal/vast/VastContentModel$Settings;

    iget-object v0, v0, Lcom/upsight/android/marketing/internal/vast/VastContentModel$Settings;->endcardScript:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 171
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/vast/VastContentModel;->settings:Lcom/upsight/android/marketing/internal/vast/VastContentModel$Settings;

    iget-object v0, v0, Lcom/upsight/android/marketing/internal/vast/VastContentModel$Settings;->isEndcardScriptEncoded:Ljava/lang/Boolean;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/upsight/android/marketing/internal/vast/VastContentModel;->settings:Lcom/upsight/android/marketing/internal/vast/VastContentModel$Settings;

    iget-object v0, v0, Lcom/upsight/android/marketing/internal/vast/VastContentModel$Settings;->isEndcardScriptEncoded:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 173
    :try_start_1a
    const-string v0, "endcard_script"

    iget-object v1, p0, Lcom/upsight/android/marketing/internal/vast/VastContentModel;->settings:Lcom/upsight/android/marketing/internal/vast/VastContentModel$Settings;

    iget-object v1, v1, Lcom/upsight/android/marketing/internal/vast/VastContentModel$Settings;->endcardScript:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1a .. :try_end_2c} :catch_37

    .line 182
    :cond_2c
    :goto_2c
    return-void

    .line 179
    :cond_2d
    const-string v0, "endcard_script"

    iget-object v1, p0, Lcom/upsight/android/marketing/internal/vast/VastContentModel;->settings:Lcom/upsight/android/marketing/internal/vast/VastContentModel$Settings;

    iget-object v1, v1, Lcom/upsight/android/marketing/internal/vast/VastContentModel$Settings;->endcardScript:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2c

    .line 174
    :catch_37
    move-exception v0

    goto :goto_2c
.end method

.method static from(Lcom/google/gson/JsonElement;Lcom/google/gson/Gson;)Lcom/upsight/android/marketing/internal/vast/VastContentModel;
    .registers 5
    .param p0, "json"    # Lcom/google/gson/JsonElement;
    .param p1, "gson"    # Lcom/google/gson/Gson;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    :try_start_0
    const-class v2, Lcom/upsight/android/marketing/internal/vast/VastContentModel;

    invoke-virtual {p1, p0, v2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/upsight/android/marketing/internal/vast/VastContentModel;
    :try_end_8
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_8} :catch_9

    .line 115
    .local v1, "model":Lcom/upsight/android/marketing/internal/vast/VastContentModel;
    return-object v1

    .line 112
    .end local v1    # "model":Lcom/upsight/android/marketing/internal/vast/VastContentModel;
    :catch_9
    move-exception v0

    .line 113
    .local v0, "e":Lcom/google/gson/JsonSyntaxException;
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public getAdapterId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/vast/VastContentModel;->adapterId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMaxVastFileSize()Ljava/lang/String;
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/vast/VastContentModel;->maxVastFileSize:Ljava/lang/String;

    return-object v0
.end method

.method public getSettings()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    new-instance v0, Lcom/upsight/android/marketing/internal/vast/VastContentModel$1;

    invoke-direct {v0, p0}, Lcom/upsight/android/marketing/internal/vast/VastContentModel$1;-><init>(Lcom/upsight/android/marketing/internal/vast/VastContentModel;)V

    return-object v0
.end method

.method public isRewarded()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/vast/VastContentModel;->isRewarded:Ljava/lang/Boolean;

    return-object v0
.end method

.method public shouldValidateSchema()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/vast/VastContentModel;->shouldValidateSchema:Ljava/lang/Boolean;

    return-object v0
.end method
