.class public Lcom/upsight/mediation/mraid/internal/MRAIDHtmlProcessor;
.super Ljava/lang/Object;
.source "MRAIDHtmlProcessor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MRAIDHtmlProcessor"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static processRawHtml(Ljava/lang/String;)Ljava/lang/String;
    .registers 15
    .param p0, "rawHtml"    # Ljava/lang/String;

    .prologue
    .line 9
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 23
    .local v8, "processedHtml":Ljava/lang/StringBuffer;
    const-string v9, "<script\\s+[^>]*\\bsrc\\s*=\\s*([\\\"\\\'])mraid\\.js\\1[^>]*>\\s*</script>\\n*"

    .line 24
    .local v9, "regex":Ljava/lang/String;
    const/4 v11, 0x2

    invoke-static {v9, v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v7

    .line 25
    .local v7, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v7, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 26
    .local v5, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v11

    if-eqz v11, :cond_21

    .line 27
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v11

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v12

    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 31
    :cond_21
    const-string v11, "<html"

    invoke-virtual {p0, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_4c

    const/4 v2, 0x1

    .line 32
    .local v2, "hasHtmlTag":Z
    :goto_2b
    const-string v11, "<head"

    invoke-virtual {p0, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_4e

    const/4 v1, 0x1

    .line 33
    .local v1, "hasHeadTag":Z
    :goto_35
    const-string v11, "<body"

    invoke-virtual {p0, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_50

    const/4 v0, 0x1

    .line 43
    .local v0, "hasBodyTag":Z
    :goto_3f
    if-eqz v2, :cond_52

    if-nez v0, :cond_52

    .line 44
    const-string v11, "MRAIDHtmlProcessor"

    const-string v12, "have html tag but no body tag. can\'t randomly insert a body tag"

    invoke-static {v11, v12}, Lcom/upsight/mediation/mraid/internal/MRAIDLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const/4 v11, 0x0

    .line 88
    :goto_4b
    return-object v11

    .line 31
    .end local v0    # "hasBodyTag":Z
    .end local v1    # "hasHeadTag":Z
    .end local v2    # "hasHtmlTag":Z
    :cond_4c
    const/4 v2, 0x0

    goto :goto_2b

    .line 32
    .restart local v2    # "hasHtmlTag":Z
    :cond_4e
    const/4 v1, 0x0

    goto :goto_35

    .line 33
    .restart local v1    # "hasHeadTag":Z
    :cond_50
    const/4 v0, 0x0

    goto :goto_3f

    .line 48
    .restart local v0    # "hasBodyTag":Z
    :cond_52
    const-string v11, "line.separator"

    invoke-static {v11}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 50
    .local v4, "ls":Ljava/lang/String;
    if-nez v1, :cond_7b

    .line 51
    const/4 v11, 0x0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "<head>"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "</head>"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 54
    :cond_7b
    if-nez v2, :cond_99

    .line 55
    const/4 v11, 0x0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "<html>"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 56
    const-string v11, "</html>"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    :cond_99
    const-string v6, "<meta name=\'viewport\' content=\'width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no\' />"

    .line 73
    .local v6, "metaTag":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "<style>"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "body { margin:0; padding:0; }"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "*:not(input) { -webkit-touch-callout:none; -webkit-user-select:none; -webkit-text-size-adjust:none; }"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "</style>"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 79
    .local v10, "styleTag":Ljava/lang/String;
    const-string v9, "<head[^>]*>"

    .line 80
    const/4 v11, 0x2

    invoke-static {v9, v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v7

    .line 81
    invoke-virtual {v7, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 82
    const/4 v3, 0x0

    .line 83
    .local v3, "idx":I
    :goto_d4
    invoke-virtual {v5, v3}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v11

    if-eqz v11, :cond_ff

    .line 84
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    goto :goto_d4

    .line 88
    :cond_ff
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_4b
.end method
