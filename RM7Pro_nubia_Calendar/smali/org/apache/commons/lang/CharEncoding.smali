.class public Lorg/apache/commons/lang/CharEncoding;
.super Ljava/lang/Object;
.source "CharEncoding.java"


# static fields
.field public static final ISO_8859_1:Ljava/lang/String; = "ISO-8859-1"

.field public static final US_ASCII:Ljava/lang/String; = "US-ASCII"

.field public static final UTF_16:Ljava/lang/String; = "UTF-16"

.field public static final UTF_16BE:Ljava/lang/String; = "UTF-16BE"

.field public static final UTF_16LE:Ljava/lang/String; = "UTF-16LE"

.field public static final UTF_8:Ljava/lang/String; = "UTF-8"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSupported(Ljava/lang/String;)Z
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 142
    if-nez p0, :cond_0

    .line 150
    :goto_0
    return v1

    .line 146
    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/String;

    sget-object v3, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_BYTE_ARRAY:[B

    invoke-direct {v2, v3, p0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    const/4 v1, 0x1

    goto :goto_0

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    goto :goto_0
.end method
