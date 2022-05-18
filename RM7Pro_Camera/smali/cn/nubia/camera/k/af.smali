.class public Lcn/nubia/camera/k/af;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/k/af$a;,
        Lcn/nubia/camera/k/af$b;
    }
.end annotation


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcn/nubia/camera/ad/a;

.field private c:Lcn/nubia/camera/k/ah;

.field private d:Lcn/nubia/camera/k/af$b;

.field private e:Lcn/nubia/camera/k/af$a;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Lcn/nubia/camera/k/ab$a;

.field private j:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;)V
    .locals 3

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcn/nubia/camera/k/af;->f:Z

    .line 44
    iput-boolean v0, p0, Lcn/nubia/camera/k/af;->g:Z

    const/4 v1, 0x1

    .line 45
    iput-boolean v1, p0, Lcn/nubia/camera/k/af;->h:Z

    .line 47
    new-instance v2, Lcn/nubia/camera/k/af$1;

    invoke-direct {v2, p0}, Lcn/nubia/camera/k/af$1;-><init>(Lcn/nubia/camera/k/af;)V

    iput-object v2, p0, Lcn/nubia/camera/k/af;->i:Lcn/nubia/camera/k/ab$a;

    .line 301
    new-instance v2, Lcn/nubia/camera/k/af$3;

    invoke-direct {v2, p0}, Lcn/nubia/camera/k/af$3;-><init>(Lcn/nubia/camera/k/af;)V

    iput-object v2, p0, Lcn/nubia/camera/k/af;->j:Landroid/os/Handler;

    .line 62
    iput-object p1, p0, Lcn/nubia/camera/k/af;->b:Lcn/nubia/camera/ad/a;

    .line 63
    iput-object p2, p0, Lcn/nubia/camera/k/af;->c:Lcn/nubia/camera/k/ah;

    .line 65
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object p2

    .line 66
    sget-object v2, Lcn/nubia/camera/af/a;->ab:Lcn/nubia/camera/af/a;

    if-eq p2, v2, :cond_0

    sget-object v2, Lcn/nubia/camera/af/a;->Y:Lcn/nubia/camera/af/a;

    if-eq p2, v2, :cond_0

    sget-object v2, Lcn/nubia/camera/af/a;->aa:Lcn/nubia/camera/af/a;

    if-ne p2, v2, :cond_1

    .line 67
    :cond_0
    sget-object p2, Lcn/nubia/camera/af/a;->n:Lcn/nubia/camera/af/a;

    .line 69
    :cond_1
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcn/nubia/camera/k/af;->a(Ljava/lang/String;Lcn/nubia/camera/af/a;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/k/af;->a:Ljava/util/ArrayList;

    if-nez p1, :cond_2

    :goto_0
    move v0, v1

    goto :goto_1

    .line 70
    :cond_2
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v1, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    iput-boolean v0, p0, Lcn/nubia/camera/k/af;->h:Z

    return-void
.end method

.method private a(J)I
    .locals 7

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide/16 p1, 0x0

    .line 204
    :cond_0
    sget-wide v0, Lcn/nubia/camera/aq/f;->h:J

    div-long/2addr p1, v0

    long-to-int p1, p1

    .line 205
    iget-object p2, p0, Lcn/nubia/camera/k/af;->a:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 206
    iget-object v5, p0, Lcn/nubia/camera/k/af;->a:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v6, v1, 0x1

    if-gt v5, v6, :cond_1

    goto :goto_1

    .line 209
    :cond_1
    rem-int/lit8 v1, v1, 0x2

    if-ne v1, v4, :cond_4

    .line 210
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gt p1, v1, :cond_2

    if-nez p1, :cond_3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne p1, v1, :cond_3

    .line 211
    :cond_2
    iget-object v1, p0, Lcn/nubia/camera/k/af;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v2, v1

    .line 214
    :cond_3
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gt p1, v1, :cond_4

    goto :goto_1

    :cond_4
    move v1, v6

    goto :goto_0

    :cond_5
    :goto_1
    new-array p1, v4, [Ljava/lang/Object;

    .line 220
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "getOperationMode: 0X%x"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "SlowShutterCapture"

    invoke-static {p2, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method static synthetic a(Lcn/nubia/camera/k/af;Lcn/nubia/camera/k/af$a;)Lcn/nubia/camera/k/af$a;
    .locals 0

    .line 29
    iput-object p1, p0, Lcn/nubia/camera/k/af;->e:Lcn/nubia/camera/k/af$a;

    return-object p1
.end method

.method static synthetic a(Lcn/nubia/camera/k/af;)Lcn/nubia/camera/k/ah;
    .locals 0

    .line 29
    iget-object p0, p0, Lcn/nubia/camera/k/af;->c:Lcn/nubia/camera/k/ah;

    return-object p0
.end method

.method private a(Ljava/lang/String;Lcn/nubia/camera/af/a;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/nubia/camera/af/a;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 251
    :try_start_0
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcn/nubia/b/e;->a(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p1

    sget-object v1, Lcn/nubia/camera/k/a/a$a;->g:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Integer;

    if-eqz p1, :cond_6

    .line 252
    array-length v1, p1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_6

    .line 254
    array-length v1, p1

    const/4 v3, 0x0

    const/4 v4, 0x1

    move v5, v4

    :goto_0
    if-ge v3, v1, :cond_6

    aget-object v6, p1, v3

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x2

    if-ne v5, v4, :cond_1

    .line 256
    invoke-static {v6}, Lcn/nubia/camera/af/a;->a(I)Lcn/nubia/camera/af/a;

    move-result-object v5

    if-ne v5, p2, :cond_0

    .line 257
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v5

    :cond_0
    move v5, v7

    goto :goto_1

    :cond_1
    if-ne v5, v7, :cond_3

    if-eqz v0, :cond_2

    .line 262
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    move v5, v2

    goto :goto_1

    :cond_3
    if-ne v5, v2, :cond_5

    const/4 v7, -0x1

    if-eqz v0, :cond_4

    if-eq v6, v7, :cond_6

    .line 268
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_4
    if-ne v6, v7, :cond_5

    move v5, v4

    :cond_5
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 281
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t find CaptureConfig metadata, errMsg: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SlowShutterCapture"

    invoke-static {p2, p1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-object v0
.end method

.method private synthetic a(Lcn/nubia/b/a;)V
    .locals 1

    .line 158
    iget-object p1, p0, Lcn/nubia/camera/k/af;->c:Lcn/nubia/camera/k/ah;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcn/nubia/camera/k/ah;->a(Lcn/nubia/camera/k/ah$b;)V

    .line 159
    iget-object p1, p0, Lcn/nubia/camera/k/af;->c:Lcn/nubia/camera/k/ah;

    iget-object v0, p0, Lcn/nubia/camera/k/af;->i:Lcn/nubia/camera/k/ab$a;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/k/ah;->a(Lcn/nubia/camera/k/ab$a;)V

    return-void
.end method

.method private a(Z)V
    .locals 1

    .line 287
    iget-object v0, p0, Lcn/nubia/camera/k/af;->d:Lcn/nubia/camera/k/af$b;

    if-eqz v0, :cond_0

    .line 288
    invoke-interface {v0, p1}, Lcn/nubia/camera/k/af$b;->onTaking(Z)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/k/af;Z)Z
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcn/nubia/camera/k/af;->g:Z

    return p1
.end method

.method private b(JLandroid/util/Size;)I
    .locals 2

    .line 177
    sget-object p1, Lcn/nubia/camera/k/af$4;->a:[I

    iget-object p2, p0, Lcn/nubia/camera/k/af;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/camera/af/a;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    const v0, 0x8012

    if-eq p1, p2, :cond_3

    const/4 p2, 0x2

    const/4 v1, 0x0

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    return v1

    :cond_0
    const p1, 0x8015

    return p1

    .line 185
    :cond_1
    invoke-static {p3}, Lcn/nubia/camera/ba/b;->a(Landroid/util/Size;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 179
    :cond_3
    invoke-static {p3}, Lcn/nubia/camera/ba/b;->a(Landroid/util/Size;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    const v0, 0x800a

    :goto_1
    return v0
.end method

.method static synthetic b(Lcn/nubia/camera/k/af;)Lcn/nubia/camera/k/af$a;
    .locals 0

    .line 29
    iget-object p0, p0, Lcn/nubia/camera/k/af;->e:Lcn/nubia/camera/k/af$a;

    return-object p0
.end method

.method static synthetic b(Lcn/nubia/camera/k/af;Z)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcn/nubia/camera/k/af;->a(Z)V

    return-void
.end method

.method static synthetic c(Lcn/nubia/camera/k/af;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 29
    iget-object p0, p0, Lcn/nubia/camera/k/af;->b:Lcn/nubia/camera/ad/a;

    return-object p0
.end method

.method static synthetic d(Lcn/nubia/camera/k/af;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcn/nubia/camera/k/af;->h:Z

    return p0
.end method

.method public static synthetic lambda$7pjH8g5EGqeVyzbGwUZjsqvBkWc(Lcn/nubia/camera/k/af;Lcn/nubia/b/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/nubia/camera/k/af;->a(Lcn/nubia/b/a;)V

    return-void
.end method


# virtual methods
.method public a(JLandroid/util/Size;)I
    .locals 1

    .line 169
    iget-object v0, p0, Lcn/nubia/camera/k/af;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 170
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/camera/k/af;->b(JLandroid/util/Size;)I

    move-result p1

    return p1

    .line 172
    :cond_0
    invoke-direct {p0, p1, p2}, Lcn/nubia/camera/k/af;->a(J)I

    move-result p1

    return p1
.end method

.method public a()V
    .locals 2

    .line 75
    iget-object v0, p0, Lcn/nubia/camera/k/af;->c:Lcn/nubia/camera/k/ah;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/k/ah;->a(Lcn/nubia/camera/k/ah$b;)V

    .line 76
    iget-object v0, p0, Lcn/nubia/camera/k/af;->c:Lcn/nubia/camera/k/ah;

    iget-object v1, p0, Lcn/nubia/camera/k/af;->i:Lcn/nubia/camera/k/ab$a;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/k/ah;->b(Lcn/nubia/camera/k/ab$a;)V

    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p0, Lcn/nubia/camera/k/af;->g:Z

    .line 78
    iput-boolean v0, p0, Lcn/nubia/camera/k/af;->f:Z

    return-void
.end method

.method public a(JLcn/nubia/camera/k/af$b;Lcn/nubia/camera/k/af$a;)V
    .locals 2

    .line 82
    iget-boolean v0, p0, Lcn/nubia/camera/k/af;->f:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcn/nubia/camera/k/af;->g:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/k/af;->j:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 87
    iput-boolean v0, p0, Lcn/nubia/camera/k/af;->f:Z

    .line 88
    iput-boolean v0, p0, Lcn/nubia/camera/k/af;->g:Z

    .line 89
    iput-object p3, p0, Lcn/nubia/camera/k/af;->d:Lcn/nubia/camera/k/af$b;

    .line 90
    iput-object p4, p0, Lcn/nubia/camera/k/af;->e:Lcn/nubia/camera/k/af$a;

    .line 91
    invoke-virtual {p0}, Lcn/nubia/camera/k/af;->c()I

    move-result p3

    iget-object p4, p0, Lcn/nubia/camera/k/af;->c:Lcn/nubia/camera/k/ah;

    invoke-virtual {p4}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object p4

    invoke-virtual {p4}, Lcn/nubia/camera/k/y;->k()Lcn/nubia/camera/k/x;

    move-result-object p4

    invoke-virtual {p4}, Lcn/nubia/camera/k/x;->a()Lcn/nubia/camera/k/x$b;

    move-result-object p4

    invoke-virtual {p4}, Lcn/nubia/camera/k/x$b;->b()Landroid/util/Size;

    move-result-object p4

    invoke-virtual {p0, p1, p2, p4}, Lcn/nubia/camera/k/af;->a(JLandroid/util/Size;)I

    move-result p1

    const-string p2, "SlowShutterCapture"

    if-ne p3, p1, :cond_1

    const/4 p1, 0x0

    .line 92
    invoke-direct {p0, p1}, Lcn/nubia/camera/k/af;->a(Z)V

    const-string p1, "Directly take"

    .line 93
    invoke-static {p2, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string p1, "Wait session config..."

    .line 97
    invoke-static {p2, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object p1, p0, Lcn/nubia/camera/k/af;->c:Lcn/nubia/camera/k/ah;

    new-instance p2, Lcn/nubia/camera/k/af$2;

    invoke-direct {p2, p0}, Lcn/nubia/camera/k/af$2;-><init>(Lcn/nubia/camera/k/af;)V

    invoke-virtual {p1, p2}, Lcn/nubia/camera/k/ah;->a(Lcn/nubia/camera/k/ah$b;)V

    .line 121
    iget-object p1, p0, Lcn/nubia/camera/k/af;->c:Lcn/nubia/camera/k/ah;

    invoke-virtual {p1}, Lcn/nubia/camera/k/ah;->p()Lcn/nubia/b/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/b/a;->i()V

    .line 122
    iget-object p1, p0, Lcn/nubia/camera/k/af;->c:Lcn/nubia/camera/k/ah;

    invoke-virtual {p1}, Lcn/nubia/camera/k/ah;->p()Lcn/nubia/b/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/b/a;->a()V

    .line 123
    iget-object p1, p0, Lcn/nubia/camera/k/af;->c:Lcn/nubia/camera/k/ah;

    invoke-virtual {p1}, Lcn/nubia/camera/k/ah;->q()V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Lcn/nubia/camera/k/af$a;)V
    .locals 3

    .line 142
    iget-boolean v0, p0, Lcn/nubia/camera/k/af;->g:Z

    if-nez v0, :cond_0

    return-void

    .line 146
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/camera/k/af;->f:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/k/af;->c:Lcn/nubia/camera/k/ah;

    invoke-virtual {v0}, Lcn/nubia/camera/k/ah;->p()Lcn/nubia/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/b/a;->h()I

    move-result v0

    invoke-virtual {p0}, Lcn/nubia/camera/k/af;->c()I

    move-result v1

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 150
    iput-boolean v0, p0, Lcn/nubia/camera/k/af;->f:Z

    .line 151
    iget-object v0, p0, Lcn/nubia/camera/k/af;->j:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const-string v0, "SlowShutterCapture"

    const-string v2, "stopSlowShutter"

    .line 152
    invoke-static {v0, v2}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    .line 154
    iput-object p1, p0, Lcn/nubia/camera/k/af;->e:Lcn/nubia/camera/k/af$a;

    .line 156
    iget-object p1, p0, Lcn/nubia/camera/k/af;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->z()Lcn/nubia/camera/k/h;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/k/af;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->c()Lcn/nubia/camera/af/b;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcn/nubia/camera/k/h;->a(Lcn/nubia/camera/af/b;Lcn/nubia/camera/k/h$a;)V

    .line 157
    iget-object p1, p0, Lcn/nubia/camera/k/af;->c:Lcn/nubia/camera/k/ah;

    new-instance v0, Lcn/nubia/camera/k/-$$Lambda$af$7pjH8g5EGqeVyzbGwUZjsqvBkWc;

    invoke-direct {v0, p0}, Lcn/nubia/camera/k/-$$Lambda$af$7pjH8g5EGqeVyzbGwUZjsqvBkWc;-><init>(Lcn/nubia/camera/k/af;)V

    invoke-virtual {p1, v0}, Lcn/nubia/camera/k/ah;->a(Lcn/nubia/camera/k/ah$b;)V

    :cond_2
    return-void
.end method

.method public b()V
    .locals 4

    .line 128
    iget-object v0, p0, Lcn/nubia/camera/k/af;->c:Lcn/nubia/camera/k/ah;

    invoke-virtual {v0}, Lcn/nubia/camera/k/ah;->p()Lcn/nubia/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/b/a;->h()I

    move-result v0

    invoke-virtual {p0}, Lcn/nubia/camera/k/af;->c()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 129
    iget-object v0, p0, Lcn/nubia/camera/k/af;->j:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 130
    iget-object v0, p0, Lcn/nubia/camera/k/af;->j:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 132
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/k/af;->e:Lcn/nubia/camera/k/af$a;

    if-eqz v0, :cond_1

    .line 133
    invoke-interface {v0}, Lcn/nubia/camera/k/af$a;->onStopped()V

    .line 134
    iput-object v2, p0, Lcn/nubia/camera/k/af;->e:Lcn/nubia/camera/k/af$a;

    :cond_1
    const/4 v0, 0x0

    .line 136
    iput-boolean v0, p0, Lcn/nubia/camera/k/af;->f:Z

    .line 137
    iput-boolean v0, p0, Lcn/nubia/camera/k/af;->g:Z

    :goto_0
    return-void
.end method

.method public c()I
    .locals 3

    .line 165
    iget-object v0, p0, Lcn/nubia/camera/k/af;->c:Lcn/nubia/camera/k/ah;

    invoke-virtual {v0}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->k()Lcn/nubia/camera/k/x;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/x;->a()Lcn/nubia/camera/k/x$b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->b()Landroid/util/Size;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcn/nubia/camera/k/af;->a(JLandroid/util/Size;)I

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 1

    .line 229
    iget-boolean v0, p0, Lcn/nubia/camera/k/af;->g:Z

    return v0
.end method

.method public e()Z
    .locals 1

    .line 237
    iget-boolean v0, p0, Lcn/nubia/camera/k/af;->f:Z

    return v0
.end method

.method public f()Z
    .locals 1

    .line 245
    iget-boolean v0, p0, Lcn/nubia/camera/k/af;->h:Z

    return v0
.end method
