.class public Lcom/voxelbusters/nativeplugins/utilities/JSONUtility;
.super Ljava/lang/Object;
.source "JSONUtility.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findString(Lorg/json/JSONArray;Ljava/lang/String;)I
    .registers 7
    .param p0, "jsonArray"    # Lorg/json/JSONArray;
    .param p1, "stringToSearch"    # Ljava/lang/String;

    .prologue
    .line 101
    const/4 v2, -0x1

    .line 102
    .local v2, "index":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lt v1, v4, :cond_9

    .line 119
    :goto_8
    return v2

    .line 104
    :cond_9
    const/4 v3, 0x0

    .line 107
    .local v3, "str":Ljava/lang/String;
    :try_start_a
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_d} :catch_18

    move-result-object v3

    .line 113
    :goto_e
    if-eqz v3, :cond_1d

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 115
    move v2, v1

    .line 116
    goto :goto_8

    .line 109
    :catch_18
    move-exception v0

    .line 111
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_e

    .line 102
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public static getJSON(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 4
    .param p0, "jsonStr"    # Ljava/lang/String;

    .prologue
    .line 131
    const/4 v1, 0x0

    .line 134
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_6} :catch_8

    .end local v1    # "json":Lorg/json/JSONObject;
    .local v2, "json":Lorg/json/JSONObject;
    move-object v1, v2

    .line 141
    .end local v2    # "json":Lorg/json/JSONObject;
    .restart local v1    # "json":Lorg/json/JSONObject;
    :goto_7
    return-object v1

    .line 136
    :catch_8
    move-exception v0

    .line 139
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_7
.end method

.method public static getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    .registers 3
    .param p0, "jsonArrayString"    # Ljava/lang/String;

    .prologue
    .line 66
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5} :catch_6

    .line 74
    .local v1, "jsonArray":Lorg/json/JSONArray;
    :goto_5
    return-object v1

    .line 68
    .end local v1    # "jsonArray":Lorg/json/JSONArray;
    :catch_6
    move-exception v0

    .line 70
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 71
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .restart local v1    # "jsonArray":Lorg/json/JSONArray;
    goto :goto_5
.end method

.method public static getJSONString(Ljava/util/HashMap;)Ljava/lang/String;
    .registers 3
    .param p0, "dataMap"    # Ljava/util/HashMap;

    .prologue
    .line 125
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 126
    .local v0, "json":Lorg/json/JSONObject;
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getJSONfromBundle(Landroid/os/Bundle;)Lorg/json/JSONObject;
    .registers 10
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 18
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 21
    .local v3, "json":Lorg/json/JSONObject;
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 23
    .local v4, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_14

    .line 37
    return-object v3

    .line 23
    :cond_14
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 25
    .local v1, "eachKey":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 29
    .local v2, "eachVal":Ljava/lang/Object;
    :try_start_1e
    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_21
    .catch Lorg/json/JSONException; {:try_start_1e .. :try_end_21} :catch_22

    goto :goto_d

    .line 31
    :catch_22
    move-exception v0

    .line 33
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 34
    const-string v6, "NativePlugins.JSONUtility"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Exception while entering key "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/voxelbusters/nativeplugins/utilities/Debug;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d
.end method

.method public static getKeys(Lorg/json/JSONObject;)[Ljava/lang/String;
    .registers 7
    .param p0, "jsonData"    # Lorg/json/JSONObject;

    .prologue
    .line 43
    invoke-virtual {p0}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v3

    .line 44
    .local v3, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    new-array v4, v5, [Ljava/lang/String;

    .line 46
    .local v4, "keys":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    .local v0, "count":I
    :goto_f
    if-lt v2, v0, :cond_12

    .line 58
    return-object v4

    .line 50
    :cond_12
    :try_start_12
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_18} :catch_1b

    .line 46
    :goto_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 52
    :catch_1b
    move-exception v1

    .line 54
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_18
.end method

.method public static removeIndex(Lorg/json/JSONArray;I)Lorg/json/JSONArray;
    .registers 6
    .param p0, "jsonArray"    # Lorg/json/JSONArray;
    .param p1, "pos"    # I

    .prologue
    .line 80
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 83
    .local v2, "newJsonArray":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    :try_start_6
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v1, v3, :cond_d

    .line 95
    :goto_c
    return-object v2

    .line 85
    :cond_d
    if-eq v1, p1, :cond_16

    .line 87
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_16} :catch_19

    .line 83
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 91
    :catch_19
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c
.end method
