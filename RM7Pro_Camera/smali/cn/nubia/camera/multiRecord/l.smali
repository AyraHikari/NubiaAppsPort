.class public Lcn/nubia/camera/multiRecord/l;
.super Lcn/nubia/camera/k/ah;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/multiRecord/l$a;
    }
.end annotation


# instance fields
.field private b:Lcn/nubia/b/n;

.field private c:Lcn/nubia/b/k;

.field private d:Lcn/nubia/camera/k/t;

.field private e:[Lcn/nubia/b/n;

.field private f:[Lcn/nubia/camera/k/y;

.field private g:[Lcn/nubia/b/d;

.field private h:[Lcn/nubia/b/a;

.field private i:[Lcn/nubia/camera/multiRecord/k;

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/SurfaceTexture;",
            ">;"
        }
    .end annotation
.end field

.field private k:[Ljava/lang/String;

.field private l:[Lcn/nubia/b/k;

.field private m:[Lcn/nubia/camera/k/t;

.field private n:[Lcn/nubia/camera/k/ab;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lcn/nubia/camera/k/ah;-><init>()V

    .line 45
    new-instance v0, Lcn/nubia/camera/k/t;

    invoke-direct {v0}, Lcn/nubia/camera/k/t;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/multiRecord/l;->d:Lcn/nubia/camera/k/t;

    return-void
.end method

.method private a(I)V
    .locals 11

    .line 123
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/l;->g:[Lcn/nubia/b/d;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 126
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/l;->B()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 129
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/l;->f:[Lcn/nubia/camera/k/y;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->d()Lcn/nubia/camera/k/x$b;

    move-result-object v0

    .line 130
    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->a()Landroid/util/Size;

    move-result-object v1

    .line 131
    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->b()Landroid/util/Size;

    move-result-object v0

    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configSubSession previewSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/multiRecord/l;->j:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MultiRecordStreamController"

    invoke-static {v3, v2}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 136
    iget-object v2, p0, Lcn/nubia/camera/multiRecord/l;->e:[Lcn/nubia/b/n;

    new-instance v3, Lcn/nubia/b/n;

    iget-object v4, p0, Lcn/nubia/camera/multiRecord/l;->j:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-direct {v3, v4, v5, v1}, Lcn/nubia/b/n;-><init>(Landroid/graphics/SurfaceTexture;II)V

    aput-object v3, v2, p1

    .line 137
    iget-object v1, p0, Lcn/nubia/camera/multiRecord/l;->e:[Lcn/nubia/b/n;

    aget-object v1, v1, p1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    iget-object v1, p0, Lcn/nubia/camera/multiRecord/l;->m:[Lcn/nubia/camera/k/t;

    new-instance v2, Lcn/nubia/camera/k/t;

    invoke-direct {v2}, Lcn/nubia/camera/k/t;-><init>()V

    aput-object v2, v1, p1

    .line 140
    iget-object v1, p0, Lcn/nubia/camera/multiRecord/l;->l:[Lcn/nubia/b/k;

    new-instance v2, Lcn/nubia/b/k;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    const/16 v4, 0x100

    const/4 v5, 0x1

    invoke-direct {v2, v3, v0, v4, v5}, Lcn/nubia/b/k;-><init>(IIII)V

    aput-object v2, v1, p1

    .line 141
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/l;->m:[Lcn/nubia/camera/k/t;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcn/nubia/camera/multiRecord/l;->g:[Lcn/nubia/b/d;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/k/t;->a(Lcn/nubia/b/d;)V

    .line 142
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/l;->l:[Lcn/nubia/b/k;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcn/nubia/camera/multiRecord/l;->m:[Lcn/nubia/camera/k/t;

    aget-object v1, v1, p1

    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/l;->w()Lcom/a/a/a/d;

    move-result-object v2

    invoke-interface {v2}, Lcom/a/a/a/d;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcn/nubia/b/k;->a(Lcn/nubia/b/a/h$a;Landroid/os/Handler;)V

    .line 143
    sget v0, Lcn/nubia/camera/multiRecord/g;->b:I

    if-ne v0, v5, :cond_2

    .line 144
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/l;->l:[Lcn/nubia/b/k;

    aget-object v0, v0, p1

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/l;->f:[Lcn/nubia/camera/k/y;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->a()Z

    .line 148
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/l;->g:[Lcn/nubia/b/d;

    aget-object v4, v0, p1

    const/4 v5, 0x0

    const/4 v7, 0x0

    new-instance v8, Lcn/nubia/camera/multiRecord/l$a;

    invoke-direct {v8, p0, p1}, Lcn/nubia/camera/multiRecord/l$a;-><init>(Lcn/nubia/camera/multiRecord/l;I)V

    iget-object v0, p0, Lcn/nubia/camera/multiRecord/l;->f:[Lcn/nubia/camera/k/y;

    aget-object v0, v0, p1

    .line 149
    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->g()Lcn/nubia/camera/k/ad;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/multiRecord/l;->g:[Lcn/nubia/b/d;

    aget-object p1, v1, p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcn/nubia/camera/k/ad;->a(Lcn/nubia/b/d;I[Lcn/nubia/b/m;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v9

    sget-object p1, Lcn/nubia/camera/k/n;->d:Lcom/a/a/a/d;

    .line 150
    invoke-interface {p1}, Lcom/a/a/a/d;->b()Ljava/lang/Object;

    move-result-object p1

    move-object v10, p1

    check-cast v10, Landroid/os/Handler;

    .line 148
    invoke-virtual/range {v4 .. v10}, Lcn/nubia/b/d;->a(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;ILcn/nubia/b/a$c;Landroid/hardware/camera2/CaptureRequest;Landroid/os/Handler;)V

    .line 152
    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/l;->C()V

    return-void
.end method

.method private varargs a(ILcn/nubia/camera/k/ad;I[Lcn/nubia/b/m;)V
    .locals 2

    .line 195
    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/l;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "MultiRecordStreamController"

    const-string p2, "Preview is paused."

    .line 196
    invoke-static {p1, p2}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 199
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/l;->B()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 203
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/l;->h:[Lcn/nubia/b/a;

    aget-object v1, v0, p1

    if-eqz v1, :cond_2

    .line 204
    aget-object v0, v0, p1

    iget-object v1, p0, Lcn/nubia/camera/multiRecord/l;->g:[Lcn/nubia/b/d;

    aget-object v1, v1, p1

    .line 205
    invoke-virtual {p2, v1, p3, p4}, Lcn/nubia/camera/k/ad;->a(Lcn/nubia/b/d;I[Lcn/nubia/b/m;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object p2

    iget-object p3, p0, Lcn/nubia/camera/multiRecord/l;->n:[Lcn/nubia/camera/k/ab;

    aget-object p1, p3, p1

    .line 207
    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/l;->v()Lcom/a/a/a/d;

    move-result-object p3

    invoke-interface {p3}, Lcom/a/a/a/d;->b()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/Handler;

    .line 204
    invoke-virtual {v0, p2, p1, p3}, Lcn/nubia/b/a;->b(Landroid/hardware/camera2/CaptureRequest;Lcn/nubia/b/a$a;Landroid/os/Handler;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/l;->C()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/l;->C()V

    .line 212
    throw p1
.end method

.method static synthetic a(Lcn/nubia/camera/multiRecord/l;ILcn/nubia/camera/k/ad;I[Lcn/nubia/b/m;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/camera/multiRecord/l;->a(ILcn/nubia/camera/k/ad;I[Lcn/nubia/b/m;)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/multiRecord/l;)Z
    .locals 0

    .line 41
    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/l;->B()Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcn/nubia/camera/multiRecord/l;)[Ljava/lang/String;
    .locals 0

    .line 41
    iget-object p0, p0, Lcn/nubia/camera/multiRecord/l;->k:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcn/nubia/camera/multiRecord/l;)[Lcn/nubia/b/a;
    .locals 0

    .line 41
    iget-object p0, p0, Lcn/nubia/camera/multiRecord/l;->h:[Lcn/nubia/b/a;

    return-object p0
.end method

.method static synthetic d(Lcn/nubia/camera/multiRecord/l;)V
    .locals 0

    .line 41
    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/l;->C()V

    return-void
.end method

.method static synthetic e(Lcn/nubia/camera/multiRecord/l;)[Lcn/nubia/camera/k/y;
    .locals 0

    .line 41
    iget-object p0, p0, Lcn/nubia/camera/multiRecord/l;->f:[Lcn/nubia/camera/k/y;

    return-object p0
.end method

.method static synthetic f(Lcn/nubia/camera/multiRecord/l;)Z
    .locals 0

    .line 41
    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/l;->B()Z

    move-result p0

    return p0
.end method

.method static synthetic g(Lcn/nubia/camera/multiRecord/l;)[Lcn/nubia/b/d;
    .locals 0

    .line 41
    iget-object p0, p0, Lcn/nubia/camera/multiRecord/l;->g:[Lcn/nubia/b/d;

    return-object p0
.end method

.method static synthetic h(Lcn/nubia/camera/multiRecord/l;)[Lcn/nubia/b/n;
    .locals 0

    .line 41
    iget-object p0, p0, Lcn/nubia/camera/multiRecord/l;->e:[Lcn/nubia/b/n;

    return-object p0
.end method

.method static synthetic i(Lcn/nubia/camera/multiRecord/l;)V
    .locals 0

    .line 41
    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/l;->C()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Lcn/nubia/b/m;

    .line 89
    iget-object v2, p0, Lcn/nubia/camera/multiRecord/l;->b:Lcn/nubia/b/n;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcn/nubia/camera/multiRecord/l;->a(I[Lcn/nubia/b/m;)V

    return-void
.end method

.method public a(Lcn/nubia/camera/ad/a;Ljava/lang/String;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;Lcn/nubia/camera/k/x;Lcn/nubia/camera/k/h;)V
    .locals 3

    .line 60
    invoke-super/range {p0 .. p6}, Lcn/nubia/camera/k/ah;->a(Lcn/nubia/camera/ad/a;Ljava/lang/String;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;Lcn/nubia/camera/k/x;Lcn/nubia/camera/k/h;)V

    .line 61
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->c()Lcn/nubia/camera/af/b;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/camera/af/b;->d()[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/camera/multiRecord/l;->k:[Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 62
    array-length p3, p2

    if-lez p3, :cond_0

    .line 63
    array-length p3, p2

    new-array p3, p3, [Lcn/nubia/camera/multiRecord/k;

    iput-object p3, p0, Lcn/nubia/camera/multiRecord/l;->i:[Lcn/nubia/camera/multiRecord/k;

    .line 64
    array-length p3, p2

    new-array p3, p3, [Lcn/nubia/camera/k/y;

    iput-object p3, p0, Lcn/nubia/camera/multiRecord/l;->f:[Lcn/nubia/camera/k/y;

    .line 65
    array-length p3, p2

    new-array p3, p3, [Lcn/nubia/b/d;

    iput-object p3, p0, Lcn/nubia/camera/multiRecord/l;->g:[Lcn/nubia/b/d;

    .line 66
    array-length p3, p2

    new-array p3, p3, [Lcn/nubia/b/n;

    iput-object p3, p0, Lcn/nubia/camera/multiRecord/l;->e:[Lcn/nubia/b/n;

    .line 67
    array-length p3, p2

    new-array p3, p3, [Lcn/nubia/b/a;

    iput-object p3, p0, Lcn/nubia/camera/multiRecord/l;->h:[Lcn/nubia/b/a;

    .line 68
    array-length p3, p2

    new-array p3, p3, [Lcn/nubia/b/k;

    iput-object p3, p0, Lcn/nubia/camera/multiRecord/l;->l:[Lcn/nubia/b/k;

    .line 69
    array-length p3, p2

    new-array p3, p3, [Lcn/nubia/camera/k/t;

    iput-object p3, p0, Lcn/nubia/camera/multiRecord/l;->m:[Lcn/nubia/camera/k/t;

    .line 70
    array-length p2, p2

    new-array p2, p2, [Lcn/nubia/camera/k/ab;

    iput-object p2, p0, Lcn/nubia/camera/multiRecord/l;->n:[Lcn/nubia/camera/k/ab;

    const/4 p2, 0x0

    .line 71
    :goto_0
    iget-object p3, p0, Lcn/nubia/camera/multiRecord/l;->k:[Ljava/lang/String;

    array-length p3, p3

    if-ge p2, p3, :cond_0

    .line 72
    iget-object p3, p0, Lcn/nubia/camera/multiRecord/l;->i:[Lcn/nubia/camera/multiRecord/k;

    new-instance p4, Lcn/nubia/camera/multiRecord/k;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p5

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/multiRecord/l;->k:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v2

    invoke-direct {p4, p5, v0, v1, v2}, Lcn/nubia/camera/multiRecord/k;-><init>(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/af/a;)V

    aput-object p4, p3, p2

    .line 73
    iget-object p3, p0, Lcn/nubia/camera/multiRecord/l;->f:[Lcn/nubia/camera/k/y;

    new-instance p4, Lcn/nubia/camera/k/y;

    iget-object p5, p0, Lcn/nubia/camera/multiRecord/l;->k:[Ljava/lang/String;

    aget-object p5, p5, p2

    iget-object v0, p0, Lcn/nubia/camera/multiRecord/l;->i:[Lcn/nubia/camera/multiRecord/k;

    aget-object v0, v0, p2

    iget-object v1, p0, Lcn/nubia/camera/multiRecord/l;->a:Lcn/nubia/camera/three_a/b/a;

    invoke-direct {p4, p5, p1, v0, v1}, Lcn/nubia/camera/k/y;-><init>(Ljava/lang/String;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/x;Lcn/nubia/camera/three_a/b/a;)V

    aput-object p4, p3, p2

    .line 74
    iget-object p3, p0, Lcn/nubia/camera/multiRecord/l;->g:[Lcn/nubia/b/d;

    iget-object p4, p0, Lcn/nubia/camera/multiRecord/l;->k:[Ljava/lang/String;

    aget-object p4, p4, p2

    invoke-virtual {p6, p4}, Lcn/nubia/camera/k/h;->a(Ljava/lang/String;)Lcn/nubia/b/d;

    move-result-object p4

    aput-object p4, p3, p2

    .line 75
    iget-object p3, p0, Lcn/nubia/camera/multiRecord/l;->n:[Lcn/nubia/camera/k/ab;

    new-instance p4, Lcn/nubia/camera/k/ab;

    invoke-direct {p4}, Lcn/nubia/camera/k/ab;-><init>()V

    aput-object p4, p3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/SurfaceTexture;",
            ">;)V"
        }
    .end annotation

    .line 84
    iput-object p1, p0, Lcn/nubia/camera/multiRecord/l;->j:Ljava/util/ArrayList;

    return-void
.end method

.method public a(Lcn/nubia/camera/k/q;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/u;)Z
    .locals 3

    .line 217
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/l;->d:Lcn/nubia/camera/k/t;

    invoke-virtual {v0, p2}, Lcn/nubia/camera/k/t;->a(Lcn/nubia/camera/k/o;)V

    const/4 p2, 0x1

    new-array v0, p2, [Lcn/nubia/b/m;

    .line 218
    iget-object v1, p0, Lcn/nubia/camera/multiRecord/l;->c:Lcn/nubia/b/k;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x2

    invoke-virtual {p0, v1, p1, p3, v0}, Lcn/nubia/camera/multiRecord/l;->a(ILcn/nubia/camera/k/q;Lcn/nubia/camera/k/u;[Lcn/nubia/b/m;)V

    return p2
.end method

.method public a(Lcn/nubia/camera/k/q;[Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/u;)Z
    .locals 7

    .line 224
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/l;->k:[Ljava/lang/String;

    const/4 p3, 0x1

    if-eqz p1, :cond_0

    array-length p1, p1

    if-lez p1, :cond_0

    const/4 p1, 0x0

    move v0, p1

    .line 225
    :goto_0
    iget-object v1, p0, Lcn/nubia/camera/multiRecord/l;->k:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 226
    iget-object v1, p0, Lcn/nubia/camera/multiRecord/l;->m:[Lcn/nubia/camera/k/t;

    aget-object v1, v1, v0

    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Lcn/nubia/camera/k/t;->a(Lcn/nubia/camera/k/o;)V

    .line 227
    iget-object v1, p0, Lcn/nubia/camera/multiRecord/l;->h:[Lcn/nubia/b/a;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcn/nubia/camera/multiRecord/l;->f:[Lcn/nubia/camera/k/y;

    aget-object v2, v2, v0

    .line 228
    invoke-virtual {v2}, Lcn/nubia/camera/k/y;->h()Lcn/nubia/camera/k/ad;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/multiRecord/l;->g:[Lcn/nubia/b/d;

    aget-object v3, v3, v0

    const/4 v4, 0x2

    new-array v5, p3, [Lcn/nubia/b/m;

    iget-object v6, p0, Lcn/nubia/camera/multiRecord/l;->l:[Lcn/nubia/b/k;

    aget-object v6, v6, v0

    aput-object v6, v5, p1

    invoke-virtual {v2, v3, v4, v5}, Lcn/nubia/camera/k/ad;->a(Lcn/nubia/b/d;I[Lcn/nubia/b/m;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    const/4 v3, 0x0

    .line 230
    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/l;->v()Lcom/a/a/a/d;

    move-result-object v4

    invoke-interface {v4}, Lcom/a/a/a/d;->b()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Handler;

    .line 227
    invoke-virtual {v1, v2, v3, v4}, Lcn/nubia/b/a;->a(Landroid/hardware/camera2/CaptureRequest;Lcn/nubia/b/a$a;Landroid/os/Handler;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return p3
.end method

.method protected b()V
    .locals 9

    .line 94
    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/l;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->d()Lcn/nubia/camera/k/x$b;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->a()Landroid/util/Size;

    move-result-object v6

    .line 96
    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->b()Landroid/util/Size;

    move-result-object v7

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "configSession previewSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pictureSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MultiRecordStreamController"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 102
    new-instance v0, Lcn/nubia/b/n;

    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/l;->n()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/b/n;-><init>(Landroid/graphics/SurfaceTexture;II)V

    iput-object v0, p0, Lcn/nubia/camera/multiRecord/l;->b:Lcn/nubia/b/n;

    .line 103
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    new-instance v0, Lcn/nubia/b/k;

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v2

    const/16 v3, 0x100

    const/4 v5, 0x1

    invoke-direct {v0, v1, v2, v3, v5}, Lcn/nubia/b/k;-><init>(IIII)V

    iput-object v0, p0, Lcn/nubia/camera/multiRecord/l;->c:Lcn/nubia/b/k;

    .line 106
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/l;->d:Lcn/nubia/camera/k/t;

    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/l;->o()Lcn/nubia/b/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/k/t;->a(Lcn/nubia/b/d;)V

    .line 107
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/l;->c:Lcn/nubia/b/k;

    iget-object v1, p0, Lcn/nubia/camera/multiRecord/l;->d:Lcn/nubia/camera/k/t;

    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/l;->w()Lcom/a/a/a/d;

    move-result-object v2

    invoke-interface {v2}, Lcom/a/a/a/d;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcn/nubia/b/k;->a(Lcn/nubia/b/a/h$a;Landroid/os/Handler;)V

    .line 108
    sget v0, Lcn/nubia/camera/multiRecord/g;->b:I

    if-ne v0, v5, :cond_0

    .line 109
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/l;->c:Lcn/nubia/b/k;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v2, 0x0

    .line 112
    iget-object v3, p0, Lcn/nubia/camera/multiRecord/l;->b:Lcn/nubia/b/n;

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcn/nubia/camera/multiRecord/l;->a(ZLcn/nubia/b/n;Ljava/util/ArrayList;ILandroid/util/Size;Landroid/util/Size;Lcn/nubia/camera/k/ah$b;)V

    .line 114
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/l;->k:[Ljava/lang/String;

    if-eqz v0, :cond_1

    array-length v0, v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 115
    :goto_0
    iget-object v1, p0, Lcn/nubia/camera/multiRecord/l;->k:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 116
    invoke-direct {p0, v0}, Lcn/nubia/camera/multiRecord/l;->a(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public c(Lcn/nubia/camera/k/ab$a;)V
    .locals 4

    .line 242
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/l;->n:[Lcn/nubia/camera/k/ab;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 243
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 244
    invoke-virtual {v3, p1}, Lcn/nubia/camera/k/ab;->a(Lcn/nubia/camera/k/ab$a;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d(Lcn/nubia/camera/k/ab$a;)V
    .locals 4

    .line 250
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/l;->n:[Lcn/nubia/camera/k/ab;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 251
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 252
    invoke-virtual {v3, p1}, Lcn/nubia/camera/k/ab;->b(Lcn/nubia/camera/k/ab$a;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method e()Landroid/media/CamcorderProfile;
    .locals 3

    .line 238
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/b/e;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcn/nubia/camera/multiRecord/l;->i:[Lcn/nubia/camera/multiRecord/k;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcn/nubia/camera/multiRecord/k;->s()I

    move-result v1

    invoke-static {v0, v1}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v0

    return-object v0
.end method
