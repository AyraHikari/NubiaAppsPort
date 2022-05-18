.class public Landroidx/appcompat/widget/ActionBarOverlayLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/widget/ad;
.implements Landroidx/core/f/n;
.implements Landroidx/core/f/o;
.implements Landroidx/core/f/p;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/ActionBarOverlayLayout$a;,
        Landroidx/appcompat/widget/ActionBarOverlayLayout$b;
    }
.end annotation


# static fields
.field static final e:[I


# instance fields
.field private A:Landroidx/core/f/ac;

.field private B:Landroidx/appcompat/widget/ActionBarOverlayLayout$a;

.field private C:Landroid/widget/OverScroller;

.field private final D:Ljava/lang/Runnable;

.field private final E:Ljava/lang/Runnable;

.field private final F:Landroidx/core/f/q;

.field a:Landroidx/appcompat/widget/ActionBarContainer;

.field b:Z

.field c:Landroid/view/ViewPropertyAnimator;

.field final d:Landroid/animation/AnimatorListenerAdapter;

.field private f:I

.field private g:I

.field private h:Landroidx/appcompat/widget/ContentFrameLayout;

.field private i:Landroidx/appcompat/widget/ae;

.field private j:Landroid/graphics/drawable/Drawable;

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:I

.field private p:I

.field private final q:Landroid/graphics/Rect;

.field private final r:Landroid/graphics/Rect;

.field private final s:Landroid/graphics/Rect;

.field private final t:Landroid/graphics/Rect;

.field private final u:Landroid/graphics/Rect;

.field private final v:Landroid/graphics/Rect;

.field private final w:Landroid/graphics/Rect;

.field private x:Landroidx/core/f/ac;

.field private y:Landroidx/core/f/ac;

.field private z:Landroidx/core/f/ac;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 147
    sget v1, Landroidx/appcompat/a$a;->b:I

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const v2, 0x1010059

    aput v2, v0, v1

    sput-object v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 159
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 71
    iput p2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->g:I

    .line 90
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->q:Landroid/graphics/Rect;

    .line 91
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->r:Landroid/graphics/Rect;

    .line 92
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->s:Landroid/graphics/Rect;

    .line 95
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->t:Landroid/graphics/Rect;

    .line 96
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->u:Landroid/graphics/Rect;

    .line 97
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->v:Landroid/graphics/Rect;

    .line 98
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->w:Landroid/graphics/Rect;

    .line 101
    sget-object p2, Landroidx/core/f/ac;->a:Landroidx/core/f/ac;

    iput-object p2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->x:Landroidx/core/f/ac;

    .line 102
    sget-object p2, Landroidx/core/f/ac;->a:Landroidx/core/f/ac;

    iput-object p2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->y:Landroidx/core/f/ac;

    .line 103
    sget-object p2, Landroidx/core/f/ac;->a:Landroidx/core/f/ac;

    iput-object p2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->z:Landroidx/core/f/ac;

    .line 104
    sget-object p2, Landroidx/core/f/ac;->a:Landroidx/core/f/ac;

    iput-object p2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->A:Landroidx/core/f/ac;

    .line 114
    new-instance p2, Landroidx/appcompat/widget/ActionBarOverlayLayout$1;

    invoke-direct {p2, p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout$1;-><init>(Landroidx/appcompat/widget/ActionBarOverlayLayout;)V

    iput-object p2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->d:Landroid/animation/AnimatorListenerAdapter;

    .line 128
    new-instance p2, Landroidx/appcompat/widget/ActionBarOverlayLayout$2;

    invoke-direct {p2, p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout$2;-><init>(Landroidx/appcompat/widget/ActionBarOverlayLayout;)V

    iput-object p2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->D:Ljava/lang/Runnable;

    .line 137
    new-instance p2, Landroidx/appcompat/widget/ActionBarOverlayLayout$3;

    invoke-direct {p2, p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout$3;-><init>(Landroidx/appcompat/widget/ActionBarOverlayLayout;)V

    iput-object p2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->E:Ljava/lang/Runnable;

    .line 160
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a(Landroid/content/Context;)V

    .line 162
    new-instance p1, Landroidx/core/f/q;

    invoke-direct {p1, p0}, Landroidx/core/f/q;-><init>(Landroid/view/ViewGroup;)V

    iput-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->F:Landroidx/core/f/q;

    return-void
.end method

.method private a(Landroid/view/View;)Landroidx/appcompat/widget/ae;
    .locals 3

    .line 676
    instance-of v0, p1, Landroidx/appcompat/widget/ae;

    if-eqz v0, :cond_0

    .line 677
    check-cast p1, Landroidx/appcompat/widget/ae;

    return-object p1

    .line 678
    :cond_0
    instance-of v0, p1, Landroidx/appcompat/widget/Toolbar;

    if-eqz v0, :cond_1

    .line 679
    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getWrapper()Landroidx/appcompat/widget/ae;

    move-result-object p1

    return-object p1

    .line 681
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t make a decor toolbar out of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 682
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 4

    .line 166
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:[I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 167
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->f:I

    const/4 v2, 0x1

    .line 168
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->j:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    .line 169
    :goto_0
    invoke-virtual {p0, v3}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setWillNotDraw(Z)V

    .line 170
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 172
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x13

    if-ge v0, v3, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k:Z

    .line 175
    new-instance v0, Landroid/widget/OverScroller;

    invoke-direct {v0, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->C:Landroid/widget/OverScroller;

    return-void
.end method

.method private a(F)Z
    .locals 9

    .line 740
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->C:Landroid/widget/OverScroller;

    float-to-int v4, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, -0x80000000

    const v8, 0x7fffffff

    invoke-virtual/range {v0 .. v8}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 741
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->C:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->getFinalY()I

    move-result p1

    .line 742
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContainer;->getHeight()I

    move-result v0

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private a(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z
    .locals 2

    .line 283
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/ActionBarOverlayLayout$b;

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    .line 284
    iget p3, p1, Landroidx/appcompat/widget/ActionBarOverlayLayout$b;->leftMargin:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    if-eq p3, v1, :cond_0

    .line 286
    iget p3, p2, Landroid/graphics/Rect;->left:I

    iput p3, p1, Landroidx/appcompat/widget/ActionBarOverlayLayout$b;->leftMargin:I

    move p3, v0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-eqz p4, :cond_1

    .line 288
    iget p4, p1, Landroidx/appcompat/widget/ActionBarOverlayLayout$b;->topMargin:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    if-eq p4, v1, :cond_1

    .line 290
    iget p3, p2, Landroid/graphics/Rect;->top:I

    iput p3, p1, Landroidx/appcompat/widget/ActionBarOverlayLayout$b;->topMargin:I

    move p3, v0

    :cond_1
    if-eqz p6, :cond_2

    .line 292
    iget p4, p1, Landroidx/appcompat/widget/ActionBarOverlayLayout$b;->rightMargin:I

    iget p6, p2, Landroid/graphics/Rect;->right:I

    if-eq p4, p6, :cond_2

    .line 294
    iget p3, p2, Landroid/graphics/Rect;->right:I

    iput p3, p1, Landroidx/appcompat/widget/ActionBarOverlayLayout$b;->rightMargin:I

    move p3, v0

    :cond_2
    if-eqz p5, :cond_3

    .line 296
    iget p4, p1, Landroidx/appcompat/widget/ActionBarOverlayLayout$b;->bottomMargin:I

    iget p5, p2, Landroid/graphics/Rect;->bottom:I

    if-eq p4, p5, :cond_3

    .line 298
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    iput p2, p1, Landroidx/appcompat/widget/ActionBarOverlayLayout$b;->bottomMargin:I

    goto :goto_1

    :cond_3
    move v0, p3

    :goto_1
    return v0
.end method

.method private l()V
    .locals 3

    .line 720
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->d()V

    .line 721
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->D:Ljava/lang/Runnable;

    const-wide/16 v1, 0x258

    invoke-virtual {p0, v0, v1, v2}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private m()V
    .locals 3

    .line 725
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->d()V

    .line 726
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->E:Ljava/lang/Runnable;

    const-wide/16 v1, 0x258

    invoke-virtual {p0, v0, v1, v2}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private n()V
    .locals 1

    .line 730
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->d()V

    .line 731
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->D:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private o()V
    .locals 1

    .line 735
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->d()V

    .line 736
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->E:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method


# virtual methods
.method public a(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/ActionBarOverlayLayout$b;
    .locals 2

    .line 389
    new-instance v0, Landroidx/appcompat/widget/ActionBarOverlayLayout$b;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout$b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public a(I)V
    .locals 1

    .line 765
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->c()V

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/16 v0, 0x6d

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 774
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setOverlayMode(Z)V

    goto :goto_0

    .line 771
    :cond_1
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->i:Landroidx/appcompat/widget/ae;

    invoke-interface {p1}, Landroidx/appcompat/widget/ae;->g()V

    goto :goto_0

    .line 768
    :cond_2
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->i:Landroidx/appcompat/widget/ae;

    invoke-interface {p1}, Landroidx/appcompat/widget/ae;->f()V

    :goto_0
    return-void
.end method

.method public a(Landroid/view/Menu;Landroidx/appcompat/view/menu/m$a;)V
    .locals 1

    .line 852
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->c()V

    .line 853
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->i:Landroidx/appcompat/widget/ae;

    invoke-interface {v0, p1, p2}, Landroidx/appcompat/widget/ae;->a(Landroid/view/Menu;Landroidx/appcompat/view/menu/m$a;)V

    return-void
.end method

.method public a(Landroid/view/View;I)V
    .locals 0

    if-nez p2, :cond_0

    .line 578
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->onStopNestedScroll(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;IIIII)V
    .locals 0

    if-nez p6, :cond_0

    .line 586
    invoke-virtual/range {p0 .. p5}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->onNestedScroll(Landroid/view/View;IIII)V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;IIIII[I)V
    .locals 0

    .line 558
    invoke-virtual/range {p0 .. p6}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a(Landroid/view/View;IIIII)V

    return-void
.end method

.method public a(Landroid/view/View;II[II)V
    .locals 0

    if-nez p5, :cond_0

    .line 593
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->onNestedPreScroll(Landroid/view/View;II[I)V

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    .line 211
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->l:Z

    return v0
.end method

.method public a(Landroid/view/View;Landroid/view/View;II)Z
    .locals 0

    if-nez p4, :cond_0

    .line 565
    invoke-virtual {p0, p1, p2, p3}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected b()Landroidx/appcompat/widget/ActionBarOverlayLayout$b;
    .locals 2

    .line 384
    new-instance v0, Landroidx/appcompat/widget/ActionBarOverlayLayout$b;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout$b;-><init>(II)V

    return-object v0
.end method

.method public b(Landroid/view/View;Landroid/view/View;II)V
    .locals 0

    if-nez p4, :cond_0

    .line 571
    invoke-virtual {p0, p1, p2, p3}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method c()V
    .locals 1

    .line 668
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->h:Landroidx/appcompat/widget/ContentFrameLayout;

    if-nez v0, :cond_0

    .line 669
    sget v0, Landroidx/appcompat/a$f;->b:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ContentFrameLayout;

    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->h:Landroidx/appcompat/widget/ContentFrameLayout;

    .line 670
    sget v0, Landroidx/appcompat/a$f;->c:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionBarContainer;

    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a:Landroidx/appcompat/widget/ActionBarContainer;

    .line 671
    sget v0, Landroidx/appcompat/a$f;->a:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a(Landroid/view/View;)Landroidx/appcompat/widget/ae;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->i:Landroidx/appcompat/widget/ae;

    :cond_0
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 399
    instance-of p1, p1, Landroidx/appcompat/widget/ActionBarOverlayLayout$b;

    return p1
.end method

.method d()V
    .locals 1

    .line 712
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->D:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 713
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->E:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 714
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->c:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    .line 715
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 537
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 538
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->j:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k:Z

    if-nez v0, :cond_1

    .line 539
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContainer;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 540
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContainer;->getBottom()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v2}, Landroidx/appcompat/widget/ActionBarContainer;->getTranslationY()F

    move-result v2

    add-float/2addr v0, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 542
    :goto_0
    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->getWidth()I

    move-result v3

    iget-object v4, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->j:Landroid/graphics/drawable/Drawable;

    .line 543
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v4, v0

    .line 542
    invoke-virtual {v2, v1, v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 544
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method public e()Z
    .locals 1

    .line 816
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->c()V

    .line 817
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->i:Landroidx/appcompat/widget/ae;

    invoke-interface {v0}, Landroidx/appcompat/widget/ae;->h()Z

    move-result v0

    return v0
.end method

.method public f()Z
    .locals 1

    .line 822
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->c()V

    .line 823
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->i:Landroidx/appcompat/widget/ae;

    invoke-interface {v0}, Landroidx/appcompat/widget/ae;->i()Z

    move-result v0

    return v0
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 7

    .line 306
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 308
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move-result p1

    return p1

    .line 311
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->c()V

    .line 314
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a:Landroidx/appcompat/widget/ActionBarContainer;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    move-result v0

    .line 317
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->t:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 318
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->t:Landroid/graphics/Rect;

    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->q:Landroid/graphics/Rect;

    invoke-static {p0, p1, v1}, Landroidx/appcompat/widget/bd;->a(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 319
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->u:Landroid/graphics/Rect;

    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->t:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 321
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->u:Landroid/graphics/Rect;

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->t:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move v0, v1

    .line 323
    :cond_1
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->r:Landroid/graphics/Rect;

    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->q:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 325
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->r:Landroid/graphics/Rect;

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->q:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move v0, v1

    :cond_2
    if-eqz v0, :cond_3

    .line 329
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->requestLayout()V

    :cond_3
    return v1
.end method

.method public g()Z
    .locals 1

    .line 828
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->c()V

    .line 829
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->i:Landroidx/appcompat/widget/ae;

    invoke-interface {v0}, Landroidx/appcompat/widget/ae;->j()Z

    move-result v0

    return v0
.end method

.method protected synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 63
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->b()Landroidx/appcompat/widget/ActionBarOverlayLayout$b;

    move-result-object v0

    return-object v0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 63
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/ActionBarOverlayLayout$b;

    move-result-object p1

    return-object p1
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 394
    new-instance v0, Landroidx/appcompat/widget/ActionBarOverlayLayout$b;

    invoke-direct {v0, p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout$b;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getActionBarHideOffset()I
    .locals 1

    .line 701
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a:Landroidx/appcompat/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContainer;->getTranslationY()F

    move-result v0

    float-to-int v0, v0

    neg-int v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getNestedScrollAxes()I
    .locals 1

    .line 664
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->F:Landroidx/core/f/q;

    invoke-virtual {v0}, Landroidx/core/f/q;->a()I

    move-result v0

    return v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 759
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->c()V

    .line 760
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->i:Landroidx/appcompat/widget/ae;

    invoke-interface {v0}, Landroidx/appcompat/widget/ae;->e()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public h()Z
    .locals 1

    .line 834
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->c()V

    .line 835
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->i:Landroidx/appcompat/widget/ae;

    invoke-interface {v0}, Landroidx/appcompat/widget/ae;->k()Z

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 1

    .line 840
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->c()V

    .line 841
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->i:Landroidx/appcompat/widget/ae;

    invoke-interface {v0}, Landroidx/appcompat/widget/ae;->l()Z

    move-result v0

    return v0
.end method

.method public j()V
    .locals 1

    .line 846
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->c()V

    .line 847
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->i:Landroidx/appcompat/widget/ae;

    invoke-interface {v0}, Landroidx/appcompat/widget/ae;->m()V

    return-void
.end method

.method public k()V
    .locals 1

    .line 870
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->c()V

    .line 871
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->i:Landroidx/appcompat/widget/ae;

    invoke-interface {v0}, Landroidx/appcompat/widget/ae;->n()V

    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 7

    .line 342
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->c()V

    .line 344
    invoke-static {p1}, Landroidx/core/f/ac;->a(Landroid/view/WindowInsets;)Landroidx/core/f/ac;

    move-result-object p1

    .line 346
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroidx/core/f/ac;->a()I

    move-result v0

    .line 347
    invoke-virtual {p1}, Landroidx/core/f/ac;->b()I

    move-result v1

    invoke-virtual {p1}, Landroidx/core/f/ac;->c()I

    move-result v3

    .line 348
    invoke-virtual {p1}, Landroidx/core/f/ac;->d()I

    move-result v4

    invoke-direct {v2, v0, v1, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 351
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a:Landroidx/appcompat/widget/ActionBarContainer;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    move-result v0

    .line 355
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->q:Landroid/graphics/Rect;

    invoke-static {p0, p1, v1}, Landroidx/core/f/u;->a(Landroid/view/View;Landroidx/core/f/ac;Landroid/graphics/Rect;)Landroidx/core/f/ac;

    .line 356
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->q:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->q:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->q:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->q:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v1, v2, v3, v4}, Landroidx/core/f/ac;->b(IIII)Landroidx/core/f/ac;

    move-result-object v1

    iput-object v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->x:Landroidx/core/f/ac;

    .line 359
    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->y:Landroidx/core/f/ac;

    invoke-virtual {v2, v1}, Landroidx/core/f/ac;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 361
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->x:Landroidx/core/f/ac;

    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->y:Landroidx/core/f/ac;

    move v0, v2

    .line 363
    :cond_0
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->r:Landroid/graphics/Rect;

    iget-object v3, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->q:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 365
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->r:Landroid/graphics/Rect;

    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->q:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    if-eqz v2, :cond_2

    .line 369
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->requestLayout()V

    .line 376
    :cond_2
    invoke-virtual {p1}, Landroidx/core/f/ac;->g()Landroidx/core/f/ac;

    move-result-object p1

    .line 377
    invoke-virtual {p1}, Landroidx/core/f/ac;->e()Landroidx/core/f/ac;

    move-result-object p1

    .line 378
    invoke-virtual {p1}, Landroidx/core/f/ac;->f()Landroidx/core/f/ac;

    move-result-object p1

    .line 379
    invoke-virtual {p1}, Landroidx/core/f/ac;->i()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 241
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 242
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a(Landroid/content/Context;)V

    .line 243
    invoke-static {p0}, Landroidx/core/f/u;->m(Landroid/view/View;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 180
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 181
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->d()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    .line 514
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->getChildCount()I

    move-result p1

    .line 516
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->getPaddingLeft()I

    move-result p2

    .line 517
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->getPaddingTop()I

    move-result p3

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p1, :cond_1

    .line 520
    invoke-virtual {p0, p4}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    .line 521
    invoke-virtual {p5}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 522
    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionBarOverlayLayout$b;

    .line 524
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 525
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 527
    iget v3, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout$b;->leftMargin:I

    add-int/2addr v3, p2

    .line 528
    iget v0, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout$b;->topMargin:I

    add-int/2addr v0, p3

    add-int/2addr v1, v3

    add-int/2addr v2, v0

    .line 530
    invoke-virtual {p5, v3, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    :cond_0
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11

    .line 404
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->c()V

    .line 413
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a:Landroidx/appcompat/widget/ActionBarContainer;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 414
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionBarOverlayLayout$b;

    .line 415
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a:Landroidx/appcompat/widget/ActionBarContainer;

    .line 416
    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionBarContainer;->getMeasuredWidth()I

    move-result v1

    iget v2, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout$b;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout$b;->rightMargin:I

    add-int/2addr v1, v2

    const/4 v2, 0x0

    .line 415
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 417
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a:Landroidx/appcompat/widget/ActionBarContainer;

    .line 418
    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v1

    iget v3, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout$b;->topMargin:I

    add-int/2addr v1, v3

    iget v0, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout$b;->bottomMargin:I

    add-int/2addr v1, v0

    .line 417
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 419
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContainer;->getMeasuredState()I

    move-result v0

    invoke-static {v2, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v9

    .line 421
    invoke-static {p0}, Landroidx/core/f/u;->l(Landroid/view/View;)I

    move-result v0

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 427
    iget v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->f:I

    .line 428
    iget-boolean v3, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->m:Z

    if-eqz v3, :cond_3

    .line 429
    iget-object v3, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v3}, Landroidx/appcompat/widget/ActionBarContainer;->getTabContainer()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 432
    iget v3, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->f:I

    add-int/2addr v1, v3

    goto :goto_1

    .line 435
    :cond_1
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionBarContainer;->getVisibility()I

    move-result v1

    const/16 v3, 0x8

    if-eq v1, v3, :cond_2

    .line 438
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v1

    goto :goto_1

    :cond_2
    move v1, v2

    .line 445
    :cond_3
    :goto_1
    iget-object v3, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->s:Landroid/graphics/Rect;

    iget-object v4, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->q:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 446
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x15

    if-lt v3, v10, :cond_4

    .line 447
    iget-object v3, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->x:Landroidx/core/f/ac;

    iput-object v3, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->z:Landroidx/core/f/ac;

    goto :goto_2

    .line 449
    :cond_4
    iget-object v3, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->v:Landroid/graphics/Rect;

    iget-object v4, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->t:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 452
    :goto_2
    iget-boolean v3, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->l:Z

    if-nez v3, :cond_5

    if-nez v0, :cond_5

    .line 453
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->s:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v1

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 454
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->s:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v2

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 456
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v10, :cond_7

    .line 458
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->z:Landroidx/core/f/ac;

    invoke-virtual {v0, v2, v1, v2, v2}, Landroidx/core/f/ac;->b(IIII)Landroidx/core/f/ac;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->z:Landroidx/core/f/ac;

    goto :goto_3

    .line 461
    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v10, :cond_6

    .line 463
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->z:Landroidx/core/f/ac;

    .line 464
    invoke-virtual {v0}, Landroidx/core/f/ac;->a()I

    move-result v0

    iget-object v3, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->z:Landroidx/core/f/ac;

    .line 465
    invoke-virtual {v3}, Landroidx/core/f/ac;->b()I

    move-result v3

    add-int/2addr v3, v1

    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->z:Landroidx/core/f/ac;

    .line 466
    invoke-virtual {v1}, Landroidx/core/f/ac;->c()I

    move-result v1

    iget-object v4, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->z:Landroidx/core/f/ac;

    .line 467
    invoke-virtual {v4}, Landroidx/core/f/ac;->d()I

    move-result v4

    add-int/2addr v4, v2

    .line 463
    invoke-static {v0, v3, v1, v4}, Landroidx/core/graphics/b;->a(IIII)Landroidx/core/graphics/b;

    move-result-object v0

    .line 469
    new-instance v1, Landroidx/core/f/ac$a;

    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->z:Landroidx/core/f/ac;

    invoke-direct {v1, v2}, Landroidx/core/f/ac$a;-><init>(Landroidx/core/f/ac;)V

    .line 470
    invoke-virtual {v1, v0}, Landroidx/core/f/ac$a;->a(Landroidx/core/graphics/b;)Landroidx/core/f/ac$a;

    move-result-object v0

    .line 471
    invoke-virtual {v0}, Landroidx/core/f/ac$a;->a()Landroidx/core/f/ac;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->z:Landroidx/core/f/ac;

    goto :goto_3

    .line 473
    :cond_6
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->v:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v1

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 474
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->v:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 477
    :cond_7
    :goto_3
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->h:Landroidx/appcompat/widget/ContentFrameLayout;

    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->s:Landroid/graphics/Rect;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    .line 482
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v10, :cond_8

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->A:Landroidx/core/f/ac;

    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->z:Landroidx/core/f/ac;

    invoke-virtual {v0, v1}, Landroidx/core/f/ac;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 483
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->z:Landroidx/core/f/ac;

    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->A:Landroidx/core/f/ac;

    .line 484
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->h:Landroidx/appcompat/widget/ContentFrameLayout;

    invoke-static {v1, v0}, Landroidx/core/f/u;->b(Landroid/view/View;Landroidx/core/f/ac;)Landroidx/core/f/ac;

    goto :goto_4

    .line 485
    :cond_8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v10, :cond_9

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->w:Landroid/graphics/Rect;

    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->v:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 486
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->w:Landroid/graphics/Rect;

    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->v:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 487
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->h:Landroidx/appcompat/widget/ContentFrameLayout;

    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->v:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ContentFrameLayout;->a(Landroid/graphics/Rect;)V

    .line 490
    :cond_9
    :goto_4
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->h:Landroidx/appcompat/widget/ContentFrameLayout;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 491
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->h:Landroidx/appcompat/widget/ContentFrameLayout;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionBarOverlayLayout$b;

    .line 492
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->h:Landroidx/appcompat/widget/ContentFrameLayout;

    .line 493
    invoke-virtual {v1}, Landroidx/appcompat/widget/ContentFrameLayout;->getMeasuredWidth()I

    move-result v1

    iget v2, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout$b;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout$b;->rightMargin:I

    add-int/2addr v1, v2

    .line 492
    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 494
    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->h:Landroidx/appcompat/widget/ContentFrameLayout;

    .line 495
    invoke-virtual {v2}, Landroidx/appcompat/widget/ContentFrameLayout;->getMeasuredHeight()I

    move-result v2

    iget v3, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout$b;->topMargin:I

    add-int/2addr v2, v3

    iget v0, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout$b;->bottomMargin:I

    add-int/2addr v2, v0

    .line 494
    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 496
    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->h:Landroidx/appcompat/widget/ContentFrameLayout;

    invoke-virtual {v2}, Landroidx/appcompat/widget/ContentFrameLayout;->getMeasuredState()I

    move-result v2

    invoke-static {v9, v2}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v2

    .line 499
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 500
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 503
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->getSuggestedMinimumHeight()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 504
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->getSuggestedMinimumWidth()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 507
    invoke-static {v1, p1, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v1

    shl-int/lit8 v2, v2, 0x10

    .line 508
    invoke-static {v0, p2, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v0

    .line 506
    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 0

    .line 640
    iget-boolean p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->n:Z

    if-eqz p1, :cond_2

    if-nez p4, :cond_0

    goto :goto_1

    .line 643
    :cond_0
    invoke-direct {p0, p3}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a(F)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 644
    invoke-direct {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->o()V

    goto :goto_0

    .line 646
    :cond_1
    invoke-direct {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->n()V

    :goto_0
    const/4 p1, 0x1

    .line 648
    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->b:Z

    return p1

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 0

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 0

    .line 620
    iget p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->o:I

    add-int/2addr p1, p3

    iput p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->o:I

    .line 621
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setActionBarHideOffset(I)V

    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1

    .line 609
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->F:Landroidx/core/f/q;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/f/q;->a(Landroid/view/View;Landroid/view/View;I)V

    .line 610
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->getActionBarHideOffset()I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->o:I

    .line 611
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->d()V

    .line 612
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->B:Landroidx/appcompat/widget/ActionBarOverlayLayout$a;

    if-eqz p1, :cond_0

    .line 613
    invoke-interface {p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout$a;->l()V

    :cond_0
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 0

    and-int/lit8 p1, p3, 0x2

    if-eqz p1, :cond_1

    .line 601
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarContainer;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 604
    :cond_0
    iget-boolean p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->n:Z

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 1

    .line 626
    iget-boolean p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->n:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->b:Z

    if-nez p1, :cond_1

    .line 627
    iget p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->o:I

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContainer;->getHeight()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 628
    invoke-direct {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->l()V

    goto :goto_0

    .line 630
    :cond_0
    invoke-direct {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->m()V

    .line 633
    :cond_1
    :goto_0
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->B:Landroidx/appcompat/widget/ActionBarOverlayLayout$a;

    if-eqz p1, :cond_2

    .line 634
    invoke-interface {p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout$a;->m()V

    :cond_2
    return-void
.end method

.method public onWindowSystemUiVisibilityChanged(I)V
    .locals 4

    .line 248
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 249
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowSystemUiVisibilityChanged(I)V

    .line 251
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->c()V

    .line 252
    iget v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->p:I

    xor-int/2addr v0, p1

    .line 253
    iput p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->p:I

    and-int/lit8 v1, p1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    and-int/lit16 p1, p1, 0x100

    if-eqz p1, :cond_2

    move v2, v3

    .line 256
    :cond_2
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->B:Landroidx/appcompat/widget/ActionBarOverlayLayout$a;

    if-eqz p1, :cond_5

    xor-int/lit8 v3, v2, 0x1

    .line 260
    invoke-interface {p1, v3}, Landroidx/appcompat/widget/ActionBarOverlayLayout$a;->g(Z)V

    if-nez v1, :cond_4

    if-nez v2, :cond_3

    goto :goto_1

    .line 262
    :cond_3
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->B:Landroidx/appcompat/widget/ActionBarOverlayLayout$a;

    invoke-interface {p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout$a;->k()V

    goto :goto_2

    .line 261
    :cond_4
    :goto_1
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->B:Landroidx/appcompat/widget/ActionBarOverlayLayout$a;

    invoke-interface {p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout$a;->j()V

    :cond_5
    :goto_2
    and-int/lit16 p1, v0, 0x100

    if-eqz p1, :cond_6

    .line 265
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->B:Landroidx/appcompat/widget/ActionBarOverlayLayout$a;

    if-eqz p1, :cond_6

    .line 266
    invoke-static {p0}, Landroidx/core/f/u;->m(Landroid/view/View;)V

    :cond_6
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1

    .line 273
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowVisibilityChanged(I)V

    .line 274
    iput p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->g:I

    .line 275
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->B:Landroidx/appcompat/widget/ActionBarOverlayLayout$a;

    if-eqz v0, :cond_0

    .line 276
    invoke-interface {v0, p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout$a;->a(I)V

    :cond_0
    return-void
.end method

.method public setActionBarHideOffset(I)V
    .locals 1

    .line 705
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->d()V

    .line 706
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContainer;->getHeight()I

    move-result v0

    .line 707
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 708
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a:Landroidx/appcompat/widget/ActionBarContainer;

    neg-int p1, p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContainer;->setTranslationY(F)V

    return-void
.end method

.method public setActionBarVisibilityCallback(Landroidx/appcompat/widget/ActionBarOverlayLayout$a;)V
    .locals 1

    .line 185
    iput-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->B:Landroidx/appcompat/widget/ActionBarOverlayLayout$a;

    .line 186
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 189
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->B:Landroidx/appcompat/widget/ActionBarOverlayLayout$a;

    iget v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->g:I

    invoke-interface {p1, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout$a;->a(I)V

    .line 190
    iget p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->p:I

    if-eqz p1, :cond_0

    .line 192
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->onWindowSystemUiVisibilityChanged(I)V

    .line 193
    invoke-static {p0}, Landroidx/core/f/u;->m(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setHasNonEmbeddedTabs(Z)V
    .locals 0

    .line 215
    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->m:Z

    return-void
.end method

.method public setHideOnContentScrollEnabled(Z)V
    .locals 1

    .line 687
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->n:Z

    if-eq p1, v0, :cond_0

    .line 688
    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->n:Z

    if-nez p1, :cond_0

    .line 690
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->d()V

    const/4 p1, 0x0

    .line 691
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setActionBarHideOffset(I)V

    :cond_0
    return-void
.end method

.method public setIcon(I)V
    .locals 1

    .line 798
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->c()V

    .line 799
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->i:Landroidx/appcompat/widget/ae;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/ae;->a(I)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 804
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->c()V

    .line 805
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->i:Landroidx/appcompat/widget/ae;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/ae;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setLogo(I)V
    .locals 1

    .line 810
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->c()V

    .line 811
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->i:Landroidx/appcompat/widget/ae;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/ae;->b(I)V

    return-void
.end method

.method public setOverlayMode(Z)V
    .locals 1

    .line 199
    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->l:Z

    if-eqz p1, :cond_0

    .line 206
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v0, 0x13

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k:Z

    return-void
.end method

.method public setShowingForActionMode(Z)V
    .locals 0

    return-void
.end method

.method public setUiOptions(I)V
    .locals 0

    return-void
.end method

.method public setWindowCallback(Landroid/view/Window$Callback;)V
    .locals 1

    .line 747
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->c()V

    .line 748
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->i:Landroidx/appcompat/widget/ae;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/ae;->a(Landroid/view/Window$Callback;)V

    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 753
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->c()V

    .line 754
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->i:Landroidx/appcompat/widget/ae;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/ae;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
