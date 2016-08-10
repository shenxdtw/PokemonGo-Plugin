.class public Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;
.super Landroid/app/Activity;
.source "BillboardManagementActivity.java"


# static fields
.field static final INTENT_EXTRA_MARKETING_CONTENT_DIALOG_THEME:Ljava/lang/String; = "marketingContentDialogTheme"

.field static final INTENT_EXTRA_MARKETING_CONTENT_ID:Ljava/lang/String; = "marketingContentId"

.field static final INTENT_EXTRA_MARKETING_CONTENT_PREFERRED_STYLE:Ljava/lang/String; = "marketingContentPreferredStyle"

.field private static final LOG_TAG:Ljava/lang/String; = "BillboardActivity"

.field private static final STYLE_DIALOG:I

.field private static final STYLE_FULLSCREEN:I = 0x103012a


# instance fields
.field private mBillboard:Lcom/upsight/android/marketing/internal/billboard/Billboard;

.field private mContent:Lcom/upsight/android/marketing/internal/content/MarketingContent;

.field mContentStore:Lcom/upsight/android/marketing/internal/content/MarketingContentStore;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mDataStoreSubscription:Lcom/upsight/android/persistence/UpsightSubscription;

.field private mFragment:Lcom/upsight/android/marketing/internal/billboard/BillboardFragment;

.field private mIsForeground:Z

.field private mShouldAttachOnResume:Z

.field mUpsight:Lcom/upsight/android/UpsightContext;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 51
    sget v0, Lcom/upsight/android/marketing/R$style;->Theme_DeviceDefault_Light_Dialog_NoActionBar_UpsightDialog:I

    sput v0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;->STYLE_DIALOG:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 64
    iput-object v0, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;->mContent:Lcom/upsight/android/marketing/internal/content/MarketingContent;

    .line 66
    iput-object v0, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;->mBillboard:Lcom/upsight/android/marketing/internal/billboard/Billboard;

    .line 68
    iput-object v0, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;->mFragment:Lcom/upsight/android/marketing/internal/billboard/BillboardFragment;

    .line 70
    iput-object v0, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;->mDataStoreSubscription:Lcom/upsight/android/persistence/UpsightSubscription;

    .line 72
    iput-boolean v1, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;->mIsForeground:Z

    .line 74
    iput-boolean v1, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;->mShouldAttachOnResume:Z

    return-void
.end method

