.class public Lcn/nubia/camera/ar/a;
.super Lcn/nubia/camera/q/a;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/z/e;
.implements Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/ar/a$b;,
        Lcn/nubia/camera/ar/a$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/RelativeLayout;

.field private b:Landroid/widget/RelativeLayout;

.field private c:Lcn/nubia/camera/k;

.field private i:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

.field private j:Landroid/widget/ImageView;

.field private k:Lcom/android/common/ui/RotateLayout;

.field private l:Lcn/nubia/camera/ar/a$b;

.field private m:Z

.field private n:Lcn/nubia/camera/ar/e;

.field private o:Landroid/widget/RelativeLayout;

.field private p:Lcn/nubia/camera/g/e;

.field private q:Lcn/nubia/camera/g/h;

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Ljava/lang/Object;

.field private w:Lcn/nubia/camera/ar/a$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 73
    invoke-direct {p0}, Lcn/nubia/camera/q/a;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcn/nubia/camera/ar/a;->a:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    .line 62
    iput-boolean v1, p0, Lcn/nubia/camera/ar/a;->m:Z

    .line 64
    iput-object v0, p0, Lcn/nubia/camera/ar/a;->o:Landroid/widget/RelativeLayout;

    .line 264
    iput-boolean v1, p0, Lcn/nubia/camera/ar/a;->r:Z

    .line 265
    iput-boolean v1, p0, Lcn/nubia/camera/ar/a;->s:Z

    .line 266
    iput-boolean v1, p0, Lcn/nubia/camera/ar/a;->t:Z

    .line 267
    iput-boolean v1, p0, Lcn/nubia/camera/ar/a;->u:Z

    .line 268
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/ar/a;->v:Ljava/lang/Object;

    .line 358
    new-instance v0, Lcn/nubia/camera/ar/a$a;

    invoke-direct {v0, p0}, Lcn/nubia/camera/ar/a$a;-><init>(Lcn/nubia/camera/ar/a;)V

    iput-object v0, p0, Lcn/nubia/camera/ar/a;->w:Lcn/nubia/camera/ar/a$a;

    return-void
.end method

.method public constructor <init>(ILcn/nubia/camera/ar/e;)V
    .locals 1

    .line 68
    invoke-direct {p0, p1}, Lcn/nubia/camera/q/a;-><init>(I)V

    const/4 p1, 0x0

    .line 53
    iput-object p1, p0, Lcn/nubia/camera/ar/a;->a:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lcn/nubia/camera/ar/a;->m:Z

    .line 64
    iput-object p1, p0, Lcn/nubia/camera/ar/a;->o:Landroid/widget/RelativeLayout;

    .line 264
    iput-boolean v0, p0, Lcn/nubia/camera/ar/a;->r:Z

    .line 265
    iput-boolean v0, p0, Lcn/nubia/camera/ar/a;->s:Z

    .line 266
    iput-boolean v0, p0, Lcn/nubia/camera/ar/a;->t:Z

    .line 267
    iput-boolean v0, p0, Lcn/nubia/camera/ar/a;->u:Z

    .line 268
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/ar/a;->v:Ljava/lang/Object;

    .line 358
    new-instance p1, Lcn/nubia/camera/ar/a$a;

    invoke-direct {p1, p0}, Lcn/nubia/camera/ar/a$a;-><init>(Lcn/nubia/camera/ar/a;)V

    iput-object p1, p0, Lcn/nubia/camera/ar/a;->w:Lcn/nubia/camera/ar/a$a;

    .line 69
    iput-object p2, p0, Lcn/nubia/camera/ar/a;->n:Lcn/nubia/camera/ar/e;

    return-void
.end method

.method public static a(Lcn/nubia/camera/ar/e;)Lcn/nubia/camera/ar/a;
    .locals 2

    .line 162
    new-instance v0, Lcn/nubia/camera/ar/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcn/nubia/camera/ar/a;-><init>(ILcn/nubia/camera/ar/e;)V

    return-object v0
.end method

.method static synthetic a(Lcn/nubia/camera/ar/a;)Lcn/nubia/camera/k;
    .locals 0

    .line 44
    iget-object p0, p0, Lcn/nubia/camera/ar/a;->c:Lcn/nubia/camera/k;

    return-object p0
.end method

