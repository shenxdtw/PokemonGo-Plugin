.class final Lcom/upsight/android/marketing/internal/content/MarketingContentActions$1;
.super Ljava/util/HashMap;
.source "MarketingContentActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/marketing/internal/content/MarketingContentActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Lcom/upsight/android/marketing/internal/content/MarketingContentActions$InternalFactory;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 65
    const-string v0, "action_trigger"

    new-instance v1, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$1$1;

    invoke-direct {v1, p0}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$1$1;-><init>(Lcom/upsight/android/marketing/internal/content/MarketingContentActions$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string v0, "action_trigger_if_content_built"

    new-instance v1, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$1$2;

    invoke-direct {v1, p0}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$1$2;-><init>(Lcom/upsight/android/marketing/internal/content/MarketingContentActions$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string v0, "action_trigger_if_content_available"

    new-instance v1, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$1$3;

    invoke-direct {v1, p0}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$1$3;-><init>(Lcom/upsight/android/marketing/internal/content/MarketingContentActions$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v0, "action_present_scoped_content"

    new-instance v1, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$1$4;

    invoke-direct {v1, p0}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$1$4;-><init>(Lcom/upsight/android/marketing/internal/content/MarketingContentActions$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string v0, "action_present_scoped_dialog"

    new-instance v1, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$1$5;

    invoke-direct {v1, p0}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$1$5;-><init>(Lcom/upsight/android/marketing/internal/content/MarketingContentActions$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v0, "action_present_content"

    new-instance v1, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$1$6;

    invoke-direct {v1, p0}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$1$6;-><init>(Lcom/upsight/android/marketing/internal/content/MarketingContentActions$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string v0, "action_present_dialog"

    new-instance v1, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$1$7;

    invoke-direct {v1, p0}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$1$7;-><init>(Lcom/upsight/android/marketing/internal/content/MarketingContentActions$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string v0, "action_present_scopeless_content"

    new-instance v1, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$1$8;

    invoke-direct {v1, p0}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$1$8;-><init>(Lcom/upsight/android/marketing/internal/content/MarketingContentActions$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string v0, "action_present_close_button"

    new-instance v1, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$1$9;

    invoke-direct {v1, p0}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$1$9;-><init>(Lcom/upsight/android/marketing/internal/content/MarketingContentActions$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string v0, "action_destroy"

    new-instance v1, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$1$10;

    invoke-direct {v1, p0}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$1$10;-><init>(Lcom/upsight/android/marketing/internal/content/MarketingContentActions$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string v0, "action_open_url"

    new-instance v1, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$1$11;

    invoke-direct {v1, p0}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$1$11;-><init>(Lcom/upsight/android/marketing/internal/content/MarketingContentActions$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string v0, "action_send_event"

    new-instance v1, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$1$12;

    invoke-direct {v1, p0}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$1$12;-><init>(Lcom/upsight/android/marketing/internal/content/MarketingContentActions$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const-string v0, "action_send_form_data"

    new-instance v1, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$1$13;

    invoke-direct {v1, p0}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$1$13;-><init>(Lcom/upsight/android/marketing/internal/content/MarketingContentActions$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const-string v0, "action_notify_rewards"

    new-instance v1, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$1$14;

    invoke-direct {v1, p0}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$1$14;-><init>(Lcom/upsight/android/marketing/internal/content/MarketingContentActions$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const-string v0, "action_notify_purchases"

    new-instance v1, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$1$15;

    invoke-direct {v1, p0}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$1$15;-><init>(Lcom/upsight/android/marketing/internal/content/MarketingContentActions$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const-string v0, "action_associate_once"

    new-instance v1, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$1$16;

    invoke-direct {v1, p0}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$1$16;-><init>(Lcom/upsight/android/marketing/internal/content/MarketingContentActions$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    return-void
.end method