.method private handle(Lcom/upsight/android/marketing/internal/content/MarketingContent$ScopelessAvailabilityEvent;)V
    .registers 10
    .param p1, "event"    # Lcom/upsight/android/marketing/internal/content/MarketingContent$ScopelessAvailabilityEvent;

    .prologue
    .line 271
    iget-object v1, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;->mContent:Lcom/upsight/android/marketing/internal/content/MarketingContent;

    .line 272
    .local v1, "content":Lcom/upsight/android/marketing/internal/content/MarketingContent;
    if-eqz v1, :cond_50

    invoke-virtual {v1}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/upsight/android/marketing/internal/content/MarketingContent$ScopelessAvailabilityEvent;->getParentId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_50

    .line 274
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;->mBillboard:Lcom/upsight/android/marketing/internal/billboard/Billboard;

    .line 275
    .local v0, "billboard":Lcom/upsight/android/marketing/internal/billboard/Billboard;
    if-eqz v0, :cond_50

    .line 276
    iget-object v6, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;->mContentStore:Lcom/upsight/android/marketing/internal/content/MarketingContentStore;

    invoke-virtual {p1}, Lcom/upsight/android/marketing/internal/content/MarketingContent$ScopelessAvailabilityEvent;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/upsight/android/marketing/internal/content/MarketingContentStore;->get(Ljava/lang/String;)Lcom/upsight/android/analytics/internal/action/Actionable;

    move-result-object v4

    check-cast v4, Lcom/upsight/android/marketing/internal/content/MarketingContent;

    .line 277
    .local v4, "nextContent":Lcom/upsight/android/marketing/internal/content/MarketingContent;
    if-eqz v4, :cond_50

    invoke-virtual {v4}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->isAvailable()Z

    move-result v6

    if-eqz v6, :cond_50

    .line 278
    invoke-virtual {v1}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->getContentMediator()Lcom/upsight/android/marketing/UpsightContentMediator;

    move-result-object v3

    .line 279
    .local v3, "mediator":Lcom/upsight/android/marketing/UpsightContentMediator;, "Lcom/upsight/android/marketing/UpsightContentMediator<*>;"
    invoke-virtual {v4}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->getContentMediator()Lcom/upsight/android/marketing/UpsightContentMediator;

    move-result-object v5

    .line 280
    .local v5, "nextMediator":Lcom/upsight/android/marketing/UpsightContentMediator;, "Lcom/upsight/android/marketing/UpsightContentMediator<*>;"
    if-eqz v3, :cond_50

    if-eqz v5, :cond_50

    .line 282
    iput-object v4, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;->mContent:Lcom/upsight/android/marketing/internal/content/MarketingContent;

    .line 285
    invoke-virtual {v4, v0}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->bindBillboard(Lcom/upsight/android/marketing/internal/billboard/Billboard;)V

    .line 288
    invoke-virtual {v0}, Lcom/upsight/android/marketing/internal/billboard/Billboard;->getHandler()Lcom/upsight/android/marketing/UpsightBillboard$Handler;

    move-result-object v6

    invoke-interface {v6}, Lcom/upsight/android/marketing/UpsightBillboard$Handler;->onNextView()V

    .line 291
    invoke-virtual {p0}, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 292
    .local v2, "fragmentManager":Landroid/app/FragmentManager;
    iget-object v6, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;->mFragment:Lcom/upsight/android/marketing/internal/billboard/BillboardFragment;

    invoke-virtual {v3, v1, v2, v6}, Lcom/upsight/android/marketing/UpsightContentMediator;->hideContent(Lcom/upsight/android/marketing/internal/content/MarketingContent;Landroid/app/FragmentManager;Lcom/upsight/android/marketing/internal/billboard/BillboardFragment;)V

    .line 293
    iget-object v6, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;->mFragment:Lcom/upsight/android/marketing/internal/billboard/BillboardFragment;

    invoke-virtual {v5, v4, v2, v6}, Lcom/upsight/android/marketing/UpsightContentMediator;->displayContent(Lcom/upsight/android/marketing/internal/content/MarketingContent;Landroid/app/FragmentManager;Lcom/upsight/android/marketing/internal/billboard/BillboardFragment;)V

    .line 298
    .end local v0    # "billboard":Lcom/upsight/android/marketing/internal/billboard/Billboard;
    .end local v2    # "fragmentManager":Landroid/app/FragmentManager;
    .end local v3    # "mediator":Lcom/upsight/android/marketing/UpsightContentMediator;, "Lcom/upsight/android/marketing/UpsightContentMediator<*>;"
    .end local v4    # "nextContent":Lcom/upsight/android/marketing/internal/content/MarketingContent;
    .end local v5    # "nextMediator":Lcom/upsight/android/marketing/UpsightContentMediator;, "Lcom/upsight/android/marketing/UpsightContentMediator<*>;"
    :cond_50
    return-void
.end method

.method private handle(Lcom/upsight/android/marketing/internal/content/MarketingContent$SubcontentAvailabilityEvent;)V
    .registers 5
    .param p1, "event"    # Lcom/upsight/android/marketing/internal/content/MarketingContent$SubcontentAvailabilityEvent;

    .prologue
    .line 257
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;->mContent:Lcom/upsight/android/marketing/internal/content/MarketingContent;

    .line 258
    .local v0, "content":Lcom/upsight/android/marketing/internal/content/MarketingContent;
    if-eqz v0, :cond_15

    invoke-virtual {p1}, Lcom/upsight/android/marketing/internal/content/MarketingContent$SubcontentAvailabilityEvent;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 259
    invoke-virtual {p0, v0}, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;->attachBillboard(Lcom/upsight/android/marketing/internal/content/MarketingContent;)V

    .line 261
    :cond_15
    return-void
.end method

.method private handle(Lcom/upsight/android/marketing/internal/content/MarketingContent$SubdialogAvailabilityEvent;)V
    .registers 5
    .param p1, "event"    # Lcom/upsight/android/marketing/internal/content/MarketingContent$SubdialogAvailabilityEvent;

    .prologue
    .line 264
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;->mContent:Lcom/upsight/android/marketing/internal/content/MarketingContent;

    .line 265
    .local v0, "content":Lcom/upsight/android/marketing/internal/content/MarketingContent;
    if-eqz v0, :cond_19

    invoke-virtual {p1}, Lcom/upsight/android/marketing/internal/content/MarketingContent$SubdialogAvailabilityEvent;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 266
    invoke-virtual {p1}, Lcom/upsight/android/marketing/internal/content/MarketingContent$SubdialogAvailabilityEvent;->getPendingDialog()Lcom/upsight/android/marketing/internal/content/MarketingContent$PendingDialog;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;->attachDialog(Lcom/upsight/android/marketing/internal/content/MarketingContent$PendingDialog;)V

    .line 268
    :cond_19
    return-void
