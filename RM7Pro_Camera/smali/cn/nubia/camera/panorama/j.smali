.class public Lcn/nubia/camera/panorama/j;
.super Lcn/nubia/camera/q/a;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/panorama/i;
.implements Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/panorama/j$c;,
        Lcn/nubia/camera/panorama/j$b;,
        Lcn/nubia/camera/panorama/j$a;
    }
.end annotation


# static fields
.field private static a:Z = false


# instance fields
.field private A:Lcn/nubia/camera/panorama/j$b;

.field private B:Lcn/nubia/camera/panorama/j$c;

.field private b:Z

.field private c:I

.field private i:Lcn/nubia/camera/q/c;

.field private j:I

.field private k:Lcn/nubia/camera/panorama/PanoPreviewView;

.field private l:Lcn/nubia/camera/panorama/f;

.field private m:Lcn/nubia/camera/panorama/h;

.field private n:[B

.field private o:[B

.field private p:Lcn/nubia/camera/panorama/j$a;

.field private q:I

.field private r:Landroid/widget/RelativeLayout;

.field private s:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

.field private t:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

.field private u:Landroid/widget/RelativeLayout;

.field private v:Lcn/nubia/camera/panorama/o;

.field private w:Z

.field private x:Landroid/util/Size;

.field private y:Lcn/nubia/camera/k/z;

.field private z:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 146
    invoke-direct {p0}, Lcn/nubia/camera/q/a;-><init>()V

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lcn/nubia/camera/panorama/j;->b:Z

    const/4 v1, 0x0

    .line 73
    iput-object v1, p0, Lcn/nubia/camera/panorama/j;->i:Lcn/nubia/camera/q/c;

    .line 107
    iput v0, p0, Lcn/nubia/camera/panorama/j;->j:I

    .line 114
    iput v0, p0, Lcn/nubia/camera/panorama/j;->q:I

    .line 115
    iput-object v1, p0, Lcn/nubia/camera/panorama/j;->r:Landroid/widget/RelativeLayout;

    .line 118
    iput-object v1, p0, Lcn/nubia/camera/panorama/j;->s:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    .line 119
    iput-object v1, p0, Lcn/nubia/camera/panorama/j;->t:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    .line 120
    iput-object v1, p0, Lcn/nubia/camera/panorama/j;->u:Landroid/widget/RelativeLayout;

    .line 362
    iput-boolean v0, p0, Lcn/nubia/camera/panorama/j;->w:Z

    .line 411
    iput-object v1, p0, Lcn/nubia/camera/panorama/j;->x:Landroid/util/Size;

    .line 449
    new-instance v0, Lcn/nubia/camera/panorama/j$1;

    invoke-direct {v0, p0}, Lcn/nubia/camera/panorama/j$1;-><init>(Lcn/nubia/camera/panorama/j;)V

    iput-object v0, p0, Lcn/nubia/camera/panorama/j;->y:Lcn/nubia/camera/k/z;

    .line 485
    iput-object v1, p0, Lcn/nubia/camera/panorama/j;->z:Landroid/widget/Toast;

    .line 590
    new-instance v0, Lcn/nubia/camera/panorama/j$c;

    invoke-direct {v0, p0, v1}, Lcn/nubia/camera/panorama/j$c;-><init>(Lcn/nubia/camera/panorama/j;Lcn/nubia/camera/panorama/j$1;)V

    iput-object v0, p0, Lcn/nubia/camera/panorama/j;->B:Lcn/nubia/camera/panorama/j$c;

    return-void
.end method

.method public constructor <init>(ILcn/nubia/camera/panorama/o;)V
    .locals 2

    .line 126
    invoke-direct {p0, p1}, Lcn/nubia/camera/q/a;-><init>(I)V

    const/4 p1, 0x0

    .line 66
    iput-boolean p1, p0, Lcn/nubia/camera/panorama/j;->b:Z

    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lcn/nubia/camera/panorama/j;->i:Lcn/nubia/camera/q/c;

    .line 107
    iput p1, p0, Lcn/nubia/camera/panorama/j;->j:I

    .line 114
    iput p1, p0, Lcn/nubia/camera/panorama/j;->q:I

    .line 115
    iput-object v0, p0, Lcn/nubia/camera/panorama/j;->r:Landroid/widget/RelativeLayout;

    .line 118
    iput-object v0, p0, Lcn/nubia/camera/panorama/j;->s:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    .line 119
    iput-object v0, p0, Lcn/nubia/camera/panorama/j;->t:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    .line 120
    iput-object v0, p0, Lcn/nubia/camera/panorama/j;->u:Landroid/widget/RelativeLayout;

    .line 362
    iput-boolean p1, p0, Lcn/nubia/camera/panorama/j;->w:Z

    .line 411
    iput-object v0, p0, Lcn/nubia/camera/panorama/j;->x:Landroid/util/Size;

    .line 449
    new-instance p1, Lcn/nubia/camera/panorama/j$1;

    invoke-direct {p1, p0}, Lcn/nubia/camera/panorama/j$1;-><init>(Lcn/nubia/camera/panorama/j;)V

    iput-object p1, p0, Lcn/nubia/camera/panorama/j;->y:Lcn/nubia/camera/k/z;

    .line 485
    iput-object v0, p0, Lcn/nubia/camera/panorama/j;->z:Landroid/widget/Toast;

    .line 590
    new-instance p1, Lcn/nubia/camera/panorama/j$c;

    invoke-direct {p1, p0, v0}, Lcn/nubia/camera/panorama/j$c;-><init>(Lcn/nubia/camera/panorama/j;Lcn/nubia/camera/panorama/j$1;)V

    iput-object p1, p0, Lcn/nubia/camera/panorama/j;->B:Lcn/nubia/camera/panorama/j$c;

    const-string p1, "NubiaPanorama"

    const/4 v0, 0x2

    .line 127
    invoke-static {p1, v0}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;I)Z

    move-result p1

    iput-boolean p1, p0, Lcn/nubia/camera/panorama/j;->b:Z

    .line 128
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ak/a;->aj()I

    move-result p1

    iput p1, p0, Lcn/nubia/camera/panorama/j;->c:I

    .line 129
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pano vendor type is"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v1, p0, Lcn/nubia/camera/panorama/j;->c:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "PanoramaFragment"

    invoke-static {v1, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget p1, p0, Lcn/nubia/camera/panorama/j;->c:I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 136
    :cond_0
    new-instance p1, Lcn/nubia/camera/panorama/a;

    iget-boolean v0, p0, Lcn/nubia/camera/panorama/j;->b:Z

    invoke-direct {p1, v0}, Lcn/nubia/camera/panorama/a;-><init>(Z)V

    iput-object p1, p0, Lcn/nubia/camera/panorama/j;->m:Lcn/nubia/camera/panorama/h;

    goto :goto_0

    .line 139
    :cond_1
    new-instance p1, Lcn/nubia/camera/panorama/d;

    invoke-direct {p1}, Lcn/nubia/camera/panorama/d;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/panorama/j;->m:Lcn/nubia/camera/panorama/h;

    goto :goto_0

    .line 133
    :cond_2
    new-instance p1, Lcn/nubia/camera/panorama/c;

    iget-boolean v0, p0, Lcn/nubia/camera/panorama/j;->b:Z

    invoke-direct {p1, v0}, Lcn/nubia/camera/panorama/c;-><init>(Z)V

    iput-object p1, p0, Lcn/nubia/camera/panorama/j;->m:Lcn/nubia/camera/panorama/h;

    .line 142
    :goto_0
    iput-object p2, p0, Lcn/nubia/camera/panorama/j;->v:Lcn/nubia/camera/panorama/o;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/panorama/j;)I
    .locals 0

    .line 60
    iget p0, p0, Lcn/nubia/camera/panorama/j;->j:I

    return p0
.end method

.method public static a(Lcn/nubia/camera/panorama/o;)Lcn/nubia/camera/panorama/j;
    .locals 2

    .line 606
    new-instance v0, Lcn/nubia/camera/panorama/j;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcn/nubia/camera/panorama/j;-><init>(ILcn/nubia/camera/panorama/o;)V

    return-object v0
.end method

.method private declared-synchronized a(Lcn/nubia/camera/ad/a;)V
    .locals 5

    monitor-enter p0

    .line 179
    :try_start_0
    iget-object p1, p0, Lcn/nubia/camera/panorama/j;->v:Lcn/nubia/camera/panorama/o;

    invoke-virtual {p1}, Lcn/nubia/camera/panorama/o;->m()Lcn/nubia/camera/k/y;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 180
    monitor-exit p0

    return-void

    .line 182
    :cond_0
    :try_start_1
    iget-object p1, p0, Lcn/nubia/camera/panorama/j;->v:Lcn/nubia/camera/panorama/o;

    invoke-virtual {p1}, Lcn/nubia/camera/panorama/o;->m()Lcn/nubia/camera/k/y;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/k/y;->d()Lcn/nubia/camera/k/x$b;

    move-result-object p1

    .line 183
    iget-object v0, p0, Lcn/nubia/camera/panorama/j;->m:Lcn/nubia/camera/panorama/h;

    invoke-virtual {p1}, Lcn/nubia/camera/k/x$b;->b()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {p1}, Lcn/nubia/camera/k/x$b;->b()Landroid/util/Size;

    move-result-object p1

    new-instance v2, Landroid/util/Size;

    const/16 v3, 0x438

    const/16 v4, 0x870

    invoke-direct {v2, v3, v4}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v0, v1, p1, v2}, Lcn/nubia/camera/panorama/h;->a(Landroid/util/Size;Landroid/util/Size;Landroid/util/Size;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 184
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private a(Lcn/nubia/b/a/f;)[B
    .locals 14

    .line 500
    invoke-interface {p1}, Lcn/nubia/b/a/f;->d()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/b/a/f$a;

    .line 501
    invoke-interface {p1}, Lcn/nubia/b/a/f;->d()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/b/a/f$a;

    .line 502
    invoke-interface {p1}, Lcn/nubia/b/a/f;->d()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/b/a/f$a;

    .line 503
    invoke-interface {v0}, Lcn/nubia/b/a/f$a;->c()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-interface {v0}, Lcn/nubia/b/a/f$a;->b()I

    move-result v4

    invoke-interface {v0}, Lcn/nubia/b/a/f$a;->a()I

    move-result v5

    .line 504
    invoke-interface {v1}, Lcn/nubia/b/a/f$a;->c()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-interface {v1}, Lcn/nubia/b/a/f$a;->b()I

    move-result v7

    invoke-interface {v1}, Lcn/nubia/b/a/f$a;->a()I

    move-result v8

    .line 505
    invoke-interface {v2}, Lcn/nubia/b/a/f$a;->c()Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-interface {v2}, Lcn/nubia/b/a/f$a;->b()I

    move-result v10

    invoke-interface {v2}, Lcn/nubia/b/a/f$a;->a()I

    move-result v11

    invoke-interface {p1}, Lcn/nubia/b/a/f;->f()I

    move-result v12

    invoke-interface {p1}, Lcn/nubia/b/a/f;->c()I

    move-result v13

    .line 503
    invoke-static/range {v3 .. v13}, Lcn/nubia/algorithm/utils/YUVAlgorithm;->a(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IIII)Lcn/nubia/algorithm/utils/a;

    move-result-object p1

    .line 506
    invoke-virtual {p1}, Lcn/nubia/algorithm/utils/a;->b()[B

    move-result-object v0

    .line 507
    invoke-virtual {p1}, Lcn/nubia/algorithm/utils/a;->a()V

    return-object v0
.end method

.method static synthetic a(Lcn/nubia/camera/panorama/j;Lcn/nubia/b/a/f;)[B
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcn/nubia/camera/panorama/j;->a(Lcn/nubia/b/a/f;)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcn/nubia/camera/panorama/j;[B)[B
    .locals 0

    .line 60
    iput-object p1, p0, Lcn/nubia/camera/panorama/j;->o:[B

    return-object p1
.end method

.method static synthetic b(Lcn/nubia/camera/panorama/j;)Lcn/nubia/camera/panorama/j$a;
    .locals 0

    .line 60
    iget-object p0, p0, Lcn/nubia/camera/panorama/j;->p:Lcn/nubia/camera/panorama/j$a;

    return-object p0
.end method

.method private b(I)V
    .locals 1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const v0, 0x7f0f01a5

    .line 490
    invoke-virtual {p0, v0}, Lcn/nubia/camera/panorama/j;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 496
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcn/nubia/camera/panorama/j;->a(Ljava/lang/String;I)V

    return-void
.end method

.method private b(Z)V
    .locals 1

    .line 642
    invoke-virtual {p0}, Lcn/nubia/camera/panorama/j;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->Q()Lcn/nubia/camera/three_a/ui/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/camera/three_a/ui/h;->f(Z)V

    return-void
.end method

.method static synthetic b(Lcn/nubia/camera/panorama/j;[B)[B
    .locals 0

    .line 60
    iput-object p1, p0, Lcn/nubia/camera/panorama/j;->n:[B

    return-object p1
.end method

.method static synthetic c(Lcn/nubia/camera/panorama/j;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 60
    invoke-virtual {p0}, Lcn/nubia/camera/panorama/j;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Lcn/nubia/camera/panorama/j;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 60
    invoke-virtual {p0}, Lcn/nubia/camera/panorama/j;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized d(Landroid/view/View;)V
    .locals 3

    monitor-enter p0

    const v0, 0x7f0900ac

    .line 394
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/nubia/camera/panorama/j;->r:Landroid/widget/RelativeLayout;

    .line 395
    invoke-virtual {p0, v0}, Lcn/nubia/camera/panorama/j;->b(Landroid/view/View;)V

    const v0, 0x7f090241

    .line 396
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/panorama/PanoPreviewView;

    iput-object v0, p0, Lcn/nubia/camera/panorama/j;->k:Lcn/nubia/camera/panorama/PanoPreviewView;

    .line 397
    iget v0, p0, Lcn/nubia/camera/panorama/j;->c:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 400
    new-instance v0, Lcn/nubia/camera/panorama/b;

    iget-object v1, p0, Lcn/nubia/camera/panorama/j;->k:Lcn/nubia/camera/panorama/PanoPreviewView;

    iget-boolean v2, p0, Lcn/nubia/camera/panorama/j;->b:Z

    invoke-direct {v0, v1, v2}, Lcn/nubia/camera/panorama/b;-><init>(Lcn/nubia/camera/panorama/PanoPreviewView;Z)V

    iput-object v0, p0, Lcn/nubia/camera/panorama/j;->l:Lcn/nubia/camera/panorama/f;

    goto :goto_1

    .line 398
    :cond_1
    :goto_0
    new-instance v0, Lcn/nubia/camera/panorama/g;

    iget-object v1, p0, Lcn/nubia/camera/panorama/j;->k:Lcn/nubia/camera/panorama/PanoPreviewView;

    invoke-direct {v0, v1}, Lcn/nubia/camera/panorama/g;-><init>(Lcn/nubia/camera/panorama/PanoPreviewView;)V

    iput-object v0, p0, Lcn/nubia/camera/panorama/j;->l:Lcn/nubia/camera/panorama/f;

    .line 403
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcn/nubia/camera/panorama/j;->i()V

    const v0, 0x7f090244

    .line 404
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/nubia/camera/panorama/j;->u:Landroid/widget/RelativeLayout;

    const v0, 0x7f090242

    .line 405
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    iput-object v0, p0, Lcn/nubia/camera/panorama/j;->s:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    const v0, 0x7f090243

    .line 406
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    iput-object p1, p0, Lcn/nubia/camera/panorama/j;->t:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    .line 407
    iget-object p1, p0, Lcn/nubia/camera/panorama/j;->s:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    invoke-virtual {p1, p0}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->setOnShutterButtonListener(Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;)V

    .line 408
    iget-object p1, p0, Lcn/nubia/camera/panorama/j;->u:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p1}, Lcn/nubia/camera/panorama/j;->a(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 409
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic e(Lcn/nubia/camera/panorama/j;)[B
    .locals 0

    .line 60
    iget-object p0, p0, Lcn/nubia/camera/panorama/j;->n:[B

    return-object p0
.end method

.method static synthetic f(Lcn/nubia/camera/panorama/j;)Landroid/util/Size;
    .locals 0

    .line 60
    iget-object p0, p0, Lcn/nubia/camera/panorama/j;->x:Landroid/util/Size;

    return-object p0
.end method

.method static synthetic g(Lcn/nubia/camera/panorama/j;)Lcn/nubia/camera/panorama/f;
    .locals 0

    .line 60
    iget-object p0, p0, Lcn/nubia/camera/panorama/j;->l:Lcn/nubia/camera/panorama/f;

    return-object p0
.end method

.method static synthetic h(Lcn/nubia/camera/panorama/j;)[B
    .locals 0

    .line 60
    iget-object p0, p0, Lcn/nubia/camera/panorama/j;->o:[B

    return-object p0
.end method

.method static synthetic i(Lcn/nubia/camera/panorama/j;)Lcn/nubia/camera/panorama/h;
    .locals 0

    .line 60
    iget-object p0, p0, Lcn/nubia/camera/panorama/j;->m:Lcn/nubia/camera/panorama/h;

    return-object p0
.end method

.method private declared-synchronized i()V
    .locals 5

    monitor-enter p0

    .line 413
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/panorama/j;->v:Lcn/nubia/camera/panorama/o;

    invoke-virtual {v0}, Lcn/nubia/camera/panorama/o;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/panorama/j;->k:Lcn/nubia/camera/panorama/PanoPreviewView;

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcn/nubia/camera/panorama/j;->v:Lcn/nubia/camera/panorama/o;

    invoke-virtual {v0}, Lcn/nubia/camera/panorama/o;->H()Landroid/util/Size;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/panorama/j;->x:Landroid/util/Size;

    .line 415
    iget-object v0, p0, Lcn/nubia/camera/panorama/j;->v:Lcn/nubia/camera/panorama/o;

    invoke-virtual {v0}, Lcn/nubia/camera/panorama/o;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->d()Lcn/nubia/camera/k/x$b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->b()Landroid/util/Size;

    move-result-object v0

    .line 417
    iget-object v1, p0, Lcn/nubia/camera/panorama/j;->x:Landroid/util/Size;

    if-eqz v1, :cond_0

    .line 418
    iget-object v2, p0, Lcn/nubia/camera/panorama/j;->l:Lcn/nubia/camera/panorama/f;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v3, p0, Lcn/nubia/camera/panorama/j;->x:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-virtual {v2, v1, v3, v4, v0}, Lcn/nubia/camera/panorama/f;->a(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 421
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private j()V
    .locals 0

    .line 424
    invoke-direct {p0}, Lcn/nubia/camera/panorama/j;->m()V

    return-void
.end method

.method static synthetic j(Lcn/nubia/camera/panorama/j;)Z
    .locals 0

    .line 60
    iget-boolean p0, p0, Lcn/nubia/camera/panorama/j;->w:Z

    return p0
.end method

.method private l()V
    .locals 2

    .line 428
    iget-object v0, p0, Lcn/nubia/camera/panorama/j;->A:Lcn/nubia/camera/panorama/j$b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/panorama/j$b;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcn/nubia/camera/panorama/j;->A:Lcn/nubia/camera/panorama/j$b;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcn/nubia/camera/panorama/j$b;->a(I)V

    return-void

    .line 432
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/panorama/j;->n()V

    return-void
.end method

.method private m()V
    .locals 2

    .line 436
    iget v0, p0, Lcn/nubia/camera/panorama/j;->j:I

    if-eqz v0, :cond_0

    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startPanoCaputre "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/camera/panorama/j;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PanoramaFragment"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 440
    iput-boolean v0, p0, Lcn/nubia/camera/panorama/j;->w:Z

    const/4 v0, 0x1

    .line 441
    iput v0, p0, Lcn/nubia/camera/panorama/j;->j:I

    .line 442
    iget-object v0, p0, Lcn/nubia/camera/panorama/j;->A:Lcn/nubia/camera/panorama/j$b;

    invoke-virtual {v0}, Lcn/nubia/camera/panorama/j$b;->a()V

    const-string v0, "ui_change_panorama"

    .line 443
    invoke-virtual {p0, v0}, Lcn/nubia/camera/panorama/j;->f(Ljava/lang/String;)V

    .line 445
    iget-object v0, p0, Lcn/nubia/camera/panorama/j;->m:Lcn/nubia/camera/panorama/h;

    sget-boolean v1, Lcn/nubia/camera/panorama/j;->a:Z

    invoke-virtual {v0, v1}, Lcn/nubia/camera/panorama/h;->a(Z)V

    .line 446
    iget-object v0, p0, Lcn/nubia/camera/panorama/j;->p:Lcn/nubia/camera/panorama/j$a;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcn/nubia/camera/panorama/j$a;->sendEmptyMessage(I)Z

    return-void
.end method

.method private n()V
    .locals 3

    .line 465
    iget v0, p0, Lcn/nubia/camera/panorama/j;->j:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopAndSavePano "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/camera/panorama/j;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PanoramaFragment"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x2

    .line 469
    iput v0, p0, Lcn/nubia/camera/panorama/j;->j:I

    .line 471
    iget-object v0, p0, Lcn/nubia/camera/panorama/j;->p:Lcn/nubia/camera/panorama/j$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/panorama/j$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 472
    iget-object v0, p0, Lcn/nubia/camera/panorama/j;->p:Lcn/nubia/camera/panorama/j$a;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/panorama/j$a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private o()V
    .locals 2

    .line 476
    iget-object v0, p0, Lcn/nubia/camera/panorama/j;->t:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lcn/nubia/camera/panorama/j;->u:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 478
    iget-object v0, p0, Lcn/nubia/camera/panorama/j;->t:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    sget-object v1, Lcom/android/common/ui/shutterbutton/d;->b:Lcom/android/common/ui/shutterbutton/d;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->a(Lcom/android/common/ui/shutterbutton/d;)V

    const/4 v0, 0x0

    .line 479
    iput v0, p0, Lcn/nubia/camera/panorama/j;->j:I

    const-string v0, "ui_change_panorama"

    .line 480
    invoke-virtual {p0, v0}, Lcn/nubia/camera/panorama/j;->c(Ljava/lang/String;)V

    .line 481
    invoke-virtual {p0, v0}, Lcn/nubia/camera/panorama/j;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private p()Lcn/nubia/k/a/a;
    .locals 1

    .line 512
    invoke-virtual {p0}, Lcn/nubia/camera/panorama/j;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    invoke-virtual {v0}, Lcn/nubia/camera/a/a;->D()Lcn/nubia/k/a/a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPanoramaStop "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; panoState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/camera/panorama/j;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PanoramaFragment"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget v0, p0, Lcn/nubia/camera/panorama/j;->j:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x7

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 334
    :cond_1
    invoke-direct {p0, p1}, Lcn/nubia/camera/panorama/j;->b(I)V

    .line 341
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/panorama/j;->v:Lcn/nubia/camera/panorama/o;

    invoke-virtual {v0}, Lcn/nubia/camera/panorama/o;->e()V

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/4 p1, 0x2

    .line 343
    iput p1, p0, Lcn/nubia/camera/panorama/j;->j:I

    .line 344
    iget-object p1, p0, Lcn/nubia/camera/panorama/j;->t:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->a(Lcom/android/common/ui/shutterbutton/MultiFunctionImageView$a;)V

    .line 345
    iget-object p1, p0, Lcn/nubia/camera/panorama/j;->t:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    sget-object v0, Lcom/android/common/ui/shutterbutton/d;->b:Lcom/android/common/ui/shutterbutton/d;

    invoke-virtual {p1, v0}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->setFunction(Lcom/android/common/ui/shutterbutton/d;)V

    goto :goto_1

    .line 347
    :cond_2
    iput v1, p0, Lcn/nubia/camera/panorama/j;->j:I

    const-string p1, "ui_change_panorama"

    .line 348
    invoke-virtual {p0, p1}, Lcn/nubia/camera/panorama/j;->c(Ljava/lang/String;)V

    .line 349
    invoke-virtual {p0, p1}, Lcn/nubia/camera/panorama/j;->e(Ljava/lang/String;)V

    .line 350
    iget-object p1, p0, Lcn/nubia/camera/panorama/j;->u:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 352
    :goto_1
    invoke-virtual {p0}, Lcn/nubia/camera/panorama/j;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->r()Lcn/nubia/j/a;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcn/nubia/j/a;->b(I)V

    .line 353
    invoke-direct {p0, v1}, Lcn/nubia/camera/panorama/j;->b(Z)V

    return-void
.end method

.method protected a(IZ)V
    .locals 1

    .line 517
    invoke-super {p0, p1, p2}, Lcn/nubia/camera/q/a;->a(IZ)V

    .line 518
    iget p2, p0, Lcn/nubia/camera/panorama/j;->q:I

    if-eq p1, p2, :cond_1

    iget-object p2, p0, Lcn/nubia/camera/panorama/j;->m:Lcn/nubia/camera/panorama/h;

    if-eqz p2, :cond_1

    .line 519
    iput p1, p0, Lcn/nubia/camera/panorama/j;->q:I

    .line 520
    iget p2, p0, Lcn/nubia/camera/panorama/j;->j:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 521
    invoke-direct {p0}, Lcn/nubia/camera/panorama/j;->n()V

    .line 523
    :cond_0
    iget-object p2, p0, Lcn/nubia/camera/panorama/j;->m:Lcn/nubia/camera/panorama/h;

    invoke-virtual {p2, p1}, Lcn/nubia/camera/panorama/h;->b(I)V

    :cond_1
    return-void
.end method

.method public a(Landroid/content/Context;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/h;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;)V
    .locals 0

    .line 248
    invoke-virtual {p0}, Lcn/nubia/camera/panorama/j;->D()Z

    move-result p1

    if-nez p1, :cond_0

    .line 249
    iget-object p1, p0, Lcn/nubia/camera/panorama/j;->v:Lcn/nubia/camera/panorama/o;

    iget-object p3, p0, Lcn/nubia/camera/panorama/j;->B:Lcn/nubia/camera/panorama/j$c;

    invoke-virtual {p1, p3}, Lcn/nubia/camera/panorama/o;->b(Lcn/nubia/camera/k/o;)V

    .line 250
    invoke-direct {p0, p2}, Lcn/nubia/camera/panorama/j;->a(Lcn/nubia/camera/ad/a;)V

    .line 251
    invoke-direct {p0}, Lcn/nubia/camera/panorama/j;->i()V

    :cond_0
    return-void
.end method

.method public a(Landroid/net/Uri;Ljava/lang/String;I)V
    .locals 2

    const-string v0, "PanoramaFragment"

    const-string v1, "onImageSaveDone"

    .line 376
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 379
    new-instance p2, Lcn/nubia/l/b/f;

    invoke-virtual {p0}, Lcn/nubia/camera/panorama/j;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, v1, p1, p3, v0}, Lcn/nubia/l/b/f;-><init>(Landroid/content/Context;Landroid/net/Uri;IZ)V

    .line 380
    invoke-virtual {p0}, Lcn/nubia/camera/panorama/j;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->h()Lcn/nubia/l/a/b;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcn/nubia/l/a/b;->a(Lcn/nubia/l/b/d;)V

    .line 382
    :cond_0
    iget p1, p0, Lcn/nubia/camera/panorama/j;->j:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 383
    invoke-virtual {p0, v0}, Lcn/nubia/camera/panorama/j;->a(I)V

    .line 385
    :cond_1
    iput v0, p0, Lcn/nubia/camera/panorama/j;->j:I

    const-string p1, "ui_change_panorama"

    .line 386
    invoke-virtual {p0, p1}, Lcn/nubia/camera/panorama/j;->c(Ljava/lang/String;)V

    .line 387
    invoke-virtual {p0, p1}, Lcn/nubia/camera/panorama/j;->e(Ljava/lang/String;)V

    .line 388
    iget-object p1, p0, Lcn/nubia/camera/panorama/j;->u:Landroid/widget/RelativeLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 389
    iget-object p1, p0, Lcn/nubia/camera/panorama/j;->t:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    sget-object p2, Lcom/android/common/ui/shutterbutton/d;->b:Lcom/android/common/ui/shutterbutton/d;

    invoke-virtual {p1, p2}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->a(Lcom/android/common/ui/shutterbutton/d;)V

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    if-eqz p1, :cond_1

    .line 311
    iget-object p2, p0, Lcn/nubia/camera/panorama/j;->z:Landroid/widget/Toast;

    if-eqz p2, :cond_0

    .line 312
    invoke-virtual {p2}, Landroid/widget/Toast;->cancel()V

    const/4 p2, 0x0

    .line 313
    iput-object p2, p0, Lcn/nubia/camera/panorama/j;->z:Landroid/widget/Toast;

    .line 315
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/panorama/j;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const v0, 0x7f0f0111

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/camera/panorama/j;->z:Landroid/widget/Toast;

    .line 316
    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 319
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Receive panorama error: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PanoramaFragment"

    invoke-static {p2, p1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 4

    .line 263
    invoke-virtual {p0}, Lcn/nubia/camera/panorama/j;->D()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcn/nubia/camera/panorama/j;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 266
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/panorama/j;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    .line 267
    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object v1

    sget-object v2, Lcn/nubia/camera/d/c;->a:Lcn/nubia/camera/d/c;

    if-ne v1, v2, :cond_4

    .line 268
    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->b()Lcn/nubia/camera/d/b;

    move-result-object v1

    sget-object v2, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    if-ne v1, v2, :cond_4

    .line 269
    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->c()Lcn/nubia/camera/d/e;

    move-result-object v1

    sget-object v2, Lcn/nubia/camera/d/e;->a:Lcn/nubia/camera/d/e;

    if-eq v1, v2, :cond_1

    goto :goto_1

    .line 273
    :cond_1
    iget v0, p0, Lcn/nubia/camera/panorama/j;->j:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    goto :goto_0

    .line 279
    :cond_2
    invoke-direct {p0}, Lcn/nubia/camera/panorama/j;->l()V

    goto :goto_0

    .line 276
    :cond_3
    invoke-direct {p0}, Lcn/nubia/camera/panorama/j;->j()V

    :goto_0
    return-void

    .line 270
    :cond_4
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->b()Lcn/nubia/camera/d/b;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->c()Lcn/nubia/camera/d/e;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PanoramaFragment"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_2
    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 3

    const-string v0, "PanoramaFragment"

    const-string v1, "onPanoramaStart"

    .line 298
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-virtual {p0}, Lcn/nubia/camera/panorama/j;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/a/a;->a(Z)V

    const-string v0, "ui_change_panorama"

    .line 300
    invoke-virtual {p0, v0}, Lcn/nubia/camera/panorama/j;->d(Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lcn/nubia/camera/panorama/j;->u:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 302
    iget-object v0, p0, Lcn/nubia/camera/panorama/j;->t:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    invoke-virtual {v0}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->a()V

    .line 303
    invoke-virtual {p0}, Lcn/nubia/camera/panorama/j;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->r()Lcn/nubia/j/a;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcn/nubia/j/a;->b(I)V

    .line 304
    invoke-direct {p0, v1}, Lcn/nubia/camera/panorama/j;->b(Z)V

    .line 305
    iget-object v0, p0, Lcn/nubia/camera/panorama/j;->v:Lcn/nubia/camera/panorama/o;

    iget-object v1, p0, Lcn/nubia/camera/panorama/j;->y:Lcn/nubia/camera/k/z;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/panorama/o;->a(Lcn/nubia/camera/k/o;)V

    return-void
.end method

.method public e()V
    .locals 2

    const-string v0, "PanoramaFragment"

    const-string v1, "onPanoramaInterrupt"

    .line 358
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-direct {p0}, Lcn/nubia/camera/panorama/j;->l()V

    return-void
.end method

.method protected e(Ljava/lang/String;)V
    .locals 0

    .line 611
    invoke-super {p0, p1}, Lcn/nubia/camera/q/a;->e(Ljava/lang/String;)V

    .line 612
    invoke-virtual {p0}, Lcn/nubia/camera/panorama/j;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/d/a;->a()V

    return-void
.end method

.method protected f(Ljava/lang/String;)V
    .locals 3

    .line 617
    invoke-super {p0, p1}, Lcn/nubia/camera/q/a;->f(Ljava/lang/String;)V

    .line 618
    invoke-virtual {p0}, Lcn/nubia/camera/panorama/j;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    const/4 v0, 0x5

    new-array v0, v0, [Lcn/nubia/camera/d/d;

    sget-object v1, Lcn/nubia/camera/d/e;->a:Lcn/nubia/camera/d/e;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcn/nubia/camera/d/c;->a:Lcn/nubia/camera/d/c;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcn/nubia/camera/d/b;->b:Lcn/nubia/camera/d/b;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcn/nubia/camera/d/b;->e:Lcn/nubia/camera/d/b;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Lcn/nubia/camera/d/a;->a([Lcn/nubia/camera/d/d;)V

    return-void
.end method

.method protected i_()V
    .locals 0

    return-void
.end method

.method public k()Z
    .locals 3

    .line 629
    iget v0, p0, Lcn/nubia/camera/panorama/j;->j:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 638
    invoke-super {p0}, Lcn/nubia/camera/q/a;->k()Z

    move-result v0

    return v0

    :cond_0
    return v1

    .line 633
    :cond_1
    invoke-direct {p0}, Lcn/nubia/camera/panorama/j;->l()V

    return v1
.end method

.method public l_()V
    .locals 1

    const/4 v0, 0x1

    .line 368
    iput-boolean v0, p0, Lcn/nubia/camera/panorama/j;->w:Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 171
    invoke-super {p0, p1}, Lcn/nubia/camera/q/a;->onCreate(Landroid/os/Bundle;)V

    .line 172
    iget-boolean p1, p0, Lcn/nubia/camera/panorama/j;->d:Z

    if-eqz p1, :cond_0

    return-void

    .line 173
    :cond_0
    new-instance p1, Lcn/nubia/camera/panorama/j$b;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcn/nubia/camera/panorama/j$b;-><init>(Lcn/nubia/camera/panorama/j$1;)V

    iput-object p1, p0, Lcn/nubia/camera/panorama/j;->A:Lcn/nubia/camera/panorama/j$b;

    .line 174
    new-instance p1, Lcn/nubia/camera/panorama/j$a;

    invoke-static {}, Lcn/nubia/camera/panorama/k;->a()Lcn/nubia/camera/panorama/k;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/panorama/k;->b()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcn/nubia/camera/panorama/j$a;-><init>(Lcn/nubia/camera/panorama/j;Landroid/os/Looper;)V

    iput-object p1, p0, Lcn/nubia/camera/panorama/j;->p:Lcn/nubia/camera/panorama/j$a;

    .line 175
    invoke-virtual {p0}, Lcn/nubia/camera/panorama/j;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/nubia/camera/panorama/j;->a(Lcn/nubia/camera/ad/a;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 151
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/camera/q/a;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 152
    iget-boolean p3, p0, Lcn/nubia/camera/panorama/j;->d:Z

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const p3, 0x7f0c0086

    const/4 v0, 0x0

    .line 154
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 155
    invoke-direct {p0, p1}, Lcn/nubia/camera/panorama/j;->d(Landroid/view/View;)V

    .line 156
    move-object p2, p1

    check-cast p2, Landroid/view/ViewGroup;

    const/4 p3, 0x1

    invoke-static {p0, p3, v0, p3, p2}, Lcn/nubia/camera/q/d;->a(Lcn/nubia/camera/q/a;ZZZLandroid/view/ViewGroup;)Lcn/nubia/camera/q/c;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/camera/panorama/j;->i:Lcn/nubia/camera/q/c;

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 229
    iget-boolean v0, p0, Lcn/nubia/camera/panorama/j;->d:Z

    if-eqz v0, :cond_0

    .line 230
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onDestroy()V

    return-void

    .line 233
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/panorama/j;->m:Lcn/nubia/camera/panorama/h;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 234
    invoke-virtual {v0, v1}, Lcn/nubia/camera/panorama/h;->a(Lcn/nubia/camera/panorama/i;)V

    .line 235
    iput-object v1, p0, Lcn/nubia/camera/panorama/j;->m:Lcn/nubia/camera/panorama/h;

    .line 238
    :cond_1
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 162
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onDestroyView()V

    .line 163
    iget-boolean v0, p0, Lcn/nubia/camera/panorama/j;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 166
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/panorama/j;->i:Lcn/nubia/camera/q/c;

    invoke-static {p0, v0}, Lcn/nubia/camera/q/d;->a(Lcn/nubia/camera/q/a;Lcn/nubia/camera/q/c;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 212
    iget-boolean v0, p0, Lcn/nubia/camera/panorama/j;->d:Z

    if-eqz v0, :cond_0

    .line 213
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onPause()V

    return-void

    :cond_0
    const-string v0, "PanoramaFragment"

    const-string v1, "onPause"

    .line 217
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-direct {p0}, Lcn/nubia/camera/panorama/j;->n()V

    .line 220
    iget-object v0, p0, Lcn/nubia/camera/panorama/j;->m:Lcn/nubia/camera/panorama/h;

    invoke-virtual {v0}, Lcn/nubia/camera/panorama/h;->a()V

    .line 222
    iget-object v0, p0, Lcn/nubia/camera/panorama/j;->v:Lcn/nubia/camera/panorama/o;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/panorama/o;->b(Lcn/nubia/camera/k/o;)V

    .line 223
    iget-object v0, p0, Lcn/nubia/camera/panorama/j;->k:Lcn/nubia/camera/panorama/PanoPreviewView;

    invoke-virtual {v0}, Lcn/nubia/camera/panorama/PanoPreviewView;->b()V

    .line 224
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 8

    .line 188
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onResume()V

    .line 189
    iget-boolean v0, p0, Lcn/nubia/camera/panorama/j;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "PanoramaFragment"

    const-string v1, "onResume"

    .line 191
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/panorama/j;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/b/e;->a(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    .line 194
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_FOCAL_LENGTHS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    .line 195
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_APERTURES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 196
    iget-object v2, p0, Lcn/nubia/camera/panorama/j;->m:Lcn/nubia/camera/panorama/h;

    invoke-virtual {p0}, Lcn/nubia/camera/panorama/j;->A()Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-virtual {p0}, Lcn/nubia/camera/panorama/j;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {p0}, Lcn/nubia/camera/panorama/j;->p()Lcn/nubia/k/a/a;

    move-result-object v5

    const/4 v6, 0x0

    aget v1, v1, v6

    aget v7, v0, v6

    move v6, v1

    invoke-virtual/range {v2 .. v7}, Lcn/nubia/camera/panorama/h;->a(Lcn/nubia/camera/ad/a;Landroid/content/Context;Lcn/nubia/k/a/a;FF)V

    .line 197
    iget-object v0, p0, Lcn/nubia/camera/panorama/j;->m:Lcn/nubia/camera/panorama/h;

    iget-object v1, p0, Lcn/nubia/camera/panorama/j;->l:Lcn/nubia/camera/panorama/f;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/panorama/h;->a(Lcn/nubia/camera/panorama/f;)V

    .line 198
    iget-object v0, p0, Lcn/nubia/camera/panorama/j;->m:Lcn/nubia/camera/panorama/h;

    invoke-virtual {v0, p0}, Lcn/nubia/camera/panorama/h;->a(Lcn/nubia/camera/panorama/i;)V

    .line 200
    iget-object v0, p0, Lcn/nubia/camera/panorama/j;->v:Lcn/nubia/camera/panorama/o;

    if-eqz v0, :cond_1

    .line 201
    iget-object v1, p0, Lcn/nubia/camera/panorama/j;->B:Lcn/nubia/camera/panorama/j$c;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/panorama/o;->b(Lcn/nubia/camera/k/o;)V

    .line 203
    :cond_1
    invoke-direct {p0}, Lcn/nubia/camera/panorama/j;->o()V

    .line 204
    iget-object v0, p0, Lcn/nubia/camera/panorama/j;->k:Lcn/nubia/camera/panorama/PanoPreviewView;

    invoke-virtual {v0}, Lcn/nubia/camera/panorama/PanoPreviewView;->a()V

    .line 205
    invoke-virtual {p0}, Lcn/nubia/camera/panorama/j;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->a()V

    .line 206
    invoke-virtual {p0}, Lcn/nubia/camera/panorama/j;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->r()Lcn/nubia/j/a;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcn/nubia/j/a;->a(I)V

    return-void
.end method
