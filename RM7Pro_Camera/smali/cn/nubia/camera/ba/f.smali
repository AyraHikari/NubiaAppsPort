.class public Lcn/nubia/camera/ba/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/ba/f$a;
    }
.end annotation


# static fields
.field private static a:Z

.field private static f:Lcn/nubia/camera/ba/f;


# instance fields
.field private b:Landroid/app/Activity;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/widget/TextView;

.field private e:Ljava/lang/Runnable;

.field private g:I

.field private h:Lcn/nubia/camera/af/a;

.field private i:Landroid/graphics/Rect;

.field private j:D

.field private k:Landroid/graphics/Rect;

.field private l:I

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:I

.field private r:I

.field private s:J

.field private t:Landroid/animation/ObjectAnimator;

.field private u:Landroid/animation/ObjectAnimator;

.field private v:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/camera/ba/f$a;",
            ">;"
        }
    .end annotation
.end field

.field private w:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "DebugToastUtil"

    const/4 v1, 0x3

    .line 37
    invoke-static {v0, v1}, Lcn/nubia/camera/c/a;->a(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcn/nubia/camera/ba/f;->a:Z

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcn/nubia/camera/ba/f;->b:Landroid/app/Activity;

    .line 42
    iput-object v0, p0, Lcn/nubia/camera/ba/f;->e:Ljava/lang/Runnable;

    const/4 v1, -0x1

    .line 57
    iput v1, p0, Lcn/nubia/camera/ba/f;->g:I

    .line 58
    iput-object v0, p0, Lcn/nubia/camera/ba/f;->h:Lcn/nubia/camera/af/a;

    const/4 v0, 0x0

    .line 76
    iput v0, p0, Lcn/nubia/camera/ba/f;->q:I

    .line 78
    iput v0, p0, Lcn/nubia/camera/ba/f;->r:I

    const-wide/16 v0, 0xbb8

    .line 80
    iput-wide v0, p0, Lcn/nubia/camera/ba/f;->s:J

    .line 607
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/ba/f;->v:Ljava/util/ArrayList;

    .line 624
    new-instance v0, Lcn/nubia/camera/ba/f$7;

    invoke-direct {v0, p0}, Lcn/nubia/camera/ba/f$7;-><init>(Lcn/nubia/camera/ba/f;)V

    iput-object v0, p0, Lcn/nubia/camera/ba/f;->w:Landroid/os/Handler;

    .line 83
    iput-object p1, p0, Lcn/nubia/camera/ba/f;->b:Landroid/app/Activity;

    return-void
.end method

.method public static a(ILandroid/content/res/Resources;I)I
    .locals 2

    const v0, 0x7f0701e5

    .line 556
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 557
    invoke-static {}, Lcn/nubia/camera/ba/a;->o()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f07010e

    goto :goto_0

    :cond_0
    const v1, 0x7f070147

    :goto_0
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr v0, p0

    const v1, 0x7f07008a

    .line 559
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    add-int/2addr p2, p1

    sub-int/2addr p2, p0

    .line 555
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method static synthetic a(Lcn/nubia/camera/ba/f;J)J
    .locals 0

    .line 35
    iput-wide p1, p0, Lcn/nubia/camera/ba/f;->s:J

    return-wide p1
.end method

.method public static a()V
    .locals 2

    const-string v0, "DebugToast"

    const/4 v1, 0x3

    .line 131
    invoke-static {v0, v1}, Lcn/nubia/camera/c/a;->a(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcn/nubia/camera/ba/f;->a:Z

    return-void
.end method

.method private a(III)V
    .locals 3

    .line 323
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 324
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 325
    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    and-int/lit8 p2, p1, 0x30

    const/4 v1, 0x0

    const/16 v2, 0x30

    if-ne p2, v2, :cond_0

    .line 327
    iput p3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 328
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    :cond_0
    const/16 p2, 0x50

    and-int/2addr p1, p2

    if-ne p1, p2, :cond_1

    .line 330
    iput p3, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 331
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 333
    :cond_1
    :goto_0
    iget-object p1, p0, Lcn/nubia/camera/ba/f;->c:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 334
    iget-object p1, p0, Lcn/nubia/camera/ba/f;->c:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method

.method public static declared-synchronized a(Landroid/app/Activity;)V
    .locals 2

    const-class v0, Lcn/nubia/camera/ba/f;

    monitor-enter v0

    .line 109
    :try_start_0
    sget-object v1, Lcn/nubia/camera/ba/f;->f:Lcn/nubia/camera/ba/f;

    if-eqz v1, :cond_1

    .line 110
    iget-object v1, v1, Lcn/nubia/camera/ba/f;->b:Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p0, v1, :cond_0

    .line 111
    monitor-exit v0

    return-void

    .line 113
    :cond_0
    :try_start_1
    invoke-static {v1}, Lcn/nubia/camera/ba/f;->b(Landroid/app/Activity;)V

    .line 117
    :cond_1
    new-instance v1, Lcn/nubia/camera/ba/f;

    invoke-direct {v1, p0}, Lcn/nubia/camera/ba/f;-><init>(Landroid/app/Activity;)V

    sput-object v1, Lcn/nubia/camera/ba/f;->f:Lcn/nubia/camera/ba/f;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static synthetic a(Lcn/nubia/camera/ba/f;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcn/nubia/camera/ba/f;->e()V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/ba/f;III)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/camera/ba/f;->a(III)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/ba/f;Ljava/lang/String;IIZ)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/camera/ba/f;->c(Ljava/lang/String;IIZ)V

    return-void
.end method

.method private a(Ljava/lang/CharSequence;IIIIIZ)V
    .locals 2

    const-string v0, "showToast"

    .line 282
    invoke-static {v0}, Lcn/nubia/camera/ba/f;->b(Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcn/nubia/camera/ba/f;->b:Landroid/app/Activity;

    if-nez v0, :cond_0

    const-string p1, "ToastUtil"

    const-string p2, "Context is null!"

    .line 284
    invoke-static {p1, p2}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    const-wide/16 v0, 0x1388

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x7d0

    .line 288
    :goto_0
    iput-wide v0, p0, Lcn/nubia/camera/ba/f;->s:J

    .line 289
    invoke-direct {p0}, Lcn/nubia/camera/ba/f;->e()V

    .line 290
    iget-object p3, p0, Lcn/nubia/camera/ba/f;->d:Landroid/widget/TextView;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, -0x1

    if-eq p2, p1, :cond_2

    .line 292
    iget-object p1, p0, Lcn/nubia/camera/ba/f;->d:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 294
    :cond_2
    iget-object p1, p0, Lcn/nubia/camera/ba/f;->d:Landroid/widget/TextView;

    iget-object p2, p0, Lcn/nubia/camera/ba/f;->b:Landroid/app/Activity;

    const p3, 0x7f0600cd

    invoke-virtual {p2, p3}, Landroid/app/Activity;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    if-eqz p7, :cond_3

    .line 297
    iget-object p1, p0, Lcn/nubia/camera/ba/f;->d:Landroid/widget/TextView;

    const p2, 0x7f080340

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_2

    .line 299
    :cond_3
    iget-object p1, p0, Lcn/nubia/camera/ba/f;->d:Landroid/widget/TextView;

    const p2, 0x7f080227

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 301
    :goto_2
    invoke-direct {p0, p4, p5, p6}, Lcn/nubia/camera/ba/f;->a(III)V

    .line 302
    invoke-direct {p0}, Lcn/nubia/camera/ba/f;->f()V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-static {p0}, Lcn/nubia/camera/ba/f;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcn/nubia/camera/ba/f;)Landroid/widget/TextView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcn/nubia/camera/ba/f;->d:Landroid/widget/TextView;

    return-object p0
.end method

.method public static declared-synchronized b()Lcn/nubia/camera/ba/f;
    .locals 3

    const-class v0, Lcn/nubia/camera/ba/f;

    monitor-enter v0

    .line 135
    :try_start_0
    sget-object v1, Lcn/nubia/camera/ba/f;->f:Lcn/nubia/camera/ba/f;

    if-nez v1, :cond_0

    .line 136
    new-instance v1, Lcn/nubia/camera/ba/f;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcn/nubia/camera/ba/f;-><init>(Landroid/app/Activity;)V

    sput-object v1, Lcn/nubia/camera/ba/f;->f:Lcn/nubia/camera/ba/f;

    .line 138
    :cond_0
    sget-object v1, Lcn/nubia/camera/ba/f;->f:Lcn/nubia/camera/ba/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized b(Landroid/app/Activity;)V
    .locals 3

    const-class v0, Lcn/nubia/camera/ba/f;

    monitor-enter v0

    .line 124
    :try_start_0
    sget-object v1, Lcn/nubia/camera/ba/f;->f:Lcn/nubia/camera/ba/f;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcn/nubia/camera/ba/f;->b:Landroid/app/Activity;

    if-ne p0, v2, :cond_0

    .line 125
    invoke-direct {v1}, Lcn/nubia/camera/ba/f;->d()V

    const/4 p0, 0x0

    .line 126
    sput-object p0, Lcn/nubia/camera/ba/f;->f:Lcn/nubia/camera/ba/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static synthetic b(Lcn/nubia/camera/ba/f;Ljava/lang/String;IIZ)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/camera/ba/f;->d(Ljava/lang/String;IIZ)V

    return-void
.end method

.method private static b(Ljava/lang/String;)V
    .locals 1

    .line 670
    sget-boolean v0, Lcn/nubia/camera/ba/f;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "ToastUtil"

    .line 671
    invoke-static {v0, p0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method static synthetic c(Lcn/nubia/camera/ba/f;)Landroid/app/Activity;
    .locals 0

    .line 35
    iget-object p0, p0, Lcn/nubia/camera/ba/f;->b:Landroid/app/Activity;

    return-object p0
.end method

.method private c(Ljava/lang/String;IIZ)V
    .locals 9

    .line 436
    iget-object v0, p0, Lcn/nubia/camera/ba/f;->b:Landroid/app/Activity;

    if-nez v0, :cond_0

    const-string p1, "ToastUtil"

    const-string p2, "Context is null!"

    .line 437
    invoke-static {p1, p2}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 441
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/ba/f;->c()V

    const/4 v0, 0x1

    .line 443
    iput v0, p0, Lcn/nubia/camera/ba/f;->g:I

    .line 444
    invoke-direct {p0}, Lcn/nubia/camera/ba/f;->k()V

    const/16 v5, 0x51

    const/4 v6, 0x0

    .line 446
    invoke-direct {p0}, Lcn/nubia/camera/ba/f;->i()I

    move-result v7

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move v4, p2

    move v8, p4

    invoke-direct/range {v1 .. v8}, Lcn/nubia/camera/ba/f;->a(Ljava/lang/CharSequence;IIIIIZ)V

    return-void
.end method

.method static synthetic d(Lcn/nubia/camera/ba/f;)I
    .locals 0

    .line 35
    invoke-direct {p0}, Lcn/nubia/camera/ba/f;->i()I

    move-result p0

    return p0
.end method

.method private d()V
    .locals 2

    const-string v0, "releaseContext"

    .line 87
    invoke-static {v0}, Lcn/nubia/camera/ba/f;->b(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcn/nubia/camera/ba/f;->w:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 89
    iput-object v1, p0, Lcn/nubia/camera/ba/f;->w:Landroid/os/Handler;

    .line 90
    iget-object v0, p0, Lcn/nubia/camera/ba/f;->t:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 91
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcn/nubia/camera/ba/f;->t:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 94
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ba/f;->t:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 95
    iput-object v1, p0, Lcn/nubia/camera/ba/f;->t:Landroid/animation/ObjectAnimator;

    .line 98
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/ba/f;->u:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_3

    .line 99
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 100
    iget-object v0, p0, Lcn/nubia/camera/ba/f;->u:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 102
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/ba/f;->u:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 103
    iput-object v1, p0, Lcn/nubia/camera/ba/f;->u:Landroid/animation/ObjectAnimator;

    .line 105
    :cond_3
    iput-object v1, p0, Lcn/nubia/camera/ba/f;->b:Landroid/app/Activity;

    return-void
.end method

.method private d(Ljava/lang/String;IIZ)V
    .locals 9

    .line 476
    iget-object v0, p0, Lcn/nubia/camera/ba/f;->b:Landroid/app/Activity;

    if-nez v0, :cond_0

    const-string p1, "ToastUtil"

    const-string p2, "Context is null!"

    .line 477
    invoke-static {p1, p2}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 480
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/ba/f;->c()V

    const/4 v0, 0x0

    .line 482
    iput v0, p0, Lcn/nubia/camera/ba/f;->g:I

    .line 483
    invoke-direct {p0}, Lcn/nubia/camera/ba/f;->j()V

    const/16 v5, 0x31

    const/4 v6, 0x0

    .line 485
    invoke-direct {p0}, Lcn/nubia/camera/ba/f;->h()I

    move-result v7

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move v4, p2

    move v8, p4

    invoke-direct/range {v1 .. v8}, Lcn/nubia/camera/ba/f;->a(Ljava/lang/CharSequence;IIIIIZ)V

    return-void
.end method

.method private e()V
    .locals 2

    .line 306
    iget-object v0, p0, Lcn/nubia/camera/ba/f;->b:Landroid/app/Activity;

    if-nez v0, :cond_0

    const-string v0, "ToastUtil"

    const-string v1, "Context is null!"

    .line 307
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ba/f;->c:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/ba/f;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    return-void

    .line 314
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/ba/f;->b:Landroid/app/Activity;

    const v1, 0x7f09029b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_2

    .line 316
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 318
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/ba/f;->b:Landroid/app/Activity;

    const v1, 0x7f090096

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/nubia/camera/ba/f;->c:Landroid/widget/LinearLayout;

    .line 319
    iget-object v0, p0, Lcn/nubia/camera/ba/f;->b:Landroid/app/Activity;

    const v1, 0x7f090097

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/camera/ba/f;->d:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic e(Lcn/nubia/camera/ba/f;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcn/nubia/camera/ba/f;->f()V

    return-void
.end method

.method static synthetic f(Lcn/nubia/camera/ba/f;)Landroid/widget/LinearLayout;
    .locals 0

    .line 35
    iget-object p0, p0, Lcn/nubia/camera/ba/f;->c:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method private f()V
    .locals 3

    .line 339
    iget-object v0, p0, Lcn/nubia/camera/ba/f;->t:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_0

    .line 340
    iget-object v0, p0, Lcn/nubia/camera/ba/f;->d:Landroid/widget/TextView;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ba/f;->t:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x12c

    .line 341
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 342
    iget-object v0, p0, Lcn/nubia/camera/ba/f;->t:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcn/nubia/camera/ba/f$2;

    invoke-direct {v1, p0}, Lcn/nubia/camera/ba/f$2;-><init>(Lcn/nubia/camera/ba/f;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 366
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ba/f;->t:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic g(Lcn/nubia/camera/ba/f;)J
    .locals 2

    .line 35
    iget-wide v0, p0, Lcn/nubia/camera/ba/f;->s:J

    return-wide v0
.end method

.method private g()V
    .locals 3

    .line 370
    iget-object v0, p0, Lcn/nubia/camera/ba/f;->u:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_0

    .line 371
    iget-object v0, p0, Lcn/nubia/camera/ba/f;->d:Landroid/widget/TextView;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ba/f;->u:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x12c

    .line 372
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 374
    iget-object v0, p0, Lcn/nubia/camera/ba/f;->u:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcn/nubia/camera/ba/f$3;

    invoke-direct {v1, p0}, Lcn/nubia/camera/ba/f$3;-><init>(Lcn/nubia/camera/ba/f;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 406
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ba/f;->u:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private h()I
    .locals 11

    .line 535
    invoke-static {}, Lcn/nubia/camera/CameraApplication;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 536
    invoke-static {v0}, Lcn/nubia/camera/ba/a;->a(Landroid/content/res/Resources;)I

    move-result v1

    .line 537
    iget-object v2, p0, Lcn/nubia/camera/ba/f;->k:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    const/4 v3, 0x0

    invoke-static {v3, v0, v2}, Lcn/nubia/camera/ba/f;->a(ILandroid/content/res/Resources;I)I

    move-result v2

    .line 538
    iget-boolean v4, p0, Lcn/nubia/camera/ba/f;->m:Z

    const v5, 0x7f070147

    const v6, 0x7f0701e5

    if-eqz v4, :cond_1

    .line 539
    iget-object v4, p0, Lcn/nubia/camera/ba/f;->i:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v7, p0, Lcn/nubia/camera/ba/f;->i:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-ne v4, v7, :cond_0

    .line 540
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v1

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    sub-int/2addr v4, v7

    sub-int/2addr v4, v3

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_0

    .line 542
    :cond_0
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v1

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    add-int/2addr v4, v7

    sub-int/2addr v4, v3

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 546
    :cond_1
    :goto_0
    iget-boolean v4, p0, Lcn/nubia/camera/ba/f;->p:Z

    if-eqz v4, :cond_4

    .line 547
    iget-wide v7, p0, Lcn/nubia/camera/ba/f;->j:D

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v7, v9

    if-eqz v4, :cond_3

    div-double/2addr v9, v7

    const-wide v7, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    cmpl-double v4, v9, v7

    if-ltz v4, :cond_2

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcn/nubia/camera/ba/f;->i:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    goto :goto_2

    :cond_3
    :goto_1
    iget v4, p0, Lcn/nubia/camera/ba/f;->l:I

    :goto_2
    invoke-static {v3, v0, v4}, Lcn/nubia/camera/ba/f;->a(ILandroid/content/res/Resources;I)I

    move-result v4

    const v7, 0x7f0700ea

    .line 549
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    add-int/2addr v4, v7

    sub-int/2addr v4, v3

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v1

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sub-int/2addr v6, v0

    sub-int/2addr v6, v3

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_4
    return v2
.end method

.method static synthetic h(Lcn/nubia/camera/ba/f;)Landroid/os/Handler;
    .locals 0

    .line 35
    iget-object p0, p0, Lcn/nubia/camera/ba/f;->w:Landroid/os/Handler;

    return-object p0
.end method

.method private i()I
    .locals 6

    .line 564
    invoke-static {}, Lcn/nubia/camera/CameraApplication;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 566
    iget-boolean v1, p0, Lcn/nubia/camera/ba/f;->n:Z

    const/4 v2, 0x2

    const v3, 0x7f070147

    if-eqz v1, :cond_0

    .line 567
    invoke-static {}, Lcn/nubia/camera/ba/a;->g()I

    move-result v1

    iget-object v4, p0, Lcn/nubia/camera/ba/f;->k:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v4

    const v4, 0x7f070120

    .line 568
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v1, v4

    .line 569
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    :goto_0
    add-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x0

    goto :goto_1

    .line 570
    :cond_0
    iget-boolean v1, p0, Lcn/nubia/camera/ba/f;->o:Z

    if-eqz v1, :cond_1

    .line 571
    invoke-static {}, Lcn/nubia/camera/ba/a;->g()I

    move-result v1

    iget-object v4, p0, Lcn/nubia/camera/ba/f;->k:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v4

    const v4, 0x7f07012d

    .line 572
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v1, v4

    .line 573
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_0

    .line 574
    :cond_1
    iget v1, p0, Lcn/nubia/camera/ba/f;->q:I

    if-eqz v1, :cond_3

    const v4, 0x7f0700ea

    if-ne v1, v2, :cond_2

    .line 576
    invoke-static {}, Lcn/nubia/camera/ba/a;->g()I

    move-result v1

    iget-object v5, p0, Lcn/nubia/camera/ba/f;->k:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v5

    const v5, 0x7f070141

    .line 577
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    add-int/2addr v1, v5

    .line 578
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v1, v4

    .line 579
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v1, v4

    .line 580
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_0

    .line 583
    :cond_2
    invoke-static {}, Lcn/nubia/camera/ba/a;->g()I

    move-result v1

    iget-object v5, p0, Lcn/nubia/camera/ba/f;->k:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v5

    .line 584
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v1, v4

    .line 585
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v1, v4

    .line 586
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_0

    .line 590
    :cond_3
    invoke-static {}, Lcn/nubia/camera/ba/a;->g()I

    move-result v1

    iget-object v4, p0, Lcn/nubia/camera/ba/f;->k:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v4

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_0

    .line 593
    :goto_1
    iget v3, p0, Lcn/nubia/camera/ba/f;->r:I

    if-eqz v3, :cond_5

    if-ne v3, v2, :cond_4

    goto :goto_2

    :cond_4
    const v2, 0x7f070117

    .line 596
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v1, v0

    :cond_5
    :goto_2
    return v1
.end method

.method static synthetic i(Lcn/nubia/camera/ba/f;)I
    .locals 0

    .line 35
    iget p0, p0, Lcn/nubia/camera/ba/f;->g:I

    return p0
.end method

.method private j()V
    .locals 2

    .line 637
    iget-object v0, p0, Lcn/nubia/camera/ba/f;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/ba/f$a;

    if-eqz v1, :cond_0

    .line 639
    invoke-interface {v1}, Lcn/nubia/camera/ba/f$a;->d()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic j(Lcn/nubia/camera/ba/f;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcn/nubia/camera/ba/f;->l()V

    return-void
.end method

.method private k()V
    .locals 2

    .line 645
    iget-object v0, p0, Lcn/nubia/camera/ba/f;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/ba/f$a;

    if-eqz v1, :cond_0

    .line 647
    invoke-interface {v1}, Lcn/nubia/camera/ba/f$a;->f()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic k(Lcn/nubia/camera/ba/f;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcn/nubia/camera/ba/f;->m()V

    return-void
.end method

.method static synthetic l(Lcn/nubia/camera/ba/f;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 35
    iget-object p0, p0, Lcn/nubia/camera/ba/f;->t:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method private l()V
    .locals 2

    .line 653
    iget-object v0, p0, Lcn/nubia/camera/ba/f;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/ba/f$a;

    if-eqz v1, :cond_0

    .line 655
    invoke-interface {v1}, Lcn/nubia/camera/ba/f$a;->e()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic m(Lcn/nubia/camera/ba/f;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 35
    iget-object p0, p0, Lcn/nubia/camera/ba/f;->u:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method private m()V
    .locals 2

    .line 662
    iget-object v0, p0, Lcn/nubia/camera/ba/f;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/ba/f$a;

    if-eqz v1, :cond_0

    .line 664
    invoke-interface {v1}, Lcn/nubia/camera/ba/f$a;->g()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic n(Lcn/nubia/camera/ba/f;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcn/nubia/camera/ba/f;->g()V

    return-void
.end method


# virtual methods
.method public a(ILcn/nubia/camera/af/a;)V
    .locals 1

    .line 227
    iget-object v0, p0, Lcn/nubia/camera/ba/f;->h:Lcn/nubia/camera/af/a;

    if-eq v0, p2, :cond_0

    return-void

    .line 230
    :cond_0
    iget-object p2, p0, Lcn/nubia/camera/ba/f;->b:Landroid/app/Activity;

    if-nez p2, :cond_1

    const-string p2, "ToastUtil"

    const-string v0, "Context is null!"

    .line 231
    invoke-static {p2, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_1
    iput p1, p0, Lcn/nubia/camera/ba/f;->q:I

    return-void
.end method

.method public a(Landroid/graphics/Rect;D)V
    .locals 2

    .line 155
    iget-object v0, p0, Lcn/nubia/camera/ba/f;->b:Landroid/app/Activity;

    if-nez v0, :cond_0

    const-string v0, "ToastUtil"

    const-string v1, "Context is null!"

    .line 156
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_0
    iput-object p1, p0, Lcn/nubia/camera/ba/f;->i:Landroid/graphics/Rect;

    .line 159
    iput-wide p2, p0, Lcn/nubia/camera/ba/f;->j:D

    return-void
.end method

.method public a(Landroid/graphics/Rect;I)V
    .locals 2

    .line 163
    iget-object v0, p0, Lcn/nubia/camera/ba/f;->b:Landroid/app/Activity;

    if-nez v0, :cond_0

    const-string v0, "ToastUtil"

    const-string v1, "Context is null!"

    .line 164
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_0
    iput-object p1, p0, Lcn/nubia/camera/ba/f;->k:Landroid/graphics/Rect;

    .line 167
    iput p2, p0, Lcn/nubia/camera/ba/f;->l:I

    return-void
.end method

.method public a(Lcn/nubia/camera/af/a;)V
    .locals 2

    .line 142
    iget-object v0, p0, Lcn/nubia/camera/ba/f;->b:Landroid/app/Activity;

    if-nez v0, :cond_0

    const-string v0, "ToastUtil"

    const-string v1, "Context is null!"

    .line 143
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 145
    iput-boolean v0, p0, Lcn/nubia/camera/ba/f;->m:Z

    .line 146
    iput-boolean v0, p0, Lcn/nubia/camera/ba/f;->n:Z

    .line 147
    iput-boolean v0, p0, Lcn/nubia/camera/ba/f;->o:Z

    .line 148
    iput-boolean v0, p0, Lcn/nubia/camera/ba/f;->p:Z

    .line 149
    iput v0, p0, Lcn/nubia/camera/ba/f;->q:I

    .line 150
    iput v0, p0, Lcn/nubia/camera/ba/f;->r:I

    .line 151
    iput-object p1, p0, Lcn/nubia/camera/ba/f;->h:Lcn/nubia/camera/af/a;

    return-void
.end method

.method public a(Lcn/nubia/camera/ba/f$a;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 609
    iget-object v0, p0, Lcn/nubia/camera/ba/f;->v:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 610
    iget-object v0, p0, Lcn/nubia/camera/ba/f;->v:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/CharSequence;I)V
    .locals 2

    .line 251
    iget-object v0, p0, Lcn/nubia/camera/ba/f;->b:Landroid/app/Activity;

    if-nez v0, :cond_0

    const-string p1, "ToastUtil"

    const-string p2, "Context is null!"

    .line 252
    invoke-static {p1, p2}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 256
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ba/f;->e:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 257
    iget-object v1, p0, Lcn/nubia/camera/ba/f;->w:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 259
    :cond_1
    new-instance v0, Lcn/nubia/camera/ba/f$1;

    invoke-direct {v0, p0, p2, p1}, Lcn/nubia/camera/ba/f$1;-><init>(Lcn/nubia/camera/ba/f;ILjava/lang/CharSequence;)V

    iput-object v0, p0, Lcn/nubia/camera/ba/f;->e:Ljava/lang/Runnable;

    .line 274
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    if-ne p1, p2, :cond_2

    .line 275
    iget-object p1, p0, Lcn/nubia/camera/ba/f;->e:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 277
    :cond_2
    iget-object p1, p0, Lcn/nubia/camera/ba/f;->w:Landroid/os/Handler;

    iget-object p2, p0, Lcn/nubia/camera/ba/f;->e:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 410
    invoke-virtual {p0, p1, p2, v0, v1}, Lcn/nubia/camera/ba/f;->a(Ljava/lang/String;IIZ)V

    return-void
.end method

.method public a(Ljava/lang/String;II)V
    .locals 1

    const/4 v0, 0x0

    .line 414
    invoke-virtual {p0, p1, p2, p3, v0}, Lcn/nubia/camera/ba/f;->a(Ljava/lang/String;IIZ)V

    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;IIZ)V
    .locals 7

    monitor-enter p0

    .line 418
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/ba/f;->e:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 419
    iget-object v1, p0, Lcn/nubia/camera/ba/f;->w:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 422
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 423
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/camera/ba/f;->c(Ljava/lang/String;IIZ)V

    goto :goto_0

    .line 425
    :cond_1
    new-instance v6, Lcn/nubia/camera/ba/f$4;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcn/nubia/camera/ba/f$4;-><init>(Lcn/nubia/camera/ba/f;Ljava/lang/String;IIZ)V

    iput-object v6, p0, Lcn/nubia/camera/ba/f;->e:Ljava/lang/Runnable;

    .line 431
    iget-object p1, p0, Lcn/nubia/camera/ba/f;->w:Landroid/os/Handler;

    invoke-virtual {p1, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 433
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(ZLcn/nubia/camera/af/a;)V
    .locals 1

    .line 171
    iget-object v0, p0, Lcn/nubia/camera/ba/f;->h:Lcn/nubia/camera/af/a;

    if-eq v0, p2, :cond_0

    return-void

    .line 174
    :cond_0
    iget-object p2, p0, Lcn/nubia/camera/ba/f;->b:Landroid/app/Activity;

    if-nez p2, :cond_1

    const-string p1, "ToastUtil"

    const-string p2, "Context is null!"

    .line 175
    invoke-static {p1, p2}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 178
    :cond_1
    iput-boolean p1, p0, Lcn/nubia/camera/ba/f;->m:Z

    if-eqz p1, :cond_2

    .line 180
    invoke-virtual {p0}, Lcn/nubia/camera/ba/f;->c()V

    :cond_2
    return-void
.end method

.method public b(ILcn/nubia/camera/af/a;)V
    .locals 1

    .line 237
    iget-object v0, p0, Lcn/nubia/camera/ba/f;->h:Lcn/nubia/camera/af/a;

    if-eq v0, p2, :cond_0

    return-void

    .line 240
    :cond_0
    iget-object p2, p0, Lcn/nubia/camera/ba/f;->b:Landroid/app/Activity;

    if-nez p2, :cond_1

    const-string p1, "ToastUtil"

    const-string p2, "Context is null!"

    .line 241
    invoke-static {p1, p2}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 244
    iget v0, p0, Lcn/nubia/camera/ba/f;->r:I

    if-ne v0, p2, :cond_3

    :cond_2
    iget v0, p0, Lcn/nubia/camera/ba/f;->g:I

    if-ne v0, p2, :cond_3

    .line 245
    invoke-virtual {p0}, Lcn/nubia/camera/ba/f;->c()V

    .line 247
    :cond_3
    iput p1, p0, Lcn/nubia/camera/ba/f;->r:I

    return-void
.end method

.method public b(Lcn/nubia/camera/ba/f$a;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 616
    iget-object v0, p0, Lcn/nubia/camera/ba/f;->v:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;I)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 450
    invoke-virtual {p0, p1, p2, v0, v1}, Lcn/nubia/camera/ba/f;->b(Ljava/lang/String;IIZ)V

    return-void
.end method

.method public declared-synchronized b(Ljava/lang/String;IIZ)V
    .locals 7

    monitor-enter p0

    .line 458
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/ba/f;->e:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 459
    iget-object v1, p0, Lcn/nubia/camera/ba/f;->w:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 462
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 463
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/camera/ba/f;->d(Ljava/lang/String;IIZ)V

    goto :goto_0

    .line 465
    :cond_1
    new-instance v6, Lcn/nubia/camera/ba/f$5;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcn/nubia/camera/ba/f$5;-><init>(Lcn/nubia/camera/ba/f;Ljava/lang/String;IIZ)V

    iput-object v6, p0, Lcn/nubia/camera/ba/f;->e:Ljava/lang/Runnable;

    .line 471
    iget-object p1, p0, Lcn/nubia/camera/ba/f;->w:Landroid/os/Handler;

    invoke-virtual {p1, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 473
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b(ZLcn/nubia/camera/af/a;)V
    .locals 1

    .line 185
    iget-object v0, p0, Lcn/nubia/camera/ba/f;->h:Lcn/nubia/camera/af/a;

    if-eq v0, p2, :cond_0

    return-void

    .line 188
    :cond_0
    iget-object p2, p0, Lcn/nubia/camera/ba/f;->b:Landroid/app/Activity;

    if-nez p2, :cond_1

    const-string p1, "ToastUtil"

    const-string p2, "Context is null!"

    .line 189
    invoke-static {p1, p2}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 192
    :cond_1
    iput-boolean p1, p0, Lcn/nubia/camera/ba/f;->n:Z

    if-eqz p1, :cond_2

    .line 194
    invoke-virtual {p0}, Lcn/nubia/camera/ba/f;->c()V

    :cond_2
    return-void
.end method

.method public c()V
    .locals 2

    const-string v0, "cancelToast"

    .line 489
    invoke-static {v0}, Lcn/nubia/camera/ba/f;->b(Ljava/lang/String;)V

    .line 490
    iget-object v0, p0, Lcn/nubia/camera/ba/f;->e:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 491
    iget-object v1, p0, Lcn/nubia/camera/ba/f;->w:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 494
    :cond_0
    new-instance v0, Lcn/nubia/camera/ba/f$6;

    invoke-direct {v0, p0}, Lcn/nubia/camera/ba/f$6;-><init>(Lcn/nubia/camera/ba/f;)V

    iput-object v0, p0, Lcn/nubia/camera/ba/f;->e:Ljava/lang/Runnable;

    .line 526
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 527
    iget-object v0, p0, Lcn/nubia/camera/ba/f;->e:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 529
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/ba/f;->w:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/camera/ba/f;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public c(ZLcn/nubia/camera/af/a;)V
    .locals 1

    .line 199
    iget-object v0, p0, Lcn/nubia/camera/ba/f;->h:Lcn/nubia/camera/af/a;

    if-eq v0, p2, :cond_0

    return-void

    .line 202
    :cond_0
    iget-object p2, p0, Lcn/nubia/camera/ba/f;->b:Landroid/app/Activity;

    if-nez p2, :cond_1

    const-string p1, "ToastUtil"

    const-string p2, "Context is null!"

    .line 203
    invoke-static {p1, p2}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 206
    :cond_1
    iput-boolean p1, p0, Lcn/nubia/camera/ba/f;->o:Z

    if-eqz p1, :cond_2

    .line 208
    invoke-virtual {p0}, Lcn/nubia/camera/ba/f;->c()V

    :cond_2
    return-void
.end method

.method public d(ZLcn/nubia/camera/af/a;)V
    .locals 1

    .line 213
    iget-object v0, p0, Lcn/nubia/camera/ba/f;->h:Lcn/nubia/camera/af/a;

    if-eq v0, p2, :cond_0

    return-void

    .line 216
    :cond_0
    iget-object p2, p0, Lcn/nubia/camera/ba/f;->b:Landroid/app/Activity;

    if-nez p2, :cond_1

    const-string p1, "ToastUtil"

    const-string p2, "Context is null!"

    .line 217
    invoke-static {p1, p2}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 220
    :cond_1
    iput-boolean p1, p0, Lcn/nubia/camera/ba/f;->p:Z

    if-eqz p1, :cond_2

    .line 222
    invoke-virtual {p0}, Lcn/nubia/camera/ba/f;->c()V

    :cond_2
    return-void
.end method