.end method

.method private handle(Lcom/upsight/android/marketing/internal/content/MarketingContentActions$DestroyEvent;)V
    .registers 5
    .param p1, "event"    # Lcom/upsight/android/marketing/internal/content/MarketingContentActions$DestroyEvent;

    .prologue
    .line 301
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;->mContent:Lcom/upsight/android/marketing/internal/content/MarketingContent;

    .line 302
    .local v0, "content":Lcom/upsight/android/marketing/internal/content/MarketingContent;
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$DestroyEvent;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 303
    invoke-virtual {p0}, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;->detachBillboard()V

    .line 305
    :cond_13
    return-void
.end method


# virtual methods
.method attachBillboard(Lcom/upsight/android/marketing/internal/content/MarketingContent;)V
    .registers 11
    .param p1, "content"    # Lcom/upsight/android/marketing/internal/content/MarketingContent;

    .prologue
    const/4 v8, 0x0

    .line 330
    iget-object v4, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v4}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v4

    const-string v5, "BillboardActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Attach billboard activity="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " marketingContentId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6, v7}, Lcom/upsight/android/logger/UpsightLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 332
    invoke-virtual {p1}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->getContentMediator()Lcom/upsight/android/marketing/UpsightContentMediator;

    move-result-object v1

    .line 333
    .local v1, "mediator":Lcom/upsight/android/marketing/UpsightContentMediator;, "Lcom/upsight/android/marketing/UpsightContentMediator<*>;"
    if-eqz v1, :cond_78

    .line 336
    invoke-virtual {p0}, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "marketingContentPreferredStyle"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/upsight/android/marketing/UpsightBillboard$PresentationStyle;

    .line 337
    .local v2, "preferredStyle":Lcom/upsight/android/marketing/UpsightBillboard$PresentationStyle;
    if-eqz v2, :cond_4b

    sget-object v4, Lcom/upsight/android/marketing/UpsightBillboard$PresentationStyle;->None:Lcom/upsight/android/marketing/UpsightBillboard$PresentationStyle;

    invoke-virtual {v2, v4}, Lcom/upsight/android/marketing/UpsightBillboard$PresentationStyle;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 339
    :cond_4b
    invoke-virtual {v1, p1}, Lcom/upsight/android/marketing/UpsightContentMediator;->getPresentationStyle(Lcom/upsight/android/marketing/internal/content/MarketingContent;)Lcom/upsight/android/marketing/UpsightBillboard$PresentationStyle;

    move-result-object v2

    .line 344
    :cond_4f
    const/4 v0, 0x0

    .line 345
    .local v0, "fragmentDimensions":Ljava/util/Set;, "Ljava/util/Set<Lcom/upsight/android/marketing/UpsightBillboard$Dimensions;>;"
    sget-object v4, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity$1;->$SwitchMap$com$upsight$android$marketing$UpsightBillboard$PresentationStyle:[I

    invoke-virtual {v2}, Lcom/upsight/android/marketing/UpsightBillboard$PresentationStyle;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_80

    .line 352
    const v3, 0x103012a

    .line 356
    .local v3, "style":I
    :goto_5e
    invoke-static {p0, v0}, Lcom/upsight/android/marketing/internal/billboard/BillboardFragment;->newInstance(Landroid/content/Context;Ljava/util/Set;)Lcom/upsight/android/marketing/internal/billboard/BillboardFragment;

    move-result-object v4

    iput-object v4, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;->mFragment:Lcom/upsight/android/marketing/internal/billboard/BillboardFragment;

    .line 357
    iget-object v4, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;->mFragment:Lcom/upsight/android/marketing/internal/billboard/BillboardFragment;

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v3}, Lcom/upsight/android/marketing/internal/billboard/BillboardFragment;->setStyle(II)V

    .line 358
    iget-object v4, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;->mFragment:Lcom/upsight/android/marketing/internal/billboard/BillboardFragment;

    invoke-virtual {v4, v8}, Lcom/upsight/android/marketing/internal/billboard/BillboardFragment;->setCancelable(Z)V

    .line 359
    invoke-virtual {p0}, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    iget-object v5, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;->mFragment:Lcom/upsight/android/marketing/internal/billboard/BillboardFragment;

    invoke-virtual {v1, p1, v4, v5}, Lcom/upsight/android/marketing/UpsightContentMediator;->displayContent(Lcom/upsight/android/marketing/internal/content/MarketingContent;Landroid/app/FragmentManager;Lcom/upsight/android/marketing/internal/billboard/BillboardFragment;)V

    .line 361
    .end local v0    # "fragmentDimensions":Ljava/util/Set;, "Ljava/util/Set<Lcom/upsight/android/marketing/UpsightBillboard$Dimensions;>;"
    .end local v2    # "preferredStyle":Lcom/upsight/android/marketing/UpsightBillboard$PresentationStyle;
    .end local v3    # "style":I
    :cond_78
    return-void

    .line 347
    .restart local v0    # "fragmentDimensions":Ljava/util/Set;, "Ljava/util/Set<Lcom/upsight/android/marketing/UpsightBillboard$Dimensions;>;"
    .restart local v2    # "preferredStyle":Lcom/upsight/android/marketing/UpsightBillboard$PresentationStyle;
    :pswitch_79
    sget v3, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;->STYLE_DIALOG:I

    .line 348
    .restart local v3    # "style":I
    invoke-virtual {v1, p1}, Lcom/upsight/android/marketing/UpsightContentMediator;->getDimensions(Lcom/upsight/android/marketing/internal/content/MarketingContent;)Ljava/util/Set;

    move-result-object v0

    .line 349
    goto :goto_5e

    .line 345
    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_79
    .end packed-switch