.method private a(J)V
    .locals 3

    .line 361
    iget-object v0, p0, Lcn/nubia/camera/ar/a;->j:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 362
    iget-object v0, p0, Lcn/nubia/camera/ar/a;->k:Lcom/android/common/ui/RotateLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/android/common/ui/RotateLayout;->setVisibility(I)V

    .line 363
    iget-object v0, p0, Lcn/nubia/camera/ar/a;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 364
    iget-object v0, p0, Lcn/nubia/camera/ar/a;->i:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->setVisibility(I)V

    .line 365
    iget-object v0, p0, Lcn/nubia/camera/ar/a;->i:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    sget-object v1, Lcom/android/common/ui/shutterbutton/d;->e:Lcom/android/common/ui/shutterbutton/d;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->setFunction(Lcom/android/common/ui/shutterbutton/d;)V

    const-string v0, "ui_change_slowshutter"

    .line 366
    invoke-virtual {p0, v0}, Lcn/nubia/camera/ar/a;->d(Ljava/lang/String;)V

    .line 367
    new-instance v0, Lcn/nubia/camera/ar/a$b;

    invoke-direct {v0, p0, p1, p2}, Lcn/nubia/camera/ar/a$b;-><init>(Lcn/nubia/camera/ar/a;J)V

    iput-object v0, p0, Lcn/nubia/camera/ar/a;->l:Lcn/nubia/camera/ar/a$b;

    .line 368
    invoke-virtual {v0}, Lcn/nubia/camera/ar/a$b;->start()V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/ar/a;Z)Z
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcn/nubia/camera/ar/a;->s:Z

    return p1
.end method

