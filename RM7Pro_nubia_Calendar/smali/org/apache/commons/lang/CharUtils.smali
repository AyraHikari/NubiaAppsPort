.class public Lorg/apache/commons/lang/CharUtils;
.super Ljava/lang/Object;
.source "CharUtils.java"


# static fields
.field private static final CHAR_ARRAY:[Ljava/lang/Character;

.field private static final CHAR_STRING:Ljava/lang/String; = "\u0000\u0001\u0002\u0003\u0004\u0005\u0006\u0007\u0008\t\n\u000b\u000c\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f !\"#$%&\'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~\u007f"

.field private static final CHAR_STRING_ARRAY:[Ljava/lang/String;

.field public static final CR:C = '\r'

.field public static final LF:C = '\n'


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v2, 0x80

    .line 51
    new-array v1, v2, [Ljava/lang/String;

    sput-object v1, Lorg/apache/commons/lang/CharUtils;->CHAR_STRING_ARRAY:[Ljava/lang/String;

    .line 52
    new-array v1, v2, [Ljava/lang/Character;

    sput-object v1, Lorg/apache/commons/lang/CharUtils;->CHAR_ARRAY:[Ljava/lang/Character;

    .line 74
    const/16 v0, 0x7f

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 75
    sget-object v1, Lorg/apache/commons/lang/CharUtils;->CHAR_STRING_ARRAY:[Ljava/lang/String;

    const-string v2, "\u0000\u0001\u0002\u0003\u0004\u0005\u0006\u0007\u0008\t\n\u000b\u000c\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f !\"#$%&\'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~\u007f"

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 76
    sget-object v1, Lorg/apache/commons/lang/CharUtils;->CHAR_ARRAY:[Ljava/lang/Character;

    new-instance v2, Ljava/lang/Character;

    int-to-char v3, v0

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    aput-object v2, v1, v0

    .line 74
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 78
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    return-void
.end method

.method public static isAscii(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 425
    const/16 v0, 0x80

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAsciiAlpha(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 482
    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5a

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_2

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAsciiAlphaLower(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 520
    const/16 v0, 0x61

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAsciiAlphaUpper(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 501
    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAsciiAlphanumeric(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 558
    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5a

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x7a

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, 0x30

    if-lt p0, v0, :cond_3

    const/16 v0, 0x39

    if-gt p0, v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAsciiControl(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 463
    const/16 v0, 0x20

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7f

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAsciiNumeric(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 539
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAsciiPrintable(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 444
    const/16 v0, 0x20

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7f

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isHighSurrogate(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 573
    const v0, 0xd800

    if-gt v0, p0, :cond_0

    const v0, 0xdbff

    if-lt v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static toChar(Ljava/lang/Character;)C
    .locals 2
    .param p0, "ch"    # Ljava/lang/Character;

    .prologue
    .line 152
    if-nez p0, :cond_0

    .line 153
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Character must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result v0

    return v0
.end method

.method public static toChar(Ljava/lang/Character;C)C
    .locals 0
    .param p0, "ch"    # Ljava/lang/Character;
    .param p1, "defaultValue"    # C

    .prologue
    .line 172
    if-nez p0, :cond_0

    .line 175
    .end local p1    # "defaultValue":C
    :goto_0
    return p1

    .restart local p1    # "defaultValue":C
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result p1

    goto :goto_0
.end method

.method public static toChar(Ljava/lang/String;)C
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 195
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The String must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public static toChar(Ljava/lang/String;C)C
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultValue"    # C

    .prologue
    .line 217
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    .end local p1    # "defaultValue":C
    :goto_0
    return p1

    .restart local p1    # "defaultValue":C
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    goto :goto_0
.end method

.method public static toCharacterObject(C)Ljava/lang/Character;
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 107
    sget-object v0, Lorg/apache/commons/lang/CharUtils;->CHAR_ARRAY:[Ljava/lang/Character;

    array-length v0, v0

    if-ge p0, v0, :cond_0

    .line 108
    sget-object v0, Lorg/apache/commons/lang/CharUtils;->CHAR_ARRAY:[Ljava/lang/Character;

    aget-object v0, v0, p0

    .line 110
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/Character;

    invoke-direct {v0, p0}, Ljava/lang/Character;-><init>(C)V

    goto :goto_0
.end method

.method public static toCharacterObject(Ljava/lang/String;)Ljava/lang/Character;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 131
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    const/4 v0, 0x0

    .line 134
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/lang/CharUtils;->toCharacterObject(C)Ljava/lang/Character;

    move-result-object v0

    goto :goto_0
.end method

.method public static toIntValue(C)I
    .locals 3
    .param p0, "ch"    # C

    .prologue
    .line 240
    invoke-static {p0}, Lorg/apache/commons/lang/CharUtils;->isAsciiNumeric(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 241
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "The character "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " is not in the range \'0\' - \'9\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_0
    add-int/lit8 v0, p0, -0x30

    return v0
.end method

.method public static toIntValue(CI)I
    .locals 1
    .param p0, "ch"    # C
    .param p1, "defaultValue"    # I

    .prologue
    .line 262
    invoke-static {p0}, Lorg/apache/commons/lang/CharUtils;->isAsciiNumeric(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 265
    .end local p1    # "defaultValue":I
    :goto_0
    return p1

    .restart local p1    # "defaultValue":I
    :cond_0
    add-int/lit8 p1, p0, -0x30

    goto :goto_0
.end method

.method public static toIntValue(Ljava/lang/Character;)I
    .locals 2
    .param p0, "ch"    # Ljava/lang/Character;

    .prologue
    .line 285
    if-nez p0, :cond_0

    .line 286
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The character must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 288
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/lang/CharUtils;->toIntValue(C)I

    move-result v0

    return v0
.end method

.method public static toIntValue(Ljava/lang/Character;I)I
    .locals 1
    .param p0, "ch"    # Ljava/lang/Character;
    .param p1, "defaultValue"    # I

    .prologue
    .line 308
    if-nez p0, :cond_0

    .line 311
    .end local p1    # "defaultValue":I
    :goto_0
    return p1

    .restart local p1    # "defaultValue":I
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-static {v0, p1}, Lorg/apache/commons/lang/CharUtils;->toIntValue(CI)I

    move-result p1

    goto :goto_0
.end method

.method public static toString(C)Ljava/lang/String;
    .locals 3
    .param p0, "ch"    # C

    .prologue
    .line 330
    const/16 v0, 0x80

    if-ge p0, v0, :cond_0

    .line 331
    sget-object v0, Lorg/apache/commons/lang/CharUtils;->CHAR_STRING_ARRAY:[Ljava/lang/String;

    aget-object v0, v0, p0

    .line 333
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [C

    const/4 v2, 0x0

    aput-char p0, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method public static toString(Ljava/lang/Character;)Ljava/lang/String;
    .locals 1
    .param p0, "ch"    # Ljava/lang/Character;

    .prologue
    .line 354
    if-nez p0, :cond_0

    .line 355
    const/4 v0, 0x0

    .line 357
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/lang/CharUtils;->toString(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static unicodeEscaped(C)Ljava/lang/String;
    .locals 2
    .param p0, "ch"    # C

    .prologue
    .line 375
    const/16 v0, 0x10

    if-ge p0, v0, :cond_0

    .line 376
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "\\u000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 382
    :goto_0
    return-object v0

    .line 377
    :cond_0
    const/16 v0, 0x100

    if-ge p0, v0, :cond_1

    .line 378
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "\\u00"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 379
    :cond_1
    const/16 v0, 0x1000

    if-ge p0, v0, :cond_2

    .line 380
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "\\u0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 382
    :cond_2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "\\u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static unicodeEscaped(Ljava/lang/Character;)Ljava/lang/String;
    .locals 1
    .param p0, "ch"    # Ljava/lang/Character;

    .prologue
    .line 402
    if-nez p0, :cond_0

    .line 403
    const/4 v0, 0x0

    .line 405
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/lang/CharUtils;->unicodeEscaped(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