.end method

.method attachDialog(Lcom/upsight/android/marketing/internal/content/MarketingContent$PendingDialog;)V
    .registers 9
    .param p1, "pendingDialog"    # Lcom/upsight/android/marketing/internal/content/MarketingContent$PendingDialog;

    .prologue
    const/4 v6, 0x0

    .line 313
    iget-object v2, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v2}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v2

    const-string v3, "BillboardActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attach dialog activity="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " marketingContentId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/upsight/android/marketing/internal/content/MarketingContent$PendingDialog;->mId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4, v5}, Lcom/upsight/android/logger/UpsightLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 315
    invoke-virtual {p0}, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 316
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "marketingContentDialogTheme"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 317
    const-string v2, "marketingContentDialogTheme"

    const/high16 v3, -0x80000000

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 318
    .local v0, "dialogTheme":I
    invoke-static {p1, v0}, Lcom/upsight/android/marketing/internal/billboard/BillboardDialogFragment;->newInstance(Lcom/upsight/android/marketing/internal/content/MarketingContent$PendingDialog;I)Landroid/app/DialogFragment;

    move-result-object v2

    invoke-virtual {p0}, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v2, v3, v6}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 322
    .end local v0    # "dialogTheme":I
    :goto_4d
    return-void

    .line 320
    :cond_4e
    invoke-static {p1}, Lcom/upsight/android/marketing/internal/billboard/BillboardDialogFragment;->newInstance(Lcom/upsight/android/marketing/internal/content/MarketingContent$PendingDialog;)Landroid/app/DialogFragment;

    move-result-object v2

    invoke-virtual {p0}, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v2, v3, v6}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_4d
.end method

.method detachBillboard()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 367
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;->mBillboard:Lcom/upsight/android/marketing/internal/billboard/Billboard;

    .line 368
    .local v0, "billboard":Lcom/upsight/android/marketing/internal/billboard/Billboard;
    if-eqz v0, :cond_51

    .line 369
    iget-object v2, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v2}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v2

    const-string v3, "BillboardActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Detach billboard activity="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " scope="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/upsight/android/marketing/internal/billboard/Billboard;->getScope()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4, v5}, Lcom/upsight/android/logger/UpsightLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 372
    iget-object v1, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;->mFragment:Lcom/upsight/android/marketing/internal/billboard/BillboardFragment;

    .line 373
    .local v1, "fragment":Landroid/app/DialogFragment;
    if-eqz v1, :cond_41

    invoke-virtual {v1}, Landroid/app/DialogFragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_41

    .line 374
    invoke-virtual {v1}, Landroid/app/DialogFragment;->dismiss()V

    .line 378
    :cond_41
    iput-object v6, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;->mContent:Lcom/upsight/android/marketing/internal/content/MarketingContent;

    .line 379
    iput-object v6, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;->mBillboard:Lcom/upsight/android/marketing/internal/billboard/Billboard;

    .line 380
    iput-object v6, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;->mFragment:Lcom/upsight/android/marketing/internal/billboard/BillboardFragment;

    .line 383
    invoke-virtual {p0}, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;->finish()V

    .line 386
    invoke-virtual {v0}, Lcom/upsight/android/marketing/internal/billboard/Billboard;->getHandler()Lcom/upsight/android/marketing/UpsightBillboard$Handler;

    move-result-object v2

    invoke-interface {v2}, Lcom/upsight/android/marketing/UpsightBillboard$Handler;->onDetach()V

    .line 388
    .end local v1    # "fragment":Landroid/app/DialogFragment;
    :cond_51
    return-void
