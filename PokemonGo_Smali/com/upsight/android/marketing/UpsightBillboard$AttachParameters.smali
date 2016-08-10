.class public Lcom/upsight/android/marketing/UpsightBillboard$AttachParameters;
.super Ljava/lang/Object;
.source "UpsightBillboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/marketing/UpsightBillboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AttachParameters"
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mDialogTheme:Ljava/lang/Integer;

.field private mPresentationStyle:Lcom/upsight/android/marketing/UpsightBillboard$PresentationStyle;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lcom/upsight/android/marketing/UpsightBillboard$AttachParameters;->mActivity:Landroid/app/Activity;

    .line 94
    return-void
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/upsight/android/marketing/UpsightBillboard$AttachParameters;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getDialogTheme()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/upsight/android/marketing/UpsightBillboard$AttachParameters;->mDialogTheme:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPreferredPresentationStyle()Lcom/upsight/android/marketing/UpsightBillboard$PresentationStyle;
    .registers 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/upsight/android/marketing/UpsightBillboard$AttachParameters;->mPresentationStyle:Lcom/upsight/android/marketing/UpsightBillboard$PresentationStyle;

    return-object v0
.end method

.method public putDialogTheme(I)Lcom/upsight/android/marketing/UpsightBillboard$AttachParameters;
    .registers 3
    .param p1, "dialogTheme"    # I

    .prologue
    .line 135
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/marketing/UpsightBillboard$AttachParameters;->mDialogTheme:Ljava/lang/Integer;

    .line 136
    return-object p0
.end method

.method public putPreferredPresentationStyle(Lcom/upsight/android/marketing/UpsightBillboard$PresentationStyle;)Lcom/upsight/android/marketing/UpsightBillboard$AttachParameters;
    .registers 2
    .param p1, "presentationStyle"    # Lcom/upsight/android/marketing/UpsightBillboard$PresentationStyle;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/upsight/android/marketing/UpsightBillboard$AttachParameters;->mPresentationStyle:Lcom/upsight/android/marketing/UpsightBillboard$PresentationStyle;

    .line 115
    return-object p0
.end method
