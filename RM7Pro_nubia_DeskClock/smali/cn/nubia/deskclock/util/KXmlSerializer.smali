.class public Lcn/nubia/deskclock/util/KXmlSerializer;
.super Ljava/lang/Object;
.source "KXmlSerializer.java"

# interfaces
.implements Lorg/xmlpull/v1/XmlSerializer;


# static fields
.field private static final WRITE_BUFFER_SIZE:I = 0x1f4


# instance fields
.field private mAuto:I

.field private mDepth:I

.field private mElementStack:[Ljava/lang/String;

.field private mEncoding:Ljava/lang/String;

.field private mIndent:[Z

.field private mNspCounts:[I

.field private mNspStack:[Ljava/lang/String;

.field private mPending:Z

.field private mUnicode:Z

.field private mWriter:Ljava/io/BufferedWriter;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mElementStack:[Ljava/lang/String;

    .line 52
    new-array v0, v1, [I

    iput-object v0, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mNspCounts:[I

    .line 53
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mNspStack:[Ljava/lang/String;

    .line 55
    new-array v0, v1, [Z

    iput-object v0, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mIndent:[Z

    return-void
.end method

.method private final check(Z)V
    .locals 8
    .param p1, "close"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x22

    const/4 v6, 0x0

    .line 60
    iget-boolean v2, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mPending:Z

    if-nez v2, :cond_0

    .line 100
    :goto_0
    return-void

    .line 64
    :cond_0
    iget v2, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mDepth:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mDepth:I

    .line 65
    iput-boolean v6, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mPending:Z

    .line 67
    iget-object v2, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mIndent:[Z

    array-length v2, v2

    iget v3, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mDepth:I

    if-gt v2, v3, :cond_1

    .line 68
    iget v2, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mDepth:I

    add-int/lit8 v2, v2, 0x4

    new-array v0, v2, [Z

    .line 69
    .local v0, "hlp":[Z
    iget-object v2, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mIndent:[Z

    iget v3, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mDepth:I

    invoke-static {v2, v6, v0, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 70
    iput-object v0, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mIndent:[Z

    .line 72
    .end local v0    # "hlp":[Z
    :cond_1
    iget-object v2, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mIndent:[Z

    iget v3, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mDepth:I

    iget-object v4, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mIndent:[Z

    iget v5, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mDepth:I

    add-int/lit8 v5, v5, -0x1

    aget-boolean v4, v4, v5

    aput-boolean v4, v2, v3

    .line 74
    iget-object v2, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mNspCounts:[I

    iget v3, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mDepth:I

    add-int/lit8 v3, v3, -0x1

    aget v1, v2, v3

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mNspCounts:[I

    iget v3, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mDepth:I

    aget v2, v2, v3

    if-ge v1, v2, :cond_4

    .line 75
    iget-object v2, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mWriter:Ljava/io/BufferedWriter;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(I)V

    .line 76
    iget-object v2, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mWriter:Ljava/io/BufferedWriter;

    const-string v3, "xmlns"

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 77
    iget-object v2, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mNspStack:[Ljava/lang/String;

    mul-int/lit8 v3, v1, 0x2

    aget-object v2, v2, v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 78
    iget-object v2, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mWriter:Ljava/io/BufferedWriter;

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(I)V

    .line 79
    iget-object v2, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mWriter:Ljava/io/BufferedWriter;

    iget-object v3, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mNspStack:[Ljava/lang/String;

    mul-int/lit8 v4, v1, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 85
    :cond_2
    iget-object v2, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mWriter:Ljava/io/BufferedWriter;

    const-string v3, "=\""

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 86
    iget-object v2, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mNspStack:[Ljava/lang/String;

    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    aget-object v2, v2, v3

    invoke-direct {p0, v2, v7}, Lcn/nubia/deskclock/util/KXmlSerializer;->writeEscaped(Ljava/lang/String;I)V

    .line 87
    iget-object v2, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v2, v7}, Ljava/io/BufferedWriter;->write(I)V

    .line 74
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 80
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/deskclock/util/KXmlSerializer;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mNspStack:[Ljava/lang/String;

    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    aget-object v2, v2, v3

    .line 81
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 82
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot set default namespace for elements in no namespace"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 90
    :cond_4
    iget-object v2, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mNspCounts:[I

    array-length v2, v2

    iget v3, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mDepth:I

    add-int/lit8 v3, v3, 0x1

    if-gt v2, v3, :cond_5

    .line 91
    iget v2, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mDepth:I

    add-int/lit8 v2, v2, 0x8

    new-array v0, v2, [I

    .line 92
    .local v0, "hlp":[I
    iget-object v2, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mNspCounts:[I

    iget v3, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mDepth:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v6, v0, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    iput-object v0, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mNspCounts:[I

    .line 96
    .end local v0    # "hlp":[I
    :cond_5
    iget-object v2, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mNspCounts:[I

    iget v3, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mDepth:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mNspCounts:[I

    iget v5, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mDepth:I

    aget v4, v4, v5

    aput v4, v2, v3

    .line 99
    iget-object v3, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mWriter:Ljava/io/BufferedWriter;

    if-eqz p1, :cond_6

    const-string v2, " />"

    :goto_2
    invoke-virtual {v3, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const-string v2, ">"

    goto :goto_2
.end method

.method private final getPrefix(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 8
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "includeDefault"    # Z
    .param p3, "create"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 217
    iget-object v5, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mNspCounts:[I

    iget v6, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mDepth:I

    add-int/lit8 v6, v6, 0x1

    aget v5, v5, v6

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v1, v5, -0x2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_4

    .line 218
    iget-object v5, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mNspStack:[Ljava/lang/String;

    add-int/lit8 v6, v1, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    if-nez p2, :cond_0

    iget-object v5, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mNspStack:[Ljava/lang/String;

    aget-object v5, v5, v1

    .line 219
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 220
    :cond_0
    iget-object v5, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mNspStack:[Ljava/lang/String;

    aget-object v0, v5, v1

    .line 221
    .local v0, "cand":Ljava/lang/String;
    add-int/lit8 v2, v1, 0x2

    .local v2, "j":I
    :goto_1
    iget-object v5, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mNspCounts:[I

    iget v6, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mDepth:I

    add-int/lit8 v6, v6, 0x1

    aget v5, v5, v6

    mul-int/lit8 v5, v5, 0x2

    if-ge v2, v5, :cond_1

    .line 222
    iget-object v5, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mNspStack:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 223
    const/4 v0, 0x0

    .line 227
    :cond_1
    if-eqz v0, :cond_3

    .line 257
    .end local v0    # "cand":Ljava/lang/String;
    .end local v2    # "j":I
    :goto_2
    return-object v0

    .line 221
    .restart local v0    # "cand":Ljava/lang/String;
    .restart local v2    # "j":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 217
    .end local v0    # "cand":Ljava/lang/String;
    .end local v2    # "j":I
    :cond_3
    add-int/lit8 v1, v1, -0x2

    goto :goto_0

    .line 233
    :cond_4
    if-nez p3, :cond_5

    .line 234
    const/4 v0, 0x0

    goto :goto_2

    .line 239
    :cond_5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 240
    const-string v4, ""

    .line 253
    .local v4, "prefix":Ljava/lang/String;
    :goto_3
    iget-boolean v3, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mPending:Z

    .line 254
    .local v3, "p":Z
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mPending:Z

    .line 255
    invoke-virtual {p0, v4, p1}, Lcn/nubia/deskclock/util/KXmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iput-boolean v3, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mPending:Z

    move-object v0, v4

    .line 257
    goto :goto_2

    .line 243
    .end local v3    # "p":Z
    .end local v4    # "prefix":Ljava/lang/String;
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mAuto:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mAuto:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 244
    .restart local v4    # "prefix":Ljava/lang/String;
    iget-object v5, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mNspCounts:[I

    iget v6, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mDepth:I

    add-int/lit8 v6, v6, 0x1

    aget v5, v5, v6

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v1, v5, -0x2

    :goto_4
    if-ltz v1, :cond_7

    .line 245
    iget-object v5, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mNspStack:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 246
    const/4 v4, 0x0

    .line 250
    :cond_7
    if-eqz v4, :cond_6

    goto :goto_3

    .line 244
    :cond_8
    add-int/lit8 v1, v1, -0x2

    goto :goto_4
.end method

.method private static reportInvalidCharacter(C)V
    .locals 3
    .param p0, "ch"    # C

    .prologue
    .line 168
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal character ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 169
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final writeEscaped(Ljava/lang/String;I)V
    .locals 6
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "quot"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_c

    .line 104
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 105
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    .line 125
    if-ne v0, p2, :cond_2

    .line 126
    iget-object v4, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mWriter:Ljava/io/BufferedWriter;

    const/16 v3, 0x22

    if-ne v0, v3, :cond_1

    const-string v3, "&quot;"

    :goto_1
    invoke-virtual {v4, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 103
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 109
    :sswitch_0
    const/4 v3, -0x1

    if-ne p2, v3, :cond_0

    .line 110
    iget-object v3, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(I)V

    goto :goto_2

    .line 112
    :cond_0
    iget-object v3, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mWriter:Ljava/io/BufferedWriter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "&#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x3b

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_2

    .line 116
    :sswitch_1
    iget-object v3, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mWriter:Ljava/io/BufferedWriter;

    const-string v4, "&amp;"

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_2

    .line 119
    :sswitch_2
    iget-object v3, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mWriter:Ljava/io/BufferedWriter;

    const-string v4, "&gt;"

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_2

    .line 122
    :sswitch_3
    iget-object v3, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mWriter:Ljava/io/BufferedWriter;

    const-string v4, "&lt;"

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_2

    .line 126
    :cond_1
    const-string v3, "&apos;"

    goto :goto_1

    .line 138
    :cond_2
    const v3, 0xd800

    if-lt v0, v3, :cond_4

    const v3, 0xdbff

    if-gt v0, v3, :cond_4

    .line 140
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 141
    iget-object v3, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mWriter:Ljava/io/BufferedWriter;

    add-int/lit8 v4, v1, 0x2

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 142
    add-int/lit8 v1, v1, 0x1

    .line 143
    goto :goto_2

    .line 147
    :cond_3
    invoke-static {v0}, Lcn/nubia/deskclock/util/KXmlSerializer;->reportInvalidCharacter(C)V

    .line 149
    :cond_4
    const/16 v3, 0x9

    if-eq v0, v3, :cond_7

    const/16 v3, 0xa

    if-eq v0, v3, :cond_7

    const/16 v3, 0xd

    if-eq v0, v3, :cond_7

    const/16 v3, 0x20

    if-lt v0, v3, :cond_5

    const v3, 0xd7ff

    if-le v0, v3, :cond_7

    :cond_5
    const v3, 0xe000

    if-lt v0, v3, :cond_6

    const v3, 0xfffd

    if-le v0, v3, :cond_7

    :cond_6
    const/high16 v3, 0x10000

    if-lt v0, v3, :cond_a

    const v3, 0x10ffff

    if-gt v0, v3, :cond_a

    :cond_7
    const/4 v2, 0x1

    .line 153
    .local v2, "valid":Z
    :goto_3
    if-nez v2, :cond_8

    .line 154
    invoke-static {v0}, Lcn/nubia/deskclock/util/KXmlSerializer;->reportInvalidCharacter(C)V

    .line 156
    :cond_8
    iget-boolean v3, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mUnicode:Z

    if-nez v3, :cond_9

    const/16 v3, 0x7f

    if-ge v0, v3, :cond_b

    .line 157
    :cond_9
    iget-object v3, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(I)V

    goto/16 :goto_2

    .line 149
    .end local v2    # "valid":Z
    :cond_a
    const/4 v2, 0x0

    goto :goto_3

    .line 159
    .restart local v2    # "valid":Z
    :cond_b
    iget-object v3, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mWriter:Ljava/io/BufferedWriter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "&#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 164
    .end local v0    # "c":C
    .end local v2    # "valid":Z
    :cond_c
    return-void

    .line 105
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x26 -> :sswitch_1
        0x3c -> :sswitch_3
        0x3e -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 4
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x22

    .line 431
    iget-boolean v2, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mPending:Z

    if-nez v2, :cond_0

    .line 432
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "illegal position for attribute"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 437
    :cond_0
    if-nez p1, :cond_1

    .line 438
    const-string p1, ""

    .line 444
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v0, ""

    .line 458
    .local v0, "prefix":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mWriter:Ljava/io/BufferedWriter;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(I)V

    .line 459
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 460
    iget-object v2, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 461
    iget-object v2, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mWriter:Ljava/io/BufferedWriter;

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(I)V

    .line 463
    :cond_2
    iget-object v2, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v2, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 464
    iget-object v2, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mWriter:Ljava/io/BufferedWriter;

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(I)V

    .line 465
    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    .line 466
    .local v1, "q":C
    :goto_1
    iget-object v2, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v2, v1}, Ljava/io/BufferedWriter;->write(I)V

    .line 467
    invoke-direct {p0, p3, v1}, Lcn/nubia/deskclock/util/KXmlSerializer;->writeEscaped(Ljava/lang/String;I)V

    .line 468
    iget-object v2, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v2, v1}, Ljava/io/BufferedWriter;->write(I)V

    .line 470
    return-object p0

    .line 444
    .end local v0    # "prefix":Ljava/lang/String;
    .end local v1    # "q":C
    :cond_3
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, p1, v2, v3}, Lcn/nubia/deskclock/util/KXmlSerializer;->getPrefix(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 465
    .restart local v0    # "prefix":Ljava/lang/String;
    :cond_4
    const/16 v1, 0x27

    goto :goto_1
.end method

.method public cdsect(Ljava/lang/String;)V
    .locals 7
    .param p1, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 549
    invoke-direct {p0, v3}, Lcn/nubia/deskclock/util/KXmlSerializer;->check(Z)V

    .line 552
    const-string v4, "]]>"

    const-string v5, "]]]]><![CDATA[>"

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 553
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 555
    .local v1, "chars":[C
    array-length v5, v1

    move v4, v3

    :goto_0
    if-ge v4, v5, :cond_4

    aget-char v0, v1, v4

    .line 556
    .local v0, "ch":C
    const/16 v6, 0x20

    if-lt v0, v6, :cond_0

    const v6, 0xd7ff

    if-le v0, v6, :cond_1

    :cond_0
    const/16 v6, 0x9

    if-eq v0, v6, :cond_1

    const/16 v6, 0xa

    if-eq v0, v6, :cond_1

    const/16 v6, 0xd

    if-eq v0, v6, :cond_1

    const v6, 0xe000

    if-lt v0, v6, :cond_3

    const v6, 0xfffd

    if-gt v0, v6, :cond_3

    :cond_1
    const/4 v2, 0x1

    .line 559
    .local v2, "valid":Z
    :goto_1
    if-nez v2, :cond_2

    .line 560
    invoke-static {v0}, Lcn/nubia/deskclock/util/KXmlSerializer;->reportInvalidCharacter(C)V

    .line 555
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v2    # "valid":Z
    :cond_3
    move v2, v3

    .line 556
    goto :goto_1

    .line 563
    .end local v0    # "ch":C
    :cond_4
    iget-object v4, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mWriter:Ljava/io/BufferedWriter;

    const-string v5, "<![CDATA["

    invoke-virtual {v4, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 564
    iget-object v4, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mWriter:Ljava/io/BufferedWriter;

    array-length v5, v1

    invoke-virtual {v4, v1, v3, v5}, Ljava/io/BufferedWriter;->write([CII)V

    .line 565
    iget-object v3, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mWriter:Ljava/io/BufferedWriter;

    const-string v4, "]]>"

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 567
    return-void
.end method

.method public comment(Ljava/lang/String;)V
    .locals 2
    .param p1, "comment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 570
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/nubia/deskclock/util/KXmlSerializer;->check(Z)V

    .line 571
    iget-object v0, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mWriter:Ljava/io/BufferedWriter;

    const-string v1, "<!--"

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 572
    iget-object v0, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 573
    iget-object v0, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mWriter:Ljava/io/BufferedWriter;

    const-string v1, "-->"

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 574
    return-void
.end method

.method public docdecl(Ljava/lang/String;)V
    .locals 2
    .param p1, "dd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 181
    iget-object v0, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mWriter:Ljava/io/BufferedWriter;

    const-string v1, "<!DOCTYPE"

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mWriter:Ljava/io/BufferedWriter;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method public endDocument()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 187
    :goto_0
    iget v0, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mDepth:I

    if-lez v0, :cond_0

    .line 188
    iget-object v0, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mElementStack:[Ljava/lang/String;

    iget v1, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mDepth:I

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, -0x3

    aget-object v0, v0, v1

    iget-object v1, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mElementStack:[Ljava/lang/String;

    iget v2, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mDepth:I

    mul-int/lit8 v2, v2, 0x3

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcn/nubia/deskclock/util/KXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 190
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/deskclock/util/KXmlSerializer;->flush()V

    .line 191
    return-void
.end method

.method public endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 6
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 484
    iget-boolean v2, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mPending:Z

    if-nez v2, :cond_0

    .line 485
    iget v2, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mDepth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mDepth:I

    .line 490
    :cond_0
    if-nez p1, :cond_1

    iget-object v2, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mElementStack:[Ljava/lang/String;

    iget v3, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mDepth:I

    mul-int/lit8 v3, v3, 0x3

    aget-object v2, v2, v3

    if-nez v2, :cond_3

    :cond_1
    if-eqz p1, :cond_2

    iget-object v2, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mElementStack:[Ljava/lang/String;

    iget v3, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mDepth:I

    mul-int/lit8 v3, v3, 0x3

    aget-object v2, v2, v3

    .line 492
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mElementStack:[Ljava/lang/String;

    iget v3, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mDepth:I

    mul-int/lit8 v3, v3, 0x3

    add-int/lit8 v3, v3, 0x2

    aget-object v2, v2, v3

    .line 493
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 494
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "</{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> does not match start"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 498
    :cond_4
    iget-boolean v2, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mPending:Z

    if-eqz v2, :cond_5

    .line 499
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcn/nubia/deskclock/util/KXmlSerializer;->check(Z)V

    .line 500
    iget v2, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mDepth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mDepth:I

    .line 519
    :goto_0
    iget-object v2, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mNspCounts:[I

    iget v3, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mDepth:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mNspCounts:[I

    iget v5, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mDepth:I

    aget v4, v4, v5

    aput v4, v2, v3

    .line 520
    return-object p0

    .line 502
    :cond_5
    iget-object v2, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mIndent:[Z

    iget v3, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mDepth:I

    add-int/lit8 v3, v3, 0x1

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_6

    .line 503
    iget-object v2, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mWriter:Ljava/io/BufferedWriter;

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 504
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v2, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mDepth:I

    if-ge v0, v2, :cond_6

    .line 505
    iget-object v2, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mWriter:Ljava/io/BufferedWriter;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 504
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 509
    .end local v0    # "i":I
    :cond_6
    iget-object v2, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mWriter:Ljava/io/BufferedWriter;

    const-string v3, "</"

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 510
    iget-object v2, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mElementStack:[Ljava/lang/String;

    iget v3, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mDepth:I

    mul-int/lit8 v3, v3, 0x3

    add-int/lit8 v3, v3, 0x1

    aget-object v1, v2, v3

    .line 511
    .local v1, "prefix":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 512
    iget-object v2, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v2, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 513
    iget-object v2, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mWriter:Ljava/io/BufferedWriter;

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(I)V

    .line 515
    :cond_7
    iget-object v2, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v2, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 516
    iget-object v2, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mWriter:Ljava/io/BufferedWriter;

    const/16 v3, 0x3e

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(I)V

    goto :goto_0
.end method

.method public entityRef(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 194
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/nubia/deskclock/util/KXmlSerializer;->check(Z)V

    .line 195
    iget-object v0, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mWriter:Ljava/io/BufferedWriter;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(I)V

    .line 196
    iget-object v0, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mWriter:Ljava/io/BufferedWriter;

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(I)V

    .line 198
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 474
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/nubia/deskclock/util/KXmlSerializer;->check(Z)V

    .line 475
    iget-object v0, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 476
    return-void
.end method

.method public getDepth()I
    .locals 1

    .prologue
    .line 532
    iget-boolean v0, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mPending:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mDepth:I

    add-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mDepth:I

    goto :goto_0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 202
    const-string v0, "http://xmlpull.org/v1/doc/features.html#indent-output"

    .line 203
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mIndent:[Z

    iget v1, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mDepth:I

    aget-boolean v0, v0, v1

    .line 202
    :goto_0
    return v0

    .line 203
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 528
    invoke-virtual {p0}, Lcn/nubia/deskclock/util/KXmlSerializer;->getDepth()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mElementStack:[Ljava/lang/String;

    invoke-virtual {p0}, Lcn/nubia/deskclock/util/KXmlSerializer;->getDepth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 2

    .prologue
    .line 524
    invoke-virtual {p0}, Lcn/nubia/deskclock/util/KXmlSerializer;->getDepth()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mElementStack:[Ljava/lang/String;

    invoke-virtual {p0}, Lcn/nubia/deskclock/util/KXmlSerializer;->getDepth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, -0x3

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public getPrefix(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "create"    # Z

    .prologue
    .line 208
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, v1, p2}, Lcn/nubia/deskclock/util/KXmlSerializer;->getPrefix(Ljava/lang/String;ZZ)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 261
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unsupported property"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ignorableWhitespace(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 265
    invoke-virtual {p0, p1}, Lcn/nubia/deskclock/util/KXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 266
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;)V
    .locals 2
    .param p1, "pi"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 577
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/nubia/deskclock/util/KXmlSerializer;->check(Z)V

    .line 578
    iget-object v0, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mWriter:Ljava/io/BufferedWriter;

    const-string v1, "<?"

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 579
    iget-object v0, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 580
    iget-object v0, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mWriter:Ljava/io/BufferedWriter;

    const-string v1, "?>"

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 581
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 269
    const-string v0, "http://xmlpull.org/v1/doc/features.html#indent-output"

    .line 270
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mIndent:[Z

    iget v1, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mDepth:I

    aput-boolean p2, v0, v1

    .line 275
    return-void

    .line 273
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unsupported Feature"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 2
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 340
    if-nez p1, :cond_0

    .line 341
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "os == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 343
    :cond_0
    if-nez p2, :cond_2

    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    :goto_0
    invoke-virtual {p0, v0}, Lcn/nubia/deskclock/util/KXmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 345
    iput-object p2, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mEncoding:Ljava/lang/String;

    .line 346
    if-eqz p2, :cond_1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 347
    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "utf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 348
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mUnicode:Z

    .line 350
    :cond_1
    return-void

    .line 343
    :cond_2
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setOutput(Ljava/io/Writer;)V
    .locals 5
    .param p1, "writer"    # Ljava/io/Writer;

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 314
    instance-of v0, p1, Ljava/io/BufferedWriter;

    if-eqz v0, :cond_0

    .line 315
    check-cast p1, Ljava/io/BufferedWriter;

    .end local p1    # "writer":Ljava/io/Writer;
    iput-object p1, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mWriter:Ljava/io/BufferedWriter;

    .line 326
    :goto_0
    iget-object v0, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mNspCounts:[I

    aput v2, v0, v3

    .line 327
    iget-object v0, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mNspCounts:[I

    aput v2, v0, v4

    .line 328
    iget-object v0, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mNspStack:[Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v3

    .line 329
    iget-object v0, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mNspStack:[Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v4

    .line 330
    iget-object v0, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mNspStack:[Ljava/lang/String;

    const-string v1, "xml"

    aput-object v1, v0, v2

    .line 331
    iget-object v0, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mNspStack:[Ljava/lang/String;

    const/4 v1, 0x3

    const-string v2, "http://www.w3.org/XML/1998/namespace"

    aput-object v2, v0, v1

    .line 332
    iput-boolean v3, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mPending:Z

    .line 333
    iput v3, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mAuto:I

    .line 334
    iput v3, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mDepth:I

    .line 336
    iput-boolean v3, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mUnicode:Z

    .line 337
    return-void

    .line 317
    .restart local p1    # "writer":Ljava/io/Writer;
    :cond_0
    new-instance v0, Ljava/io/BufferedWriter;

    const/16 v1, 0x1f4

    invoke-direct {v0, p1, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    iput-object v0, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mWriter:Ljava/io/BufferedWriter;

    goto :goto_0
.end method

.method public setPrefix(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "namespace"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 283
    invoke-direct {p0, v8}, Lcn/nubia/deskclock/util/KXmlSerializer;->check(Z)V

    .line 284
    if-nez p1, :cond_0

    .line 285
    const-string p1, ""

    .line 287
    :cond_0
    if-nez p2, :cond_1

    .line 288
    const-string p2, ""

    .line 291
    :cond_1
    const/4 v4, 0x1

    invoke-direct {p0, p2, v4, v8}, Lcn/nubia/deskclock/util/KXmlSerializer;->getPrefix(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    .line 295
    .local v0, "defined":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 309
    :goto_0
    return-void

    .line 299
    :cond_2
    iget-object v4, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mNspCounts:[I

    iget v5, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mDepth:I

    add-int/lit8 v5, v5, 0x1

    aget v6, v4, v5

    add-int/lit8 v7, v6, 0x1

    aput v7, v4, v5

    shl-int/lit8 v2, v6, 0x1

    .line 301
    .local v2, "pos":I
    iget-object v4, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mNspStack:[Ljava/lang/String;

    array-length v4, v4

    add-int/lit8 v5, v2, 0x1

    if-ge v4, v5, :cond_3

    .line 302
    iget-object v4, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mNspStack:[Ljava/lang/String;

    array-length v4, v4

    add-int/lit8 v4, v4, 0x10

    new-array v1, v4, [Ljava/lang/String;

    .line 303
    .local v1, "hlp":[Ljava/lang/String;
    iget-object v4, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mNspStack:[Ljava/lang/String;

    invoke-static {v4, v8, v1, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 304
    iput-object v1, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mNspStack:[Ljava/lang/String;

    .line 307
    .end local v1    # "hlp":[Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mNspStack:[Ljava/lang/String;

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "pos":I
    .local v3, "pos":I
    aput-object p1, v4, v2

    .line 308
    iget-object v4, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mNspStack:[Ljava/lang/String;

    aput-object p2, v4, v3

    goto :goto_0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 278
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported Property:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "encoding"    # Ljava/lang/String;
    .param p2, "standalone"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 354
    iget-object v0, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mWriter:Ljava/io/BufferedWriter;

    const-string v1, "<?xml version=\'1.0\' "

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 356
    if-eqz p1, :cond_0

    .line 357
    iput-object p1, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mEncoding:Ljava/lang/String;

    .line 358
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "utf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mUnicode:Z

    .line 363
    :cond_0
    iget-object v0, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mEncoding:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 364
    iget-object v0, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mWriter:Ljava/io/BufferedWriter;

    const-string v1, "encoding=\'"

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mWriter:Ljava/io/BufferedWriter;

    iget-object v1, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mEncoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 366
    iget-object v0, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mWriter:Ljava/io/BufferedWriter;

    const-string v1, "\' "

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 369
    :cond_1
    if-eqz p2, :cond_2

    .line 370
    iget-object v0, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mWriter:Ljava/io/BufferedWriter;

    const-string v1, "standalone=\'"

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 371
    iget-object v1, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mWriter:Ljava/io/BufferedWriter;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "yes"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 372
    iget-object v0, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mWriter:Ljava/io/BufferedWriter;

    const-string v1, "\' "

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 374
    :cond_2
    iget-object v0, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mWriter:Ljava/io/BufferedWriter;

    const-string v1, "?>"

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 375
    return-void

    .line 371
    :cond_3
    const-string v0, "no"

    goto :goto_0
.end method

.method public startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 9
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 379
    invoke-direct {p0, v7}, Lcn/nubia/deskclock/util/KXmlSerializer;->check(Z)V

    .line 384
    iget-object v5, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mIndent:[Z

    iget v6, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mDepth:I

    aget-boolean v5, v5, v6

    if-eqz v5, :cond_0

    .line 385
    iget-object v5, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mWriter:Ljava/io/BufferedWriter;

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 386
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v5, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mDepth:I

    if-ge v3, v5, :cond_0

    .line 387
    iget-object v5, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mWriter:Ljava/io/BufferedWriter;

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 386
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 391
    .end local v3    # "i":I
    :cond_0
    iget v5, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mDepth:I

    mul-int/lit8 v0, v5, 0x3

    .line 393
    .local v0, "esp":I
    iget-object v5, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mElementStack:[Ljava/lang/String;

    array-length v5, v5

    add-int/lit8 v6, v0, 0x3

    if-ge v5, v6, :cond_1

    .line 394
    iget-object v5, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mElementStack:[Ljava/lang/String;

    array-length v5, v5

    add-int/lit8 v5, v5, 0xc

    new-array v2, v5, [Ljava/lang/String;

    .line 395
    .local v2, "hlp":[Ljava/lang/String;
    iget-object v5, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mElementStack:[Ljava/lang/String;

    invoke-static {v5, v7, v2, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 396
    iput-object v2, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mElementStack:[Ljava/lang/String;

    .line 399
    .end local v2    # "hlp":[Ljava/lang/String;
    :cond_1
    if-nez p1, :cond_2

    const-string v4, ""

    .line 402
    .local v4, "prefix":Ljava/lang/String;
    :goto_1
    if-eqz p1, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 403
    iget-object v5, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mNspCounts:[I

    iget v6, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mDepth:I

    aget v3, v5, v6

    .restart local v3    # "i":I
    :goto_2
    iget-object v5, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mNspCounts:[I

    iget v6, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mDepth:I

    add-int/lit8 v6, v6, 0x1

    aget v5, v5, v6

    if-ge v3, v5, :cond_4

    .line 404
    iget-object v5, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mNspStack:[Ljava/lang/String;

    mul-int/lit8 v6, v3, 0x2

    aget-object v5, v5, v6

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mNspStack:[Ljava/lang/String;

    mul-int/lit8 v6, v3, 0x2

    add-int/lit8 v6, v6, 0x1

    aget-object v5, v5, v6

    .line 405
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 406
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Cannot set default namespace for elements in no namespace"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 399
    .end local v3    # "i":I
    .end local v4    # "prefix":Ljava/lang/String;
    :cond_2
    invoke-direct {p0, p1, v8, v8}, Lcn/nubia/deskclock/util/KXmlSerializer;->getPrefix(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 403
    .restart local v3    # "i":I
    .restart local v4    # "prefix":Ljava/lang/String;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 412
    .end local v3    # "i":I
    :cond_4
    iget-object v5, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mElementStack:[Ljava/lang/String;

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "esp":I
    .local v1, "esp":I
    aput-object p1, v5, v0

    .line 413
    iget-object v5, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mElementStack:[Ljava/lang/String;

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "esp":I
    .restart local v0    # "esp":I
    aput-object v4, v5, v1

    .line 414
    iget-object v5, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mElementStack:[Ljava/lang/String;

    aput-object p2, v5, v0

    .line 416
    iget-object v5, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mWriter:Ljava/io/BufferedWriter;

    const/16 v6, 0x3c

    invoke-virtual {v5, v6}, Ljava/io/BufferedWriter;->write(I)V

    .line 417
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 418
    iget-object v5, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v5, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 419
    iget-object v5, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mWriter:Ljava/io/BufferedWriter;

    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Ljava/io/BufferedWriter;->write(I)V

    .line 422
    :cond_5
    iget-object v5, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v5, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 424
    iput-boolean v8, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mPending:Z

    .line 426
    return-object p0
.end method

.method public text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 536
    invoke-direct {p0, v2}, Lcn/nubia/deskclock/util/KXmlSerializer;->check(Z)V

    .line 537
    iget-object v0, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mIndent:[Z

    iget v1, p0, Lcn/nubia/deskclock/util/KXmlSerializer;->mDepth:I

    aput-boolean v2, v0, v1

    .line 538
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcn/nubia/deskclock/util/KXmlSerializer;->writeEscaped(Ljava/lang/String;I)V

    .line 539
    return-object p0
.end method

.method public text([CII)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1
    .param p1, "text"    # [C
    .param p2, "start"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 544
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v0}, Lcn/nubia/deskclock/util/KXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 545
    return-object p0
.end method
