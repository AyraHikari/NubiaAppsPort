.class public Lcom/bluestareffects/sdk/util/BSLog;
.super Ljava/lang/Object;
.source "BSLog.java"


# static fields
.field private static final ALGORITHM_TAG_NAME:Ljava/lang/String; = "Algorithm"

.field private static final APP_WEATHER_TAG_NAME:Ljava/lang/String; = "Weather"

.field private static final CORE_TAG_NAME:Ljava/lang/String; = "Core"

.field private static final DEFAULT_TAG_NAME:Ljava/lang/String; = "Default"

.field private static final INVALID:I = -0x1

.field private static final LOG_ALL:Z = false

.field private static final LOG_DEBUG:Z = false

.field private static final LOG_ERROR:Z = true

.field private static final LOG_INFO:Z = true

.field private static final LOG_VERBOSE:Z = false

.field private static final LOG_WARNING:Z = true

.field private static final MODULE_TAG_NAME:Ljava/lang/String; = "Module"

.field private static final SHADER_TAG_NAME:Ljava/lang/String; = "Shader"

.field private static final TAG:Ljava/lang/String; = "BlueStar"

.field public static final TAG_ALGORITHM:I = 0xb

.field public static final TAG_APP_WEATHER:I = 0x17

.field public static final TAG_CORE:I = 0x1

.field private static final TAG_DEFAULT:I = 0x0

.field public static final TAG_MODULE:I = 0xc

.field public static final TAG_SHADER:I = 0xd

.field public static final TAG_TIMER:I = 0x1e

.field private static final TIMER_TAG_NAME:Ljava/lang/String; = "Timer"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(ILjava/lang/String;)I
    .locals 1
    .param p0, "tag"    # I
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 81
    const/4 v0, -0x1

    return v0
.end method

.method public static d(ILjava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "tag"    # I
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 87
    const/4 v0, -0x1

    return v0
.end method

.method public static e(ILjava/lang/String;)I
    .locals 3
    .param p0, "tag"    # I
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 116
    const-string v0, "BlueStar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/bluestareffects/sdk/util/BSLog;->getTagName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static e(ILjava/lang/String;Ljava/lang/Throwable;)I
    .locals 3
    .param p0, "tag"    # I
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 122
    const-string v0, "BlueStar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/bluestareffects/sdk/util/BSLog;->getTagName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method private static getTagName(I)Ljava/lang/String;
    .locals 2
    .param p0, "tagIndex"    # I

    .prologue
    .line 38
    sparse-switch p0, :sswitch_data_0

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UnKnown:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 41
    :sswitch_0
    const-string v0, "Default"

    goto :goto_0

    .line 44
    :sswitch_1
    const-string v0, "Core"

    goto :goto_0

    .line 47
    :sswitch_2
    const-string v0, "Module"

    goto :goto_0

    .line 50
    :sswitch_3
    const-string v0, "Shader"

    goto :goto_0

    .line 53
    :sswitch_4
    const-string v0, "Algorithm"

    goto :goto_0

    .line 56
    :sswitch_5
    const-string v0, "Weather"

    goto :goto_0

    .line 59
    :sswitch_6
    const-string v0, "Timer"

    goto :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0xb -> :sswitch_4
        0xc -> :sswitch_2
        0xd -> :sswitch_3
        0x17 -> :sswitch_5
        0x1e -> :sswitch_6
    .end sparse-switch
.end method

.method public static i(ILjava/lang/String;)I
    .locals 3
    .param p0, "tag"    # I
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 92
    const-string v0, "BlueStar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/bluestareffects/sdk/util/BSLog;->getTagName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static i(ILjava/lang/String;Ljava/lang/Throwable;)I
    .locals 3
    .param p0, "tag"    # I
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 98
    const-string v0, "BlueStar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/bluestareffects/sdk/util/BSLog;->getTagName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static v(ILjava/lang/String;)I
    .locals 1
    .param p0, "tag"    # I
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 69
    const/4 v0, -0x1

    return v0
.end method

.method public static v(ILjava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "tag"    # I
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 75
    const/4 v0, -0x1

    return v0
.end method

.method public static w(ILjava/lang/String;)I
    .locals 3
    .param p0, "tag"    # I
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 104
    const-string v0, "BlueStar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/bluestareffects/sdk/util/BSLog;->getTagName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static w(ILjava/lang/String;Ljava/lang/Throwable;)I
    .locals 3
    .param p0, "tag"    # I
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 110
    const-string v0, "BlueStar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/bluestareffects/sdk/util/BSLog;->getTagName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method
