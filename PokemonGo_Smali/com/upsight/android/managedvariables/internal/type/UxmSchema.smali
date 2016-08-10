.class public final Lcom/upsight/android/managedvariables/internal/type/UxmSchema;
.super Ljava/lang/Object;
.source "UxmSchema.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/managedvariables/internal/type/UxmSchema$FloatSchema;,
        Lcom/upsight/android/managedvariables/internal/type/UxmSchema$IntSchema;,
        Lcom/upsight/android/managedvariables/internal/type/UxmSchema$BooleanSchema;,
        Lcom/upsight/android/managedvariables/internal/type/UxmSchema$StringSchema;,
        Lcom/upsight/android/managedvariables/internal/type/UxmSchema$BaseSchema;
    }
.end annotation


# static fields
.field private static final ITEM_SCHEMA_KEY_DEFAULT:Ljava/lang/String; = "default"

.field private static final ITEM_SCHEMA_KEY_TAG:Ljava/lang/String; = "tag"

.field private static final ITEM_SCHEMA_KEY_TYPE:Ljava/lang/String; = "type"

.field private static final sClassSchemaMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/upsight/android/managedvariables/internal/type/ManagedVariable;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/upsight/android/managedvariables/internal/type/UxmSchema$BaseSchema;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sModelTypeSchemaMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/upsight/android/managedvariables/internal/type/UxmSchema$BaseSchema;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sTypeSchemaMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/upsight/android/managedvariables/internal/type/UxmSchema$BaseSchema;",
            ">;"
        }
    .end annotation
.end field

.field private mItemSchemaMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/upsight/android/managedvariables/internal/type/UxmSchema$BaseSchema;",
            ">;"
        }
    .end annotation
.end field

.field private mLogger:Lcom/upsight/android/logger/UpsightLogger;

.field public final mSchemaJsonString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 53
    new-instance v0, Lcom/upsight/android/managedvariables/internal/type/UxmSchema$1;

    invoke-direct {v0}, Lcom/upsight/android/managedvariables/internal/type/UxmSchema$1;-><init>()V

    sput-object v0, Lcom/upsight/android/managedvariables/internal/type/UxmSchema;->sClassSchemaMap:Ljava/util/Map;

    .line 64
    new-instance v0, Lcom/upsight/android/managedvariables/internal/type/UxmSchema$2;

    invoke-direct {v0}, Lcom/upsight/android/managedvariables/internal/type/UxmSchema$2;-><init>()V

    sput-object v0, Lcom/upsight/android/managedvariables/internal/type/UxmSchema;->sTypeSchemaMap:Ljava/util/Map;

    .line 75
    new-instance v0, Lcom/upsight/android/managedvariables/internal/type/UxmSchema$3;

    invoke-direct {v0}, Lcom/upsight/android/managedvariables/internal/type/UxmSchema$3;-><init>()V

    sput-object v0, Lcom/upsight/android/managedvariables/internal/type/UxmSchema;->sModelTypeSchemaMap:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Lcom/upsight/android/logger/UpsightLogger;)V
    .registers 3
    .param p1, "logger"    # Lcom/upsight/android/logger/UpsightLogger;

    .prologue
    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/managedvariables/internal/type/UxmSchema;->mItemList:Ljava/util/List;

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/managedvariables/internal/type/UxmSchema;->mItemSchemaMap:Ljava/util/Map;

    .line 208
    iput-object p1, p0, Lcom/upsight/android/managedvariables/internal/type/UxmSchema;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    .line 209
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/upsight/android/managedvariables/internal/type/UxmSchema;->mSchemaJsonString:Ljava/lang/String;

    .line 210
    return-void
.end method

