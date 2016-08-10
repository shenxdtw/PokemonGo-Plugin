.class abstract Lcom/upsight/android/managedvariables/internal/type/ManagedVariableModel;
.super Ljava/lang/Object;
.source "ManagedVariableModel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field id:Ljava/lang/String;
    .annotation runtime Lcom/upsight/android/persistence/annotation/UpsightStorableIdentifier;
    .end annotation
.end field

.field tag:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tag"
    .end annotation
.end field

.field value:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "value"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 16
    .local p0, "this":Lcom/upsight/android/managedvariables/internal/type/ManagedVariableModel;, "Lcom/upsight/android/managedvariables/internal/type/ManagedVariableModel<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    .local p0, "this":Lcom/upsight/android/managedvariables/internal/type/ManagedVariableModel;, "Lcom/upsight/android/managedvariables/internal/type/ManagedVariableModel<TT;>;"
    iget-object v0, p0, Lcom/upsight/android/managedvariables/internal/type/ManagedVariableModel;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lcom/upsight/android/managedvariables/internal/type/ManagedVariableModel;, "Lcom/upsight/android/managedvariables/internal/type/ManagedVariableModel<TT;>;"
    iget-object v0, p0, Lcom/upsight/android/managedvariables/internal/type/ManagedVariableModel;->value:Ljava/lang/Object;

    return-object v0
.end method
