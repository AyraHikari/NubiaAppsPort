.class public Lcn/nubia/video/commonui/app/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/video/commonui/app/e$g;,
        Lcn/nubia/video/commonui/app/e$h;,
        Lcn/nubia/video/commonui/app/e$i;
    }
.end annotation


# instance fields
.field private A:Landroid/view/View$OnClickListener;

.field private a:Landroid/content/Context;

.field private b:Landroid/widget/PopupWindow;

.field private c:Lcn/nubia/video/commonui/app/e$g;

.field private d:Landroid/widget/ListView;

.field private e:[Ljava/lang/CharSequence;

.field private f:Lcn/nubia/video/commonui/app/e$i;

.field private g:Z

.field private h:Landroid/view/View;

.field private i:Lcn/nubia/video/commonui/app/MorePopupRelativeLayout;

.field private j:[Z

.field private k:Landroid/widget/LinearLayout;

.field private l:Landroid/widget/LinearLayout;

.field private m:Landroid/widget/LinearLayout;

.field private n:Landroid/view/View;

.field private o:Landroid/view/View;

.field private p:Landroid/view/View;

.field private q:Lcn/nubia/video/commonui/app/MorePopupRelativeLayout;

.field private r:Ljava/lang/Object;

.field private s:[I

.field private t:Landroid/widget/Button;

.field private u:Landroid/widget/Button;

.field private v:Landroid/view/animation/PathInterpolator;

.field private w:Landroid/view/animation/PathInterpolator;

.field private x:Landroid/animation/AnimatorSet;

.field private y:Landroid/animation/AnimatorSet;

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1, v1}, Lcn/nubia/video/commonui/app/e;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    .line 3
    iput-boolean v3, v0, Lcn/nubia/video/commonui/app/e;->g:Z

    const/4 v4, 0x2

    new-array v4, v4, [I

    .line 4
    iput-object v4, v0, Lcn/nubia/video/commonui/app/e;->s:[I

    .line 5
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, v0, Lcn/nubia/video/commonui/app/e;->x:Landroid/animation/AnimatorSet;

    .line 6
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, v0, Lcn/nubia/video/commonui/app/e;->y:Landroid/animation/AnimatorSet;

    const-string v4, "ss_multi_window_enabled"

    .line 7
    iput-object v4, v0, Lcn/nubia/video/commonui/app/e;->z:Ljava/lang/String;

    .line 8
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    .line 9
    new-instance v4, Lcn/nubia/video/commonui/app/e$a;

    invoke-direct {v4, v0}, Lcn/nubia/video/commonui/app/e$a;-><init>(Lcn/nubia/video/commonui/app/e;)V

    iput-object v4, v0, Lcn/nubia/video/commonui/app/e;->A:Landroid/view/View$OnClickListener;

    .line 10
    iput-object v1, v0, Lcn/nubia/video/commonui/app/e;->a:Landroid/content/Context;

    .line 11
    new-instance v4, Landroid/widget/PopupWindow;

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-direct {v4, v1, v5, v6, v7}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v4, v0, Lcn/nubia/video/commonui/app/e;->b:Landroid/widget/PopupWindow;

    const/4 v5, 0x0

    .line 12
    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 13
    iget-object v4, v0, Lcn/nubia/video/commonui/app/e;->b:Landroid/widget/PopupWindow;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 14
    iget-object v4, v0, Lcn/nubia/video/commonui/app/e;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v3}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 15
    iget-object v4, v0, Lcn/nubia/video/commonui/app/e;->b:Landroid/widget/PopupWindow;

    const/4 v6, -0x1

    invoke-virtual {v4, v6}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 16
    iget-object v4, v0, Lcn/nubia/video/commonui/app/e;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v6}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 17
    new-instance v4, Landroid/view/animation/PathInterpolator;

    const v7, 0x3ebd70a4    # 0.37f

    const v8, 0x3e8f5c29    # 0.28f

    const v9, 0x3dcccccd    # 0.1f

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v4, v7, v8, v9, v10}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v4, v0, Lcn/nubia/video/commonui/app/e;->v:Landroid/view/animation/PathInterpolator;

    .line 18
    new-instance v4, Landroid/view/animation/PathInterpolator;

    const v8, 0x3e570a3d    # 0.21f

    const v9, 0x3f147ae1    # 0.58f

    invoke-direct {v4, v7, v8, v9, v10}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v4, v0, Lcn/nubia/video/commonui/app/e;->w:Landroid/view/animation/PathInterpolator;

    .line 19
    invoke-direct/range {p0 .. p1}, Lcn/nubia/video/commonui/app/e;->f(Landroid/content/Context;)Landroid/widget/Button;

    move-result-object v4

    iput-object v4, v0, Lcn/nubia/video/commonui/app/e;->t:Landroid/widget/Button;

    .line 20
    invoke-direct/range {p0 .. p1}, Lcn/nubia/video/commonui/app/e;->f(Landroid/content/Context;)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/video/commonui/app/e;->u:Landroid/widget/Button;

    .line 21
    invoke-direct/range {p0 .. p0}, Lcn/nubia/video/commonui/app/e;->t()Z

    move-result v1

    if-nez v1, :cond_0

    .line 22
    iget-object v7, v0, Lcn/nubia/video/commonui/app/e;->b:Landroid/widget/PopupWindow;

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-array v11, v5, [Ljava/lang/Object;

    .line 23
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v1, v11, v3

    new-array v12, v5, [Ljava/lang/Class;

    aput-object v2, v12, v3

    const-string v8, "setLayoutInScreenEnabled"

    .line 24
    invoke-static/range {v7 .. v12}, Lb/a/b/a/i;->e(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    goto :goto_0

    .line 25
    :cond_0
    iget-object v13, v0, Lcn/nubia/video/commonui/app/e;->b:Landroid/widget/PopupWindow;

    const/4 v15, 0x0

    const/16 v16, 0x0

    new-array v1, v5, [Ljava/lang/Object;

    .line 26
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v4, v1, v3

    new-array v4, v5, [Ljava/lang/Class;

    aput-object v2, v4, v3

    const-string v14, "setLayoutInScreenEnabled"

    move-object/from16 v17, v1

    move-object/from16 v18, v4

    .line 27
    invoke-static/range {v13 .. v18}, Lb/a/b/a/i;->e(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    .line 28
    :goto_0
    iget-object v1, v0, Lcn/nubia/video/commonui/app/e;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v6, v6}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    const-string v1, "android.view.WindowManagerGlobal"

    const-string v2, "getWindowManagerService"

    .line 29
    invoke-static {v1, v2, v5, v5}, Lb/a/b/a/i;->d(Ljava/lang/Object;Ljava/lang/String;ZZ)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/video/commonui/app/e;->r:Ljava/lang/Object;

    return-void
.end method

.method private A(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/commonui/app/e;->u()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/nubia/video/commonui/app/e;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lb/a/b/a/b;->b:I

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method private C()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcn/nubia/video/commonui/app/e;->x:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/commonui/app/e;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcn/nubia/video/commonui/app/e;->o()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/nubia/video/commonui/app/e;->k:Landroid/widget/LinearLayout;

    .line 3
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    .line 4
    :goto_0
    iget-boolean v1, p0, Lcn/nubia/video/commonui/app/e;->g:Z

    const/4 v2, 0x0

    const-string v3, "translationY"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-eqz v1, :cond_2

    .line 5
    iget-object v1, p0, Lcn/nubia/video/commonui/app/e;->k:Landroid/widget/LinearLayout;

    new-array v7, v6, [F

    int-to-float v0, v0

    aput v0, v7, v5

    aput v2, v7, v4

    invoke-static {v1, v3, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_1

    .line 6
    :cond_2
    iget-object v1, p0, Lcn/nubia/video/commonui/app/e;->k:Landroid/widget/LinearLayout;

    new-array v7, v6, [F

    neg-int v0, v0

    int-to-float v0, v0

    aput v0, v7, v5

    aput v2, v7, v4

    invoke-static {v1, v3, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    :goto_1
    const-wide/16 v1, 0xc8

    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 8
    iget-object v3, p0, Lcn/nubia/video/commonui/app/e;->v:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v3, v6, [I

    .line 9
    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 10
    invoke-virtual {v3, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 11
    new-instance v1, Lcn/nubia/video/commonui/app/e$d;

    invoke-direct {v1, p0}, Lcn/nubia/video/commonui/app/e$d;-><init>(Lcn/nubia/video/commonui/app/e;)V

    invoke-virtual {v3, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 12
    iget-object v1, p0, Lcn/nubia/video/commonui/app/e;->x:Landroid/animation/AnimatorSet;

    new-array v2, v6, [Landroid/animation/Animator;

    aput-object v0, v2, v5

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 13
    iget-object v0, p0, Lcn/nubia/video/commonui/app/e;->x:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x99
    .end array-data
.end method

.method private E(Z)V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcn/nubia/video/commonui/app/e;->l:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcn/nubia/video/commonui/app/e;->o:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcn/nubia/video/commonui/app/e;->p:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcn/nubia/video/commonui/app/e;->m:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5
    invoke-direct {p0}, Lcn/nubia/video/commonui/app/e;->p()I

    move-result p1

    invoke-direct {p0}, Lcn/nubia/video/commonui/app/e;->o()I

    move-result v0

    if-le p1, v0, :cond_3

    .line 6
    iget-object p1, p0, Lcn/nubia/video/commonui/app/e;->n:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 7
    :cond_0
    iget-object p1, p0, Lcn/nubia/video/commonui/app/e;->l:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8
    iget-object p1, p0, Lcn/nubia/video/commonui/app/e;->o:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 9
    iget-object p1, p0, Lcn/nubia/video/commonui/app/e;->p:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    iget-object p1, p0, Lcn/nubia/video/commonui/app/e;->m:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 11
    iget-object p1, p0, Lcn/nubia/video/commonui/app/e;->a:Landroid/content/Context;

    instance-of v2, p1, Landroid/app/Activity;

    if-eqz v2, :cond_1

    .line 12
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    :cond_1
    move p1, v0

    .line 13
    :goto_0
    invoke-static {p1}, Lb/a/b/a/k/a;->a(I)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {p1}, Lb/a/b/a/k/a;->b(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 14
    iget-object p1, p0, Lcn/nubia/video/commonui/app/e;->n:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 15
    iget-object p1, p0, Lcn/nubia/video/commonui/app/e;->n:Landroid/view/View;

    invoke-direct {p0, p1}, Lcn/nubia/video/commonui/app/e;->A(Landroid/view/View;)V

    goto :goto_1

    .line 16
    :cond_2
    iget-object p1, p0, Lcn/nubia/video/commonui/app/e;->n:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    :cond_3
    :goto_1
    iget-object p1, p0, Lcn/nubia/video/commonui/app/e;->d:Landroid/widget/ListView;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setSelection(I)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/video/commonui/app/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/commonui/app/e;->C()V

    return-void
.end method

.method static synthetic b(Lcn/nubia/video/commonui/app/e;)Landroid/widget/PopupWindow;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/commonui/app/e;->b:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static synthetic c(Lcn/nubia/video/commonui/app/e;)[Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/commonui/app/e;->j:[Z

    return-object p0
.end method

.method static synthetic d(Lcn/nubia/video/commonui/app/e;)Lcn/nubia/video/commonui/app/e$i;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/commonui/app/e;->f:Lcn/nubia/video/commonui/app/e$i;

    return-object p0
.end method

.method static synthetic e(Lcn/nubia/video/commonui/app/e;)Lcn/nubia/video/commonui/app/MorePopupRelativeLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/commonui/app/e;->q:Lcn/nubia/video/commonui/app/MorePopupRelativeLayout;

    return-object p0
.end method

.method private f(Landroid/content/Context;)Landroid/widget/Button;
    .locals 2

    .line 1
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x11

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setGravity(I)V

    .line 3
    sget v1, Lb/a/b/a/g;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lb/a/b/a/b;->a:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    const/high16 p1, 0x41700000    # 15.0f

    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextSize(F)V

    .line 6
    sget p1, Lb/a/b/a/d;->a:I

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackgroundResource(I)V

    return-object v0
.end method

.method private g(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 3
    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 4
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    sget v2, Lb/a/b/a/c;->c:I

    .line 5
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/4 v3, -0x2

    invoke-direct {p1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 6
    iget-object v2, p0, Lcn/nubia/video/commonui/app/e;->m:Landroid/widget/LinearLayout;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 7
    iget-object v2, p0, Lcn/nubia/video/commonui/app/e;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 p1, 0x1

    .line 9
    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 10
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    sget v2, Lb/a/b/a/c;->g:I

    .line 11
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sget v3, Lb/a/b/a/c;->d:I

    .line 12
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-direct {p1, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 13
    iget-object v0, p0, Lcn/nubia/video/commonui/app/e;->u:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 15
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/commonui/app/e;->u:Landroid/widget/Button;

    iget-object v2, p0, Lcn/nubia/video/commonui/app/e;->A:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iget-object v0, p0, Lcn/nubia/video/commonui/app/e;->u:Landroid/widget/Button;

    invoke-virtual {v1, v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private h()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/commonui/app/e;->a:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcn/nubia/video/commonui/app/e;->l(Landroid/content/Context;)V

    .line 2
    iget-object v0, p0, Lcn/nubia/video/commonui/app/e;->a:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcn/nubia/video/commonui/app/e;->g(Landroid/content/Context;)V

    .line 3
    invoke-direct {p0}, Lcn/nubia/video/commonui/app/e;->j()V

    return-void
.end method

.method private i()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcn/nubia/video/commonui/app/e;->g:Z

    .line 2
    iget-object v1, p0, Lcn/nubia/video/commonui/app/e;->d:Landroid/widget/ListView;

    if-nez v1, :cond_0

    .line 3
    invoke-direct {p0}, Lcn/nubia/video/commonui/app/e;->s()V

    .line 4
    invoke-direct {p0}, Lcn/nubia/video/commonui/app/e;->h()V

    .line 5
    iget-boolean v0, p0, Lcn/nubia/video/commonui/app/e;->g:Z

    invoke-direct {p0, v0}, Lcn/nubia/video/commonui/app/e;->k(Z)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-direct {p0, v0}, Lcn/nubia/video/commonui/app/e;->E(Z)V

    .line 7
    :goto_0
    iget-boolean v0, p0, Lcn/nubia/video/commonui/app/e;->g:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x50

    goto :goto_1

    :cond_1
    const/16 v0, 0x30

    .line 8
    :goto_1
    iget-object v1, p0, Lcn/nubia/video/commonui/app/e;->i:Lcn/nubia/video/commonui/app/MorePopupRelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 9
    iget-object v0, p0, Lcn/nubia/video/commonui/app/e;->i:Lcn/nubia/video/commonui/app/MorePopupRelativeLayout;

    iget-object v1, p0, Lcn/nubia/video/commonui/app/e;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Lcn/nubia/video/commonui/app/MorePopupRelativeLayout;->setPopupWindow(Landroid/widget/PopupWindow;)V

    .line 10
    iget-object v0, p0, Lcn/nubia/video/commonui/app/e;->i:Lcn/nubia/video/commonui/app/MorePopupRelativeLayout;

    invoke-virtual {v0, p0}, Lcn/nubia/video/commonui/app/MorePopupRelativeLayout;->setNubiaMorePopup(Lcn/nubia/video/commonui/app/e;)V

    .line 11
    iget-object v0, p0, Lcn/nubia/video/commonui/app/e;->q:Lcn/nubia/video/commonui/app/MorePopupRelativeLayout;

    iget-object v1, p0, Lcn/nubia/video/commonui/app/e;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Lcn/nubia/video/commonui/app/MorePopupRelativeLayout;->setPopupWindow(Landroid/widget/PopupWindow;)V

    .line 12
    iget-object v0, p0, Lcn/nubia/video/commonui/app/e;->q:Lcn/nubia/video/commonui/app/MorePopupRelativeLayout;

    invoke-virtual {v0, p0}, Lcn/nubia/video/commonui/app/MorePopupRelativeLayout;->setNubiaMorePopup(Lcn/nubia/video/commonui/app/e;)V

    return-void
.end method

.method private j()V
    .locals 3

    .line 1
    new-instance v0, Lcn/nubia/video/commonui/app/e$g;

    iget-object v1, p0, Lcn/nubia/video/commonui/app/e;->a:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/video/commonui/app/e;->e:[Ljava/lang/CharSequence;

    invoke-direct {v0, p0, v1, v2}, Lcn/nubia/video/commonui/app/e$g;-><init>(Lcn/nubia/video/commonui/app/e;Landroid/content/Context;[Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcn/nubia/video/commonui/app/e;->c:Lcn/nubia/video/commonui/app/e$g;

    .line 2
    iget-object v1, p0, Lcn/nubia/video/commonui/app/e;->d:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3
    iget-object v0, p0, Lcn/nubia/video/commonui/app/e;->f:Lcn/nubia/video/commonui/app/e$i;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcn/nubia/video/commonui/app/e;->d:Landroid/widget/ListView;

    new-instance v1, Lcn/nubia/video/commonui/app/e$c;

    invoke-direct {v1, p0}, Lcn/nubia/video/commonui/app/e$c;-><init>(Lcn/nubia/video/commonui/app/e;)V

    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_0
    return-void
.end method

.method private k(Z)V
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Lcn/nubia/video/commonui/app/e;->E(Z)V

    .line 2
    new-instance p1, Lcn/nubia/video/commonui/app/e$h;

    iget-object v0, p0, Lcn/nubia/video/commonui/app/e;->a:Landroid/content/Context;

    invoke-direct {p1, p0, v0}, Lcn/nubia/video/commonui/app/e$h;-><init>(Lcn/nubia/video/commonui/app/e;Landroid/content/Context;)V

    .line 3
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 4
    invoke-direct {p0}, Lcn/nubia/video/commonui/app/e;->u()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    .line 6
    :cond_0
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcn/nubia/video/commonui/app/e;->a:Landroid/content/Context;

    .line 7
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lb/a/b/a/c;->t:I

    .line 8
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 9
    invoke-direct {p0}, Lcn/nubia/video/commonui/app/e;->p()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3f4ccccd    # 0.8f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v2, v1, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x51

    .line 10
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 11
    :goto_0
    iget-object v1, p0, Lcn/nubia/video/commonui/app/e;->q:Lcn/nubia/video/commonui/app/MorePopupRelativeLayout;

    invoke-virtual {p1, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 12
    iget-object v0, p0, Lcn/nubia/video/commonui/app/e;->i:Lcn/nubia/video/commonui/app/MorePopupRelativeLayout;

    invoke-virtual {p1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 13
    iget-object v0, p0, Lcn/nubia/video/commonui/app/e;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method private l(Landroid/content/Context;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x11

    .line 3
    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 4
    invoke-direct {p0}, Lcn/nubia/video/commonui/app/e;->u()Z

    move-result p1

    if-nez p1, :cond_0

    .line 5
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    sget v2, Lb/a/b/a/c;->c:I

    .line 6
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 7
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {p1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 8
    iget-object v2, p0, Lcn/nubia/video/commonui/app/e;->l:Landroid/widget/LinearLayout;

    const/16 v3, 0x15

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_1

    .line 9
    :cond_0
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    sget v2, Lb/a/b/a/c;->s:I

    .line 10
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sget v4, Lb/a/b/a/c;->a:I

    .line 11
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-direct {p1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 12
    iget-object v3, p0, Lcn/nubia/video/commonui/app/e;->s:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-direct {p0}, Lcn/nubia/video/commonui/app/e;->q()I

    move-result v5

    if-le v3, v5, :cond_1

    .line 13
    iget-object v3, p0, Lcn/nubia/video/commonui/app/e;->s:[I

    aget v3, v3, v4

    invoke-direct {p0}, Lcn/nubia/video/commonui/app/e;->q()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {p0}, Lcn/nubia/video/commonui/app/e;->n()I

    move-result v4

    sub-int/2addr v3, v4

    goto :goto_0

    .line 14
    :cond_1
    iget-object v3, p0, Lcn/nubia/video/commonui/app/e;->s:[I

    aget v3, v3, v4

    .line 15
    :goto_0
    iget-object v4, p0, Lcn/nubia/video/commonui/app/e;->h:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutDirection()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 16
    invoke-direct {p0}, Lcn/nubia/video/commonui/app/e;->q()I

    move-result v4

    sub-int/2addr v4, v3

    .line 17
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v4, v2

    .line 18
    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    goto :goto_1

    .line 19
    :cond_2
    iput v3, p1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 20
    :goto_1
    iget-object v2, p0, Lcn/nubia/video/commonui/app/e;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 21
    iget-object p1, p0, Lcn/nubia/video/commonui/app/e;->A:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    sget v2, Lb/a/b/a/c;->b:I

    .line 23
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 24
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-direct {p1, v3, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 25
    iget-object v0, p0, Lcn/nubia/video/commonui/app/e;->t:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 26
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 27
    :cond_3
    iget-object v0, p0, Lcn/nubia/video/commonui/app/e;->t:Landroid/widget/Button;

    invoke-virtual {v1, v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private n()I
    .locals 7

    .line 1
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 2
    iget-object v1, p0, Lcn/nubia/video/commonui/app/e;->r:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v3

    const/4 v4, 0x1

    aput-object v0, v5, v4

    new-array v6, v2, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v6, v3

    const-class v2, Landroid/graphics/Point;

    aput-object v2, v6, v4

    const-string v2, "getInitialDisplaySize"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lb/a/b/a/i;->e(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    .line 3
    iget v0, v0, Landroid/graphics/Point;->y:I

    return v0
.end method

.method private o()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/nubia/video/commonui/app/e;->d:Landroid/widget/ListView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/commonui/app/e;->k:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcn/nubia/video/commonui/app/e;->w(Landroid/view/View;)V

    .line 3
    iget-object v0, p0, Lcn/nubia/video/commonui/app/e;->d:Landroid/widget/ListView;

    invoke-direct {p0, v0}, Lcn/nubia/video/commonui/app/e;->w(Landroid/view/View;)V

    .line 4
    iget-object v0, p0, Lcn/nubia/video/commonui/app/e;->e:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcn/nubia/video/commonui/app/e;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcn/nubia/video/commonui/app/e;->d:Landroid/widget/ListView;

    .line 6
    invoke-virtual {v1}, Landroid/widget/ListView;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcn/nubia/video/commonui/app/e;->e:[Ljava/lang/CharSequence;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v1, v2

    add-int/2addr v1, v0

    :cond_1
    return v1
.end method

.method private p()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/nubia/video/commonui/app/e;->h:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 5
    iget-object v1, p0, Lcn/nubia/video/commonui/app/e;->a:Landroid/content/Context;

    const-string v2, "window"

    .line 6
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 7
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 8
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    :goto_0
    return v0
.end method

.method private q()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/nubia/video/commonui/app/e;->h:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 5
    iget-object v1, p0, Lcn/nubia/video/commonui/app/e;->a:Landroid/content/Context;

    const-string v2, "window"

    .line 6
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 7
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 8
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    :goto_0
    return v0
.end method

.method private r([Ljava/lang/CharSequence;)V
    .locals 3

    .line 1
    array-length v0, p1

    new-array v0, v0, [Z

    iput-object v0, p0, Lcn/nubia/video/commonui/app/e;->j:[Z

    const/4 v0, 0x0

    .line 2
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 3
    iget-object v1, p0, Lcn/nubia/video/commonui/app/e;->j:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private s()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/nubia/video/commonui/app/e;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2
    sget v1, Lb/a/b/a/f;->e:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcn/nubia/video/commonui/app/MorePopupRelativeLayout;

    iput-object v1, p0, Lcn/nubia/video/commonui/app/e;->i:Lcn/nubia/video/commonui/app/MorePopupRelativeLayout;

    .line 3
    sget v1, Lb/a/b/a/f;->f:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/video/commonui/app/MorePopupRelativeLayout;

    iput-object v0, p0, Lcn/nubia/video/commonui/app/e;->q:Lcn/nubia/video/commonui/app/MorePopupRelativeLayout;

    .line 4
    iget-object v0, p0, Lcn/nubia/video/commonui/app/e;->i:Lcn/nubia/video/commonui/app/MorePopupRelativeLayout;

    sget v1, Lb/a/b/a/e;->t:I

    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/nubia/video/commonui/app/e;->k:Landroid/widget/LinearLayout;

    .line 6
    iget-object v0, p0, Lcn/nubia/video/commonui/app/e;->i:Lcn/nubia/video/commonui/app/MorePopupRelativeLayout;

    sget v1, Lb/a/b/a/e;->w:I

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/video/commonui/app/e;->o:Landroid/view/View;

    .line 8
    iget-object v0, p0, Lcn/nubia/video/commonui/app/e;->i:Lcn/nubia/video/commonui/app/MorePopupRelativeLayout;

    sget v1, Lb/a/b/a/e;->q:I

    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/video/commonui/app/e;->p:Landroid/view/View;

    .line 10
    iget-object v0, p0, Lcn/nubia/video/commonui/app/e;->i:Lcn/nubia/video/commonui/app/MorePopupRelativeLayout;

    sget v1, Lb/a/b/a/e;->r:I

    .line 11
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcn/nubia/video/commonui/app/e;->d:Landroid/widget/ListView;

    .line 12
    iget-object v0, p0, Lcn/nubia/video/commonui/app/e;->i:Lcn/nubia/video/commonui/app/MorePopupRelativeLayout;

    sget v1, Lb/a/b/a/e;->v:I

    .line 13
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/nubia/video/commonui/app/e;->l:Landroid/widget/LinearLayout;

    .line 14
    iget-object v0, p0, Lcn/nubia/video/commonui/app/e;->i:Lcn/nubia/video/commonui/app/MorePopupRelativeLayout;

    sget v1, Lb/a/b/a/e;->p:I

    .line 15
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/nubia/video/commonui/app/e;->m:Landroid/widget/LinearLayout;

    .line 16
    iget-object v0, p0, Lcn/nubia/video/commonui/app/e;->i:Lcn/nubia/video/commonui/app/MorePopupRelativeLayout;

    sget v1, Lb/a/b/a/e;->s:I

    .line 17
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/video/commonui/app/e;->n:Landroid/view/View;

    return-void
.end method

.method private t()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/nubia/video/commonui/app/e;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/video/commonui/app/e;->z:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private u()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/commonui/app/e;->t()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcn/nubia/video/commonui/app/e;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private w(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 3
    :cond_0
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v2, 0x0

    invoke-static {v2, v2, v1}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 4
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v0, :cond_1

    const/high16 v2, 0x40000000    # 2.0f

    .line 5
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 7
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    return-void
.end method


# virtual methods
.method public B()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcn/nubia/video/commonui/app/e;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/commonui/app/e;->h:Landroid/view/View;

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-direct {p0}, Lcn/nubia/video/commonui/app/e;->i()V

    .line 4
    iget-object v0, p0, Lcn/nubia/video/commonui/app/e;->b:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcn/nubia/video/commonui/app/e;->h:Landroid/view/View;

    iget-boolean v2, p0, Lcn/nubia/video/commonui/app/e;->g:Z

    if-eqz v2, :cond_2

    const/16 v2, 0x50

    goto :goto_0

    :cond_2
    const/16 v2, 0x30

    :goto_0
    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 5
    iget-object v0, p0, Lcn/nubia/video/commonui/app/e;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcn/nubia/video/commonui/app/e$b;

    invoke-direct {v1, p0}, Lcn/nubia/video/commonui/app/e$b;-><init>(Lcn/nubia/video/commonui/app/e;)V

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method public D(Landroid/widget/PopupWindow;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcn/nubia/video/commonui/app/e;->y:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/video/commonui/app/e;->g:Z

    const/4 v1, 0x0

    const-string v2, "translationY"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcn/nubia/video/commonui/app/e;->k:Landroid/widget/LinearLayout;

    new-array v6, v5, [F

    aput v1, v6, v4

    .line 4
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    aput v1, v6, v3

    .line 5
    invoke-static {v0, v2, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcn/nubia/video/commonui/app/e;->k:Landroid/widget/LinearLayout;

    new-array v6, v5, [F

    aput v1, v6, v4

    .line 7
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    aput v1, v6, v3

    .line 8
    invoke-static {v0, v2, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    :goto_0
    const-wide/16 v1, 0x96

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 10
    iget-object v6, p0, Lcn/nubia/video/commonui/app/e;->w:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v6, v5, [I

    .line 11
    fill-array-data v6, :array_0

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 12
    invoke-virtual {v6, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 13
    new-instance v1, Lcn/nubia/video/commonui/app/e$e;

    invoke-direct {v1, p0}, Lcn/nubia/video/commonui/app/e$e;-><init>(Lcn/nubia/video/commonui/app/e;)V

    invoke-virtual {v6, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 14
    iget-object v1, p0, Lcn/nubia/video/commonui/app/e;->y:Landroid/animation/AnimatorSet;

    new-array v2, v5, [Landroid/animation/Animator;

    aput-object v0, v2, v4

    aput-object v6, v2, v3

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 15
    iget-object v0, p0, Lcn/nubia/video/commonui/app/e;->y:Landroid/animation/AnimatorSet;

    new-instance v1, Lcn/nubia/video/commonui/app/e$f;

    invoke-direct {v1, p0, p1}, Lcn/nubia/video/commonui/app/e$f;-><init>(Lcn/nubia/video/commonui/app/e;Landroid/widget/PopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 16
    iget-object p1, p0, Lcn/nubia/video/commonui/app/e;->y:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x99
        0x0
    .end array-data
.end method

.method public m()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/commonui/app/e;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2
    iget-object v0, p0, Lcn/nubia/video/commonui/app/e;->b:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 3
    iput-object v1, p0, Lcn/nubia/video/commonui/app/e;->d:Landroid/widget/ListView;

    return-void
.end method

.method public v()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/commonui/app/e;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public x(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/commonui/app/e;->h:Landroid/view/View;

    return-void
.end method

.method public y(ILcn/nubia/video/commonui/app/e$i;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/commonui/app/e;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcn/nubia/video/commonui/app/e;->z([Ljava/lang/CharSequence;Lcn/nubia/video/commonui/app/e$i;)V

    return-void
.end method

.method public z([Ljava/lang/CharSequence;Lcn/nubia/video/commonui/app/e$i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/commonui/app/e;->e:[Ljava/lang/CharSequence;

    .line 2
    invoke-direct {p0, p1}, Lcn/nubia/video/commonui/app/e;->r([Ljava/lang/CharSequence;)V

    .line 3
    iput-object p2, p0, Lcn/nubia/video/commonui/app/e;->f:Lcn/nubia/video/commonui/app/e$i;

    return-void
.end method
