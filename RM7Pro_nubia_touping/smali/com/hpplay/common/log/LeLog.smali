.class public Lcom/hpplay/common/log/LeLog;
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
    .line 28
    const/16 v0, 0x1e

    sput v0, Lcom/hpplay/common/log/LeLog;->sLevel:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 95
    sget v0, Lcom/hpplay/common/log/LeLog;->sLevel:I

    const/16 v1, 0x14

    if-le v0, v1, :cond_0

    .line 96
    const-string v0, ""

    .line 100
    :goto_0
    return-object v0

    .line 98
    :cond_0
    invoke-static {p0, p1}, Lcom/hpplay/common/log/LeLog;->formatMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    const-string v1, "hpplay-java:perfermance"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 113
    sget v0, Lcom/hpplay/common/log/LeLog;->sLevel:I

    const/16 v1, 0x14

    if-le v0, v1, :cond_0

    .line 114
    const-string v0, ""

    .line 118
    :goto_0
    return-object v0

    .line 116
    :cond_0
    invoke-static {p0, p1}, Lcom/hpplay/common/log/LeLog;->formatMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    const-string v1, "hpplay-java:perfermance"

    invoke-static {v1, v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static E(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 221
    sget v0, Lcom/hpplay/common/log/LeLog;->sLevel:I

    const/16 v1, 0x32

    if-le v0, v1, :cond_0

    .line 222
    const-string v0, ""

    .line 226
    :goto_0
    return-object v0

    .line 224
    :cond_0
    invoke-static {p0, p1}, Lcom/hpplay/common/log/LeLog;->formatMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 225
    const-string v1, "hpplay-java:perfermance"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 239
    sget v0, Lcom/hpplay/common/log/LeLog;->sLevel:I

    const/16 v1, 0x32

    if-le v0, v1, :cond_0

    .line 240
    const-string v0, ""

    .line 244
    :goto_0
    return-object v0

    .line 242
    :cond_0
    invoke-static {p0, p1}, Lcom/hpplay/common/log/LeLog;->formatMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 243
    const-string v1, "hpplay-java:perfermance"

    invoke-static {v1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static I(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 131
    sget v0, Lcom/hpplay/common/log/LeLog;->sLevel:I

    const/16 v1, 0x1e

    if-le v0, v1, :cond_0

    .line 132
    const-string v0, ""

    .line 136
    :goto_0
    return-object v0

    .line 134
    :cond_0
    invoke-static {p0, p1}, Lcom/hpplay/common/log/LeLog;->formatMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 135
    const-string v1, "hpplay-java:perfermance"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static I(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 149
    sget v0, Lcom/hpplay/common/log/LeLog;->sLevel:I

    const/16 v1, 0x1e

    if-le v0, v1, :cond_0

    .line 150
    const-string v0, ""

    .line 154
    :goto_0
    return-object v0

    .line 152
    :cond_0
    invoke-static {p0, p1}, Lcom/hpplay/common/log/LeLog;->formatMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 153
    const-string v1, "hpplay-java:perfermance"

    invoke-static {v1, v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static V(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 57
    sget v0, Lcom/hpplay/common/log/LeLog;->sLevel:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 59
    const-string v0, ""

    .line 63
    :goto_0
    return-object v0

    .line 61
    :cond_0
    invoke-static {p0, p1}, Lcom/hpplay/common/log/LeLog;->formatMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    const-string v1, "hpplay-java:perfermance"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static V(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 77
    sget v0, Lcom/hpplay/common/log/LeLog;->sLevel:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 78
    const-string v0, ""

    .line 82
    :goto_0
    return-object v0

    .line 80
    :cond_0
    invoke-static {p0, p1}, Lcom/hpplay/common/log/LeLog;->formatMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    const-string v1, "hpplay-java:perfermance"

    invoke-static {v1, v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static W(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 167
    sget v0, Lcom/hpplay/common/log/LeLog;->sLevel:I

    const/16 v1, 0x28

    if-le v0, v1, :cond_0

    .line 168
    const-string v0, ""

    .line 172
    :goto_0
    return-object v0

    .line 170
    :cond_0
    invoke-static {p0, p1}, Lcom/hpplay/common/log/LeLog;->formatMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 171
    const-string v1, "hpplay-java:perfermance"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static W(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 185
    sget v0, Lcom/hpplay/common/log/LeLog;->sLevel:I

    const/16 v1, 0x28

    if-le v0, v1, :cond_0

    .line 186
    const-string v0, ""

    .line 190
    :goto_0
    return-object v0

    .line 188
    :cond_0
    invoke-static {p0, p1}, Lcom/hpplay/common/log/LeLog;->formatMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 189
    const-string v1, "hpplay-java:perfermance"

    invoke-static {v1, v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static W(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 203
    sget v0, Lcom/hpplay/common/log/LeLog;->sLevel:I

    const/16 v1, 0x28

    if-le v0, v1, :cond_0

    .line 204
    const-string v0, ""

    .line 208
    :goto_0
    return-object v0

    .line 206
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/hpplay/common/log/LeLog;->formatMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 207
    const-string v1, "hpplay-java:perfermance"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 104
    sget v0, Lcom/hpplay/common/log/LeLog;->sLevel:I

    const/16 v1, 0x14

    if-le v0, v1, :cond_0

    .line 105
    const-string v0, ""

    .line 109
    :goto_0
    return-object v0

    .line 107
    :cond_0
    invoke-static {p0, p1}, Lcom/hpplay/common/log/LeLog;->formatMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    const-string v1, "hpplay-java"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 122
    sget v0, Lcom/hpplay/common/log/LeLog;->sLevel:I

    const/16 v1, 0x14

    if-le v0, v1, :cond_0

    .line 123
    const-string v0, ""

    .line 127
    :goto_0
    return-object v0

    .line 125
    :cond_0
    invoke-static {p0, p1}, Lcom/hpplay/common/log/LeLog;->formatMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 126
    const-string v1, "hpplay-java"

    invoke-static {v1, v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 230
    sget v0, Lcom/hpplay/common/log/LeLog;->sLevel:I

    const/16 v1, 0x32

    if-le v0, v1, :cond_0

    .line 231
    const-string v0, ""

    .line 235
    :goto_0
    return-object v0

    .line 233
    :cond_0
    invoke-static {p0, p1}, Lcom/hpplay/common/log/LeLog;->formatMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 234
    const-string v1, "hpplay-java"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 248
    sget v0, Lcom/hpplay/common/log/LeLog;->sLevel:I

    const/16 v1, 0x32

    if-le v0, v1, :cond_0

    .line 249
    const-string v0, ""

    .line 253
    :goto_0
    return-object v0

    .line 251
    :cond_0
    invoke-static {p0, p1}, Lcom/hpplay/common/log/LeLog;->formatMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 252
    const-string v1, "hpplay-java"

    invoke-static {v1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static enableAllTrace()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    sput v0, Lcom/hpplay/common/log/LeLog;->sLevel:I

    .line 48
    return-void
.end method

.method public static enableTrace(Z)V
    .locals 1

    .prologue
    .line 36
    if-eqz p0, :cond_0

    .line 37
    const/16 v0, 0x1e

    sput v0, Lcom/hpplay/common/log/LeLog;->sLevel:I

    .line 41
    :goto_0
    return-void

    .line 39
    :cond_0
    const/16 v0, 0x64

    sput v0, Lcom/hpplay/common/log/LeLog;->sLevel:I

    goto :goto_0
.end method

.method private static formatMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 257
    if-nez p0, :cond_0

    .line 258
    const-string p0, ""

    .line 260
    :cond_0
    if-nez p1, :cond_1

    .line 261
    const-string p1, ""

    .line 263
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

    .line 264
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

    .line 265
    return-object v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 140
    sget v0, Lcom/hpplay/common/log/LeLog;->sLevel:I

    const/16 v1, 0x1e

    if-le v0, v1, :cond_0

    .line 141
    const-string v0, ""

    .line 145
    :goto_0
    return-object v0

    .line 143
    :cond_0
    invoke-static {p0, p1}, Lcom/hpplay/common/log/LeLog;->formatMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 144
    const-string v1, "hpplay-java"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 158
    sget v0, Lcom/hpplay/common/log/LeLog;->sLevel:I

    const/16 v1, 0x1e

    if-le v0, v1, :cond_0

    .line 159
    const-string v0, ""

    .line 163
    :goto_0
    return-object v0

    .line 161
    :cond_0
    invoke-static {p0, p1}, Lcom/hpplay/common/log/LeLog;->formatMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 162
    const-string v1, "hpplay-java"

    invoke-static {v1, v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 67
    sget v0, Lcom/hpplay/common/log/LeLog;->sLevel:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 69
    const-string v0, ""

    .line 73
    :goto_0
    return-object v0

    .line 71
    :cond_0
    invoke-static {p0, p1}, Lcom/hpplay/common/log/LeLog;->formatMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    const-string v1, "hpplay-java"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 86
    sget v0, Lcom/hpplay/common/log/LeLog;->sLevel:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 87
    const-string v0, ""

    .line 91
    :goto_0
    return-object v0

    .line 89
    :cond_0
    invoke-static {p0, p1}, Lcom/hpplay/common/log/LeLog;->formatMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    const-string v1, "hpplay-java"

    invoke-static {v1, v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 176
    sget v0, Lcom/hpplay/common/log/LeLog;->sLevel:I

    const/16 v1, 0x28

    if-le v0, v1, :cond_0

    .line 177
    const-string v0, ""

    .line 181
    :goto_0
    return-object v0

    .line 179
    :cond_0
    invoke-static {p0, p1}, Lcom/hpplay/common/log/LeLog;->formatMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 180
    const-string v1, "hpplay-java"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 194
    sget v0, Lcom/hpplay/common/log/LeLog;->sLevel:I

    const/16 v1, 0x28

    if-le v0, v1, :cond_0

    .line 195
    const-string v0, ""

    .line 199
    :goto_0
    return-object v0

    .line 197
    :cond_0
    invoke-static {p0, p1}, Lcom/hpplay/common/log/LeLog;->formatMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 198
    const-string v1, "hpplay-java"

    invoke-static {v1, v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 212
    sget v0, Lcom/hpplay/common/log/LeLog;->sLevel:I

    const/16 v1, 0x28

    if-le v0, v1, :cond_0

    .line 213
    const-string v0, ""

    .line 217
    :goto_0
    return-object v0

    .line 215
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/hpplay/common/log/LeLog;->formatMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 216
    const-string v1, "hpplay-java"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
