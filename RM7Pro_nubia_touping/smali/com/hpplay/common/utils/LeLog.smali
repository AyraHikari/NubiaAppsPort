.class public Lcom/hpplay/common/utils/LeLog;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LEBO_TAG:Ljava/lang/String; = "hpplay-java"

.field private static final LOGD:I = 0x14

.field private static final LOGE:I = 0x32

.field private static final LOGI:I = 0x1e

.field private static final LOGV:I = 0xa

.field private static final LOGW:I = 0x28

.field private static final LOG_DISABLE:I = 0x64

.field private static final LOG_ENABLE:I = 0x0

.field private static final PERFERMANCE:Ljava/lang/String; = "hpplay-java:perfermance"

.field private static sLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/16 v0, 0x1e

    sput v0, Lcom/hpplay/common/utils/LeLog;->sLevel:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 101
    sget v0, Lcom/hpplay/common/utils/LeLog;->sLevel:I

    const/16 v1, 0x14

    if-le v0, v1, :cond_0

    .line 102
    const-string v0, ""

    .line 106
    :goto_0
    return-object v0

    .line 104
    :cond_0
    invoke-static {p0, p1}, Lcom/hpplay/common/utils/LeLog;->formatMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    const-string v1, "hpplay-java:perfermance"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 119
    sget v0, Lcom/hpplay/common/utils/LeLog;->sLevel:I

    const/16 v1, 0x14

    if-le v0, v1, :cond_0

    .line 120
    const-string v0, ""

    .line 124
    :goto_0
    return-object v0

    .line 122
    :cond_0
    invoke-static {p0, p1}, Lcom/hpplay/common/utils/LeLog;->formatMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    const-string v1, "hpplay-java:perfermance"

    invoke-static {v1, v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static E(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 227
    sget v0, Lcom/hpplay/common/utils/LeLog;->sLevel:I

    const/16 v1, 0x32

    if-le v0, v1, :cond_0

    .line 228
    const-string v0, ""

    .line 232
    :goto_0
    return-object v0

    .line 230
    :cond_0
    invoke-static {p0, p1}, Lcom/hpplay/common/utils/LeLog;->formatMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 231
    const-string v1, "hpplay-java:perfermance"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 245
    sget v0, Lcom/hpplay/common/utils/LeLog;->sLevel:I

    const/16 v1, 0x32

    if-le v0, v1, :cond_0

    .line 246
    const-string v0, ""

    .line 250
    :goto_0
    return-object v0

    .line 248
    :cond_0
    invoke-static {p0, p1}, Lcom/hpplay/common/utils/LeLog;->formatMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 249
    const-string v1, "hpplay-java:perfermance"

    invoke-static {v1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static I(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 137
    sget v0, Lcom/hpplay/common/utils/LeLog;->sLevel:I

    const/16 v1, 0x1e

    if-le v0, v1, :cond_0

    .line 138
    const-string v0, ""

    .line 142
    :goto_0
    return-object v0

    .line 140
    :cond_0
    invoke-static {p0, p1}, Lcom/hpplay/common/utils/LeLog;->formatMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 141
    const-string v1, "hpplay-java:perfermance"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static I(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 155
    sget v0, Lcom/hpplay/common/utils/LeLog;->sLevel:I

    const/16 v1, 0x1e

    if-le v0, v1, :cond_0

    .line 156
    const-string v0, ""

    .line 160
    :goto_0
    return-object v0

    .line 158
    :cond_0
    invoke-static {p0, p1}, Lcom/hpplay/common/utils/LeLog;->formatMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 159
    const-string v1, "hpplay-java:perfermance"

    invoke-static {v1, v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static V(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    sget v0, Lcom/hpplay/common/utils/LeLog;->sLevel:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 65
    const-string v0, ""

    .line 69
    :goto_0
    return-object v0

    .line 67
    :cond_0
    invoke-static {p0, p1}, Lcom/hpplay/common/utils/LeLog;->formatMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    const-string v1, "hpplay-java:perfermance"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static V(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 83
    sget v0, Lcom/hpplay/common/utils/LeLog;->sLevel:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 84
    const-string v0, ""

    .line 88
    :goto_0
    return-object v0

    .line 86
    :cond_0
    invoke-static {p0, p1}, Lcom/hpplay/common/utils/LeLog;->formatMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    const-string v1, "hpplay-java:perfermance"

    invoke-static {v1, v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static W(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 173
    sget v0, Lcom/hpplay/common/utils/LeLog;->sLevel:I

    const/16 v1, 0x28

    if-le v0, v1, :cond_0

    .line 174
    const-string v0, ""

    .line 178
    :goto_0
    return-object v0

    .line 176
    :cond_0
    invoke-static {p0, p1}, Lcom/hpplay/common/utils/LeLog;->formatMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    const-string v1, "hpplay-java:perfermance"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static W(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 191
    sget v0, Lcom/hpplay/common/utils/LeLog;->sLevel:I

    const/16 v1, 0x28

    if-le v0, v1, :cond_0

    .line 192
    const-string v0, ""

    .line 196
    :goto_0
    return-object v0

    .line 194
    :cond_0
    invoke-static {p0, p1}, Lcom/hpplay/common/utils/LeLog;->formatMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 195
    const-string v1, "hpplay-java:perfermance"

    invoke-static {v1, v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static W(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 209
    sget v0, Lcom/hpplay/common/utils/LeLog;->sLevel:I

    const/16 v1, 0x28

    if-le v0, v1, :cond_0

    .line 210
    const-string v0, ""

    .line 214
    :goto_0
    return-object v0

    .line 212
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/hpplay/common/utils/LeLog;->formatMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 213
    const-string v1, "hpplay-java:perfermance"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 110
    sget v0, Lcom/hpplay/common/utils/LeLog;->sLevel:I

    const/16 v1, 0x14

    if-le v0, v1, :cond_0

    .line 111
    const-string v0, ""

    .line 115
    :goto_0
    return-object v0

    .line 113
    :cond_0
    invoke-static {p0, p1}, Lcom/hpplay/common/utils/LeLog;->formatMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    const-string v1, "hpplay-java"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 128
    sget v0, Lcom/hpplay/common/utils/LeLog;->sLevel:I

    const/16 v1, 0x14

    if-le v0, v1, :cond_0

    .line 129
    const-string v0, ""

    .line 133
    :goto_0
    return-object v0

    .line 131
    :cond_0
    invoke-static {p0, p1}, Lcom/hpplay/common/utils/LeLog;->formatMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    const-string v1, "hpplay-java"

    invoke-static {v1, v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static disableAllTrace()V
    .locals 1

    .prologue
    .line 53
    const/16 v0, 0x64

    sput v0, Lcom/hpplay/common/utils/LeLog;->sLevel:I

    .line 54
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 236
    sget v0, Lcom/hpplay/common/utils/LeLog;->sLevel:I

    const/16 v1, 0x32

    if-le v0, v1, :cond_0

    .line 237
    const-string v0, ""

    .line 241
    :goto_0
    return-object v0

    .line 239
    :cond_0
    invoke-static {p0, p1}, Lcom/hpplay/common/utils/LeLog;->formatMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 240
    const-string v1, "hpplay-java"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 254
    sget v0, Lcom/hpplay/common/utils/LeLog;->sLevel:I

    const/16 v1, 0x32

    if-le v0, v1, :cond_0

    .line 255
    const-string v0, ""

    .line 259
    :goto_0
    return-object v0

    .line 257
    :cond_0
    invoke-static {p0, p1}, Lcom/hpplay/common/utils/LeLog;->formatMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 258
    const-string v1, "hpplay-java"

    invoke-static {v1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static enableAllTrace()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    sput v0, Lcom/hpplay/common/utils/LeLog;->sLevel:I

    .line 50
    return-void
.end method

.method public static enableTrace(Z)V
    .locals 1

    .prologue
    .line 38
    if-eqz p0, :cond_0

    .line 39
    const/16 v0, 0x14

    sput v0, Lcom/hpplay/common/utils/LeLog;->sLevel:I

    .line 43
    :goto_0
    return-void

    .line 41
    :cond_0
    const/16 v0, 0x1e

    sput v0, Lcom/hpplay/common/utils/LeLog;->sLevel:I

    goto :goto_0
.end method

.method private static formatMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 263
    if-nez p0, :cond_0

    .line 264
    const-string p0, ""

    .line 266
    :cond_0
    if-nez p1, :cond_1

    .line 267
    const-string p1, ""

    .line 269
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 270
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 271
    return-object v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 146
    sget v0, Lcom/hpplay/common/utils/LeLog;->sLevel:I

    const/16 v1, 0x1e

    if-le v0, v1, :cond_0

    .line 147
    const-string v0, ""

    .line 151
    :goto_0
    return-object v0

    .line 149
    :cond_0
    invoke-static {p0, p1}, Lcom/hpplay/common/utils/LeLog;->formatMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    const-string v1, "hpplay-java"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 164
    sget v0, Lcom/hpplay/common/utils/LeLog;->sLevel:I

    const/16 v1, 0x1e

    if-le v0, v1, :cond_0

    .line 165
    const-string v0, ""

    .line 169
    :goto_0
    return-object v0

    .line 167
    :cond_0
    invoke-static {p0, p1}, Lcom/hpplay/common/utils/LeLog;->formatMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 168
    const-string v1, "hpplay-java"

    invoke-static {v1, v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 73
    sget v0, Lcom/hpplay/common/utils/LeLog;->sLevel:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 75
    const-string v0, ""

    .line 79
    :goto_0
    return-object v0

    .line 77
    :cond_0
    invoke-static {p0, p1}, Lcom/hpplay/common/utils/LeLog;->formatMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    const-string v1, "hpplay-java"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 92
    sget v0, Lcom/hpplay/common/utils/LeLog;->sLevel:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 93
    const-string v0, ""

    .line 97
    :goto_0
    return-object v0

    .line 95
    :cond_0
    invoke-static {p0, p1}, Lcom/hpplay/common/utils/LeLog;->formatMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    const-string v1, "hpplay-java"

    invoke-static {v1, v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 182
    sget v0, Lcom/hpplay/common/utils/LeLog;->sLevel:I

    const/16 v1, 0x28

    if-le v0, v1, :cond_0

    .line 183
    const-string v0, ""

    .line 187
    :goto_0
    return-object v0

    .line 185
    :cond_0
    invoke-static {p0, p1}, Lcom/hpplay/common/utils/LeLog;->formatMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 186
    const-string v1, "hpplay-java"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 200
    sget v0, Lcom/hpplay/common/utils/LeLog;->sLevel:I

    const/16 v1, 0x28

    if-le v0, v1, :cond_0

    .line 201
    const-string v0, ""

    .line 205
    :goto_0
    return-object v0

    .line 203
    :cond_0
    invoke-static {p0, p1}, Lcom/hpplay/common/utils/LeLog;->formatMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 204
    const-string v1, "hpplay-java"

    invoke-static {v1, v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 218
    sget v0, Lcom/hpplay/common/utils/LeLog;->sLevel:I

    const/16 v1, 0x28

    if-le v0, v1, :cond_0

    .line 219
    const-string v0, ""

    .line 223
    :goto_0
    return-object v0

    .line 221
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/hpplay/common/utils/LeLog;->formatMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 222
    const-string v1, "hpplay-java"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
