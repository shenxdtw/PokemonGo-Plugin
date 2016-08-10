.class public Lcom/upsight/android/managedvariables/internal/type/UxmSchema$StringSchema;
.super Lcom/upsight/android/managedvariables/internal/type/UxmSchema$BaseSchema;
.source "UxmSchema.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/managedvariables/internal/type/UxmSchema;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StringSchema"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/upsight/android/managedvariables/internal/type/UxmSchema$BaseSchema",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final TYPE_SPECIFIC_KEYS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 333
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/upsight/android/managedvariables/internal/type/UxmSchema$StringSchema;->TYPE_SPECIFIC_KEYS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 331
    invoke-direct {p0}, Lcom/upsight/android/managedvariables/internal/type/UxmSchema$BaseSchema;-><init>()V

    return-void
.end method


# virtual methods
.method getTypeSpecificKeys()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 337
    sget-object v0, Lcom/upsight/android/managedvariables/internal/type/UxmSchema$StringSchema;->TYPE_SPECIFIC_KEYS:Ljava/util/Set;

    return-object v0
.end method

.method isDefaultValueValid(Lcom/google/gson/JsonElement;)Z
    .registers 3
    .param p1, "element"    # Lcom/google/gson/JsonElement;

    .prologue
    .line 342
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->isJsonPrimitive()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/google/gson/JsonPrimitive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonPrimitive;->isString()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method
