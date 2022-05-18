.class public Lcom/mpatric/mp3agic/d;
.super Ljava/lang/Object;
.source "CodeCheck.java"


# direct methods
.method public static a([B)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 12
    .line 13
    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v2, 0x3

    if-ge v0, v2, :cond_2

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 46
    :cond_1
    :goto_0
    return-object v0

    .line 17
    :cond_2
    invoke-static {p0}, Lcom/mpatric/mp3agic/d;->b([B)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "UTF-16LE"

    invoke-static {v0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 18
    new-instance v0, Ljava/lang/String;

    const-string v2, "UTF-16LE"

    invoke-direct {v0, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 36
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 37
    if-eqz v3, :cond_1

    move v0, v1

    .line 39
    :goto_2
    array-length v2, v3

    if-lt v0, v2, :cond_c

    .line 44
    :cond_3
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3, v1, v0}, Ljava/lang/String;-><init>([BII)V

    move-object v0, v2

    goto :goto_0

    .line 19
    :cond_4
    invoke-static {p0}, Lcom/mpatric/mp3agic/d;->c([B)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "UTF-16BE"

    invoke-static {v0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 20
    new-instance v0, Ljava/lang/String;

    const-string v2, "UTF-16BE"

    invoke-direct {v0, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_1

    .line 21
    :cond_5
    invoke-static {p0}, Lcom/mpatric/mp3agic/d;->d([B)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "UTF-32LE"

    invoke-static {v0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 22
    new-instance v0, Ljava/lang/String;

    const-string v2, "UTF-32LE"

    invoke-direct {v0, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_1

    .line 23
    :cond_6
    invoke-static {p0}, Lcom/mpatric/mp3agic/d;->e([B)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "UTF-32BE"

    invoke-static {v0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 24
    new-instance v0, Ljava/lang/String;

    const-string v2, "UTF-32BE"

    invoke-direct {v0, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_1

    .line 25
    :cond_7
    invoke-static {p0}, Lcom/mpatric/mp3agic/d;->i([B)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "GBK"

    invoke-static {v0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 26
    new-instance v0, Ljava/lang/String;

    const-string v2, "GBK"

    invoke-direct {v0, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_1

    .line 27
    :cond_8
    invoke-static {p0}, Lcom/mpatric/mp3agic/d;->h([B)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 28
    new-instance v0, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v0, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_1

    .line 29
    :cond_9
    invoke-static {p0}, Lcom/mpatric/mp3agic/d;->g([B)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 30
    new-instance v0, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v0, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto/16 :goto_1

    .line 31
    :cond_a
    invoke-static {p0}, Lcom/mpatric/mp3agic/d;->f([B)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "Big5"

    invoke-static {v0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 32
    new-instance v0, Ljava/lang/String;

    const-string v2, "Big5"

    invoke-direct {v0, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto/16 :goto_1

    .line 34
    :cond_b
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    goto/16 :goto_1

    .line 40
    :cond_c
    aget-byte v2, v3, v0

    if-eqz v2, :cond_3

    .line 39
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2
.end method

.method public static b([B)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 57
    if-eqz p0, :cond_0

    array-length v2, p0

    const/4 v3, 0x2

    if-ge v2, v3, :cond_2

    :cond_0
    move v0, v1

    .line 63
    :cond_1
    :goto_0
    return v0

    .line 59
    :cond_2
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    .line 60
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    .line 61
    const/16 v4, 0xff

    if-ne v2, v4, :cond_3

    const/16 v2, 0xfe

    if-eq v3, v2, :cond_1

    :cond_3
    move v0, v1

    .line 63
    goto :goto_0
.end method

.method public static c([B)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 74
    if-eqz p0, :cond_0

    array-length v2, p0

    const/4 v3, 0x2

    if-ge v2, v3, :cond_2

    :cond_0
    move v0, v1

    .line 80
    :cond_1
    :goto_0
    return v0

    .line 76
    :cond_2
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    .line 77
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    .line 78
    const/16 v4, 0xfe

    if-ne v2, v4, :cond_3

    const/16 v2, 0xff

    if-eq v3, v2, :cond_1

    :cond_3
    move v0, v1

    .line 80
    goto :goto_0
.end method

.method public static d([B)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 91
    if-eqz p0, :cond_0

    array-length v2, p0

    const/4 v3, 0x4

    if-ge v2, v3, :cond_2

    :cond_0
    move v0, v1

    .line 99
    :cond_1
    :goto_0
    return v0

    .line 93
    :cond_2
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    .line 94
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    .line 95
    const/4 v4, 0x2

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    .line 96
    const/4 v5, 0x3

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    .line 97
    if-nez v2, :cond_3

    if-nez v3, :cond_3

    const/16 v2, 0xff

    if-ne v4, v2, :cond_3

    const/16 v2, 0xfe

    if-eq v5, v2, :cond_1

    :cond_3
    move v0, v1

    .line 99
    goto :goto_0
.end method

.method public static e([B)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 110
    if-eqz p0, :cond_0

    array-length v2, p0

    const/4 v3, 0x4

    if-ge v2, v3, :cond_2

    :cond_0
    move v0, v1

    .line 118
    :cond_1
    :goto_0
    return v0

    .line 112
    :cond_2
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    .line 113
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    .line 114
    const/4 v4, 0x2

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    .line 115
    const/4 v5, 0x3

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    .line 116
    if-nez v2, :cond_3

    if-nez v3, :cond_3

    const/16 v2, 0xfe

    if-ne v4, v2, :cond_3

    const/16 v2, 0xff

    if-eq v5, v2, :cond_1

    :cond_3
    move v0, v1

    .line 118
    goto :goto_0
.end method

.method public static f([B)Z
    .locals 6

    .prologue
    const/16 v5, 0xa1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 128
    if-eqz p0, :cond_0

    array-length v2, p0

    const/4 v3, 0x2

    if-ge v2, v3, :cond_2

    :cond_0
    move v0, v1

    .line 134
    :cond_1
    :goto_0
    return v0

    .line 130
    :cond_2
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    .line 131
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    .line 132
    if-lt v2, v5, :cond_4

    const/16 v4, 0xf9

    if-gt v2, v4, :cond_4

    const/16 v2, 0x40

    if-lt v3, v2, :cond_3

    const/16 v2, 0x7e

    if-le v3, v2, :cond_1

    :cond_3
    if-lt v3, v5, :cond_4

    const/16 v2, 0xfe

    if-le v3, v2, :cond_1

    :cond_4
    move v0, v1

    .line 134
    goto :goto_0
.end method

.method public static g([B)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 149
    if-eqz p0, :cond_0

    array-length v2, p0

    const/4 v3, 0x3

    if-ge v2, v3, :cond_2

    :cond_0
    move v0, v1

    .line 156
    :cond_1
    :goto_0
    return v0

    .line 151
    :cond_2
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    .line 152
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    .line 153
    const/4 v4, 0x2

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    .line 154
    const/16 v5, 0xef

    if-ne v2, v5, :cond_3

    const/16 v2, 0xbb

    if-ne v3, v2, :cond_3

    const/16 v2, 0xbf

    if-eq v4, v2, :cond_1

    :cond_3
    move v0, v1

    .line 156
    goto :goto_0
.end method

.method public static h([B)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/16 v5, 0xbf

    const/16 v4, 0x80

    .line 160
    .line 161
    if-nez p0, :cond_7

    .line 225
    :cond_0
    :goto_0
    return v1

    .line 165
    :cond_1
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    .line 166
    const/16 v3, 0x7f

    if-gt v2, v3, :cond_2

    .line 167
    add-int/lit8 v0, v0, 0x1

    .line 164
    :goto_1
    array-length v2, p0

    if-lt v0, v2, :cond_1

    .line 225
    const/4 v1, 0x1

    goto :goto_0

    .line 171
    :cond_2
    const/16 v3, 0xdf

    if-gt v2, v3, :cond_3

    const/16 v3, 0xc0

    if-lt v2, v3, :cond_3

    .line 172
    add-int/lit8 v2, v0, 0x1

    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 174
    add-int/lit8 v2, v0, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    if-gt v2, v5, :cond_0

    add-int/lit8 v2, v0, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    if-lt v2, v4, :cond_0

    .line 175
    add-int/lit8 v0, v0, 0x2

    .line 176
    goto :goto_1

    .line 179
    :cond_3
    const/16 v3, 0xef

    if-gt v2, v3, :cond_4

    const/16 v3, 0xe0

    if-lt v2, v3, :cond_4

    .line 180
    add-int/lit8 v2, v0, 0x2

    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 182
    add-int/lit8 v2, v0, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    if-gt v2, v5, :cond_0

    add-int/lit8 v2, v0, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    if-lt v2, v4, :cond_0

    add-int/lit8 v2, v0, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    if-gt v2, v5, :cond_0

    .line 183
    add-int/lit8 v2, v0, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    if-lt v2, v4, :cond_0

    .line 184
    add-int/lit8 v0, v0, 0x3

    .line 185
    goto :goto_1

    .line 189
    :cond_4
    const/16 v3, 0xf7

    if-gt v2, v3, :cond_5

    const/16 v3, 0xf0

    if-lt v2, v3, :cond_5

    .line 190
    add-int/lit8 v2, v0, 0x3

    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 192
    add-int/lit8 v2, v0, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    if-gt v2, v5, :cond_0

    add-int/lit8 v2, v0, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    if-lt v2, v4, :cond_0

    add-int/lit8 v2, v0, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    if-gt v2, v5, :cond_0

    .line 193
    add-int/lit8 v2, v0, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    if-lt v2, v4, :cond_0

    add-int/lit8 v2, v0, 0x3

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    if-gt v2, v5, :cond_0

    .line 194
    add-int/lit8 v2, v0, 0x3

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    if-lt v2, v4, :cond_0

    .line 195
    add-int/lit8 v0, v0, 0x4

    .line 196
    goto/16 :goto_1

    .line 199
    :cond_5
    const/16 v3, 0xfb

    if-gt v2, v3, :cond_6

    const/16 v3, 0xf8

    if-lt v2, v3, :cond_6

    .line 200
    add-int/lit8 v2, v0, 0x4

    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 202
    add-int/lit8 v2, v0, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    if-gt v2, v5, :cond_0

    add-int/lit8 v2, v0, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    if-lt v2, v4, :cond_0

    add-int/lit8 v2, v0, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    if-gt v2, v5, :cond_0

    .line 203
    add-int/lit8 v2, v0, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    if-lt v2, v4, :cond_0

    add-int/lit8 v2, v0, 0x3

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    if-gt v2, v5, :cond_0

    .line 204
    add-int/lit8 v2, v0, 0x3

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    if-lt v2, v4, :cond_0

    add-int/lit8 v2, v0, 0x4

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    if-gt v2, v5, :cond_0

    .line 205
    add-int/lit8 v2, v0, 0x4

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    if-lt v2, v4, :cond_0

    .line 206
    add-int/lit8 v0, v0, 0x5

    .line 207
    goto/16 :goto_1

    .line 210
    :cond_6
    const/16 v3, 0xfd

    if-gt v2, v3, :cond_0

    const/16 v3, 0xfc

    if-lt v2, v3, :cond_0

    .line 211
    add-int/lit8 v2, v0, 0x5

    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 213
    add-int/lit8 v2, v0, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    if-gt v2, v5, :cond_0

    add-int/lit8 v2, v0, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    if-lt v2, v4, :cond_0

    add-int/lit8 v2, v0, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    if-gt v2, v5, :cond_0

    .line 214
    add-int/lit8 v2, v0, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    if-lt v2, v4, :cond_0

    add-int/lit8 v2, v0, 0x3

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    if-gt v2, v5, :cond_0

    .line 215
    add-int/lit8 v2, v0, 0x3

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    if-lt v2, v4, :cond_0

    add-int/lit8 v2, v0, 0x4

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    if-gt v2, v5, :cond_0

    .line 216
    add-int/lit8 v2, v0, 0x4

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    if-lt v2, v4, :cond_0

    add-int/lit8 v2, v0, 0x5

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    if-gt v2, v5, :cond_0

    .line 217
    add-int/lit8 v2, v0, 0x5

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    if-lt v2, v4, :cond_0

    .line 218
    add-int/lit8 v0, v0, 0x6

    .line 219
    goto/16 :goto_1

    :cond_7
    move v0, v1

    goto/16 :goto_1
.end method

.method public static i([B)Z
    .locals 6

    .prologue
    const/16 v5, 0xfe

    const/4 v1, 0x0

    .line 236
    .line 237
    if-nez p0, :cond_5

    .line 255
    :cond_0
    :goto_0
    return v1

    .line 241
    :cond_1
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    .line 242
    const/16 v3, 0x7f

    if-gt v2, v3, :cond_2

    .line 243
    add-int/lit8 v0, v0, 0x1

    .line 240
    :goto_1
    array-length v2, p0

    if-lt v0, v2, :cond_1

    .line 255
    const/4 v1, 0x1

    goto :goto_0

    .line 246
    :cond_2
    add-int/lit8 v3, v0, 0x1

    array-length v4, p0

    if-ge v3, v4, :cond_0

    .line 248
    add-int/lit8 v3, v0, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    .line 249
    const/16 v4, 0x81

    if-lt v2, v4, :cond_0

    if-gt v2, v5, :cond_0

    const/16 v2, 0x40

    if-lt v3, v2, :cond_3

    const/16 v2, 0x7e

    if-le v3, v2, :cond_4

    :cond_3
    const/16 v2, 0x80

    if-lt v3, v2, :cond_0

    if-gt v3, v5, :cond_0

    .line 250
    :cond_4
    add-int/lit8 v0, v0, 0x2

    .line 251
    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_1
.end method