.method static synthetic b(Lcn/nubia/camera/ar/a;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcn/nubia/camera/ar/a;->j()V

    return-void
.end method

.method static synthetic b(Lcn/nubia/camera/ar/a;Z)Z
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcn/nubia/camera/ar/a;->r:Z

    return p1
.end method

.method static synthetic c(Lcn/nubia/camera/ar/a;)Ljava/lang/Object;
    .locals 0

    .line 44
    iget-object p0, p0, Lcn/nubia/camera/ar/a;->v:Ljava/lang/Object;

    return-object p0
.end method

.method private d(Landroid/view/View;)V
    .locals 1

    .line 125
    invoke-direct {p0, p1}, Lcn/nubia/camera/ar/a;->e(Landroid/view/View;)V

    const v0, 0x7f0902f8

    .line 126
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    iput-object v0, p0, Lcn/nubia/camera/ar/a;->i:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    const v0, 0x7f0901b8

    .line 128
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/camera/ar/a;->j:Landroid/widget/ImageView;

    const v0, 0x7f090357

    .line 129
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/common/ui/RotateLayout;

    iput-object p1, p0, Lcn/nubia/camera/ar/a;->k:Lcom/android/common/ui/RotateLayout;

    const/4 v0, 0x0

    .line 130
    invoke-virtual {p1, v0}, Lcom/android/common/ui/RotateLayout;->setVisibility(I)V

    return-void
.end method

.method static synthetic d(Lcn/nubia/camera/ar/a;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcn/nubia/camera/ar/a;->n()V

    return-void
.end method

.method static synthetic e(Lcn/nubia/camera/ar/a;)Lcn/nubia/camera/ar/a$a;
    .locals 0

    .line 44
    iget-object p0, p0, Lcn/nubia/camera/ar/a;->w:Lcn/nubia/camera/ar/a$a;

    return-object p0
.end method

.method private e(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0902f7

    .line 134
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/nubia/camera/ar/a;->a:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    .line 135
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const v0, 0x7f090079

    .line 136
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcn/nubia/camera/ar/a;->b:Landroid/widget/RelativeLayout;

    .line 137
    new-instance v0, Lcn/nubia/camera/ar/a$1;

    invoke-direct {v0, p0}, Lcn/nubia/camera/ar/a$1;-><init>(Lcn/nubia/camera/ar/a;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    invoke-direct {p0}, Lcn/nubia/camera/ar/a;->i()V

    .line 146
    iget-object p1, p0, Lcn/nubia/camera/ar/a;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p1}, Lcn/nubia/camera/ar/a;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic f(Lcn/nubia/camera/ar/a;)Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;
    .locals 0

    .line 44
    iget-object p0, p0, Lcn/nubia/camera/ar/a;->i:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    return-object p0
.end method

.method static synthetic g(Lcn/nubia/camera/ar/a;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcn/nubia/camera/ar/a;->m:Z

    return p0
.end method

.method private i()V
    .locals 2

    .line 150
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->ai()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcn/nubia/camera/ar/a;->b:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 153
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ar/a;->b:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private j()V
    .locals 0

    .line 158
    invoke-direct {p0}, Lcn/nubia/camera/ar/a;->o()V

    return-void
.end method

.method private m()V
    .locals 3

    .line 172
    iget-object v0, p0, Lcn/nubia/camera/ar/a;->l:Lcn/nubia/camera/ar/a$b;

    if-nez v0, :cond_0

    return-void

    .line 174
    :cond_0
    invoke-virtual {v0}, Lcn/nubia/camera/ar/a$b;->a()V

    .line 176
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/ar/a;->l:Lcn/nubia/camera/ar/a$b;

    invoke-virtual {v0}, Lcn/nubia/camera/ar/a$b;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 178
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

    const-string v1, "SlowShutterFragment"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/ar/a;->w:Lcn/nubia/camera/ar/a$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/ar/a$a;->removeMessages(I)V

    const/4 v0, 0x0

    .line 181
    iput-object v0, p0, Lcn/nubia/camera/ar/a;->l:Lcn/nubia/camera/ar/a$b;

    return-void
.end method

.method private n()V
    .locals 6

    .line 273
    iget-object v0, p0, Lcn/nubia/camera/ar/a;->v:Ljava/lang/Object;

    monitor-enter v0

    .line 274
    :try_start_0
    iget-boolean v1, p0, Lcn/nubia/camera/ar/a;->r:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget-boolean v4, p0, Lcn/nubia/camera/ar/a;->s:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcn/nubia/camera/ar/a;->t:Z

    if-nez v4, :cond_0

    .line 276
    iput-boolean v3, p0, Lcn/nubia/camera/ar/a;->t:Z

    move v1, v2

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    .line 277
    iget-boolean v1, p0, Lcn/nubia/camera/ar/a;->s:Z

    if-eqz v1, :cond_2

    :cond_1
    iget-boolean v1, p0, Lcn/nubia/camera/ar/a;->u:Z

    if-nez v1, :cond_2

    .line 279
    iput-boolean v3, p0, Lcn/nubia/camera/ar/a;->u:Z

    move v1, v3

    move v3, v2

    goto :goto_0

    :cond_2
    move v1, v2

    move v3, v1

    .line 281
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    iget-object v0, p0, Lcn/nubia/camera/ar/a;->w:Lcn/nubia/camera/ar/a$a;

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Lcn/nubia/camera/ar/a$a;->removeMessages(I)V

    .line 283
    iget-object v0, p0, Lcn/nubia/camera/ar/a;->w:Lcn/nubia/camera/ar/a$a;

    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Lcn/nubia/camera/ar/a$a;->sendEmptyMessage(I)Z

    if-eqz v3, :cond_4

    .line 285
    iget-object v0, p0, Lcn/nubia/camera/ar/a;->w:Lcn/nubia/camera/ar/a$a;

    invoke-virtual {v0, v4}, Lcn/nubia/camera/ar/a$a;->sendEmptyMessage(I)Z

    .line 286
    invoke-virtual {p0}, Lcn/nubia/camera/ar/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/c;->c:Lcn/nubia/camera/d/c;

    if-eq v0, v1, :cond_3

    .line 287
    invoke-virtual {p0}, Lcn/nubia/camera/ar/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    invoke-virtual {v0, v2}, Lcn/nubia/camera/a/a;->a(Z)V

    .line 289
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/camera/ar/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/b;)V

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_5

    .line 291
    iget-object v0, p0, Lcn/nubia/camera/ar/a;->w:Lcn/nubia/camera/ar/a$a;

    invoke-virtual {v0, v5}, Lcn/nubia/camera/ar/a$a;->sendEmptyMessage(I)Z

    :cond_5
    :goto_1
    return-void

    :catchall_0
    move-exception v1

    .line 281
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private o()V
    .locals 2

    .line 297
    invoke-direct {p0}, Lcn/nubia/camera/ar/a;->m()V

    .line 298
    invoke-direct {p0}, Lcn/nubia/camera/ar/a;->p()V

    .line 301
    invoke-virtual {p0}, Lcn/nubia/camera/ar/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/a/a;->a(Z)V

    .line 304
    invoke-virtual {p0}, Lcn/nubia/camera/ar/a;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->P()Lcn/nubia/camera/z/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/z/b;->c()V

    return-void
.end method

.method private p()V
    .locals 2

    .line 309
    invoke-virtual {p0}, Lcn/nubia/camera/ar/a;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->D()Z

    move-result v0

    if-nez v0, :cond_0

    .line 310
    iget-object v0, p0, Lcn/nubia/camera/ar/a;->n:Lcn/nubia/camera/ar/e;

    new-instance v1, Lcn/nubia/camera/ar/a$4;

    invoke-direct {v1, p0}, Lcn/nubia/camera/ar/a$4;-><init>(Lcn/nubia/camera/ar/a;)V

    invoke-virtual {v0, v1}, Lcn/nubia/camera/ar/e;->a(Lcn/nubia/camera/ar/e$a;)V

    .line 318
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/ar/a;->e()V

    return-void
.end method


# virtual methods
.method protected a(IZ)V
    .locals 0

    .line 168
    invoke-super {p0, p1, p2}, Lcn/nubia/camera/q/a;->a(IZ)V

    return-void
.end method

.method protected a(Lcn/nubia/camera/an/a;IIII)V
    .locals 0

    const-string p1, "SlowShutterFragment"

    const-string p2, "onPreviewAreaUpdate"

    .line 472
    invoke-static {p1, p2}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    iget-object p1, p0, Lcn/nubia/camera/ar/a;->o:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_0

    .line 475
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz p1, :cond_0

    .line 477
    invoke-virtual {p0}, Lcn/nubia/camera/ar/a;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p4, 0x7f0701e5

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    if-le p3, p2, :cond_0

    .line 478
    iput p3, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 479
    iget-object p1, p0, Lcn/nubia/camera/ar/a;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 6

    .line 201
    invoke-virtual {p0}, Lcn/nubia/camera/ar/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->e:Lcn/nubia/camera/d/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/d;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 205
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ar/a;->q:Lcn/nubia/camera/g/h;

    if-nez v0, :cond_1

    .line 206
    new-instance v0, Lcn/nubia/camera/g/h;

    invoke-virtual {p0}, Lcn/nubia/camera/ar/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/camera/ar/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->r()Lcn/nubia/j/a;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcn/nubia/camera/g/h;-><init>(Landroid/content/Context;Lcn/nubia/j/a;)V

    iput-object v0, p0, Lcn/nubia/camera/ar/a;->q:Lcn/nubia/camera/g/h;

    .line 208
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/ar/a;->p:Lcn/nubia/camera/g/e;

    if-nez v0, :cond_2

    .line 209
    new-instance v0, Lcn/nubia/camera/g/e;

    .line 210
    invoke-virtual {p0}, Lcn/nubia/camera/ar/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/ar/a;->n:Lcn/nubia/camera/ar/e;

    .line 211
    invoke-virtual {p0}, Lcn/nubia/camera/ar/a;->getParentFragment()Landroid/app/Fragment;

    move-result-object v3

    check-cast v3, Lcn/nubia/camera/q/i;

    invoke-virtual {v3}, Lcn/nubia/camera/q/i;->P()Lcn/nubia/camera/z/b;

    move-result-object v3

    new-instance v4, Lcn/nubia/camera/ar/a$2;

    invoke-direct {v4, p0}, Lcn/nubia/camera/ar/a$2;-><init>(Lcn/nubia/camera/ar/a;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/nubia/camera/g/e;-><init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;Lcn/nubia/camera/z/b;Lcn/nubia/camera/g/c;)V

    iput-object v0, p0, Lcn/nubia/camera/ar/a;->p:Lcn/nubia/camera/g/e;

    .line 223
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/ar/a;->v:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 224
    :try_start_0
    iput-boolean v1, p0, Lcn/nubia/camera/ar/a;->u:Z

    .line 225
    iput-boolean v1, p0, Lcn/nubia/camera/ar/a;->t:Z

    .line 226
    iput-boolean v1, p0, Lcn/nubia/camera/ar/a;->s:Z

    .line 227
    iput-boolean v1, p0, Lcn/nubia/camera/ar/a;->r:Z

    .line 228
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    iget-object v0, p0, Lcn/nubia/camera/ar/a;->n:Lcn/nubia/camera/ar/e;

    iget-object v1, p0, Lcn/nubia/camera/ar/a;->q:Lcn/nubia/camera/g/h;

    iget-object v2, p0, Lcn/nubia/camera/ar/a;->p:Lcn/nubia/camera/g/e;

    invoke-virtual {v2}, Lcn/nubia/camera/g/e;->a()Lcn/nubia/camera/k/o;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Lcn/nubia/camera/ar/a$3;

    invoke-direct {v4, p0}, Lcn/nubia/camera/ar/a$3;-><init>(Lcn/nubia/camera/ar/a;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/nubia/camera/ar/e;->a(Lcn/nubia/camera/k/q;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/u;Lcn/nubia/camera/ar/e$b;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 240
    iget-object v0, p0, Lcn/nubia/camera/ar/a;->w:Lcn/nubia/camera/ar/a$a;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcn/nubia/camera/ar/a$a;->removeMessages(I)V

    .line 241
    invoke-virtual {p0}, Lcn/nubia/camera/ar/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcn/nubia/camera/a/a;->a(Z)V

    .line 242
    iget-object v0, p0, Lcn/nubia/camera/ar/a;->n:Lcn/nubia/camera/ar/e;

    invoke-virtual {v0}, Lcn/nubia/camera/ar/e;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->j()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    .line 244
    sget-wide v4, Lcn/nubia/camera/aq/f;->h:J

    div-long/2addr v2, v4

    invoke-direct {p0, v2, v3}, Lcn/nubia/camera/ar/a;->a(J)V

    .line 245
    invoke-virtual {p0}, Lcn/nubia/camera/ar/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object v0

    sget-object v2, Lcn/nubia/camera/d/c;->c:Lcn/nubia/camera/d/c;

    if-eq v0, v2, :cond_3

    .line 246
    invoke-virtual {p0}, Lcn/nubia/camera/ar/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->r()Lcn/nubia/j/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/nubia/j/a;->b(I)V

    .line 250
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/camera/ar/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->e:Lcn/nubia/camera/d/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/b;)V

    :cond_4
    return-void

    :catchall_0
    move-exception v1

    .line 228
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public b(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 390
    iget-object p1, p0, Lcn/nubia/camera/ar/a;->k:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {p1}, Lcom/android/common/ui/RotateLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 391
    iget-object p1, p0, Lcn/nubia/camera/ar/a;->k:Lcom/android/common/ui/RotateLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/android/common/ui/RotateLayout;->setVisibility(I)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method d()V
    .locals 3

    .line 372
    iget-boolean v0, p0, Lcn/nubia/camera/ar/a;->m:Z

    if-eqz v0, :cond_0

    return-void

    .line 373
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/ar/a;->m()V

    .line 374
    iget-object v0, p0, Lcn/nubia/camera/ar/a;->j:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 375
    iget-object v0, p0, Lcn/nubia/camera/ar/a;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 376
    iget-object v0, p0, Lcn/nubia/camera/ar/a;->i:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    sget-object v2, Lcom/android/common/ui/shutterbutton/d;->b:Lcom/android/common/ui/shutterbutton/d;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->a(Lcom/android/common/ui/shutterbutton/d;)V

    .line 377
    iget-object v0, p0, Lcn/nubia/camera/ar/a;->i:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->a(IZ)V

    .line 378
    iget-object v0, p0, Lcn/nubia/camera/ar/a;->i:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->setVisibility(I)V

    const-string v0, "ui_change_slowshutter"

    .line 379
    invoke-virtual {p0, v0}, Lcn/nubia/camera/ar/a;->c(Ljava/lang/String;)V

    return-void
.end method

.method public e()V
    .locals 2

    .line 383
    iget-object v0, p0, Lcn/nubia/camera/ar/a;->i:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    if-nez v0, :cond_0

    return-void

    .line 384
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ar/a;->w:Lcn/nubia/camera/ar/a$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/ar/a$a;->removeMessages(I)V

    .line 385
    iget-object v0, p0, Lcn/nubia/camera/ar/a;->i:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->setVisibility(I)V

    .line 386
    iget-object v0, p0, Lcn/nubia/camera/ar/a;->i:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    sget-object v1, Lcom/android/common/ui/shutterbutton/d;->b:Lcom/android/common/ui/shutterbutton/d;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->setFunction(Lcom/android/common/ui/shutterbutton/d;)V

    return-void
.end method

.method public g_()V
    .locals 0

    return-void
.end method

.method protected i_()V
    .locals 0

    return-void
.end method

.method public k()Z
    .locals 2

    .line 186
    iget-object v0, p0, Lcn/nubia/camera/ar/a;->l:Lcn/nubia/camera/ar/a$b;

    if-eqz v0, :cond_2

    .line 187
    invoke-virtual {p0}, Lcn/nubia/camera/ar/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->b()Lcn/nubia/camera/d/b;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->e:Lcn/nubia/camera/d/b;

    if-ne v0, v1, :cond_2

    .line 188
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->ai()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/camera/ar/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/c;->c:Lcn/nubia/camera/d/c;

    if-ne v0, v1, :cond_2

    .line 189
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ar/a;->c:Lcn/nubia/camera/k;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    invoke-direct {p0}, Lcn/nubia/camera/ar/a;->o()V

    :cond_1
    return v1

    .line 194
    :cond_2
    invoke-super {p0}, Lcn/nubia/camera/q/a;->k()Z

    move-result v0

    return v0
.end method

.method public l()V
    .locals 4

    .line 329
    invoke-virtual {p0}, Lcn/nubia/camera/ar/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->b()Lcn/nubia/camera/d/b;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->e:Lcn/nubia/camera/d/b;

    if-ne v0, v1, :cond_0

    .line 330
    invoke-virtual {p0}, Lcn/nubia/camera/ar/a;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->D()Z

    move-result v0

    if-nez v0, :cond_0

    .line 332
    iget-object v0, p0, Lcn/nubia/camera/ar/a;->n:Lcn/nubia/camera/ar/e;

    invoke-virtual {v0}, Lcn/nubia/camera/ar/e;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->j()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 334
    invoke-direct {p0}, Lcn/nubia/camera/ar/a;->j()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 93
    invoke-super {p0, p1}, Lcn/nubia/camera/q/a;->onCreate(Landroid/os/Bundle;)V

    .line 94
    iget-boolean p1, p0, Lcn/nubia/camera/ar/a;->d:Z

    if-eqz p1, :cond_0

    return-void

    .line 97
    :cond_0
    new-instance p1, Lcn/nubia/camera/k;

    invoke-virtual {p0}, Lcn/nubia/camera/ar/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcn/nubia/camera/k;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcn/nubia/camera/ar/a;->c:Lcn/nubia/camera/k;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 79
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/camera/q/a;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 80
    iget-boolean p3, p0, Lcn/nubia/camera/ar/a;->d:Z

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const p3, 0x7f0c00a6

    const/4 v0, 0x0

    .line 83
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 85
    invoke-direct {p0, p1}, Lcn/nubia/camera/ar/a;->d(Landroid/view/View;)V

    const p2, 0x7f0900ac

    .line 86
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcn/nubia/camera/ar/a;->o:Landroid/widget/RelativeLayout;

    .line 87
    invoke-virtual {p0, p2}, Lcn/nubia/camera/ar/a;->b(Landroid/view/View;)V

    return-object p1
.end method

.method public onPause()V
    .locals 2

    .line 113
    iget-boolean v0, p0, Lcn/nubia/camera/ar/a;->d:Z

    if-eqz v0, :cond_0

    .line 114
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onPause()V

    return-void

    .line 117
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/ar/a;->d()V

    const/4 v0, 0x1

    .line 119
    iput-boolean v0, p0, Lcn/nubia/camera/ar/a;->m:Z

    .line 120
    iget-object v0, p0, Lcn/nubia/camera/ar/a;->w:Lcn/nubia/camera/ar/a$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/ar/a$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 121
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 102
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onResume()V

    .line 103
    iget-boolean v0, p0, Lcn/nubia/camera/ar/a;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 106
    iput-boolean v0, p0, Lcn/nubia/camera/ar/a;->m:Z

    .line 108
    invoke-virtual {p0}, Lcn/nubia/camera/ar/a;->d()V

    return-void
.end method
