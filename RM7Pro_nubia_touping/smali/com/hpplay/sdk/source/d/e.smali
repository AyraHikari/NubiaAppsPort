.class public Lcom/hpplay/sdk/source/d/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "Feature"

.field private static final b:I = 0x0

.field private static final c:I = 0x1

.field private static final d:I = 0x2

.field private static final e:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Z
    .locals 2

    .prologue
    .line 48
    const-string v0, "nubia"

    const-string v1, "vivo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "nubia"

    const-string v1, "vivo2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Z)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 37
    if-eqz p0, :cond_1

    .line 42
    :cond_0
    :goto_0
    return v0

    .line 40
    :cond_1
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v1

    iget-object v1, v1, Lcom/hpplay/sdk/source/common/store/Session;->tid:Ljava/lang/String;

    .line 41
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v2

    iget-object v2, v2, Lcom/hpplay/sdk/source/common/store/Session;->token:Ljava/lang/String;

    .line 42
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()Z
    .locals 2

    .prologue
    .line 52
    const-string v0, "nubia"

    const-string v1, "smartis"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static c()Z
    .locals 2

    .prologue
    .line 56
    const-string v0, "nubia"

    const-string v1, "mui"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static d()Z
    .locals 2

    .prologue
    .line 60
    const-string v0, "nubia"

    const-string v1, "oppo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static e()Z
    .locals 2

    .prologue
    .line 64
    const-string v0, "nubia"

    const-string v1, "leboapk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "nubia"

    const-string v1, "lecast"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static f()Z
    .locals 2

    .prologue
    .line 68
    const-string v0, "nubia"

    const-string v1, "nubia"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static g()Z
    .locals 2

    .prologue
    .line 72
    const-string v0, "nubia"

    const-string v1, "xunlei"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static h()Z
    .locals 2

    .prologue
    .line 76
    const-string v0, "nubia"

    const-string v1, "vmos"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static i()Z
    .locals 2

    .prologue
    .line 80
    const-string v0, "nubia"

    const-string v1, "kangka"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static j()Z
    .locals 2

    .prologue
    .line 85
    const-string v0, "nubia"

    const-string v1, "bilibili"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static k()Z
    .locals 2

    .prologue
    .line 90
    const-string v0, "nubia"

    const-string v1, "tcl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static l()Z
    .locals 2

    .prologue
    .line 94
    const-string v0, "nubia"

    const-string v1, "hisen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static m()Z
    .locals 2

    .prologue
    .line 98
    const-string v0, "nubia"

    const-string v1, "ylx"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static n()Z
    .locals 2

    .prologue
    .line 102
    const-string v0, "nubia"

    const-string v1, "zte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static o()Z
    .locals 2

    .prologue
    .line 106
    const-string v0, "nubia"

    const-string v1, "huawei"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static p()Z
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public static q()Z
    .locals 4

    .prologue
    .line 120
    const/4 v0, 0x0

    .line 121
    const-string v1, "Feature"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isConferenceSDK: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    return v0
.end method

.method public static r()Z
    .locals 2

    .prologue
    .line 127
    const-string v0, "nubia"

    const-string v1, "hwpad"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static s()Z
    .locals 1

    .prologue
    .line 132
    invoke-static {}, Lcom/hpplay/sdk/source/d/e;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    invoke-static {}, Lcom/hpplay/sdk/source/d/e;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    invoke-static {}, Lcom/hpplay/sdk/source/d/e;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    invoke-static {}, Lcom/hpplay/sdk/source/d/e;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    invoke-static {}, Lcom/hpplay/sdk/source/d/e;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    invoke-static {}, Lcom/hpplay/sdk/source/d/e;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    invoke-static {}, Lcom/hpplay/sdk/source/d/e;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    invoke-static {}, Lcom/hpplay/sdk/source/d/e;->o()Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    invoke-static {}, Lcom/hpplay/sdk/source/d/e;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 132
    :goto_0
    return v0

    .line 140
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static t()Z
    .locals 1

    .prologue
    .line 144
    invoke-static {}, Lcom/hpplay/sdk/source/d/e;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    invoke-static {}, Lcom/hpplay/sdk/source/d/e;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    invoke-static {}, Lcom/hpplay/sdk/source/d/e;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    invoke-static {}, Lcom/hpplay/sdk/source/d/e;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    invoke-static {}, Lcom/hpplay/sdk/source/d/e;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    invoke-static {}, Lcom/hpplay/sdk/source/d/e;->o()Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    invoke-static {}, Lcom/hpplay/sdk/source/d/e;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 144
    :goto_0
    return v0

    .line 150
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
