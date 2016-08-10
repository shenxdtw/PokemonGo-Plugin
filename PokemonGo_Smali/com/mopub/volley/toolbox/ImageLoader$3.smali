.class Lcom/mopub/volley/toolbox/ImageLoader$3;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Lcom/mopub/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/volley/toolbox/ImageLoader;->makeImageRequest(Ljava/lang/String;IILjava/lang/String;)Lcom/mopub/volley/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/volley/toolbox/ImageLoader;

.field final synthetic val$cacheKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mopub/volley/toolbox/ImageLoader;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 233
    iput-object p1, p0, Lcom/mopub/volley/toolbox/ImageLoader$3;->this$0:Lcom/mopub/volley/toolbox/ImageLoader;

    iput-object p2, p0, Lcom/mopub/volley/toolbox/ImageLoader$3;->val$cacheKey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/mopub/volley/VolleyError;)V
    .registers 4
    .param p1, "error"    # Lcom/mopub/volley/VolleyError;

    .prologue
    .line 236
    iget-object v0, p0, Lcom/mopub/volley/toolbox/ImageLoader$3;->this$0:Lcom/mopub/volley/toolbox/ImageLoader;

    iget-object v1, p0, Lcom/mopub/volley/toolbox/ImageLoader$3;->val$cacheKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/mopub/volley/toolbox/ImageLoader;->onGetImageError(Ljava/lang/String;Lcom/mopub/volley/VolleyError;)V

    .line 237
    return-void
.end method
