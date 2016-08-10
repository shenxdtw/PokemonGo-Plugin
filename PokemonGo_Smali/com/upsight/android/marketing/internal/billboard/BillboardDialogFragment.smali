.class public final Lcom/upsight/android/marketing/internal/billboard/BillboardDialogFragment;
.super Landroid/app/DialogFragment;
.source "BillboardDialogFragment.java"


# static fields
.field private static final FRAGMENT_BUNDLE_KEY_BUTTONS:Ljava/lang/String; = "buttons"

.field private static final FRAGMENT_BUNDLE_KEY_DIALOG_THEME:Ljava/lang/String; = "dialogTheme"

.field private static final FRAGMENT_BUNDLE_KEY_DISMISS_TRIGGER:Ljava/lang/String; = "dismissTrigger"

.field private static final FRAGMENT_BUNDLE_KEY_ID:Ljava/lang/String; = "id"

.field private static final FRAGMENT_BUNDLE_KEY_MESSAGE:Ljava/lang/String; = "message"

.field private static final FRAGMENT_BUNDLE_KEY_TITLE:Ljava/lang/String; = "title"

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field mContentStore:Lcom/upsight/android/marketing/internal/content/MarketingContentStore;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mUpsight:Lcom/upsight/android/UpsightContext;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    const-class v0, Lcom/upsight/android/marketing/internal/billboard/BillboardDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/upsight/android/marketing/internal/billboard/BillboardDialogFragment;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/upsight/android/marketing/internal/billboard/BillboardDialogFragment;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/upsight/android/marketing/internal/billboard/BillboardDialogFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/upsight/android/marketing/internal/billboard/BillboardDialogFragment;->executeActions(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private executeActions(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "trigger"    # Ljava/lang/String;

    .prologue
    .line 244
    iget-object v1, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardDialogFragment;->mContentStore:Lcom/upsight/android/marketing/internal/content/MarketingContentStore;

    invoke-interface {v1, p1}, Lcom/upsight/android/marketing/internal/content/MarketingContentStore;->get(Ljava/lang/String;)Lcom/upsight/android/analytics/internal/action/Actionable;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/marketing/internal/content/MarketingContent;

    .line 245
    .local v0, "content":Lcom/upsight/android/marketing/internal/content/MarketingContent;
    if-eqz v0, :cond_d

    .line 246
    invoke-virtual {v0, p2}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->executeActions(Ljava/lang/String;)V

    .line 248
    :cond_d
    return-void
.end method

.method public static newInstance(Lcom/upsight/android/marketing/internal/content/MarketingContent$PendingDialog;)Landroid/app/DialogFragment;
    .registers 5
    .param p0, "pendingDialog"    # Lcom/upsight/android/marketing/internal/content/MarketingContent$PendingDialog;

    .prologue
    .line 53
    new-instance v1, Lcom/upsight/android/marketing/internal/billboard/BillboardDialogFragment;

    invoke-direct {v1}, Lcom/upsight/android/marketing/internal/billboard/BillboardDialogFragment;-><init>()V

    .line 55
    .local v1, "fragment":Landroid/app/DialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 56
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "id"

    iget-object v3, p0, Lcom/upsight/android/marketing/internal/content/MarketingContent$PendingDialog;->mId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v2, "title"

    iget-object v3, p0, Lcom/upsight/android/marketing/internal/content/MarketingContent$PendingDialog;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v2, "message"

    iget-object v3, p0, Lcom/upsight/android/marketing/internal/content/MarketingContent$PendingDialog;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v2, "buttons"

    iget-object v3, p0, Lcom/upsight/android/marketing/internal/content/MarketingContent$PendingDialog;->mButtons:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v2, "dismissTrigger"

    iget-object v3, p0, Lcom/upsight/android/marketing/internal/content/MarketingContent$PendingDialog;->mDismissTrigger:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual {v1, v0}, Landroid/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 63
    return-object v1
.end method

.method public static newInstance(Lcom/upsight/android/marketing/internal/content/MarketingContent$PendingDialog;I)Landroid/app/DialogFragment;
    .registers 6
    .param p0, "pendingDialog"    # Lcom/upsight/android/marketing/internal/content/MarketingContent$PendingDialog;
    .param p1, "dialogTheme"    # I

    .prologue
    .line 68
    new-instance v1, Lcom/upsight/android/marketing/internal/billboard/BillboardDialogFragment;

    invoke-direct {v1}, Lcom/upsight/android/marketing/internal/billboard/BillboardDialogFragment;-><init>()V

    .line 70
    .local v1, "fragment":Landroid/app/DialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 71
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "id"

    iget-object v3, p0, Lcom/upsight/android/marketing/internal/content/MarketingContent$PendingDialog;->mId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v2, "title"

    iget-object v3, p0, Lcom/upsight/android/marketing/internal/content/MarketingContent$PendingDialog;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v2, "message"

    iget-object v3, p0, Lcom/upsight/android/marketing/internal/content/MarketingContent$PendingDialog;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v2, "buttons"

    iget-object v3, p0, Lcom/upsight/android/marketing/internal/content/MarketingContent$PendingDialog;->mButtons:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v2, "dismissTrigger"

    iget-object v3, p0, Lcom/upsight/android/marketing/internal/content/MarketingContent$PendingDialog;->mDismissTrigger:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v2, "dialogTheme"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 77
    invoke-virtual {v1, v0}, Landroid/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 79
    return-object v1
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 228
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 230
    invoke-virtual {p0}, Lcom/upsight/android/marketing/internal/billboard/BillboardDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 231
    .local v0, "args":Landroid/os/Bundle;
    const-string v3, "id"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 232
    .local v2, "id":Ljava/lang/String;
    const-string v3, "dismissTrigger"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 234
    .local v1, "dismissTrigger":Ljava/lang/String;
    invoke-direct {p0, v2, v1}, Lcom/upsight/android/marketing/internal/billboard/BillboardDialogFragment;->executeActions(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 25
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 84
    invoke-virtual/range {p0 .. p0}, Lcom/upsight/android/marketing/internal/billboard/BillboardDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/upsight/android/Upsight;->createContext(Landroid/content/Context;)Lcom/upsight/android/UpsightContext;

    move-result-object v17

    .line 85
    .local v17, "upsight":Lcom/upsight/android/UpsightContext;
    const-string v18, "com.upsight.extension.marketing"

    invoke-virtual/range {v17 .. v18}, Lcom/upsight/android/UpsightContext;->getUpsightExtension(Ljava/lang/String;)Lcom/upsight/android/UpsightExtension;

    move-result-object v18

    check-cast v18, Lcom/upsight/android/UpsightMarketingExtension;

    check-cast v18, Lcom/upsight/android/UpsightMarketingExtension;

    .line 86
    invoke-virtual/range {v18 .. v18}, Lcom/upsight/android/UpsightMarketingExtension;->getComponent()Lcom/upsight/android/UpsightExtension$BaseComponent;

    move-result-object v18

    check-cast v18, Lcom/upsight/android/marketing/UpsightMarketingComponent;

    .line 87
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/upsight/android/marketing/UpsightMarketingComponent;->inject(Lcom/upsight/android/marketing/internal/billboard/BillboardDialogFragment;)V

    .line 89
    invoke-virtual/range {p0 .. p0}, Lcom/upsight/android/marketing/internal/billboard/BillboardDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    .line 90
    .local v2, "args":Landroid/os/Bundle;
    const-string v18, "id"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 91
    .local v12, "id":Ljava/lang/String;
    const-string v18, "title"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 92
    .local v16, "title":Ljava/lang/String;
    const-string v18, "message"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 93
    .local v14, "message":Ljava/lang/String;
    const-string v18, "buttons"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 98
    .local v7, "buttons":Ljava/lang/String;
    const-string v18, "dialogTheme"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_b1

    .line 99
    const-string v18, "dialogTheme"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 100
    .local v9, "dialogTheme":I
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/upsight/android/marketing/internal/billboard/BillboardDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v3, v0, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 106
    .end local v9    # "dialogTheme":I
    .local v3, "builder":Landroid/app/AlertDialog$Builder;
    :goto_60
    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    .line 107
    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 110
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_ac

    .line 111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/upsight/android/marketing/internal/billboard/BillboardDialogFragment;->mUpsight:Lcom/upsight/android/UpsightContext;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/upsight/android/UpsightContext;->getCoreComponent()Lcom/upsight/android/UpsightCoreComponent;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lcom/upsight/android/UpsightCoreComponent;->gson()Lcom/google/gson/Gson;

    move-result-object v11

    .line 113
    .local v11, "gson":Lcom/google/gson/Gson;
    :try_start_7f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/upsight/android/marketing/internal/billboard/BillboardDialogFragment;->mUpsight:Lcom/upsight/android/UpsightContext;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/upsight/android/UpsightContext;->getCoreComponent()Lcom/upsight/android/UpsightCoreComponent;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lcom/upsight/android/UpsightCoreComponent;->jsonParser()Lcom/google/gson/JsonParser;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    .line 114
    .local v8, "buttonsNode":Lcom/google/gson/JsonElement;
    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result v18

    if-eqz v18, :cond_225

    .line 115
    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/google/gson/JsonArray;->size()I

    move-result v15

    .line 121
    .local v15, "numButtons":I
    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;
    :try_end_a8
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_7f .. :try_end_a8} :catch_f4

    move-result-object v13

    .line 122
    .local v13, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/gson/JsonElement;>;"
    packed-switch v15, :pswitch_data_240

    .line 223
    .end local v8    # "buttonsNode":Lcom/google/gson/JsonElement;
    .end local v11    # "gson":Lcom/google/gson/Gson;
    .end local v13    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/gson/JsonElement;>;"
    .end local v15    # "numButtons":I
    :cond_ac
    :goto_ac
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v18

    return-object v18

    .line 102
    .end local v3    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_b1
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/upsight/android/marketing/internal/billboard/BillboardDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .restart local v3    # "builder":Landroid/app/AlertDialog$Builder;
    goto :goto_60

    .line 125
    .restart local v8    # "buttonsNode":Lcom/google/gson/JsonElement;
    .restart local v11    # "gson":Lcom/google/gson/Gson;
    .restart local v13    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/gson/JsonElement;>;"
    .restart local v15    # "numButtons":I
    :pswitch_bd
    :try_start_bd
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_ac

    .line 126
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/gson/JsonElement;

    .line 127
    .local v4, "button":Lcom/google/gson/JsonElement;
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v18

    const-string v19, "text"

    invoke-virtual/range {v18 .. v19}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    .line 128
    .local v5, "buttonText":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v18

    const-string v19, "trigger"

    invoke-virtual/range {v18 .. v19}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    .line 129
    .local v6, "buttonTrigger":Ljava/lang/String;
    new-instance v18, Lcom/upsight/android/marketing/internal/billboard/BillboardDialogFragment$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12, v6}, Lcom/upsight/android/marketing/internal/billboard/BillboardDialogFragment$1;-><init>(Lcom/upsight/android/marketing/internal/billboard/BillboardDialogFragment;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v3, v5, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    :try_end_f3
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_bd .. :try_end_f3} :catch_f4

    goto :goto_ac

    .line 219
    .end local v4    # "button":Lcom/google/gson/JsonElement;
    .end local v5    # "buttonText":Ljava/lang/String;
    .end local v6    # "buttonTrigger":Ljava/lang/String;
    .end local v8    # "buttonsNode":Lcom/google/gson/JsonElement;
    .end local v13    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/gson/JsonElement;>;"
    .end local v15    # "numButtons":I
    :catch_f4
    move-exception v10

    .line 220
    .local v10, "e":Lcom/google/gson/JsonSyntaxException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/upsight/android/marketing/internal/billboard/BillboardDialogFragment;->mUpsight:Lcom/upsight/android/UpsightContext;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v18

    sget-object v19, Lcom/upsight/android/marketing/internal/billboard/BillboardDialogFragment;->LOG_TAG:Ljava/lang/String;

    const-string v20, "Failed to parse button due to malformed JSON"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v10, v21, v22

    invoke-interface/range {v18 .. v21}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_ac

    .line 142
    .end local v10    # "e":Lcom/google/gson/JsonSyntaxException;
    .restart local v8    # "buttonsNode":Lcom/google/gson/JsonElement;
    .restart local v13    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/gson/JsonElement;>;"
    .restart local v15    # "numButtons":I
    :pswitch_113
    :try_start_113
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_149

    .line 143
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/gson/JsonElement;

    .line 144
    .restart local v4    # "button":Lcom/google/gson/JsonElement;
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v18

    const-string v19, "text"

    invoke-virtual/range {v18 .. v19}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    .line 145
    .restart local v5    # "buttonText":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v18

    const-string v19, "trigger"

    invoke-virtual/range {v18 .. v19}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    .line 146
    .restart local v6    # "buttonTrigger":Ljava/lang/String;
    new-instance v18, Lcom/upsight/android/marketing/internal/billboard/BillboardDialogFragment$2;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12, v6}, Lcom/upsight/android/marketing/internal/billboard/BillboardDialogFragment$2;-><init>(Lcom/upsight/android/marketing/internal/billboard/BillboardDialogFragment;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v3, v5, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 155
    .end local v4    # "button":Lcom/google/gson/JsonElement;
    .end local v5    # "buttonText":Ljava/lang/String;
    .end local v6    # "buttonTrigger":Ljava/lang/String;
    :cond_149
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_ac

    .line 156
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/gson/JsonElement;

    .line 157
    .restart local v4    # "button":Lcom/google/gson/JsonElement;
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v18

    const-string v19, "text"

    invoke-virtual/range {v18 .. v19}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    .line 158
    .restart local v5    # "buttonText":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v18

    const-string v19, "trigger"

    invoke-virtual/range {v18 .. v19}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    .line 159
    .restart local v6    # "buttonTrigger":Ljava/lang/String;
    new-instance v18, Lcom/upsight/android/marketing/internal/billboard/BillboardDialogFragment$3;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12, v6}, Lcom/upsight/android/marketing/internal/billboard/BillboardDialogFragment$3;-><init>(Lcom/upsight/android/marketing/internal/billboard/BillboardDialogFragment;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v3, v5, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_ac

    .line 172
    .end local v4    # "button":Lcom/google/gson/JsonElement;
    .end local v5    # "buttonText":Ljava/lang/String;
    .end local v6    # "buttonTrigger":Ljava/lang/String;
    :pswitch_181
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1b7

    .line 173
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/gson/JsonElement;

    .line 174
    .restart local v4    # "button":Lcom/google/gson/JsonElement;
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v18

    const-string v19, "text"

    invoke-virtual/range {v18 .. v19}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    .line 175
    .restart local v5    # "buttonText":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v18

    const-string v19, "trigger"

    invoke-virtual/range {v18 .. v19}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    .line 176
    .restart local v6    # "buttonTrigger":Ljava/lang/String;
    new-instance v18, Lcom/upsight/android/marketing/internal/billboard/BillboardDialogFragment$4;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12, v6}, Lcom/upsight/android/marketing/internal/billboard/BillboardDialogFragment$4;-><init>(Lcom/upsight/android/marketing/internal/billboard/BillboardDialogFragment;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v3, v5, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 185
    .end local v4    # "button":Lcom/google/gson/JsonElement;
    .end local v5    # "buttonText":Ljava/lang/String;
    .end local v6    # "buttonTrigger":Ljava/lang/String;
    :cond_1b7
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1ed

    .line 186
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/gson/JsonElement;

    .line 187
    .restart local v4    # "button":Lcom/google/gson/JsonElement;
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v18

    const-string v19, "text"

    invoke-virtual/range {v18 .. v19}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    .line 188
    .restart local v5    # "buttonText":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v18

    const-string v19, "trigger"

    invoke-virtual/range {v18 .. v19}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    .line 189
    .restart local v6    # "buttonTrigger":Ljava/lang/String;
    new-instance v18, Lcom/upsight/android/marketing/internal/billboard/BillboardDialogFragment$5;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12, v6}, Lcom/upsight/android/marketing/internal/billboard/BillboardDialogFragment$5;-><init>(Lcom/upsight/android/marketing/internal/billboard/BillboardDialogFragment;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v3, v5, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 198
    .end local v4    # "button":Lcom/google/gson/JsonElement;
    .end local v5    # "buttonText":Ljava/lang/String;
    .end local v6    # "buttonTrigger":Ljava/lang/String;
    :cond_1ed
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_ac

    .line 199
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/gson/JsonElement;

    .line 200
    .restart local v4    # "button":Lcom/google/gson/JsonElement;
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v18

    const-string v19, "text"

    invoke-virtual/range {v18 .. v19}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    .line 201
    .restart local v5    # "buttonText":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v18

    const-string v19, "trigger"

    invoke-virtual/range {v18 .. v19}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    .line 202
    .restart local v6    # "buttonTrigger":Ljava/lang/String;
    new-instance v18, Lcom/upsight/android/marketing/internal/billboard/BillboardDialogFragment$6;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12, v6}, Lcom/upsight/android/marketing/internal/billboard/BillboardDialogFragment$6;-><init>(Lcom/upsight/android/marketing/internal/billboard/BillboardDialogFragment;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v3, v5, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_ac

    .line 217
    .end local v4    # "button":Lcom/google/gson/JsonElement;
    .end local v5    # "buttonText":Ljava/lang/String;
    .end local v6    # "buttonTrigger":Ljava/lang/String;
    .end local v13    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/gson/JsonElement;>;"
    .end local v15    # "numButtons":I
    :cond_225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/upsight/android/marketing/internal/billboard/BillboardDialogFragment;->mUpsight:Lcom/upsight/android/UpsightContext;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v18

    sget-object v19, Lcom/upsight/android/marketing/internal/billboard/BillboardDialogFragment;->LOG_TAG:Ljava/lang/String;

    const-string v20, "Failed to parse buttons because expected buttons array is missing"

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    invoke-interface/range {v18 .. v21}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_23e
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_113 .. :try_end_23e} :catch_f4

    goto/16 :goto_ac

    .line 122
    :pswitch_data_240
    .packed-switch 0x1
        :pswitch_bd
        :pswitch_113
        :pswitch_181
    .end packed-switch
.end method
