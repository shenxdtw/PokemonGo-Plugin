.class public Lcom/upsight/mediation/vast/util/XmlTools;
.super Ljava/lang/Object;
.source "XmlTools.java"


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    const-string v0, "XmlTools"

    sput-object v0, Lcom/upsight/mediation/vast/util/XmlTools;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getElementValue(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .registers 8
    .param p0, "node"    # Lorg/w3c/dom/Node;

    .prologue
    .line 147
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 149
    .local v3, "childNodes":Lorg/w3c/dom/NodeList;
    const/4 v4, 0x0

    .line 152
    .local v4, "value":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "childIndex":I
    :goto_6
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v2, v6, :cond_26

    .line 153
    invoke-interface {v3, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .local v1, "child":Lorg/w3c/dom/Node;
    move-object v0, v1

    .line 155
    check-cast v0, Lorg/w3c/dom/CharacterData;

    .line 156
    .local v0, "cd":Lorg/w3c/dom/CharacterData;
    invoke-interface {v0}, Lorg/w3c/dom/CharacterData;->getData()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 158
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_24

    .line 152
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_24
    move-object v5, v4

    .line 167
    .end local v0    # "cd":Lorg/w3c/dom/CharacterData;
    .end local v1    # "child":Lorg/w3c/dom/Node;
    .end local v4    # "value":Ljava/lang/String;
    .local v5, "value":Ljava/lang/String;
    :goto_25
    return-object v5

    .end local v5    # "value":Ljava/lang/String;
    .restart local v4    # "value":Ljava/lang/String;
    :cond_26
    move-object v5, v4

    .end local v4    # "value":Ljava/lang/String;
    .restart local v5    # "value":Ljava/lang/String;
    goto :goto_25
.end method

.method public static logXmlDocument(Lorg/w3c/dom/Document;)V
    .registers 6
    .param p0, "doc"    # Lorg/w3c/dom/Document;

    .prologue
    .line 36
    :try_start_0
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v1

    .line 37
    .local v1, "tf":Ljavax/xml/transform/TransformerFactory;
    invoke-virtual {v1}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v2

    .line 38
    .local v2, "transformer":Ljavax/xml/transform/Transformer;
    const-string v3, "omit-xml-declaration"

    const-string v4, "no"

    .line 39
    invoke-virtual {v2, v3, v4}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string v3, "method"

    const-string v4, "xml"

    invoke-virtual {v2, v3, v4}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v3, "indent"

    const-string v4, "yes"

    invoke-virtual {v2, v3, v4}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v3, "encoding"

    const-string v4, "UTF-8"

    invoke-virtual {v2, v3, v4}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v3, "{http://xml.apache.org/xslt}indent-amount"

    const-string v4, "4"

    invoke-virtual {v2, v3, v4}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 47
    .local v0, "sw":Ljava/io/StringWriter;
    new-instance v3, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v3, p0}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    new-instance v4, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v4, v0}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v2, v3, v4}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3d} :catch_3e

    .line 55
    .end local v0    # "sw":Ljava/io/StringWriter;
    .end local v1    # "tf":Ljavax/xml/transform/TransformerFactory;
    .end local v2    # "transformer":Ljavax/xml/transform/Transformer;
    :goto_3d
    return-void

    .line 51
    :catch_3e
    move-exception v3

    goto :goto_3d
.end method

