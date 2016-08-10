.class final Lcom/upsight/android/managedvariables/internal/type/UxmSchema$IntSchema$1;
.super Ljava/util/HashSet;
.source "UxmSchema.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/managedvariables/internal/type/UxmSchema$IntSchema;
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
    .line 369
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 370
    const-string v0, "min"

    invoke-virtual {p0, v0}, Lcom/upsight/android/managedvariables/internal/type/UxmSchema$IntSchema$1;->add(Ljava/lang/Object;)Z

    .line 371
    const-string v0, "max"

    invoke-virtual {p0, v0}, Lcom/upsight/android/managedvariables/internal/type/UxmSchema$IntSchema$1;->add(Ljava/lang/Object;)Z

    .line 372
    return-void
.end method