.end method

.method public handleActionEvent(Lcom/upsight/android/marketing/internal/content/MarketingContentActions$DestroyEvent;)V
    .registers 7
    .param p1, "event"    # Lcom/upsight/android/marketing/internal/content/MarketingContentActions$DestroyEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 231
    iget-object v1, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v1}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v1

    const-string v2, "BillboardActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received DestroyEvent activity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " marketingContentId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$DestroyEvent;->mId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3, v4}, Lcom/upsight/android/logger/UpsightLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 233
    iget-boolean v1, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;->mIsForeground:Z

    if-eqz v1, :cond_35

    .line 234
    invoke-direct {p0, p1}, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;->handle(Lcom/upsight/android/marketing/internal/content/MarketingContentActions$DestroyEvent;)V

    .line 241
    :cond_34
    :goto_34
    return-void

    .line 236
    :cond_35
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;->mContent:Lcom/upsight/android/marketing/internal/content/MarketingContent;

    .line 237
    .local v0, "content":Lcom/upsight/android/marketing/internal/content/MarketingContent;, "Lcom/upsight/android/marketing/internal/content/MarketingContent<*>;"
    if-eqz v0, :cond_34

    .line 238
    invoke-virtual {v0}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->getEventQueue()Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_34
.end method

.method public handleAvailabilityEvent(Lcom/upsight/android/marketing/internal/content/MarketingContent$ScopelessAvailabilityEvent;)V
    .registers 7
    .param p1, "event"    # Lcom/upsight/android/marketing/internal/content/MarketingContent$ScopelessAvailabilityEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 217
    iget-object v1, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v1}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v1

    const-string v2, "BillboardActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received ScopelessAvailabilityEvent activity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " marketingContentId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/upsight/android/marketing/internal/content/MarketingContent$ScopelessAvailabilityEvent;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3, v4}, Lcom/upsight/android/logger/UpsightLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 219
    iget-boolean v1, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;->mIsForeground:Z

    if-eqz v1, :cond_37

    .line 220
    invoke-direct {p0, p1}, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;->handle(Lcom/upsight/android/marketing/internal/content/MarketingContent$ScopelessAvailabilityEvent;)V

    .line 227
    :cond_36
    :goto_36
    return-void

    .line 222
    :cond_37
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;->mContent:Lcom/upsight/android/marketing/internal/content/MarketingContent;

    .line 223
    .local v0, "content":Lcom/upsight/android/marketing/internal/content/MarketingContent;, "Lcom/upsight/android/marketing/internal/content/MarketingContent<*>;"
    if-eqz v0, :cond_36

    .line 224
    invoke-virtual {v0}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->getEventQueue()Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_36
.end method

.method public handleAvailabilityEvent(Lcom/upsight/android/marketing/internal/content/MarketingContent$SubcontentAvailabilityEvent;)V
    .registers 7
    .param p1, "event"    # Lcom/upsight/android/marketing/internal/content/MarketingContent$SubcontentAvailabilityEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 189
    iget-object v1, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v1}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v1

    const-string v2, "BillboardActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received SubcontentAvailabilityEvent activity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " marketingContentId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/upsight/android/marketing/internal/content/MarketingContent$SubcontentAvailabilityEvent;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3, v4}, Lcom/upsight/android/logger/UpsightLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    iget-boolean v1, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;->mIsForeground:Z

    if-eqz v1, :cond_37

    .line 192
    invoke-direct {p0, p1}, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;->handle(Lcom/upsight/android/marketing/internal/content/MarketingContent$SubcontentAvailabilityEvent;)V

    .line 199
    :cond_36
    :goto_36
    return-void

    .line 194
    :cond_37
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;->mContent:Lcom/upsight/android/marketing/internal/content/MarketingContent;

    .line 195
    .local v0, "content":Lcom/upsight/android/marketing/internal/content/MarketingContent;, "Lcom/upsight/android/marketing/internal/content/MarketingContent<*>;"
    if-eqz v0, :cond_36

    .line 196
    invoke-virtual {v0}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->getEventQueue()Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_36
