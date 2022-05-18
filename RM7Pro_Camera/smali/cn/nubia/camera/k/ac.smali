.class public Lcn/nubia/camera/k/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/p;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/k/ac$b;,
        Lcn/nubia/camera/k/ac$a;,
        Lcn/nubia/camera/k/ac$c;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Lcn/nubia/b/k;

.field private c:Lcn/nubia/camera/k/t;

.field private d:Lcn/nubia/camera/ad/a;

.field private e:Lcn/nubia/camera/k/ah;

.field private f:Lcn/nubia/camera/k/s;

.field private g:Lcn/nubia/camera/k/l;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;)V
    .locals 1

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/camera/k/ac;-><init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;I)V

    return-void
.end method

.method public constructor <init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;I)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lcn/nubia/camera/k/ac;->a:I

    .line 45
    new-instance v0, Lcn/nubia/camera/k/t;

    invoke-direct {v0}, Lcn/nubia/camera/k/t;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/k/ac;->c:Lcn/nubia/camera/k/t;

    .line 52
    iput-object p1, p0, Lcn/nubia/camera/k/ac;->d:Lcn/nubia/camera/ad/a;

    .line 53
    iput-object p2, p0, Lcn/nubia/camera/k/ac;->e:Lcn/nubia/camera/k/ah;

    .line 54
    iput p3, p0, Lcn/nubia/camera/k/ac;->a:I

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/k/ac;)Lcn/nubia/camera/k/ah;
    .locals 0

    .line 37
    iget-object p0, p0, Lcn/nubia/camera/k/ac;->e:Lcn/nubia/camera/k/ah;

    return-object p0
.end method

.method private a(Z)V
    .locals 1

    .line 189
    iget-object v0, p0, Lcn/nubia/camera/k/ac;->f:Lcn/nubia/camera/k/s;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 192
    iget p1, p0, Lcn/nubia/camera/k/ac;->a:I

    if-nez p1, :cond_1

    .line 193
    new-instance p1, Lcn/nubia/camera/k/m;

    invoke-direct {p1}, Lcn/nubia/camera/k/m;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/k/ac;->f:Lcn/nubia/camera/k/s;

    goto :goto_0

    .line 195
    :cond_1
    new-instance p1, Lcn/nubia/camera/k/ag;

    iget-object v0, p0, Lcn/nubia/camera/k/ac;->e:Lcn/nubia/camera/k/ah;

    invoke-direct {p1, v0}, Lcn/nubia/camera/k/ag;-><init>(Lcn/nubia/camera/k/ah;)V

    iput-object p1, p0, Lcn/nubia/camera/k/ac;->f:Lcn/nubia/camera/k/s;

    :goto_0
    return-void
.end method

