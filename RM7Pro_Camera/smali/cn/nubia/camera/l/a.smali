.class public Lcn/nubia/camera/l/a;
.super Lcn/nubia/camera/q/a;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/j/d;
.implements Lcn/nubia/camera/z/e;
.implements Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/l/a$a;,
        Lcn/nubia/camera/l/a$c;,
        Lcn/nubia/camera/l/a$b;
    }
.end annotation


# instance fields
.field private final a:Z

.field private b:Lcn/nubia/camera/l/e;

.field private c:Lcn/nubia/camera/ad/a;

.field private i:Landroid/content/Context;

.field private j:Lcn/nubia/k/a/a;

.field private k:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/widget/RelativeLayout;

.field private n:Landroid/widget/RelativeLayout;

.field private o:Lcn/nubia/camera/k;

.field private p:Lcn/nubia/camera/l/a$c;

.field private q:Z

.field private r:Lcn/nubia/camera/g/e;

.field private final s:Ljava/lang/Object;

.field private t:Lcn/nubia/camera/q/c;

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Lcn/nubia/camera/l/a$b;

.field private y:Lcn/nubia/camera/k/ab$a;

.field private z:Lcn/nubia/camera/n/d;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 110
    invoke-direct {p0}, Lcn/nubia/camera/q/a;-><init>()V

    const-string v0, "DumpNubiaDngRaw"

    const/4 v1, 0x3

    .line 83
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/camera/l/a;->a:Z

    const/4 v0, 0x0

    .line 92
    iput-object v0, p0, Lcn/nubia/camera/l/a;->m:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    .line 96
    iput-boolean v1, p0, Lcn/nubia/camera/l/a;->q:Z

    .line 100
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcn/nubia/camera/l/a;->s:Ljava/lang/Object;

    .line 102
    iput-object v0, p0, Lcn/nubia/camera/l/a;->t:Lcn/nubia/camera/q/c;

    .line 431
    new-instance v1, Lcn/nubia/camera/l/a$b;

    invoke-direct {v1, p0}, Lcn/nubia/camera/l/a$b;-><init>(Lcn/nubia/camera/l/a;)V

    iput-object v1, p0, Lcn/nubia/camera/l/a;->x:Lcn/nubia/camera/l/a$b;

    .line 649
    iput-object v0, p0, Lcn/nubia/camera/l/a;->z:Lcn/nubia/camera/n/d;

    return-void
.end method

.method public constructor <init>(ILcn/nubia/camera/l/e;)V
    .locals 1

    .line 116
    invoke-direct {p0, p1}, Lcn/nubia/camera/q/a;-><init>(I)V

    const-string p1, "DumpNubiaDngRaw"

    const/4 v0, 0x3

    .line 83
    invoke-static {p1, v0}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;I)Z

    move-result p1

    iput-boolean p1, p0, Lcn/nubia/camera/l/a;->a:Z

    const/4 p1, 0x0

    .line 92
    iput-object p1, p0, Lcn/nubia/camera/l/a;->m:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    .line 96
    iput-boolean v0, p0, Lcn/nubia/camera/l/a;->q:Z

    .line 100
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/l/a;->s:Ljava/lang/Object;

    .line 102
    iput-object p1, p0, Lcn/nubia/camera/l/a;->t:Lcn/nubia/camera/q/c;

    .line 431
    new-instance v0, Lcn/nubia/camera/l/a$b;

    invoke-direct {v0, p0}, Lcn/nubia/camera/l/a$b;-><init>(Lcn/nubia/camera/l/a;)V

    iput-object v0, p0, Lcn/nubia/camera/l/a;->x:Lcn/nubia/camera/l/a$b;

    .line 649
    iput-object p1, p0, Lcn/nubia/camera/l/a;->z:Lcn/nubia/camera/n/d;

    .line 117
    iput-object p2, p0, Lcn/nubia/camera/l/a;->b:Lcn/nubia/camera/l/e;

    return-void
.end method