.method public static stringFromStream(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 7
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 133
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/16 v4, 0x400

    new-array v1, v4, [B

    .line 134
    .local v1, "buffer":[B
    const/4 v3, 0x0

    .line 136
    .local v3, "length":I
    :goto_a
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_16

    .line 137
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_a

    .line 140
    :cond_16
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 142
    .local v2, "bytes":[B
    new-instance v4, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v4, v2, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v4
.end method

.method public static stringToDocument(Ljava/lang/String;)Lorg/w3c/dom/Document;
    .registers 5
    .param p0, "doc"    # Ljava/lang/String;

    .prologue
    .line 112
    const/4 v1, 0x0

    .line 114
    .local v1, "document":Lorg/w3c/dom/Document;
    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 116
    .local v0, "db":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v2, Lorg/xml/sax/InputSource;

    invoke-direct {v2}, Lorg/xml/sax/InputSource;-><init>()V

    .line 117
    .local v2, "is":Lorg/xml/sax/InputSource;
    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 119
    invoke-virtual {v0, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_19} :catch_1b

    move-result-object v1

    .line 124
    .end local v0    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .end local v2    # "is":Lorg/xml/sax/InputSource;
    :goto_1a
    return-object v1

    .line 121
    :catch_1b
    move-exception v3

    goto :goto_1a
.end method

.method public static xmlDocumentToString(Lorg/w3c/dom/Document;)Ljava/lang/String;
    .registers 7
    .param p0, "doc"    # Lorg/w3c/dom/Document;

    .prologue
    .line 58
    const/4 v3, 0x0

    .line 61
    .local v3, "xml":Ljava/lang/String;
    :try_start_1
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v1

    .line 62
    .local v1, "tf":Ljavax/xml/transform/TransformerFactory;
    invoke-virtual {v1}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v2

    .line 63
    .local v2, "transformer":Ljavax/xml/transform/Transformer;
    const-string v4, "omit-xml-declaration"

    const-string v5, "no"

    .line 64
    invoke-virtual {v2, v4, v5}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v4, "method"

    const-string v5, "xml"

    invoke-virtual {v2, v4, v5}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v4, "indent"

    const-string v5, "yes"

    invoke-virtual {v2, v4, v5}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v4, "encoding"

    const-string v5, "UTF-8"

    invoke-virtual {v2, v4, v5}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v4, "{http://xml.apache.org/xslt}indent-amount"

    const-string v5, "4"

    invoke-virtual {v2, v4, v5}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 72
    .local v0, "sw":Ljava/io/StringWriter;
    new-instance v4, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v4, p0}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    new-instance v5, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v5, v0}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v2, v4, v5}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 74
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_41} :catch_43

    move-result-object v3

    .line 80
    .end local v0    # "sw":Ljava/io/StringWriter;
    .end local v1    # "tf":Ljavax/xml/transform/TransformerFactory;
    .end local v2    # "transformer":Ljavax/xml/transform/Transformer;
    :goto_42
    return-object v3

    .line 76
    :catch_43
    move-exception v4

    goto :goto_42
.end method

.method public static xmlDocumentToString(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .registers 7
    .param p0, "node"    # Lorg/w3c/dom/Node;

    .prologue
    .line 84
    const/4 v3, 0x0

    .line 87
    .local v3, "xml":Ljava/lang/String;
    :try_start_1
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v1

    .line 88
    .local v1, "tf":Ljavax/xml/transform/TransformerFactory;
    invoke-virtual {v1}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v2

    .line 89
    .local v2, "transformer":Ljavax/xml/transform/Transformer;
    const-string v4, "omit-xml-declaration"

    const-string v5, "yes"

    .line 90
    invoke-virtual {v2, v4, v5}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v4, "method"

    const-string v5, "xml"

    invoke-virtual {v2, v4, v5}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v4, "indent"

    const-string v5, "yes"

    invoke-virtual {v2, v4, v5}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v4, "encoding"

    const-string v5, "UTF-8"

    invoke-virtual {v2, v4, v5}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v4, "{http://xml.apache.org/xslt}indent-amount"

    const-string v5, "4"

    invoke-virtual {v2, v4, v5}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 98
    .local v0, "sw":Ljava/io/StringWriter;
    new-instance v4, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v4, p0}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    new-instance v5, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v5, v0}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v2, v4, v5}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 100
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_41} :catch_43

    move-result-object v3

    .line 106
    .end local v0    # "sw":Ljava/io/StringWriter;
    .end local v1    # "tf":Ljavax/xml/transform/TransformerFactory;
    .end local v2    # "transformer":Ljavax/xml/transform/Transformer;
    :goto_42
    return-object v3

    .line 102
    :catch_43
    move-exception v4

    goto :goto_42
.end method