.method private varargs a([Lcn/nubia/b/m;[Lcn/nubia/b/m;)[Lcn/nubia/b/m;
    .locals 7

    .line 170
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v4, p1, v2

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 175
    :cond_1
    array-length v0, p2

    add-int/2addr v0, v3

    new-array v0, v0, [Lcn/nubia/b/m;

    move v2, v1

    move v4, v2

    .line 177
    :goto_1
    array-length v5, p1

    if-ge v2, v5, :cond_3

    .line 178
    aget-object v5, p1, v2

    if-eqz v5, :cond_2

    add-int/lit8 v5, v4, 0x1

    .line 179
    aget-object v6, p1, v2

    aput-object v6, v0, v4

    move v4, v5

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 182
    :cond_3
    :goto_2
    array-length p1, p2

    if-ge v1, p1, :cond_4

    add-int p1, v3, v1

    .line 183
    aget-object v2, p2, v1

    aput-object v2, v0, p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    return-object v0
.end method

.method static synthetic b(Lcn/nubia/camera/k/ac;)Lcn/nubia/camera/k/s;
    .locals 0

    .line 37
    iget-object p0, p0, Lcn/nubia/camera/k/ac;->f:Lcn/nubia/camera/k/s;

    return-object p0
.end method

.method private b()Ljava/lang/String;
    .locals 1

    .line 200
    iget-object v0, p0, Lcn/nubia/camera/k/ac;->e:Lcn/nubia/camera/k/ah;

    invoke-virtual {v0}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->k()Lcn/nubia/camera/k/x;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/x;->z()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcn/nubia/camera/k/ac;)Lcn/nubia/camera/k/x$c;
    .locals 0

    .line 37
    invoke-direct {p0}, Lcn/nubia/camera/k/ac;->e()Lcn/nubia/camera/k/x$c;

    move-result-object p0

    return-object p0
.end method

.method private c()Ljava/lang/String;
    .locals 1

    .line 204
    iget-object v0, p0, Lcn/nubia/camera/k/ac;->e:Lcn/nubia/camera/k/ah;

    invoke-virtual {v0}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->k()Lcn/nubia/camera/k/x;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/x;->C()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d()I
    .locals 1

    .line 208
    iget-object v0, p0, Lcn/nubia/camera/k/ac;->e:Lcn/nubia/camera/k/ah;

    invoke-virtual {v0}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->k()Lcn/nubia/camera/k/x;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/x;->b()I

    move-result v0

    return v0
.end method

.method static synthetic d(Lcn/nubia/camera/k/ac;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 37
    iget-object p0, p0, Lcn/nubia/camera/k/ac;->d:Lcn/nubia/camera/ad/a;

    return-object p0
.end method

.method private e()Lcn/nubia/camera/k/x$c;
    .locals 1

    .line 212
    iget-object v0, p0, Lcn/nubia/camera/k/ac;->e:Lcn/nubia/camera/k/ah;

    invoke-virtual {v0}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->k()Lcn/nubia/camera/k/x;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/x;->c()Lcn/nubia/camera/k/x$c;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcn/nubia/camera/k/ac;)Ljava/lang/String;
    .locals 0

    .line 37
    invoke-direct {p0}, Lcn/nubia/camera/k/ac;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic f(Lcn/nubia/camera/k/ac;)I
    .locals 0

    .line 37
    invoke-direct {p0}, Lcn/nubia/camera/k/ac;->d()I

    move-result p0

    return p0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 63
    iget-object v0, p0, Lcn/nubia/camera/k/ac;->f:Lcn/nubia/camera/k/s;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 64
    invoke-interface {v0}, Lcn/nubia/camera/k/s;->a()V

    .line 65
    iput-object v1, p0, Lcn/nubia/camera/k/ac;->f:Lcn/nubia/camera/k/s;

    .line 67
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/k/ac;->g:Lcn/nubia/camera/k/l;

    if-eqz v0, :cond_1

    .line 68
    invoke-virtual {v0}, Lcn/nubia/camera/k/l;->a()V

    .line 69
    iput-object v1, p0, Lcn/nubia/camera/k/ac;->g:Lcn/nubia/camera/k/l;

    :cond_1
    return-void
.end method

.method public varargs a(ILcn/nubia/camera/k/q;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/u;Lcn/nubia/b/k;Lcn/nubia/camera/k/ac$b;[Lcn/nubia/b/m;)V
    .locals 7

    .line 144
    new-instance v6, Lcn/nubia/camera/k/ac$c;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p5

    move-object v3, p3

    move-object v4, p4

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcn/nubia/camera/k/ac$c;-><init>(Lcn/nubia/camera/k/ac;Lcn/nubia/b/k;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/u;Lcn/nubia/camera/k/ac$b;)V

    .line 145
    iget-object p3, p0, Lcn/nubia/camera/k/ac;->c:Lcn/nubia/camera/k/t;

    invoke-virtual {p3, v6}, Lcn/nubia/camera/k/t;->a(Lcn/nubia/camera/k/o;)V

    .line 146
    iget-object p3, p0, Lcn/nubia/camera/k/ac;->e:Lcn/nubia/camera/k/ah;

    const/4 p4, 0x1

    new-array p4, p4, [Lcn/nubia/b/m;

    iget-object p5, p0, Lcn/nubia/camera/k/ac;->b:Lcn/nubia/b/k;

    const/4 p6, 0x0

    aput-object p5, p4, p6

    invoke-direct {p0, p7, p4}, Lcn/nubia/camera/k/ac;->a([Lcn/nubia/b/m;[Lcn/nubia/b/m;)[Lcn/nubia/b/m;

    move-result-object p4

    invoke-virtual {p3, p1, p2, v6, p4}, Lcn/nubia/camera/k/ah;->a(ILcn/nubia/camera/k/q;Lcn/nubia/camera/k/u;[Lcn/nubia/b/m;)V

    return-void
.end method

.method public varargs a(ILcn/nubia/camera/k/q;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/u;Lcn/nubia/b/k;[Lcn/nubia/b/m;)V
    .locals 8

    .line 113
    invoke-direct {p0}, Lcn/nubia/camera/k/ac;->c()Ljava/lang/String;

    move-result-object v0

    .line 114
    invoke-direct {p0}, Lcn/nubia/camera/k/ac;->e()Lcn/nubia/camera/k/x$c;

    move-result-object v1

    .line 115
    invoke-direct {p0}, Lcn/nubia/camera/k/ac;->b()Ljava/lang/String;

    move-result-object v6

    .line 116
    invoke-direct {p0}, Lcn/nubia/camera/k/ac;->d()I

    move-result v7

    const-string v2, "off"

    .line 117
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 118
    iget-object p1, p0, Lcn/nubia/camera/k/ac;->g:Lcn/nubia/camera/k/l;

    if-nez p1, :cond_0

    .line 119
    new-instance p1, Lcn/nubia/camera/k/l;

    iget-object p4, p0, Lcn/nubia/camera/k/ac;->e:Lcn/nubia/camera/k/ah;

    invoke-virtual {p4}, Lcn/nubia/camera/k/ah;->o()Lcn/nubia/b/d;

    move-result-object v1

    iget-object p4, p0, Lcn/nubia/camera/k/ac;->e:Lcn/nubia/camera/k/ah;

    .line 120
    invoke-virtual {p4}, Lcn/nubia/camera/k/ah;->p()Lcn/nubia/b/a;

    move-result-object v2

    iget-object p4, p0, Lcn/nubia/camera/k/ac;->e:Lcn/nubia/camera/k/ah;

    .line 121
    invoke-virtual {p4}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/camera/k/ac;->b:Lcn/nubia/b/k;

    iget-object p4, p0, Lcn/nubia/camera/k/ac;->e:Lcn/nubia/camera/k/ah;

    .line 123
    invoke-virtual {p4}, Lcn/nubia/camera/k/ah;->w()Lcom/a/a/a/d;

    move-result-object v5

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcn/nubia/camera/k/l;-><init>(Lcn/nubia/b/d;Lcn/nubia/b/a;Lcn/nubia/camera/k/y;Lcn/nubia/b/k;Lcom/a/a/a/d;)V

    iput-object p1, p0, Lcn/nubia/camera/k/ac;->g:Lcn/nubia/camera/k/l;

    .line 126
    :cond_0
    iget-object v2, p0, Lcn/nubia/camera/k/ac;->g:Lcn/nubia/camera/k/l;

    new-instance v5, Lcn/nubia/camera/k/ac$a;

    invoke-direct {v5, p0, p5}, Lcn/nubia/camera/k/ac$a;-><init>(Lcn/nubia/camera/k/ac;Lcn/nubia/b/k;)V

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v2 .. v7}, Lcn/nubia/camera/k/l;->a(Lcn/nubia/camera/k/q;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/l$b;Ljava/lang/String;I)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 127
    iget v3, v1, Lcn/nubia/camera/k/x$c;->b:I

    if-nez v3, :cond_4

    iget v3, v1, Lcn/nubia/camera/k/x$c;->c:I

    if-nez v3, :cond_4

    iget v1, v1, Lcn/nubia/camera/k/x$c;->d:I

    if-nez v1, :cond_4

    :cond_2
    const-string v1, "none"

    .line 129
    invoke-static {v1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v7, :cond_3

    goto :goto_0

    .line 135
    :cond_3
    iget-object p3, p0, Lcn/nubia/camera/k/ac;->e:Lcn/nubia/camera/k/ah;

    new-array v1, v2, [Lcn/nubia/b/m;

    aput-object p5, v1, v0

    invoke-direct {p0, p6, v1}, Lcn/nubia/camera/k/ac;->a([Lcn/nubia/b/m;[Lcn/nubia/b/m;)[Lcn/nubia/b/m;

    move-result-object p5

    invoke-virtual {p3, p1, p2, p4, p5}, Lcn/nubia/camera/k/ah;->a(ILcn/nubia/camera/k/q;Lcn/nubia/camera/k/u;[Lcn/nubia/b/m;)V

    goto :goto_1

    .line 131
    :cond_4
    :goto_0
    new-instance v1, Lcn/nubia/camera/k/ac$c;

    invoke-direct {v1, p0, p5, p3, p4}, Lcn/nubia/camera/k/ac$c;-><init>(Lcn/nubia/camera/k/ac;Lcn/nubia/b/k;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/u;)V

    .line 132
    iget-object p3, p0, Lcn/nubia/camera/k/ac;->c:Lcn/nubia/camera/k/t;

    invoke-virtual {p3, v1}, Lcn/nubia/camera/k/t;->a(Lcn/nubia/camera/k/o;)V

    .line 133
    iget-object p3, p0, Lcn/nubia/camera/k/ac;->e:Lcn/nubia/camera/k/ah;

    new-array p4, v2, [Lcn/nubia/b/m;

    iget-object p5, p0, Lcn/nubia/camera/k/ac;->b:Lcn/nubia/b/k;

    aput-object p5, p4, v0

    invoke-direct {p0, p6, p4}, Lcn/nubia/camera/k/ac;->a([Lcn/nubia/b/m;[Lcn/nubia/b/m;)[Lcn/nubia/b/m;

    move-result-object p4

    invoke-virtual {p3, p1, p2, v1, p4}, Lcn/nubia/camera/k/ah;->a(ILcn/nubia/camera/k/q;Lcn/nubia/camera/k/u;[Lcn/nubia/b/m;)V

    :goto_1
    return-void
.end method

.method public a(Ljava/util/ArrayList;Lcn/nubia/b/n;Landroid/util/Size;Landroid/util/Size;I)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/b/m;",
            ">;",
            "Lcn/nubia/b/n;",
            "Landroid/util/Size;",
            "Landroid/util/Size;",
            "I)V"
        }
    .end annotation

    move-object v0, p0

    move/from16 v5, p5

    .line 77
    iget-object v1, v0, Lcn/nubia/camera/k/ac;->e:Lcn/nubia/camera/k/ah;

    invoke-virtual {v1}, Lcn/nubia/camera/k/ah;->y()Lcn/nubia/b/b;

    move-result-object v1

    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Lcn/nubia/b/b;->b(I)[Landroid/util/Size;

    move-result-object v1

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v6, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    move v6, v1

    :goto_0
    if-eqz v6, :cond_1

    .line 79
    iget v1, v0, Lcn/nubia/camera/k/ac;->a:I

    if-nez v1, :cond_1

    .line 81
    iget-object v1, v0, Lcn/nubia/camera/k/ac;->e:Lcn/nubia/camera/k/ah;

    invoke-virtual {v1}, Lcn/nubia/camera/k/ah;->o()Lcn/nubia/b/d;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/b/d;->a()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v4

    move-object/from16 v7, p4

    invoke-virtual {v1, v7, v4, v2}, Lcn/nubia/camera/k/ah;->a(Landroid/util/Size;Landroid/hardware/camera2/CameraCharacteristics;I)Landroid/util/Size;

    move-result-object v1

    .line 82
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "use reprocess inputSurfaceSize: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v7, "ReprocessSessionProcessor"

    invoke-static {v7, v4}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    move-object v13, v1

    goto :goto_1

    :cond_1
    move-object/from16 v7, p4

    move-object v13, v7

    .line 84
    :goto_1
    new-instance v1, Lcn/nubia/b/k;

    invoke-virtual {v13}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v13}, Landroid/util/Size;->getHeight()I

    move-result v7

    invoke-direct {v1, v4, v7, v2, v3}, Lcn/nubia/b/k;-><init>(IIII)V

    iput-object v1, v0, Lcn/nubia/camera/k/ac;->b:Lcn/nubia/b/k;

    .line 85
    iget-object v1, v0, Lcn/nubia/camera/k/ac;->c:Lcn/nubia/camera/k/t;

    iget-object v2, v0, Lcn/nubia/camera/k/ac;->e:Lcn/nubia/camera/k/ah;

    invoke-virtual {v2}, Lcn/nubia/camera/k/ah;->o()Lcn/nubia/b/d;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/camera/k/t;->a(Lcn/nubia/b/d;)V

    .line 86
    iget-object v1, v0, Lcn/nubia/camera/k/ac;->b:Lcn/nubia/b/k;

    iget-object v2, v0, Lcn/nubia/camera/k/ac;->c:Lcn/nubia/camera/k/t;

    iget-object v4, v0, Lcn/nubia/camera/k/ac;->e:Lcn/nubia/camera/k/ah;

    invoke-virtual {v4}, Lcn/nubia/camera/k/ah;->w()Lcom/a/a/a/d;

    move-result-object v4

    invoke-interface {v4}, Lcom/a/a/a/d;->b()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Handler;

    invoke-virtual {v1, v2, v4}, Lcn/nubia/b/k;->a(Lcn/nubia/b/a/h$a;Landroid/os/Handler;)V

    .line 87
    iget-object v1, v0, Lcn/nubia/camera/k/ac;->b:Lcn/nubia/b/k;

    move-object/from16 v7, p1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-direct {p0, v6}, Lcn/nubia/camera/k/ac;->a(Z)V

    if-nez v5, :cond_3

    .line 92
    iget-object v1, v0, Lcn/nubia/camera/k/ac;->f:Lcn/nubia/camera/k/s;

    instance-of v2, v1, Lcn/nubia/camera/k/m;

    if-eqz v2, :cond_2

    .line 93
    iget-object v4, v0, Lcn/nubia/camera/k/ac;->e:Lcn/nubia/camera/k/ah;

    move-object v10, v1

    check-cast v10, Lcn/nubia/camera/k/m;

    move v5, v6

    move-object/from16 v6, p2

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    move-object v9, v13

    invoke-virtual/range {v4 .. v10}, Lcn/nubia/camera/k/ah;->a(ZLcn/nubia/b/n;Ljava/util/ArrayList;Landroid/util/Size;Landroid/util/Size;Lcn/nubia/camera/k/ah$b;)V

    goto :goto_2

    .line 95
    :cond_2
    iget-object v8, v0, Lcn/nubia/camera/k/ac;->e:Lcn/nubia/camera/k/ah;

    const/4 v9, 0x0

    const/4 v14, 0x0

    move-object/from16 v10, p2

    move-object/from16 v11, p1

    move-object/from16 v12, p3

    invoke-virtual/range {v8 .. v14}, Lcn/nubia/camera/k/ah;->a(ZLcn/nubia/b/n;Ljava/util/ArrayList;Landroid/util/Size;Landroid/util/Size;Lcn/nubia/camera/k/ah$b;)V

    goto :goto_2

    :cond_3
    if-eq v5, v3, :cond_5

    .line 98
    iget-object v1, v0, Lcn/nubia/camera/k/ac;->f:Lcn/nubia/camera/k/s;

    instance-of v2, v1, Lcn/nubia/camera/k/m;

    if-eqz v2, :cond_4

    .line 99
    iget-object v2, v0, Lcn/nubia/camera/k/ac;->e:Lcn/nubia/camera/k/ah;

    move-object v8, v1

    check-cast v8, Lcn/nubia/camera/k/m;

    move-object v1, v2

    move v2, v6

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    move/from16 v5, p5

    move-object/from16 v6, p3

    move-object v7, v13

    invoke-virtual/range {v1 .. v8}, Lcn/nubia/camera/k/ah;->a(ZLcn/nubia/b/n;Ljava/util/ArrayList;ILandroid/util/Size;Landroid/util/Size;Lcn/nubia/camera/k/ah$b;)V

    goto :goto_2

    .line 101
    :cond_4
    iget-object v1, v0, Lcn/nubia/camera/k/ac;->e:Lcn/nubia/camera/k/ah;

    const/4 v2, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    move/from16 v5, p5

    move-object/from16 v6, p3

    move-object v7, v13

    invoke-virtual/range {v1 .. v8}, Lcn/nubia/camera/k/ah;->a(ZLcn/nubia/b/n;Ljava/util/ArrayList;ILandroid/util/Size;Landroid/util/Size;Lcn/nubia/camera/k/ah$b;)V

    .line 105
    :cond_5
    :goto_2
    iget-object v1, v0, Lcn/nubia/camera/k/ac;->g:Lcn/nubia/camera/k/l;

    if-eqz v1, :cond_6

    .line 106
    invoke-virtual {v1}, Lcn/nubia/camera/k/l;->a()V

    const/4 v1, 0x0

    .line 107
    iput-object v1, v0, Lcn/nubia/camera/k/ac;->g:Lcn/nubia/camera/k/l;

    :cond_6
    return-void
.end method

.method public a(Lcn/nubia/b/k;Lcn/nubia/b/a/f;Landroid/hardware/camera2/TotalCaptureResult;Lcn/nubia/camera/k/o;)Z
    .locals 8

    .line 150
    iget-object v0, p0, Lcn/nubia/camera/k/ac;->e:Lcn/nubia/camera/k/ah;

    invoke-virtual {v0}, Lcn/nubia/camera/k/ah;->x()Lcom/a/a/a/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/a/a/a/d;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/k/b/b;

    new-instance v7, Lcn/nubia/camera/k/ac$1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcn/nubia/camera/k/ac$1;-><init>(Lcn/nubia/camera/k/ac;Lcn/nubia/b/a/f;Landroid/hardware/camera2/TotalCaptureResult;Lcn/nubia/camera/k/o;Lcn/nubia/b/k;)V

    invoke-virtual {v0, v7}, Lcn/nubia/camera/k/b/b;->a(Lcn/nubia/camera/k/b/a;)Lcn/nubia/camera/k/b/c;

    const/4 p1, 0x1

    return p1
.end method
