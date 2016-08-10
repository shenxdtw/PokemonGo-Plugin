.class public Lcom/upsight/android/analytics/internal/util/GsonHelper$JSONObjectSerializer;
.super Ljava/lang/Object;
.source "GsonHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/internal/util/GsonHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JSONObjectSerializer"
.end annotation


# static fields
.field private static sJsonParser:Lcom/google/gson/JsonParser;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    new-instance v0, Lcom/google/gson/JsonParser;

    invoke-direct {v0}, Lcom/google/gson/JsonParser;-><init>()V

    sput-object v0, Lcom/upsight/android/analytics/internal/util/GsonHelper$JSONObjectSerializer;->sJsonParser:Lcom/google/gson/JsonParser;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromJsonObject(Lcom/google/gson/JsonObject;)Lorg/json/JSONObject;
    .registers 4
    .param p0, "objectNode"    # Lcom/google/gson/JsonObject;

    .prologue
    .line 31
    const/4 v0, 0x0

    .line 32
    .local v0, "jsonObject":Lorg/json/JSONObject;
    if-eqz p0, :cond_d

    .line 34
    :try_start_3
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_c} :catch_e

    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    .local v1, "jsonObject":Lorg/json/JSONObject;
    move-object v0, v1

    .line 39
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .restart local v0    # "jsonObject":Lorg/json/JSONObject;
    :cond_d
    :goto_d
    return-object v0

    .line 35
    :catch_e
    move-exception v2

    goto :goto_d
.end method

.method public static toJsonObject(Lorg/json/JSONObject;)Lcom/google/gson/JsonObject;
    .registers 4
    .param p0, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 43
    const/4 v0, 0x0

    .line 44
    .local v0, "objectNode":Lcom/google/gson/JsonObject;
    if-eqz p0, :cond_11

    .line 46
    :try_start_3
    sget-object v1, Lcom/upsight/android/analytics/internal/util/GsonHelper$JSONObjectSerializer;->sJsonParser:Lcom/google/gson/JsonParser;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;
    :try_end_10
    .catch Lcom/google/gson/JsonParseException; {:try_start_3 .. :try_end_10} :catch_12

    move-result-object v0

    .line 51
    :cond_11
    :goto_11
    return-object v0

    .line 47
    :catch_12
    move-exception v1

    goto :goto_11
.end method
