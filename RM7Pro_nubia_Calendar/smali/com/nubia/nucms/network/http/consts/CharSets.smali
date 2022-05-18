.class public Lcom/nubia/nucms/network/http/consts/CharSets;
.super Ljava/lang/Object;
.source "CharSets.java"


# static fields
.field public static final ASCII:Ljava/lang/String; = "ASCII"

.field public static final BIG5:Ljava/lang/String; = "BIG5"

.field public static final GB18030:Ljava/lang/String; = "GB18030"

.field public static final GB2312:Ljava/lang/String; = "GB2312"

.field public static final GBK:Ljava/lang/String; = "GBK"

.field public static final ISO_8859_1:Ljava/lang/String; = "ISO-8859-1"

.field public static final US_ASCII:Ljava/lang/String; = "US-ASCII"

.field public static final UTF_16:Ljava/lang/String; = "UTF-16"

.field public static final UTF_8:Ljava/lang/String; = "UTF-8"

.field public static final Unicode:Ljava/lang/String; = "Unicode"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .locals 1
    .param p0, "charsetName"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    return-object v0
.end method
