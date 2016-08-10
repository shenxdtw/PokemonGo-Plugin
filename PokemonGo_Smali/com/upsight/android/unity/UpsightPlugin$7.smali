.class Lcom/upsight/android/unity/UpsightPlugin$7;
.super Ljava/lang/Object;
.source "UpsightPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/android/unity/UpsightPlugin;->setUserAttributesBool(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upsight/android/unity/UpsightPlugin;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$value:Z


# direct methods
.method constructor <init>(Lcom/upsight/android/unity/UpsightPlugin;Ljava/lang/String;Z)V
    .registers 4
    .param p1, "this$0"    # Lcom/upsight/android/unity/UpsightPlugin;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/upsight/android/unity/UpsightPlugin$7;->this$0:Lcom/upsight/android/unity/UpsightPlugin;

    iput-object p2, p0, Lcom/upsight/android/unity/UpsightPlugin$7;->val$key:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/upsight/android/unity/UpsightPlugin$7;->val$value:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 191
    iget-object v0, p0, Lcom/upsight/android/unity/UpsightPlugin$7;->this$0:Lcom/upsight/android/unity/UpsightPlugin;

    iget-object v0, v0, Lcom/upsight/android/unity/UpsightPlugin;->mUpsight:Lcom/upsight/android/UpsightContext;

    iget-object v1, p0, Lcom/upsight/android/unity/UpsightPlugin$7;->val$key:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/upsight/android/unity/UpsightPlugin$7;->val$value:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes;->put(Lcom/upsight/android/UpsightContext;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 192
    return-void
.end method