.end method

.method public handleAvailabilityEvent(Lcom/upsight/android/marketing/internal/content/MarketingContent$SubdialogAvailabilityEvent;)V
    .registers 7
    .param p1, "event"    # Lcom/upsight/android/marketing/internal/content/MarketingContent$SubdialogAvailabilityEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 203
    iget-object v1, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v1}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v1

    const-string v2, "BillboardActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received SubdialogAvailabilityEvent activity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " marketingContentId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/upsight/android/marketing/internal/content/MarketingContent$SubdialogAvailabilityEvent;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3, v4}, Lcom/upsight/android/logger/UpsightLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 205
    iget-boolean v1, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;->mIsForeground:Z

    if-eqz v1, :cond_37

    .line 206
    invoke-direct {p0, p1}, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;->handle(Lcom/upsight/android/marketing/internal/content/MarketingContent$SubdialogAvailabilityEvent;)V

    .line 213
    :cond_36
    :goto_36
    return-void

    .line 208
    :cond_37
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;->mContent:Lcom/upsight/android/marketing/internal/content/MarketingContent;

    .line 209
    .local v0, "content":Lcom/upsight/android/marketing/internal/content/MarketingContent;, "Lcom/upsight/android/marketing/internal/content/MarketingContent<*>;"
    if-eqz v0, :cond_36

    .line 210
    invoke-virtual {v0}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->getEventQueue()Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_36
.end method

