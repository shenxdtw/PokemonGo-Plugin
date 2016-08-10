.class Lcom/mopub/volley/toolbox/NetworkImageView$1$1;
.super Ljava/lang/Object;
.source "NetworkImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/volley/toolbox/NetworkImageView$1;->onResponse(Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mopub/volley/toolbox/NetworkImageView$1;

.field final synthetic val$response:Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;


# direct methods
.method constructor <init>(Lcom/mopub/volley/toolbox/NetworkImageView$1;Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;)V
    .registers 3

    .prologue
    .line 165
    iput-object p1, p0, Lcom/mopub/volley/toolbox/NetworkImageView$1$1;->this$1:Lcom/mopub/volley/toolbox/NetworkImageView$1;

    iput-object p2, p0, Lcom/mopub/volley/toolbox/NetworkImageView$1$1;->val$response:Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 168
    iget-object v0, p0, Lcom/mopub/volley/toolbox/NetworkImageView$1$1;->this$1:Lcom/mopub/volley/toolbox/NetworkImageView$1;

    iget-object v1, p0, Lcom/mopub/volley/toolbox/NetworkImageView$1$1;->val$response:Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mopub/volley/toolbox/NetworkImageView$1;->onResponse(Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;Z)V

    .line 169
    return-void
.end method