.method private J()V
    .locals 2

    .line 695
    iget-object v0, p0, Lcn/nubia/camera/l/a;->s:Ljava/lang/Object;

    monitor-enter v0

    .line 696
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/l/a;->z:Lcn/nubia/camera/n/d;

    invoke-virtual {v1}, Lcn/nubia/camera/n/d;->a()V

    .line 697
    invoke-virtual {p0}, Lcn/nubia/camera/l/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->L()Lcom/android/common/c/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/c/e;->h()V

    const/4 v1, 0x0

    .line 698
    iput-object v1, p0, Lcn/nubia/camera/l/a;->z:Lcn/nubia/camera/n/d;

    .line 699
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 700
    iget-object v0, p0, Lcn/nubia/camera/l/a;->b:Lcn/nubia/camera/l/e;

    iget-object v1, p0, Lcn/nubia/camera/l/a;->y:Lcn/nubia/camera/k/ab$a;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/l/e;->b(Lcn/nubia/camera/k/ab$a;)V

    return-void

    :catchall_0
    move-exception v1

    .line 699
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static synthetic a(Lcn/nubia/camera/l/a;)Lcn/nubia/camera/k;
    .locals 0

    .line 78
    iget-object p0, p0, Lcn/nubia/camera/l/a;->o:Lcn/nubia/camera/k;

    return-object p0
.end method

.method public static a(Lcn/nubia/camera/l/e;)Lcn/nubia/camera/l/a;
    .locals 2

    .line 122
    new-instance v0, Lcn/nubia/camera/l/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcn/nubia/camera/l/a;-><init>(ILcn/nubia/camera/l/e;)V

    return-object v0
.end method

.method private a(J)V
    .locals 2

    .line 342
    iget-object v0, p0, Lcn/nubia/camera/l/a;->l:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 343
    iget-object v0, p0, Lcn/nubia/camera/l/a;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 344
    iget-object v0, p0, Lcn/nubia/camera/l/a;->k:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->setVisibility(I)V

    .line 345
    iget-object v0, p0, Lcn/nubia/camera/l/a;->k:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    sget-object v1, Lcom/android/common/ui/shutterbutton/d;->e:Lcom/android/common/ui/shutterbutton/d;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->setFunction(Lcom/android/common/ui/shutterbutton/d;)V

    const-string v0, "ui_change_dng"

    .line 346
    invoke-virtual {p0, v0}, Lcn/nubia/camera/l/a;->d(Ljava/lang/String;)V

    .line 347
    new-instance v0, Lcn/nubia/camera/l/a$c;

    invoke-direct {v0, p0, p1, p2}, Lcn/nubia/camera/l/a$c;-><init>(Lcn/nubia/camera/l/a;J)V

    iput-object v0, p0, Lcn/nubia/camera/l/a;->p:Lcn/nubia/camera/l/a$c;

    .line 348
    invoke-virtual {v0}, Lcn/nubia/camera/l/a$c;->start()V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/l/a;Z)Z
    .locals 0

    .line 78
    iput-boolean p1, p0, Lcn/nubia/camera/l/a;->u:Z

    return p1
.end method

