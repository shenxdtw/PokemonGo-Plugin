.class Lcom/upsight/mediation/util/InAppBillingConnection$2;
.super Ljava/util/ArrayList;
.source "InAppBillingConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/mediation/util/InAppBillingConnection;->getLocalPriceForProductId(Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upsight/mediation/util/InAppBillingConnection;

.field final synthetic val$productId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/upsight/mediation/util/InAppBillingConnection;Ljava/lang/String;)V
    .registers 4
    .param p1, "this$0"    # Lcom/upsight/mediation/util/InAppBillingConnection;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/upsight/mediation/util/InAppBillingConnection$2;->this$0:Lcom/upsight/mediation/util/InAppBillingConnection;

    iput-object p2, p0, Lcom/upsight/mediation/util/InAppBillingConnection$2;->val$productId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/upsight/mediation/util/InAppBillingConnection$2;->val$productId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/upsight/mediation/util/InAppBillingConnection$2;->add(Ljava/lang/Object;)Z

    return-void
.end method
