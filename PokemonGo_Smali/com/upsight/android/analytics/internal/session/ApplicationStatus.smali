.class public Lcom/upsight/android/analytics/internal/session/ApplicationStatus;
.super Ljava/lang/Object;
.source "ApplicationStatus.java"


# annotations
.annotation runtime Lcom/upsight/android/persistence/annotation/UpsightStorableType;
    value = "upsight.application.status"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;
    }
.end annotation


# instance fields
.field id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation

    .annotation runtime Lcom/upsight/android/persistence/annotation/UpsightStorableIdentifier;
    .end annotation
.end field

.field state:Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "state"
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public constructor <init>(Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;)V
    .registers 2
    .param p1, "state"    # Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/session/ApplicationStatus;->state:Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;

    .line 44
    return-void
.end method


# virtual methods
.method public getState()Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/session/ApplicationStatus;->state:Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;

    return-object v0
.end method