.method static synthetic b(Lcn/nubia/camera/l/a;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcn/nubia/camera/l/a;->m()V

    return-void
.end method

.method private b(Z)V
    .locals 0

    return-void
.end method

.method static synthetic b(Lcn/nubia/camera/l/a;Z)Z
    .locals 0

    .line 78
    iput-boolean p1, p0, Lcn/nubia/camera/l/a;->w:Z

    return p1
.end method

.method static synthetic c(Lcn/nubia/camera/l/a;)Lcn/nubia/camera/l/a$b;
    .locals 0

    .line 78
    iget-object p0, p0, Lcn/nubia/camera/l/a;->x:Lcn/nubia/camera/l/a$b;

    return-object p0
.end method

.method static synthetic c(Lcn/nubia/camera/l/a;Z)Z
    .locals 0

    .line 78
    iput-boolean p1, p0, Lcn/nubia/camera/l/a;->v:Z

    return p1
.end method

.method static synthetic d(Lcn/nubia/camera/l/a;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 78
    invoke-virtual {p0}, Lcn/nubia/camera/l/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method private d(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0900ac

    .line 160
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/camera/l/a;->b(Landroid/view/View;)V

    .line 161
    invoke-direct {p0, p1}, Lcn/nubia/camera/l/a;->e(Landroid/view/View;)V

    const v0, 0x7f0902f8

    .line 162
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    iput-object v0, p0, Lcn/nubia/camera/l/a;->k:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    const v0, 0x7f0901b8

    .line 164
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/nubia/camera/l/a;->l:Landroid/widget/ImageView;

    .line 165
    iget-object p1, p0, Lcn/nubia/camera/l/a;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p1}, Lcn/nubia/camera/l/a;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic e(Lcn/nubia/camera/l/a;)Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;
    .locals 0

    .line 78
    iget-object p0, p0, Lcn/nubia/camera/l/a;->k:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    return-object p0
.end method

.method private e(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0902f7

    .line 169
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/nubia/camera/l/a;->m:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    .line 170
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const v0, 0x7f090079

    .line 171
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcn/nubia/camera/l/a;->n:Landroid/widget/RelativeLayout;

    .line 172
    new-instance v0, Lcn/nubia/camera/l/a$1;

    invoke-direct {v0, p0}, Lcn/nubia/camera/l/a$1;-><init>(Lcn/nubia/camera/l/a;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    invoke-direct {p0}, Lcn/nubia/camera/l/a;->j()V

    return-void
.end method

.method static synthetic f(Lcn/nubia/camera/l/a;)Z
    .locals 0

    .line 78
    iget-boolean p0, p0, Lcn/nubia/camera/l/a;->q:Z

    return p0
.end method

.method static synthetic g(Lcn/nubia/camera/l/a;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 78
    invoke-virtual {p0}, Lcn/nubia/camera/l/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic h(Lcn/nubia/camera/l/a;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 78
    iget-object p0, p0, Lcn/nubia/camera/l/a;->c:Lcn/nubia/camera/ad/a;

    return-object p0
.end method

.method static synthetic i(Lcn/nubia/camera/l/a;)Z
    .locals 0

    .line 78
    iget-boolean p0, p0, Lcn/nubia/camera/l/a;->a:Z

    return p0
.end method

.method static synthetic j(Lcn/nubia/camera/l/a;)Lcn/nubia/k/a/a;
    .locals 0

    .line 78
    iget-object p0, p0, Lcn/nubia/camera/l/a;->j:Lcn/nubia/k/a/a;

    return-object p0
.end method

.method private j()V
    .locals 2

    .line 184
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->ai()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcn/nubia/camera/l/a;->n:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 187
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/l/a;->n:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method static synthetic k(Lcn/nubia/camera/l/a;)Ljava/lang/Object;
    .locals 0

    .line 78
    iget-object p0, p0, Lcn/nubia/camera/l/a;->s:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic l(Lcn/nubia/camera/l/a;)Lcn/nubia/camera/n/d;
    .locals 0

    .line 78
    iget-object p0, p0, Lcn/nubia/camera/l/a;->z:Lcn/nubia/camera/n/d;

    return-object p0
.end method

.method static synthetic m(Lcn/nubia/camera/l/a;)Lcn/nubia/camera/l/e;
    .locals 0

    .line 78
    iget-object p0, p0, Lcn/nubia/camera/l/a;->b:Lcn/nubia/camera/l/e;

    return-object p0
.end method

.method private m()V
    .locals 0

    .line 192
    invoke-direct {p0}, Lcn/nubia/camera/l/a;->n()V

    return-void
.end method

.method private n()V
    .locals 2

    .line 196
    invoke-direct {p0}, Lcn/nubia/camera/l/a;->r()V

    .line 197
    invoke-direct {p0}, Lcn/nubia/camera/l/a;->o()V

    .line 200
    invoke-virtual {p0}, Lcn/nubia/camera/l/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/c;->c:Lcn/nubia/camera/d/c;

    if-ne v0, v1, :cond_0

    .line 201
    invoke-virtual {p0}, Lcn/nubia/camera/l/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/a/a;->a(Z)V

    .line 205
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/l/a;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->P()Lcn/nubia/camera/z/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/z/b;->c()V

    return-void
.end method

.method private o()V
    .locals 2

    .line 210
    invoke-virtual {p0}, Lcn/nubia/camera/l/a;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->D()Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    iget-object v0, p0, Lcn/nubia/camera/l/a;->b:Lcn/nubia/camera/l/e;

    new-instance v1, Lcn/nubia/camera/l/a$2;

    invoke-direct {v1, p0}, Lcn/nubia/camera/l/a$2;-><init>(Lcn/nubia/camera/l/a;)V

    invoke-virtual {v0, v1}, Lcn/nubia/camera/l/e;->a(Lcn/nubia/camera/k/af$a;)V

    .line 219
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/l/a;->i()V

    return-void
.end method

.method private r()V
    .locals 3

    .line 363
    iget-object v0, p0, Lcn/nubia/camera/l/a;->p:Lcn/nubia/camera/l/a$c;

    if-nez v0, :cond_0

    return-void

    .line 365
    :cond_0
    invoke-virtual {v0}, Lcn/nubia/camera/l/a$c;->a()V

    .line 367
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/l/a;->p:Lcn/nubia/camera/l/a$c;

    invoke-virtual {v0}, Lcn/nubia/camera/l/a$c;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 369
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InterruptedException when mProgressThread.join() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DngFragment"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/l/a;->x:Lcn/nubia/camera/l/a$b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/l/a$b;->removeMessages(I)V

    const/4 v0, 0x0

    .line 372
    iput-object v0, p0, Lcn/nubia/camera/l/a;->p:Lcn/nubia/camera/l/a$c;

    return-void
.end method

.method private s()V
    .locals 3

    .line 651
    iget-object v0, p0, Lcn/nubia/camera/l/a;->s:Ljava/lang/Object;

    monitor-enter v0

    .line 652
    :try_start_0
    new-instance v1, Lcn/nubia/camera/n/d;

    invoke-direct {v1}, Lcn/nubia/camera/n/d;-><init>()V

    iput-object v1, p0, Lcn/nubia/camera/l/a;->z:Lcn/nubia/camera/n/d;

    .line 653
    invoke-virtual {p0}, Lcn/nubia/camera/l/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->L()Lcom/android/common/c/e;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/l/a;->z:Lcn/nubia/camera/n/d;

    invoke-virtual {v1, v2}, Lcom/android/common/c/e;->a(Lcom/android/common/c/f$a;)V

    .line 654
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 656
    new-instance v0, Lcn/nubia/camera/l/a$7;

    invoke-direct {v0, p0}, Lcn/nubia/camera/l/a$7;-><init>(Lcn/nubia/camera/l/a;)V

    iput-object v0, p0, Lcn/nubia/camera/l/a;->y:Lcn/nubia/camera/k/ab$a;

    .line 691
    iget-object v1, p0, Lcn/nubia/camera/l/a;->b:Lcn/nubia/camera/l/e;

    invoke-virtual {v1, v0}, Lcn/nubia/camera/l/e;->a(Lcn/nubia/camera/k/ab$a;)V

    return-void

    :catchall_0
    move-exception v1

    .line 654
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 7

    .line 268
    invoke-virtual {p0}, Lcn/nubia/camera/l/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->e:Lcn/nubia/camera/d/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/d;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 272
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/l/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/a/a;->a(Z)V

    .line 274
    new-instance v0, Lcn/nubia/camera/g/e;

    iget-object v1, p0, Lcn/nubia/camera/l/a;->c:Lcn/nubia/camera/ad/a;

    iget-object v2, p0, Lcn/nubia/camera/l/a;->b:Lcn/nubia/camera/l/e;

    invoke-virtual {p0}, Lcn/nubia/camera/l/a;->getParentFragment()Landroid/app/Fragment;

    move-result-object v3

    check-cast v3, Lcn/nubia/camera/q/i;

    invoke-virtual {v3}, Lcn/nubia/camera/q/i;->P()Lcn/nubia/camera/z/b;

    move-result-object v3

    new-instance v4, Lcn/nubia/camera/l/a$3;

    invoke-direct {v4, p0}, Lcn/nubia/camera/l/a$3;-><init>(Lcn/nubia/camera/l/a;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/nubia/camera/g/e;-><init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;Lcn/nubia/camera/z/b;Lcn/nubia/camera/g/c;)V

    iput-object v0, p0, Lcn/nubia/camera/l/a;->r:Lcn/nubia/camera/g/e;

    const/4 v0, 0x0

    .line 282
    iput-boolean v0, p0, Lcn/nubia/camera/l/a;->v:Z

    .line 283
    iput-boolean v0, p0, Lcn/nubia/camera/l/a;->u:Z

    .line 284
    iput-boolean v0, p0, Lcn/nubia/camera/l/a;->w:Z

    .line 287
    new-instance v5, Lcn/nubia/camera/l/a$a;

    const/4 v0, 0x0

    invoke-direct {v5, p0, v0}, Lcn/nubia/camera/l/a$a;-><init>(Lcn/nubia/camera/l/a;Lcn/nubia/camera/l/a$1;)V

    .line 288
    iget-object v1, p0, Lcn/nubia/camera/l/a;->b:Lcn/nubia/camera/l/e;

    new-instance v2, Lcn/nubia/camera/g/h;

    iget-object v0, p0, Lcn/nubia/camera/l/a;->i:Landroid/content/Context;

    iget-object v3, p0, Lcn/nubia/camera/l/a;->c:Lcn/nubia/camera/ad/a;

    .line 289
    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->r()Lcn/nubia/j/a;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcn/nubia/camera/g/h;-><init>(Landroid/content/Context;Lcn/nubia/j/a;)V

    iget-object v0, p0, Lcn/nubia/camera/l/a;->r:Lcn/nubia/camera/g/e;

    invoke-virtual {v0}, Lcn/nubia/camera/g/e;->a()Lcn/nubia/camera/k/o;

    move-result-object v3

    new-instance v6, Lcn/nubia/camera/l/a$4;

    invoke-direct {v6, p0}, Lcn/nubia/camera/l/a$4;-><init>(Lcn/nubia/camera/l/a;)V

    move-object v4, v5

    .line 288
    invoke-virtual/range {v1 .. v6}, Lcn/nubia/camera/l/e;->a(Lcn/nubia/camera/k/q;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/u;Lcn/nubia/camera/k/af$a;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 299
    iget-object v0, p0, Lcn/nubia/camera/l/a;->b:Lcn/nubia/camera/l/e;

    invoke-virtual {v0}, Lcn/nubia/camera/l/e;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->j()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 301
    sget-wide v2, Lcn/nubia/camera/aq/f;->h:J

    div-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcn/nubia/camera/l/a;->a(J)V

    .line 302
    invoke-virtual {p0}, Lcn/nubia/camera/l/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/c;->c:Lcn/nubia/camera/d/c;

    if-eq v0, v1, :cond_1

    .line 303
    invoke-virtual {p0}, Lcn/nubia/camera/l/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->r()Lcn/nubia/j/a;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcn/nubia/j/a;->b(I)V

    .line 306
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/l/a;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->e:Lcn/nubia/camera/d/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/b;)V

    :cond_2
    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 2

    .line 318
    invoke-virtual {p0}, Lcn/nubia/camera/l/a;->D()Z

    move-result v0

    if-nez v0, :cond_1

    .line 319
    iget-boolean v0, p0, Lcn/nubia/camera/l/a;->u:Z

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcn/nubia/camera/l/a;->v:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcn/nubia/camera/l/a;->w:Z

    if-nez v1, :cond_0

    .line 320
    iget-object v0, p0, Lcn/nubia/camera/l/a;->x:Lcn/nubia/camera/l/a$b;

    new-instance v1, Lcn/nubia/camera/l/a$5;

    invoke-direct {v1, p0}, Lcn/nubia/camera/l/a$5;-><init>(Lcn/nubia/camera/l/a;)V

    invoke-virtual {v0, v1}, Lcn/nubia/camera/l/a$b;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 326
    iget-boolean v0, p0, Lcn/nubia/camera/l/a;->v:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcn/nubia/camera/l/a;->w:Z

    if-eqz v0, :cond_1

    .line 327
    invoke-virtual {p0}, Lcn/nubia/camera/l/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/b;)V

    .line 328
    iget-object v0, p0, Lcn/nubia/camera/l/a;->x:Lcn/nubia/camera/l/a$b;

    new-instance v1, Lcn/nubia/camera/l/a$6;

    invoke-direct {v1, p0}, Lcn/nubia/camera/l/a$6;-><init>(Lcn/nubia/camera/l/a;)V

    invoke-virtual {v0, v1}, Lcn/nubia/camera/l/a$b;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method e()V
    .locals 2

    .line 352
    iget-boolean v0, p0, Lcn/nubia/camera/l/a;->q:Z

    if-eqz v0, :cond_0

    return-void

    .line 354
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/l/a;->r()V

    .line 355
    iget-object v0, p0, Lcn/nubia/camera/l/a;->l:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 356
    iget-object v0, p0, Lcn/nubia/camera/l/a;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 357
    iget-object v0, p0, Lcn/nubia/camera/l/a;->k:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->setVisibility(I)V

    .line 358
    iget-object v0, p0, Lcn/nubia/camera/l/a;->k:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->a(IZ)V

    const-string v0, "ui_change_dng"

    .line 359
    invoke-virtual {p0, v0}, Lcn/nubia/camera/l/a;->c(Ljava/lang/String;)V

    return-void
.end method

.method public g_()V
    .locals 0

    return-void
.end method

.method public i()V
    .locals 2

    .line 376
    iget-object v0, p0, Lcn/nubia/camera/l/a;->x:Lcn/nubia/camera/l/a$b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/l/a$b;->removeMessages(I)V

    .line 377
    iget-object v0, p0, Lcn/nubia/camera/l/a;->k:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->setVisibility(I)V

    .line 378
    iget-object v0, p0, Lcn/nubia/camera/l/a;->k:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    sget-object v1, Lcom/android/common/ui/shutterbutton/d;->b:Lcom/android/common/ui/shutterbutton/d;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->setFunction(Lcom/android/common/ui/shutterbutton/d;)V

    return-void
.end method

.method protected i_()V
    .locals 0

    return-void
.end method

.method public k()Z
    .locals 2

    .line 250
    iget-object v0, p0, Lcn/nubia/camera/l/a;->p:Lcn/nubia/camera/l/a$c;

    if-eqz v0, :cond_2

    .line 251
    invoke-virtual {p0}, Lcn/nubia/camera/l/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->b()Lcn/nubia/camera/d/b;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->e:Lcn/nubia/camera/d/b;

    if-ne v0, v1, :cond_2

    .line 252
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->ai()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/camera/l/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/c;->c:Lcn/nubia/camera/d/c;

    if-ne v0, v1, :cond_2

    .line 253
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/l/a;->o:Lcn/nubia/camera/k;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 254
    invoke-direct {p0}, Lcn/nubia/camera/l/a;->n()V

    :cond_1
    return v1

    .line 258
    :cond_2
    invoke-super {p0}, Lcn/nubia/camera/q/a;->k()Z

    move-result v0

    return v0
.end method

.method public l()V
    .locals 4

    .line 395
    invoke-virtual {p0}, Lcn/nubia/camera/l/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->b()Lcn/nubia/camera/d/b;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->e:Lcn/nubia/camera/d/b;

    if-ne v0, v1, :cond_0

    .line 396
    invoke-virtual {p0}, Lcn/nubia/camera/l/a;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->D()Z

    move-result v0

    if-nez v0, :cond_0

    .line 398
    iget-object v0, p0, Lcn/nubia/camera/l/a;->b:Lcn/nubia/camera/l/e;

    invoke-virtual {v0}, Lcn/nubia/camera/l/e;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->j()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 400
    invoke-direct {p0}, Lcn/nubia/camera/l/a;->m()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 128
    invoke-super {p0, p1}, Lcn/nubia/camera/q/a;->onCreate(Landroid/os/Bundle;)V

    .line 129
    iget-boolean p1, p0, Lcn/nubia/camera/l/a;->d:Z

    if-eqz p1, :cond_0

    return-void

    .line 132
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/l/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/l/a;->c:Lcn/nubia/camera/ad/a;

    .line 133
    invoke-virtual {p0}, Lcn/nubia/camera/l/a;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/l/a;->i:Landroid/content/Context;

    .line 134
    invoke-virtual {p0}, Lcn/nubia/camera/l/a;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/a/a;

    invoke-virtual {p1}, Lcn/nubia/camera/a/a;->D()Lcn/nubia/k/a/a;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/l/a;->j:Lcn/nubia/k/a/a;

    .line 135
    new-instance p1, Lcn/nubia/camera/k;

    invoke-virtual {p0}, Lcn/nubia/camera/l/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcn/nubia/camera/k;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcn/nubia/camera/l/a;->o:Lcn/nubia/camera/k;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 140
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/camera/q/a;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 141
    iget-boolean p3, p0, Lcn/nubia/camera/l/a;->d:Z

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const p3, 0x7f0c0046

    const/4 v0, 0x0

    .line 144
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 145
    invoke-direct {p0, p1}, Lcn/nubia/camera/l/a;->d(Landroid/view/View;)V

    .line 146
    move-object p2, p1

    check-cast p2, Landroid/view/ViewGroup;

    const/4 p3, 0x1

    invoke-static {p0, p3, p3, p3, p2}, Lcn/nubia/camera/q/d;->a(Lcn/nubia/camera/q/a;ZZZLandroid/view/ViewGroup;)Lcn/nubia/camera/q/c;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/camera/l/a;->t:Lcn/nubia/camera/q/c;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 152
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onDestroyView()V

    .line 153
    iget-boolean v0, p0, Lcn/nubia/camera/l/a;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/l/a;->t:Lcn/nubia/camera/q/c;

    invoke-static {p0, v0}, Lcn/nubia/camera/q/d;->a(Lcn/nubia/camera/q/a;Lcn/nubia/camera/q/c;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 239
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onPause()V

    .line 240
    iget-boolean v0, p0, Lcn/nubia/camera/l/a;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 244
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/l/a;->J()V

    .line 245
    iget-object v0, p0, Lcn/nubia/camera/l/a;->b:Lcn/nubia/camera/l/e;

    invoke-virtual {v0}, Lcn/nubia/camera/l/e;->e()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 224
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onResume()V

    .line 225
    iget-boolean v0, p0, Lcn/nubia/camera/l/a;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 228
    iput-boolean v0, p0, Lcn/nubia/camera/l/a;->q:Z

    .line 230
    invoke-virtual {p0}, Lcn/nubia/camera/l/a;->e()V

    .line 231
    invoke-direct {p0}, Lcn/nubia/camera/l/a;->s()V

    return-void
.end method

.method public p()V
    .locals 1

    const/4 v0, 0x0

    .line 407
    invoke-direct {p0, v0}, Lcn/nubia/camera/l/a;->b(Z)V

    return-void
.end method

.method public q()V
    .locals 1

    const/4 v0, 0x1

    .line 412
    invoke-direct {p0, v0}, Lcn/nubia/camera/l/a;->b(Z)V

    return-void
.end method
