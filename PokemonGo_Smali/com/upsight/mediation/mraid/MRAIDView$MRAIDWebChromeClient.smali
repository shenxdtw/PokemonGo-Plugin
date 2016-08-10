.class Lcom/upsight/mediation/mraid/MRAIDView$MRAIDWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "MRAIDView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/mediation/mraid/MRAIDView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MRAIDWebChromeClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upsight/mediation/mraid/MRAIDView;


# direct methods
.method private constructor <init>(Lcom/upsight/mediation/mraid/MRAIDView;)V
    .registers 2

    .prologue
    .line 1130
    iput-object p1, p0, Lcom/upsight/mediation/mraid/MRAIDView$MRAIDWebChromeClient;->this$0:Lcom/upsight/mediation/mraid/MRAIDView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/upsight/mediation/mraid/MRAIDView;Lcom/upsight/mediation/mraid/MRAIDView$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/upsight/mediation/mraid/MRAIDView;
    .param p2, "x1"    # Lcom/upsight/mediation/mraid/MRAIDView$1;

    .prologue
    .line 1130
    invoke-direct {p0, p1}, Lcom/upsight/mediation/mraid/MRAIDView$MRAIDWebChromeClient;-><init>(Lcom/upsight/mediation/mraid/MRAIDView;)V

    return-void
.end method

.method private handlePopups(Landroid/webkit/JsResult;)Z
    .registers 3
    .param p1, "result"    # Landroid/webkit/JsResult;

    .prologue
    .line 1167
    invoke-virtual {p1}, Landroid/webkit/JsResult;->cancel()V

    .line 1168
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .registers 6
    .param p1, "cm"    # Landroid/webkit/ConsoleMessage;

    .prologue
    .line 1134
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Uncaught ReferenceError"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 1135
    const-string v1, "JS console"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1136
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3e

    const-string v0, ""

    :goto_23
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1137
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1135
    invoke-static {v1, v0}, Lcom/upsight/mediation/mraid/internal/MRAIDLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1139
    :cond_3c
    const/4 v0, 0x1

    return v0

    .line 1136
    :cond_3e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " at "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_23
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkit/JsResult;

    .prologue
    .line 1144
    const-string v0, "JS alert"

    invoke-static {v0, p3}, Lcom/upsight/mediation/mraid/internal/MRAIDLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1145
    invoke-direct {p0, p4}, Lcom/upsight/mediation/mraid/MRAIDView$MRAIDWebChromeClient;->handlePopups(Landroid/webkit/JsResult;)Z

    move-result v0

    return v0
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkit/JsResult;

    .prologue
    .line 1150
    const-string v0, "JS confirm"

    invoke-static {v0, p3}, Lcom/upsight/mediation/mraid/internal/MRAIDLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1151
    invoke-direct {p0, p4}, Lcom/upsight/mediation/mraid/MRAIDView$MRAIDWebChromeClient;->handlePopups(Landroid/webkit/JsResult;)Z

    move-result v0

    return v0
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .registers 7
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Ljava/lang/String;
    .param p5, "result"    # Landroid/webkit/JsPromptResult;

    .prologue
    .line 1156
    const-string v0, "JS prompt"

    invoke-static {v0, p3}, Lcom/upsight/mediation/mraid/internal/MRAIDLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1157
    invoke-direct {p0, p5}, Lcom/upsight/mediation/mraid/MRAIDView$MRAIDWebChromeClient;->handlePopups(Landroid/webkit/JsResult;)Z

    move-result v0

    return v0
.end method