.method public onApplicationStatus(Lcom/upsight/android/analytics/internal/session/ApplicationStatus;)V
    .registers 7
    .param p1, "appStatus"    # Lcom/upsight/android/analytics/internal/session/ApplicationStatus;
    .annotation runtime Lcom/upsight/android/persistence/annotation/Created;
    .end annotation

    .annotation runtime Lcom/upsight/android/persistence/annotation/Updated;
    .end annotation

    .prologue
    .line 246
    invoke-virtual {p1}, Lcom/upsight/android/analytics/internal/session/ApplicationStatus;->getState()Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;

    move-result-object v1

    sget-object v2, Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;->BACKGROUND:Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;

    if-ne v1, v2, :cond_32

    .line 247
    iget-object v1, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v1}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v1

    const-string v2, "BillboardActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received application background event activity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3, v4}, Lcom/upsight/android/logger/UpsightLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 249
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;->mContent:Lcom/upsight/android/marketing/internal/content/MarketingContent;

    .line 250
    .local v0, "content":Lcom/upsight/android/marketing/internal/content/MarketingContent;
    if-eqz v0, :cond_32

    .line 251
    const-string v1, "app_backgrounded"

    invoke-virtual {v0, v1}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->executeActions(Ljava/lang/String;)V

    .line 254
    .end local v0    # "content":Lcom/upsight/android/marketing/internal/content/MarketingContent;
    :cond_32
    return-void
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .registers 3
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 179
    invoke-super {p0, p1}, Landroid/app/Activity;->onAttachFragment(Landroid/app/Fragment;)V

    .line 182
    instance-of v0, p1, Lcom/upsight/android/marketing/internal/billboard/BillboardFragment;

    if-eqz v0, :cond_b

    .line 183
    check-cast p1, Lcom/upsight/android/marketing/internal/billboard/BillboardFragment;

    .end local p1    # "fragment":Landroid/app/Fragment;
    iput-object p1, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;->mFragment:Lcom/upsight/android/marketing/internal/billboard/BillboardFragment;

    .line 185
    :cond_b
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 78
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    invoke-static {p0}, Lcom/upsight/android/Upsight;->createContext(Landroid/content/Context;)Lcom/upsight/android/UpsightContext;

    move-result-object v3

    .line 81
    .local v3, "upsight":Lcom/upsight/android/UpsightContext;
    const-string v4, "com.upsight.extension.marketing"

    invoke-virtual {v3, v4}, Lcom/upsight/android/UpsightContext;->getUpsightExtension(Ljava/lang/String;)Lcom/upsight/android/UpsightExtension;

    move-result-object v4

    check-cast v4, Lcom/upsight/android/UpsightMarketingExtension;

    check-cast v4, Lcom/upsight/android/UpsightMarketingExtension;

    .line 82
    invoke-virtual {v4}, Lcom/upsight/android/UpsightMarketingExtension;->getComponent()Lcom/upsight/android/UpsightExtension$BaseComponent;

    move-result-object v4

    check-cast v4, Lcom/upsight/android/marketing/UpsightMarketingComponent;

    .line 83
    invoke-interface {v4, p0}, Lcom/upsight/android/marketing/UpsightMarketingComponent;->inject(Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;)V

    .line 85
    sget v4, Lcom/upsight/android/marketing/R$layout;->upsight_activity_billboard_management:I

    invoke-virtual {p0, v4}, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;->setContentView(I)V

    .line 88
    invoke-virtual {p0}, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 89
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "marketingContentId"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, "id":Ljava/lang/String;
    iget-object v4, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v4}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v4

    const-string v6, "BillboardActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onCreate activity="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " marketingContentId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v5, [Ljava/lang/Object;

    invoke-interface {v4, v6, v7, v8}, Lcom/upsight/android/logger/UpsightLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 94
    invoke-virtual {p0}, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;->finish()V

    .line 113
    :goto_5d
    return-void

    .line 99
    :cond_5e
    iget-object v4, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;->mContentStore:Lcom/upsight/android/marketing/internal/content/MarketingContentStore;

    invoke-interface {v4, v1}, Lcom/upsight/android/marketing/internal/content/MarketingContentStore;->get(Ljava/lang/String;)Lcom/upsight/android/analytics/internal/action/Actionable;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/marketing/internal/content/MarketingContent;

    .line 100
    .local v0, "content":Lcom/upsight/android/marketing/internal/content/MarketingContent;
    if-eqz v0, :cond_91

    .line 101
    iput-object v0, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;->mContent:Lcom/upsight/android/marketing/internal/content/MarketingContent;

    .line 102
    invoke-virtual {v0}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->getBoundBillboard()Lcom/upsight/android/marketing/internal/billboard/Billboard;

    move-result-object v4

    iput-object v4, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;->mBillboard:Lcom/upsight/android/marketing/internal/billboard/Billboard;

    .line 105
    if-nez p1, :cond_8f

    const/4 v4, 0x1

    :goto_73
    iput-boolean v4, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;->mShouldAttachOnResume:Z

    .line 111
    :goto_75
    iget-object v4, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v4}, Lcom/upsight/android/UpsightContext;->getDataStore()Lcom/upsight/android/persistence/UpsightDataStore;

    move-result-object v4

    invoke-interface {v4, p0}, Lcom/upsight/android/persistence/UpsightDataStore;->subscribe(Ljava/lang/Object;)Lcom/upsight/android/persistence/UpsightSubscription;

    move-result-object v4

    iput-object v4, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;->mDataStoreSubscription:Lcom/upsight/android/persistence/UpsightSubscription;

    .line 112
    iget-object v4, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v4}, Lcom/upsight/android/UpsightContext;->getCoreComponent()Lcom/upsight/android/UpsightCoreComponent;

    move-result-object v4

    invoke-interface {v4}, Lcom/upsight/android/UpsightCoreComponent;->bus()Lcom/squareup/otto/Bus;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/squareup/otto/Bus;->register(Ljava/lang/Object;)V

    goto :goto_5d

    :cond_8f
    move v4, v5

    .line 105
    goto :goto_73

    .line 107
    :cond_91
    invoke-virtual {p0}, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;->finish()V

    goto :goto_75
.end method

.method protected onDestroy()V
    .registers 5

    .prologue
    .line 169
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;->mDataStoreSubscription:Lcom/upsight/android/persistence/UpsightSubscription;

    invoke-interface {v0}, Lcom/upsight/android/persistence/UpsightSubscription;->unsubscribe()V

    .line 170
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v0}, Lcom/upsight/android/UpsightContext;->getCoreComponent()Lcom/upsight/android/UpsightCoreComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/upsight/android/UpsightCoreComponent;->bus()Lcom/squareup/otto/Bus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->unregister(Ljava/lang/Object;)V

    .line 172
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v0}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v0

    const-string v1, "BillboardActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDestroy activity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lcom/upsight/android/logger/UpsightLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 175
    return-void
.end method