.method private constructor <init>(Ljava/util/List;Ljava/util/Map;Lcom/upsight/android/logger/UpsightLogger;Ljava/lang/String;)V
    .registers 6
    .param p3, "logger"    # Lcom/upsight/android/logger/UpsightLogger;
    .param p4, "schemaJsonString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/upsight/android/managedvariables/internal/type/UxmSchema$BaseSchema;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/upsight/android/managedvariables/internal/type/UxmSchema$BaseSchema;",
            ">;",
            "Lcom/upsight/android/logger/UpsightLogger;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 224
    .local p1, "itemList":Ljava/util/List;, "Ljava/util/List<Lcom/upsight/android/managedvariables/internal/type/UxmSchema$BaseSchema;>;"
    .local p2, "itemSchemaMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/upsight/android/managedvariables/internal/type/UxmSchema$BaseSchema;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/managedvariables/internal/type/UxmSchema;->mItemList:Ljava/util/List;

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/managedvariables/internal/type/UxmSchema;->mItemSchemaMap:Ljava/util/Map;

    .line 225
    iput-object p1, p0, Lcom/upsight/android/managedvariables/internal/type/UxmSchema;->mItemList:Ljava/util/List;

    .line 226
    iput-object p2, p0, Lcom/upsight/android/managedvariables/internal/type/UxmSchema;->mItemSchemaMap:Ljava/util/Map;

    .line 227
    iput-object p3, p0, Lcom/upsight/android/managedvariables/internal/type/UxmSchema;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    .line 228
    iput-object p4, p0, Lcom/upsight/android/managedvariables/internal/type/UxmSchema;->mSchemaJsonString:Ljava/lang/String;

    .line 229
    return-void
.end method

