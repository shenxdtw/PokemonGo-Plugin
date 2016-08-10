.class final Lcom/upsight/android/managedvariables/internal/type/UxmSchema$BaseSchema$1;
.super Ljava/util/HashSet;
.source "UxmSchema.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/managedvariables/internal/type/UxmSchema$BaseSchema;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 274
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 275
    const-string v0, "tag"

    invoke-virtual {p0, v0}, Lcom/upsight/android/managedvariables/internal/type/UxmSchema$BaseSchema$1;->add(Ljava/lang/Object;)Z

    .line 276
    const-string v0, "type"

    invoke-virtual {p0, v0}, Lcom/upsight/android/managedvariables/internal/type/UxmSchema$BaseSchema$1;->add(Ljava/lang/Object;)Z

    .line 277
    const-string v0, "description"

    invoke-virtual {p0, v0}, Lcom/upsight/android/managedvariables/internal/type/UxmSchema$BaseSchema$1;->add(Ljava/lang/Object;)Z

    .line 278
    const-string v0, "default"

    invoke-virtual {p0, v0}, Lcom/upsight/android/managedvariables/internal/type/UxmSchema$BaseSchema$1;->add(Ljava/lang/Object;)Z

    .line 279
    return-void
.end method
