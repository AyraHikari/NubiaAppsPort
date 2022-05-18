.class public Lcom/hpplay/sdk/source/d/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/hpplay/sdk/source/d/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/hpplay/sdk/source/d/f;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/d/f;-><init>()V

    sput-object v0, Lcom/hpplay/sdk/source/d/h;->a:Lcom/hpplay/sdk/source/d/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/hpplay/sdk/source/d/h;->a:Lcom/hpplay/sdk/source/d/f;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/d/f;->a()V

    .line 22
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/hpplay/sdk/source/api/IUploadLogQueryListener;)V
    .locals 1

    .prologue
    .line 143
    sget-object v0, Lcom/hpplay/sdk/source/d/h;->a:Lcom/hpplay/sdk/source/d/f;

    invoke-virtual {v0, p0, p1}, Lcom/hpplay/sdk/source/d/f;->a(Landroid/content/Context;Lcom/hpplay/sdk/source/api/IUploadLogQueryListener;)V

    .line 144
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hpplay/common/log/UploadLogCallback;)V
    .locals 8

    .prologue
    .line 139
    sget-object v0, Lcom/hpplay/sdk/source/d/h;->a:Lcom/hpplay/sdk/source/d/f;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/hpplay/sdk/source/d/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hpplay/common/log/UploadLogCallback;)V

    .line 140
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 29
    invoke-static {p0, p1}, Lcom/hpplay/common/utils/LeLog;->v(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 30
    sget-object v1, Lcom/hpplay/sdk/source/d/h;->a:Lcom/hpplay/sdk/source/d/f;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Lcom/hpplay/sdk/source/d/f;->onCastLog(ILjava/lang/String;)V

    .line 31
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 39
    invoke-static {p0, p1, p2}, Lcom/hpplay/common/utils/LeLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 40
    sget-object v1, Lcom/hpplay/sdk/source/d/h;->a:Lcom/hpplay/sdk/source/d/f;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Lcom/hpplay/sdk/source/d/f;->onCastLog(ILjava/lang/String;)V

    .line 41
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 99
    invoke-static {p0, p1}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 100
    sget-object v1, Lcom/hpplay/sdk/source/d/h;->a:Lcom/hpplay/sdk/source/d/f;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Lcom/hpplay/sdk/source/d/f;->onCastLog(ILjava/lang/String;)V

    .line 101
    return-void
.end method

.method public static b()V
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/hpplay/sdk/source/d/h;->a:Lcom/hpplay/sdk/source/d/f;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/d/f;->b()V

    .line 26
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 34
    invoke-static {p0, p1}, Lcom/hpplay/common/utils/LeLog;->V(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    sget-object v1, Lcom/hpplay/sdk/source/d/h;->a:Lcom/hpplay/sdk/source/d/f;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Lcom/hpplay/sdk/source/d/f;->onCastLog(ILjava/lang/String;)V

    .line 36
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 44
    invoke-static {p0, p1, p2}, Lcom/hpplay/common/utils/LeLog;->V(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 45
    sget-object v1, Lcom/hpplay/sdk/source/d/h;->a:Lcom/hpplay/sdk/source/d/f;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Lcom/hpplay/sdk/source/d/f;->onCastLog(ILjava/lang/String;)V

    .line 46
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 104
    invoke-static {p0, p1}, Lcom/hpplay/common/utils/LeLog;->W(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 105
    sget-object v1, Lcom/hpplay/sdk/source/d/h;->a:Lcom/hpplay/sdk/source/d/f;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Lcom/hpplay/sdk/source/d/f;->onCastLog(ILjava/lang/String;)V

    .line 106
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 49
    invoke-static {p0, p1}, Lcom/hpplay/common/utils/LeLog;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    sget-object v1, Lcom/hpplay/sdk/source/d/h;->a:Lcom/hpplay/sdk/source/d/f;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Lcom/hpplay/sdk/source/d/f;->onCastLog(ILjava/lang/String;)V

    .line 51
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 59
    invoke-static {p0, p1, p2}, Lcom/hpplay/common/utils/LeLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 60
    sget-object v1, Lcom/hpplay/sdk/source/d/h;->a:Lcom/hpplay/sdk/source/d/f;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Lcom/hpplay/sdk/source/d/f;->onCastLog(ILjava/lang/String;)V

    .line 61
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 54
    invoke-static {p0, p1}, Lcom/hpplay/common/utils/LeLog;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    sget-object v1, Lcom/hpplay/sdk/source/d/h;->a:Lcom/hpplay/sdk/source/d/f;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Lcom/hpplay/sdk/source/d/f;->onCastLog(ILjava/lang/String;)V

    .line 56
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 64
    invoke-static {p0, p1, p2}, Lcom/hpplay/common/utils/LeLog;->D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 65
    sget-object v1, Lcom/hpplay/sdk/source/d/h;->a:Lcom/hpplay/sdk/source/d/f;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Lcom/hpplay/sdk/source/d/f;->onCastLog(ILjava/lang/String;)V

    .line 66
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 69
    invoke-static {p0, p1}, Lcom/hpplay/common/utils/LeLog;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    sget-object v1, Lcom/hpplay/sdk/source/d/h;->a:Lcom/hpplay/sdk/source/d/f;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Lcom/hpplay/sdk/source/d/f;->onCastLog(ILjava/lang/String;)V

    .line 71
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 79
    invoke-static {p0, p1, p2}, Lcom/hpplay/common/utils/LeLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 80
    sget-object v1, Lcom/hpplay/sdk/source/d/h;->a:Lcom/hpplay/sdk/source/d/f;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Lcom/hpplay/sdk/source/d/f;->onCastLog(ILjava/lang/String;)V

    .line 81
    return-void
.end method

.method public static f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 74
    invoke-static {p0, p1}, Lcom/hpplay/common/utils/LeLog;->I(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    sget-object v1, Lcom/hpplay/sdk/source/d/h;->a:Lcom/hpplay/sdk/source/d/f;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Lcom/hpplay/sdk/source/d/f;->onCastLog(ILjava/lang/String;)V

    .line 76
    return-void
.end method

.method public static f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 84
    invoke-static {p0, p1, p2}, Lcom/hpplay/common/utils/LeLog;->I(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 85
    sget-object v1, Lcom/hpplay/sdk/source/d/h;->a:Lcom/hpplay/sdk/source/d/f;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Lcom/hpplay/sdk/source/d/f;->onCastLog(ILjava/lang/String;)V

    .line 86
    return-void
.end method

.method public static g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 89
    invoke-static {p0, p1}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    sget-object v1, Lcom/hpplay/sdk/source/d/h;->a:Lcom/hpplay/sdk/source/d/f;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Lcom/hpplay/sdk/source/d/f;->onCastLog(ILjava/lang/String;)V

    .line 91
    return-void
.end method

.method public static g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 109
    invoke-static {p0, p1, p2}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 110
    sget-object v1, Lcom/hpplay/sdk/source/d/h;->a:Lcom/hpplay/sdk/source/d/f;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Lcom/hpplay/sdk/source/d/f;->onCastLog(ILjava/lang/String;)V

    .line 111
    return-void
.end method

.method public static h(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 94
    invoke-static {p0, p1}, Lcom/hpplay/common/utils/LeLog;->W(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    sget-object v1, Lcom/hpplay/sdk/source/d/h;->a:Lcom/hpplay/sdk/source/d/f;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Lcom/hpplay/sdk/source/d/f;->onCastLog(ILjava/lang/String;)V

    .line 96
    return-void
.end method

.method public static h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 114
    invoke-static {p0, p1, p2}, Lcom/hpplay/common/utils/LeLog;->W(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 115
    sget-object v1, Lcom/hpplay/sdk/source/d/h;->a:Lcom/hpplay/sdk/source/d/f;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Lcom/hpplay/sdk/source/d/f;->onCastLog(ILjava/lang/String;)V

    .line 116
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 119
    invoke-static {p0, p1}, Lcom/hpplay/common/utils/LeLog;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    sget-object v1, Lcom/hpplay/sdk/source/d/h;->a:Lcom/hpplay/sdk/source/d/f;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v0}, Lcom/hpplay/sdk/source/d/f;->onCastLog(ILjava/lang/String;)V

    .line 121
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 129
    invoke-static {p0, p1, p2}, Lcom/hpplay/common/utils/LeLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 130
    sget-object v1, Lcom/hpplay/sdk/source/d/h;->a:Lcom/hpplay/sdk/source/d/f;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v0}, Lcom/hpplay/sdk/source/d/f;->onCastLog(ILjava/lang/String;)V

    .line 131
    return-void
.end method

.method public static j(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 124
    invoke-static {p0, p1}, Lcom/hpplay/common/utils/LeLog;->E(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 125
    sget-object v1, Lcom/hpplay/sdk/source/d/h;->a:Lcom/hpplay/sdk/source/d/f;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v0}, Lcom/hpplay/sdk/source/d/f;->onCastLog(ILjava/lang/String;)V

    .line 126
    return-void
.end method

.method public static j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 134
    invoke-static {p0, p1, p2}, Lcom/hpplay/common/utils/LeLog;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 135
    sget-object v1, Lcom/hpplay/sdk/source/d/h;->a:Lcom/hpplay/sdk/source/d/f;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v0}, Lcom/hpplay/sdk/source/d/f;->onCastLog(ILjava/lang/String;)V

    .line 136
    return-void
.end method