.method public static create(Ljava/lang/String;Lcom/google/gson/Gson;Lcom/google/gson/JsonParser;Lcom/upsight/android/logger/UpsightLogger;)Lcom/upsight/android/managedvariables/internal/type/UxmSchema;
    .registers 22
    .param p0, "uxmSchemaString"    # Ljava/lang/String;
    .param p1, "gson"    # Lcom/google/gson/Gson;
    .param p2, "parser"    # Lcom/google/gson/JsonParser;
    .param p3, "logger"    # Lcom/upsight/android/logger/UpsightLogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 116
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .local v5, "itemList":Ljava/util/List;, "Ljava/util/List<Lcom/upsight/android/managedvariables/internal/type/UxmSchema$BaseSchema;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 120
    .local v8, "itemSchemaMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/upsight/android/managedvariables/internal/type/UxmSchema$BaseSchema;>;"
    const/4 v13, 0x0

    .line 122
    .local v13, "uxmSchemaArray":Lcom/google/gson/JsonArray;
    :try_start_b
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v14

    .line 123
    .local v14, "uxmSchemaElement":Lcom/google/gson/JsonElement;
    if-eqz v14, :cond_5f

    invoke-virtual {v14}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result v15

    if-eqz v15, :cond_5f

    .line 124
    invoke-virtual {v14}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;
    :try_end_1e
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_b .. :try_end_1e} :catch_8b

    move-result-object v13

    .line 137
    invoke-virtual {v13}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_23
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_23b

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/gson/JsonElement;

    .line 138
    .local v6, "itemNode":Lcom/google/gson/JsonElement;
    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v16

    if-nez v16, :cond_b8

    .line 139
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Managed variable schema must be a JSON object: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 140
    .local v4, "errMsg":Ljava/lang/String;
    const-string v15, "Upsight"

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-interface {v0, v15, v4, v1}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    new-instance v15, Ljava/lang/IllegalArgumentException;

    invoke-direct {v15, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 126
    .end local v4    # "errMsg":Ljava/lang/String;
    .end local v6    # "itemNode":Lcom/google/gson/JsonElement;
    :cond_5f
    :try_start_5f
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "UXM schema must be a JSON array: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 127
    .restart local v4    # "errMsg":Ljava/lang/String;
    const-string v15, "Upsight"

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-interface {v0, v15, v4, v1}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    new-instance v15, Ljava/lang/IllegalArgumentException;

    invoke-direct {v15, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_8b
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_5f .. :try_end_8b} :catch_8b

    .line 130
    .end local v4    # "errMsg":Ljava/lang/String;
    .end local v14    # "uxmSchemaElement":Lcom/google/gson/JsonElement;
    :catch_8b
    move-exception v3

    .line 131
    .local v3, "e":Lcom/google/gson/JsonSyntaxException;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Failed to parse UXM schema JSON: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 132
    .restart local v4    # "errMsg":Ljava/lang/String;
    const-string v15, "Upsight"

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-interface {v0, v15, v3, v4, v1}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    new-instance v15, Ljava/lang/IllegalArgumentException;

    invoke-direct {v15, v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v15

    .line 144
    .end local v3    # "e":Lcom/google/gson/JsonSyntaxException;
    .end local v4    # "errMsg":Ljava/lang/String;
    .restart local v6    # "itemNode":Lcom/google/gson/JsonElement;
    .restart local v14    # "uxmSchemaElement":Lcom/google/gson/JsonElement;
    :cond_b8
    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v16

    const-string v17, "tag"

    invoke-virtual/range {v16 .. v17}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v10

    .line 145
    .local v10, "tagElement":Lcom/google/gson/JsonElement;
    if-eqz v10, :cond_d4

    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->isJsonPrimitive()Z

    move-result v16

    if-eqz v16, :cond_d4

    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/google/gson/JsonPrimitive;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/gson/JsonPrimitive;->isString()Z

    move-result v16

    if-nez v16, :cond_fe

    .line 146
    :cond_d4
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Managed variable schema must contain a tag: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 147
    .restart local v4    # "errMsg":Ljava/lang/String;
    const-string v15, "Upsight"

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-interface {v0, v15, v4, v1}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    new-instance v15, Ljava/lang/IllegalArgumentException;

    invoke-direct {v15, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 151
    .end local v4    # "errMsg":Ljava/lang/String;
    :cond_fe
    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v16

    const-string v17, "type"

    invoke-virtual/range {v16 .. v17}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v12

    .line 152
    .local v12, "typeElement":Lcom/google/gson/JsonElement;
    if-eqz v12, :cond_11a

    invoke-virtual {v12}, Lcom/google/gson/JsonElement;->isJsonPrimitive()Z

    move-result v16

    if-eqz v16, :cond_11a

    invoke-virtual {v12}, Lcom/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/google/gson/JsonPrimitive;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/gson/JsonPrimitive;->isString()Z

    move-result v16

    if-nez v16, :cond_144

    .line 153
    :cond_11a
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Managed variable schema must contain a type: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 154
    .restart local v4    # "errMsg":Ljava/lang/String;
    const-string v15, "Upsight"

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-interface {v0, v15, v4, v1}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    new-instance v15, Ljava/lang/IllegalArgumentException;

    invoke-direct {v15, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 158
    .end local v4    # "errMsg":Ljava/lang/String;
    :cond_144
    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v16

    const-string v17, "default"

    invoke-virtual/range {v16 .. v17}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_17a

    .line 159
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Managed variable schema must contain a default value: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 160
    .restart local v4    # "errMsg":Ljava/lang/String;
    const-string v15, "Upsight"

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-interface {v0, v15, v4, v1}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    new-instance v15, Ljava/lang/IllegalArgumentException;

    invoke-direct {v15, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 165
    .end local v4    # "errMsg":Ljava/lang/String;
    :cond_17a
    sget-object v16, Lcom/upsight/android/managedvariables/internal/type/UxmSchema;->sTypeSchemaMap:Ljava/util/Map;

    invoke-virtual {v12}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 166
    .local v11, "type":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_1e7

    .line 167
    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v16

    const-string v17, "type"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v11}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v9

    .line 176
    .local v9, "tag":Ljava/lang/String;
    sget-object v16, Lcom/upsight/android/managedvariables/internal/type/UxmSchema;->sModelTypeSchemaMap:Ljava/util/Map;

    move-object/from16 v0, v16

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 177
    .local v2, "clazz":Ljava/lang/Class;
    if-eqz v2, :cond_211

    .line 179
    :try_start_1a9
    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/upsight/android/managedvariables/internal/type/UxmSchema$BaseSchema;

    .line 182
    .local v7, "itemSchema":Lcom/upsight/android/managedvariables/internal/type/UxmSchema$BaseSchema;
    # invokes: Lcom/upsight/android/managedvariables/internal/type/UxmSchema$BaseSchema;->validate(Lcom/google/gson/JsonElement;)V
    invoke-static {v7, v6}, Lcom/upsight/android/managedvariables/internal/type/UxmSchema$BaseSchema;->access$000(Lcom/upsight/android/managedvariables/internal/type/UxmSchema$BaseSchema;Lcom/google/gson/JsonElement;)V

    .line 185
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    invoke-interface {v8, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1ba
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_1a9 .. :try_end_1ba} :catch_1bc

    goto/16 :goto_23

    .line 187
    .end local v7    # "itemSchema":Lcom/upsight/android/managedvariables/internal/type/UxmSchema$BaseSchema;
    :catch_1bc
    move-exception v3

    .line 188
    .restart local v3    # "e":Lcom/google/gson/JsonSyntaxException;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Managed variable contains invalid fields: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 189
    .restart local v4    # "errMsg":Ljava/lang/String;
    const-string v15, "Upsight"

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-interface {v0, v15, v3, v4, v1}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 190
    new-instance v15, Ljava/lang/IllegalArgumentException;

    invoke-direct {v15, v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v15

    .line 169
    .end local v2    # "clazz":Ljava/lang/Class;
    .end local v3    # "e":Lcom/google/gson/JsonSyntaxException;
    .end local v4    # "errMsg":Ljava/lang/String;
    .end local v9    # "tag":Ljava/lang/String;
    :cond_1e7
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Managed variable contains invalid types: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 170
    .restart local v4    # "errMsg":Ljava/lang/String;
    const-string v15, "Upsight"

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-interface {v0, v15, v4, v1}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    new-instance v15, Ljava/lang/IllegalArgumentException;

    invoke-direct {v15, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 193
    .end local v4    # "errMsg":Ljava/lang/String;
    .restart local v2    # "clazz":Ljava/lang/Class;
    .restart local v9    # "tag":Ljava/lang/String;
    :cond_211
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unknown managed variable type: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 194
    .restart local v4    # "errMsg":Ljava/lang/String;
    const-string v15, "Upsight"

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-interface {v0, v15, v4, v1}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    new-instance v15, Ljava/lang/IllegalArgumentException;

    invoke-direct {v15, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 199
    .end local v2    # "clazz":Ljava/lang/Class;
    .end local v4    # "errMsg":Ljava/lang/String;
    .end local v6    # "itemNode":Lcom/google/gson/JsonElement;
    .end local v9    # "tag":Ljava/lang/String;
    .end local v10    # "tagElement":Lcom/google/gson/JsonElement;
    .end local v11    # "type":Ljava/lang/String;
    .end local v12    # "typeElement":Lcom/google/gson/JsonElement;
    :cond_23b
    new-instance v15, Lcom/upsight/android/managedvariables/internal/type/UxmSchema;

    invoke-virtual {v13}, Lcom/google/gson/JsonArray;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-direct {v15, v5, v8, v0, v1}, Lcom/upsight/android/managedvariables/internal/type/UxmSchema;-><init>(Ljava/util/List;Ljava/util/Map;Lcom/upsight/android/logger/UpsightLogger;Ljava/lang/String;)V

    return-object v15
.end method


# virtual methods
.method public get(Ljava/lang/Class;Ljava/lang/String;)Lcom/upsight/android/managedvariables/internal/type/UxmSchema$BaseSchema;
    .registers 10
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/upsight/android/managedvariables/internal/type/ManagedVariable;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/upsight/android/managedvariables/internal/type/UxmSchema$BaseSchema;"
        }
    .end annotation

    .prologue
    .line 252
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v4, p0, Lcom/upsight/android/managedvariables/internal/type/UxmSchema;->mItemSchemaMap:Ljava/util/Map;

    invoke-interface {v4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/upsight/android/managedvariables/internal/type/UxmSchema$BaseSchema;

    .line 253
    .local v2, "itemSchema":Lcom/upsight/android/managedvariables/internal/type/UxmSchema$BaseSchema;
    if-nez v2, :cond_c

    .line 254
    const/4 v2, 0x0

    .line 264
    .end local v2    # "itemSchema":Lcom/upsight/android/managedvariables/internal/type/UxmSchema$BaseSchema;
    :cond_b
    return-object v2

    .line 257
    .restart local v2    # "itemSchema":Lcom/upsight/android/managedvariables/internal/type/UxmSchema$BaseSchema;
    :cond_c
    sget-object v4, Lcom/upsight/android/managedvariables/internal/type/UxmSchema;->sClassSchemaMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 258
    .local v1, "expectedClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v4, Lcom/upsight/android/managedvariables/internal/type/UxmSchema;->sModelTypeSchemaMap:Ljava/util/Map;

    iget-object v5, v2, Lcom/upsight/android/managedvariables/internal/type/UxmSchema$BaseSchema;->type:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 259
    .local v3, "tagClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_28

    if-eqz v3, :cond_28

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 260
    :cond_28
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The tag is not of the expected class: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, "errMsg":Ljava/lang/String;
    iget-object v4, p0, Lcom/upsight/android/managedvariables/internal/type/UxmSchema;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v5, "Upsight"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v4, v5, v0, v6}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 262
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getAllOrdered()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/upsight/android/managedvariables/internal/type/UxmSchema$BaseSchema;",
            ">;"
        }
    .end annotation

    .prologue
    .line 238
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/upsight/android/managedvariables/internal/type/UxmSchema;->mItemList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