.method protected onPause()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 160
    iput-boolean v4, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;->mIsForeground:Z

    .line 162
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v0}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v0

    const-string v1, "BillboardActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPause activity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lcom/upsight/android/logger/UpsightLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 165
    return-void
.end method

.method protected onResume()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 117
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 119
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;->mIsForeground:Z

    .line 121
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;->mContent:Lcom/upsight/android/marketing/internal/content/MarketingContent;

    .line 123
    .local v0, "content":Lcom/upsight/android/marketing/internal/content/MarketingContent;, "Lcom/upsight/android/marketing/internal/content/MarketingContent<*>;"
    if-nez v0, :cond_c

    .line 156
    :cond_b
    return-void

    .line 128
    :cond_c
    iget-boolean v3, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;->mShouldAttachOnResume:Z

    if-eqz v3, :cond_1f

    .line 129
    iput-boolean v7, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;->mShouldAttachOnResume:Z

    .line 132
    invoke-virtual {v0}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->hasPendingDialog()Z

    move-result v3

    if-eqz v3, :cond_65

    .line 133
    invoke-virtual {v0}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->popPendingDialog()Lcom/upsight/android/marketing/internal/content/MarketingContent$PendingDialog;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;->attachDialog(Lcom/upsight/android/marketing/internal/content/MarketingContent$PendingDialog;)V

    .line 140
    :cond_1f
    :goto_1f
    invoke-virtual {v0}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->getEventQueue()Ljava/util/Queue;

    move-result-object v2

    .line 142
    .local v2, "eventQueue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    iget-object v3, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v3}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v3

    const-string v4, "BillboardActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onResume activity="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " eventQueueSize="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5, v6}, Lcom/upsight/android/logger/UpsightLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    :cond_51
    :goto_51
    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_b

    .line 145
    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    .line 146
    .local v1, "event":Ljava/lang/Object;
    instance-of v3, v1, Lcom/upsight/android/marketing/internal/content/MarketingContent$SubcontentAvailabilityEvent;

    if-eqz v3, :cond_69

    .line 147
    check-cast v1, Lcom/upsight/android/marketing/internal/content/MarketingContent$SubcontentAvailabilityEvent;

    .end local v1    # "event":Ljava/lang/Object;
    invoke-direct {p0, v1}, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;->handle(Lcom/upsight/android/marketing/internal/content/MarketingContent$SubcontentAvailabilityEvent;)V

    goto :goto_51

    .line 135
    .end local v2    # "eventQueue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :cond_65
    invoke-virtual {p0, v0}, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;->attachBillboard(Lcom/upsight/android/marketing/internal/content/MarketingContent;)V

    goto :goto_1f

    .line 148
    .restart local v1    # "event":Ljava/lang/Object;
    .restart local v2    # "eventQueue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :cond_69
    instance-of v3, v1, Lcom/upsight/android/marketing/internal/content/MarketingContent$SubdialogAvailabilityEvent;

    if-eqz v3, :cond_73

    .line 149
    check-cast v1, Lcom/upsight/android/marketing/internal/content/MarketingContent$SubdialogAvailabilityEvent;

    .end local v1    # "event":Ljava/lang/Object;
    invoke-direct {p0, v1}, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;->handle(Lcom/upsight/android/marketing/internal/content/MarketingContent$SubdialogAvailabilityEvent;)V

    goto :goto_51

    .line 150
    .restart local v1    # "event":Ljava/lang/Object;
    :cond_73
    instance-of v3, v1, Lcom/upsight/android/marketing/internal/content/MarketingContent$ScopelessAvailabilityEvent;

    if-eqz v3, :cond_7d

    .line 151
    check-cast v1, Lcom/upsight/android/marketing/internal/content/MarketingContent$ScopelessAvailabilityEvent;

    .end local v1    # "event":Ljava/lang/Object;
    invoke-direct {p0, v1}, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;->handle(Lcom/upsight/android/marketing/internal/content/MarketingContent$ScopelessAvailabilityEvent;)V

    goto :goto_51

    .line 152
    .restart local v1    # "event":Ljava/lang/Object;
    :cond_7d
    instance-of v3, v1, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$DestroyEvent;

    if-eqz v3, :cond_51

    .line 153
    check-cast v1, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$DestroyEvent;

    .end local v1    # "event":Ljava/lang/Object;
    invoke-direct {p0, v1}, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;->handle(Lcom/upsight/android/marketing/internal/content/MarketingContentActions$DestroyEvent;)V

    goto :goto_51
.end method
