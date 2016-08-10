.class Lcom/upsight/mediation/vast/VASTPlayer$1;
.super Ljava/lang/Object;
.source "VASTPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/mediation/vast/VASTPlayer;->loadVastResponseViaURL(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upsight/mediation/vast/VASTPlayer;

.field final synthetic val$urlString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/upsight/mediation/vast/VASTPlayer;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/upsight/mediation/vast/VASTPlayer;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/upsight/mediation/vast/VASTPlayer$1;->this$0:Lcom/upsight/mediation/vast/VASTPlayer;

    iput-object p2, p0, Lcom/upsight/mediation/vast/VASTPlayer$1;->val$urlString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 131
    const/4 v1, 0x0

    .line 134
    .local v1, "in":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v5, Ljava/net/URL;

    iget-object v6, p0, Lcom/upsight/mediation/vast/VASTPlayer$1;->val$urlString:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 135
    .local v5, "url":Ljava/net/URL;
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v5}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_16} :catch_5e
    .catchall {:try_start_1 .. :try_end_16} :catchall_4e

    .line 136
    .end local v1    # "in":Ljava/io/BufferedReader;
    .local v2, "in":Ljava/io/BufferedReader;
    :try_start_16
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 138
    .local v4, "sb":Ljava/lang/StringBuffer;
    :goto_1b
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_3e

    .line 139
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "line.separator"

    invoke-static {v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_2e} :catch_2f
    .catchall {:try_start_16 .. :try_end_2e} :catchall_5b

    goto :goto_1b

    .line 141
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "sb":Ljava/lang/StringBuffer;
    :catch_2f
    move-exception v0

    move-object v1, v2

    .line 142
    .end local v2    # "in":Ljava/io/BufferedReader;
    .end local v5    # "url":Ljava/net/URL;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    :goto_31
    :try_start_31
    iget-object v6, p0, Lcom/upsight/mediation/vast/VASTPlayer$1;->this$0:Lcom/upsight/mediation/vast/VASTPlayer;

    const/16 v7, 0x64

    # invokes: Lcom/upsight/mediation/vast/VASTPlayer;->sendError(I)V
    invoke-static {v6, v7}, Lcom/upsight/mediation/vast/VASTPlayer;->access$000(Lcom/upsight/mediation/vast/VASTPlayer;I)V
    :try_end_38
    .catchall {:try_start_31 .. :try_end_38} :catchall_4e

    .line 146
    if-eqz v1, :cond_3d

    .line 147
    :try_start_3a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3d} :catch_57

    .line 154
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3d
    :goto_3d
    return-void

    .line 146
    .end local v1    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v4    # "sb":Ljava/lang/StringBuffer;
    .restart local v5    # "url":Ljava/net/URL;
    :cond_3e
    if-eqz v2, :cond_43

    .line 147
    :try_start_40
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_55

    .line 153
    :cond_43
    :goto_43
    iget-object v6, p0, Lcom/upsight/mediation/vast/VASTPlayer$1;->this$0:Lcom/upsight/mediation/vast/VASTPlayer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/upsight/mediation/vast/VASTPlayer;->loadVastResponseViaXML(Ljava/lang/String;)V

    move-object v1, v2

    .line 154
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    goto :goto_3d

    .line 145
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "sb":Ljava/lang/StringBuffer;
    .end local v5    # "url":Ljava/net/URL;
    :catchall_4e
    move-exception v6

    .line 146
    :goto_4f
    if-eqz v1, :cond_54

    .line 147
    :try_start_51
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_59

    .line 151
    :cond_54
    :goto_54
    throw v6

    .line 149
    .end local v1    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v4    # "sb":Ljava/lang/StringBuffer;
    .restart local v5    # "url":Ljava/net/URL;
    :catch_55
    move-exception v6

    goto :goto_43

    .end local v2    # "in":Ljava/io/BufferedReader;
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "sb":Ljava/lang/StringBuffer;
    .end local v5    # "url":Ljava/net/URL;
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    :catch_57
    move-exception v6

    goto :goto_3d

    .end local v0    # "e":Ljava/lang/Exception;
    :catch_59
    move-exception v7

    goto :goto_54

    .line 145
    .end local v1    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    .restart local v5    # "url":Ljava/net/URL;
    :catchall_5b
    move-exception v6

    move-object v1, v2

    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    goto :goto_4f

    .line 141
    .end local v5    # "url":Ljava/net/URL;
    :catch_5e
    move-exception v0

    goto :goto_31
.end method
