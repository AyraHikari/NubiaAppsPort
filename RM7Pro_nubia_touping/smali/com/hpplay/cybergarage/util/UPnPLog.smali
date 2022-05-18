.class public Lcom/hpplay/cybergarage/util/UPnPLog;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LEBO_TAG:Ljava/lang/String; = "UPnP"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static D(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 41
    invoke-static {p0, p1}, Lcom/hpplay/cybergarage/util/UPnPLog;->formatMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    const-string v1, "UPnP"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    return-void
.end method

.method public static D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 51
    invoke-static {p0, p1}, Lcom/hpplay/cybergarage/util/UPnPLog;->formatMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    const-string v1, "UPnP"

    invoke-static {v1, v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 53
    return-void
.end method

.method public static E(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 111
    invoke-static {p0, p1}, Lcom/hpplay/cybergarage/util/UPnPLog;->formatMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    const-string v1, "UPnP"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return-void
.end method

.method public static E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 121
    invoke-static {p0, p1}, Lcom/hpplay/cybergarage/util/UPnPLog;->formatMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    const-string v1, "UPnP"

    invoke-static {v1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 123
    return-void
.end method

.method public static I(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 61
    invoke-static {p0, p1}, Lcom/hpplay/cybergarage/util/UPnPLog;->formatMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    const-string v1, "UPnP"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return-void
.end method

.method public static I(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 71
    invoke-static {p0, p1}, Lcom/hpplay/cybergarage/util/UPnPLog;->formatMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    const-string v1, "UPnP"

    invoke-static {v1, v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    return-void
.end method

.method public static V(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 21
    invoke-static {p0, p1}, Lcom/hpplay/cybergarage/util/UPnPLog;->formatMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 22
    const-string v1, "UPnP"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    return-void
.end method

.method public static V(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 31
    invoke-static {p0, p1}, Lcom/hpplay/cybergarage/util/UPnPLog;->formatMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 32
    const-string v1, "UPnP"

    invoke-static {v1, v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 33
    return-void
.end method

.method public static W(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 81
    invoke-static {p0, p1}, Lcom/hpplay/cybergarage/util/UPnPLog;->formatMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    const-string v1, "UPnP"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return-void
.end method

.method public static W(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 91
    invoke-static {p0, p1}, Lcom/hpplay/cybergarage/util/UPnPLog;->formatMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    const-string v1, "UPnP"

    invoke-static {v1, v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    return-void
.end method

.method public static W(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/hpplay/cybergarage/util/UPnPLog;->formatMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    const-string v1, "UPnP"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 46
    invoke-static {p0, p1}, Lcom/hpplay/cybergarage/util/UPnPLog;->formatMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    const-string v1, "UPnP"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 56
    invoke-static {p0, p1}, Lcom/hpplay/cybergarage/util/UPnPLog;->formatMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    const-string v1, "UPnP"

    invoke-static {v1, v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 116
    invoke-static {p0, p1}, Lcom/hpplay/cybergarage/util/UPnPLog;->formatMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    const-string v1, "UPnP"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 126
    invoke-static {p0, p1}, Lcom/hpplay/cybergarage/util/UPnPLog;->formatMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    const-string v1, "UPnP"

    invoke-static {v1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 128
    return-void
.end method

.method private static formatMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 131
    if-nez p0, :cond_0

    .line 132
    const-string p0, ""

    .line 134
    :cond_0
    if-nez p1, :cond_1

    .line 135
    const-string p1, ""

    .line 137
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

    .line 138
    return-object v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 66
    invoke-static {p0, p1}, Lcom/hpplay/cybergarage/util/UPnPLog;->formatMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    const-string v1, "UPnP"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 76
    invoke-static {p0, p1}, Lcom/hpplay/cybergarage/util/UPnPLog;->formatMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    const-string v1, "UPnP"

    invoke-static {v1, v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 26
    invoke-static {p0, p1}, Lcom/hpplay/cybergarage/util/UPnPLog;->formatMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 27
    const-string v1, "UPnP"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 36
    invoke-static {p0, p1}, Lcom/hpplay/cybergarage/util/UPnPLog;->formatMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    const-string v1, "UPnP"

    invoke-static {v1, v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 38
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 86
    invoke-static {p0, p1}, Lcom/hpplay/cybergarage/util/UPnPLog;->formatMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    const-string v1, "UPnP"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 96
    invoke-static {p0, p1}, Lcom/hpplay/cybergarage/util/UPnPLog;->formatMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    const-string v1, "UPnP"

    invoke-static {v1, v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 106
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/hpplay/cybergarage/util/UPnPLog;->formatMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 107
    const-string v1, "UPnP"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 108
    return-void
.end method
