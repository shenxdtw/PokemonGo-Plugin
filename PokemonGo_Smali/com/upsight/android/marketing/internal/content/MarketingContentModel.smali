.class public final Lcom/upsight/android/marketing/internal/content/MarketingContentModel;
.super Ljava/lang/Object;
.source "MarketingContentModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/marketing/internal/content/MarketingContentModel$Presentation;
    }
.end annotation


# instance fields
.field contentId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "content_id"
    .end annotation
.end field

.field context:Lcom/google/gson/JsonElement;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "context"
    .end annotation
.end field

.field presentation:Lcom/upsight/android/marketing/internal/content/MarketingContentModel$Presentation;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "presentation"
    .end annotation
.end field

.field templateUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "url"
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    return-void
.end method

.method static from(Lcom/google/gson/JsonElement;Lcom/google/gson/Gson;)Lcom/upsight/android/marketing/internal/content/MarketingContentModel;
    .registers 5
    .param p0, "json"    # Lcom/google/gson/JsonElement;
    .param p1, "gson"    # Lcom/google/gson/Gson;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    :try_start_0
    const-class v2, Lcom/upsight/android/marketing/internal/content/MarketingContentModel;

    invoke-virtual {p1, p0, v2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/upsight/android/marketing/internal/content/MarketingContentModel;
    :try_end_8
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_8} :catch_9

    .line 105
    .local v1, "model":Lcom/upsight/android/marketing/internal/content/MarketingContentModel;
    return-object v1

    .line 102
    .end local v1    # "model":Lcom/upsight/android/marketing/internal/content/MarketingContentModel;
    :catch_9
    move-exception v0

    .line 103
    .local v0, "e":Lcom/google/gson/JsonSyntaxException;
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public getContentID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentModel;->contentId:Ljava/lang/String;

    return-object v0
.end method

.method public getContext()Lcom/google/gson/JsonElement;
    .registers 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentModel;->context:Lcom/google/gson/JsonElement;

    return-object v0
.end method

.method public getDialogLayouts()Lcom/upsight/android/marketing/internal/content/MarketingContentModel$Presentation$DialogLayout;
    .registers 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentModel;->presentation:Lcom/upsight/android/marketing/internal/content/MarketingContentModel$Presentation;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentModel;->presentation:Lcom/upsight/android/marketing/internal/content/MarketingContentModel$Presentation;

    iget-object v0, v0, Lcom/upsight/android/marketing/internal/content/MarketingContentModel$Presentation;->layout:Lcom/upsight/android/marketing/internal/content/MarketingContentModel$Presentation$DialogLayout;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getPresentationStyle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentModel;->presentation:Lcom/upsight/android/marketing/internal/content/MarketingContentModel$Presentation;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentModel;->presentation:Lcom/upsight/android/marketing/internal/content/MarketingContentModel$Presentation;

    iget-object v0, v0, Lcom/upsight/android/marketing/internal/content/MarketingContentModel$Presentation;->style:Ljava/lang/String;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getTemplateUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentModel;->templateUrl:Ljava/lang/String;

    return-object v0
.end method
