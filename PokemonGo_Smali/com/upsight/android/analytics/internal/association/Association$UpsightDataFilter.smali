.class public Lcom/upsight/android/analytics/internal/association/Association$UpsightDataFilter;
.super Ljava/lang/Object;
.source "Association.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/internal/association/Association;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UpsightDataFilter"
.end annotation


# instance fields
.field matchKey:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "match_key"
    .end annotation
.end field

.field matchValues:Lcom/google/gson/JsonArray;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "match_values"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMatchKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/association/Association$UpsightDataFilter;->matchKey:Ljava/lang/String;

    return-object v0
.end method

.method public getMatchValues()Lcom/google/gson/JsonArray;
    .registers 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/association/Association$UpsightDataFilter;->matchValues:Lcom/google/gson/JsonArray;

    return-object v0
.end method
