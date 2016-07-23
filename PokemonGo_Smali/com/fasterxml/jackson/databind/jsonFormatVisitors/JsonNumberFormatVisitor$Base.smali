.class public Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonNumberFormatVisitor$Base;
.super Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormatVisitor$Base;
.source "JsonNumberFormatVisitor.java"

# interfaces
.implements Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonNumberFormatVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonNumberFormatVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Base"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormatVisitor$Base;-><init>()V

    return-void
.end method


# virtual methods
.method public numberType(Lcom/fasterxml/jackson/core/JsonParser$NumberType;)V
    .registers 2
    .param p1, "type"    # Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    .prologue
    .line 23
    return-void
.end method
