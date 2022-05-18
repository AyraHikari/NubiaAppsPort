.class public Lcn/nubia/video/mediaeditorview/TimeLineView;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/video/mediaeditorview/TimeLineView$c;,
        Lcn/nubia/video/mediaeditorview/TimeLineView$b;,
        Lcn/nubia/video/mediaeditorview/TimeLineView$d;
    }
.end annotation


# static fields
.field public static C:I


# instance fields
.field private A:F

.field B:Landroid/view/GestureDetector$OnGestureListener;

.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/video/mediaeditorview/c;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/video/mediaeditorview/c;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/content/Context;

.field private e:I

.field private f:I

.field private g:Landroid/view/GestureDetector;

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Lcn/nubia/video/mediaeditorview/b;

.field private n:Lcn/nubia/video/mediaeditorview/c;

.field private o:Landroid/widget/Scroller;

.field private p:Lcn/nubia/video/mediaeditorview/c;

.field private q:Z

.field private r:Lcn/nubia/video/mediaeditorview/TimeLineView$d;

.field private s:Z

.field private t:Lcn/nubia/video/mediaeditorview/TimeLineView$c;

.field private u:F

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:D


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->a:Ljava/util/ArrayList;

    .line 3
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->b:Ljava/util/ArrayList;

    .line 4
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->c:Ljava/util/ArrayList;

    const/4 p2, 0x0

    .line 5
    iput-object p2, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->d:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->g:Landroid/view/GestureDetector;

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->h:Z

    .line 8
    iput-boolean v0, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->i:Z

    .line 9
    iput-boolean v0, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->j:Z

    .line 10
    iput-boolean v0, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->k:Z

    .line 11
    iput-boolean v0, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->l:Z

    .line 12
    iput-object p2, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->m:Lcn/nubia/video/mediaeditorview/b;

    .line 13
    iput-object p2, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->o:Landroid/widget/Scroller;

    .line 14
    iput-object p2, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->p:Lcn/nubia/video/mediaeditorview/c;

    const/4 p2, 0x1

    .line 15
    iput-boolean p2, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->s:Z

    .line 16
    new-instance v1, Lcn/nubia/video/mediaeditorview/TimeLineView$c;

    invoke-direct {v1, p0}, Lcn/nubia/video/mediaeditorview/TimeLineView$c;-><init>(Lcn/nubia/video/mediaeditorview/TimeLineView;)V

    iput-object v1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->t:Lcn/nubia/video/mediaeditorview/TimeLineView$c;

    .line 17
    iput p2, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->v:I

    .line 18
    iput v0, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->w:I

    const/4 p2, -0x1

    .line 19
    iput p2, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->x:I

    .line 20
    iput p2, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->y:I

    const/high16 p2, 0x3f800000    # 1.0f

    .line 21
    iput p2, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->A:F

    .line 22
    new-instance p2, Lcn/nubia/video/mediaeditorview/TimeLineView$a;

    invoke-direct {p2, p0}, Lcn/nubia/video/mediaeditorview/TimeLineView$a;-><init>(Lcn/nubia/video/mediaeditorview/TimeLineView;)V

    iput-object p2, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->B:Landroid/view/GestureDetector$OnGestureListener;

    .line 23
    invoke-direct {p0, p1}, Lcn/nubia/video/mediaeditorview/TimeLineView;->I(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic A(Lcn/nubia/video/mediaeditorview/TimeLineView;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->v:I

    return p1
.end method

.method static synthetic B(Lcn/nubia/video/mediaeditorview/TimeLineView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/TimeLineView;->C()V

    return-void
.end method

.method private C()V
    .locals 8

    .line 1
    sget v0, Lcn/nubia/video/mediaeditorview/TimeLineView;->C:I

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, -0x1

    move v3, v2

    move v4, v3

    move v2, v1

    .line 2
    :goto_0
    iget-object v5, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->a:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_6

    .line 3
    iget-object v5, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->a:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/video/mediaeditorview/n;

    .line 4
    invoke-virtual {v5}, Lcn/nubia/video/mediaeditorview/c;->l()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->left:I

    if-le v6, v0, :cond_0

    goto/16 :goto_4

    .line 5
    :cond_0
    invoke-virtual {v5}, Lcn/nubia/video/mediaeditorview/c;->l()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->left:I

    const/high16 v7, 0x42480000    # 50.0f

    if-lt v0, v6, :cond_2

    invoke-virtual {v5}, Lcn/nubia/video/mediaeditorview/c;->l()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->right:I

    if-gt v0, v6, :cond_2

    .line 6
    invoke-virtual {v5}, Lcn/nubia/video/mediaeditorview/c;->l()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int v3, v0, v3

    invoke-virtual {v5}, Lcn/nubia/video/mediaeditorview/c;->g()I

    move-result v4

    add-int/2addr v3, v4

    mul-int/lit16 v3, v3, 0x3e8

    int-to-float v3, v3

    iget v4, v5, Lcn/nubia/video/mediaeditorview/c;->z:F

    mul-float/2addr v4, v7

    div-float/2addr v3, v4

    float-to-int v3, v3

    .line 7
    iget v4, v5, Lcn/nubia/video/mediaeditorview/c;->f:I

    if-le v3, v4, :cond_1

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    int-to-float v2, v2

    .line 8
    invoke-virtual {v5}, Lcn/nubia/video/mediaeditorview/c;->l()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v3

    mul-int/lit16 v0, v0, 0x3e8

    int-to-float v0, v0

    iget v3, v5, Lcn/nubia/video/mediaeditorview/c;->z:F

    mul-float/2addr v3, v7

    div-float/2addr v0, v3

    add-float/2addr v2, v0

    float-to-int v2, v2

    goto/16 :goto_5

    .line 9
    :cond_2
    iget-object v6, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->a:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_5

    .line 10
    invoke-virtual {v5}, Lcn/nubia/video/mediaeditorview/c;->l()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->right:I

    if-le v0, v6, :cond_4

    invoke-virtual {v5}, Lcn/nubia/video/mediaeditorview/c;->l()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/lit8 v6, v6, 0x28

    if-ge v0, v6, :cond_4

    .line 11
    invoke-virtual {v5}, Lcn/nubia/video/mediaeditorview/c;->g()I

    move-result v3

    invoke-virtual {v5}, Lcn/nubia/video/mediaeditorview/c;->j()I

    move-result v4

    add-int/2addr v3, v4

    mul-int/lit16 v3, v3, 0x3e8

    int-to-float v3, v3

    iget v4, v5, Lcn/nubia/video/mediaeditorview/c;->z:F

    mul-float/2addr v4, v7

    div-float/2addr v3, v4

    float-to-int v3, v3

    .line 12
    iget v4, v5, Lcn/nubia/video/mediaeditorview/c;->f:I

    if-le v3, v4, :cond_3

    goto :goto_2

    :cond_3
    move v4, v3

    :goto_2
    move v3, v1

    goto :goto_3

    .line 13
    :cond_4
    invoke-virtual {v5}, Lcn/nubia/video/mediaeditorview/c;->l()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/lit8 v6, v6, 0x28

    if-lt v0, v6, :cond_5

    .line 14
    invoke-virtual {v5}, Lcn/nubia/video/mediaeditorview/c;->l()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/lit8 v6, v6, 0x50

    if-ge v0, v6, :cond_5

    add-int/lit8 v3, v1, 0x1

    .line 15
    iget-object v4, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/video/mediaeditorview/c;

    invoke-virtual {v4}, Lcn/nubia/video/mediaeditorview/c;->g()I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    int-to-float v4, v4

    iget v6, v5, Lcn/nubia/video/mediaeditorview/c;->z:F

    mul-float/2addr v6, v7

    div-float/2addr v4, v6

    float-to-int v4, v4

    :cond_5
    :goto_3
    int-to-float v2, v2

    .line 16
    invoke-virtual {v5}, Lcn/nubia/video/mediaeditorview/c;->j()I

    move-result v6

    mul-int/lit16 v6, v6, 0x3e8

    int-to-float v6, v6

    iget v5, v5, Lcn/nubia/video/mediaeditorview/c;->z:F

    mul-float/2addr v5, v7

    div-float/2addr v6, v5

    add-float/2addr v2, v6

    float-to-int v2, v2

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_6
    :goto_4
    move v1, v3

    .line 17
    :goto_5
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->r:Lcn/nubia/video/mediaeditorview/TimeLineView$d;

    if-eqz v0, :cond_7

    .line 18
    iget-boolean v3, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->q:Z

    invoke-interface {v0, v1, v4, v2, v3}, Lcn/nubia/video/mediaeditorview/TimeLineView$d;->a(IIIZ)V

    :cond_7
    return-void
.end method

.method private D(FFF)F
    .locals 1

    cmpl-float v0, p1, p3

    if-lez v0, :cond_0

    return p3

    :cond_0
    cmpg-float p3, p1, p2

    if-gez p3, :cond_1

    move p1, p2

    :cond_1
    return p1
.end method

.method private E(Lcn/nubia/video/mediaeditorview/a;I)Landroid/graphics/Rect;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "computeAudioTrackShowRect mClipDuration = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/nubia/video/mediaeditorview/c;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; mStartTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcn/nubia/video/mediaeditorview/c;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TimeLineView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p1}, Lcn/nubia/video/mediaeditorview/c;->l()Landroid/graphics/Rect;

    move-result-object v0

    .line 3
    iget v1, p1, Lcn/nubia/video/mediaeditorview/c;->j:I

    invoke-direct {p0, v1}, Lcn/nubia/video/mediaeditorview/TimeLineView;->O(I)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 4
    iget v1, p1, Lcn/nubia/video/mediaeditorview/c;->j:I

    iget v2, p1, Lcn/nubia/video/mediaeditorview/c;->i:I

    add-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcn/nubia/video/mediaeditorview/TimeLineView;->O(I)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    const/4 v1, 0x0

    .line 5
    :goto_0
    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 6
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-lt v2, v3, :cond_2

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-ge v2, v3, :cond_2

    if-eqz p2, :cond_1

    const/4 v2, 0x2

    if-ne p2, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    if-ne p2, v2, :cond_2

    .line 7
    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iput v2, v0, Landroid/graphics/Rect;->left:I

    goto :goto_2

    .line 8
    :cond_1
    :goto_1
    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iput v2, v0, Landroid/graphics/Rect;->left:I

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_3
    invoke-virtual {p1}, Lcn/nubia/video/mediaeditorview/a;->z()V

    return-object v0
.end method

.method private F(Landroid/view/MotionEvent;)D
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    mul-float/2addr v1, v1

    mul-float/2addr p1, p1

    add-float/2addr v1, p1

    float-to-double v0, v1

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide v2, 0x40af400000000000L    # 4000.0

    add-double/2addr v0, v2

    return-wide v0
.end method

.method private G(Landroid/graphics/Canvas;)V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2
    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/video/mediaeditorview/n;

    invoke-virtual {v2, p1}, Lcn/nubia/video/mediaeditorview/n;->c(Landroid/graphics/Canvas;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 3
    :goto_1
    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAudioEntryShowList index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ";Rect = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/video/mediaeditorview/c;

    invoke-virtual {v3}, Lcn/nubia/video/mediaeditorview/c;->l()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TimeLineView"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/video/mediaeditorview/a;

    invoke-virtual {v2, p1}, Lcn/nubia/video/mediaeditorview/a;->c(Landroid/graphics/Canvas;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 6
    :cond_1
    :goto_2
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 7
    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v2, v2, 0x21

    int-to-float v2, v2

    iget-object v3, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/lit8 v3, v3, 0x21

    int-to-float v3, v3

    iget-object v4, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/lit8 v4, v4, -0x21

    int-to-float v4, v4

    iget-object v5, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v5, v5, -0x21

    int-to-float v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 8
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 9
    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    const/high16 v4, 0x41200000    # 10.0f

    invoke-virtual {v2, v1, v4, v4, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 10
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 11
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 12
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/video/mediaeditorview/d;->b:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 13
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method private H(I)I
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/video/mediaeditorview/c;

    invoke-virtual {v1}, Lcn/nubia/video/mediaeditorview/c;->l()Landroid/graphics/Rect;

    move-result-object v1

    .line 3
    iget v2, v1, Landroid/graphics/Rect;->left:I

    if-lt p1, v2, :cond_0

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-gt p1, v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_1
    return v0
.end method

.method private I(Landroid/content/Context;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->d:Landroid/content/Context;

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 3
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->e:I

    .line 4
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->f:I

    if-le v0, p1, :cond_0

    .line 5
    iput v0, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->f:I

    .line 6
    iput p1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->e:I

    .line 7
    :cond_0
    iget p1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->e:I

    div-int/lit8 p1, p1, 0x2

    sput p1, Lcn/nubia/video/mediaeditorview/TimeLineView;->C:I

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "init---  mViewWidth = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->e:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "; mViewHeight = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->f:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TimeLineView"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 10
    new-instance v0, Landroid/widget/Scroller;

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->d:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->o:Landroid/widget/Scroller;

    .line 11
    new-instance p1, Landroid/view/GestureDetector;

    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->d:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->B:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {p1, v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->g:Landroid/view/GestureDetector;

    .line 12
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 13
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    return-void
.end method

.method private K()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/TimeLineView;->L()V

    .line 2
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 4
    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/video/mediaeditorview/a;

    invoke-direct {p0, v2, v0}, Lcn/nubia/video/mediaeditorview/TimeLineView;->E(Lcn/nubia/video/mediaeditorview/a;I)Landroid/graphics/Rect;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private L()V
    .locals 7

    .line 1
    iget v0, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->e:I

    div-int/lit8 v0, v0, 0x2

    .line 2
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_0
    const/4 v1, 0x0

    .line 4
    :goto_0
    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 5
    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/video/mediaeditorview/c;

    .line 6
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v2}, Lcn/nubia/video/mediaeditorview/c;->j()I

    move-result v4

    add-int/2addr v4, v0

    const/16 v5, 0x14

    const/16 v6, 0x8c

    invoke-direct {v3, v0, v5, v4, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 7
    invoke-virtual {v2, v3}, Lcn/nubia/video/mediaeditorview/c;->w(Landroid/graphics/Rect;)V

    if-eqz v1, :cond_1

    .line 8
    new-instance v2, Landroid/graphics/Rect;

    add-int/lit8 v4, v0, -0x50

    invoke-direct {v2, v4, v5, v0, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 9
    iget-object v4, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_1
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/lit8 v2, v2, 0x50

    add-int/2addr v0, v2

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setVideoEntryShowRect : index = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ";scrRect = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TimeLineView"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private M(II)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->m:Lcn/nubia/video/mediaeditorview/b;

    iget-object v0, v0, Lcn/nubia/video/mediaeditorview/b;->a:Lcn/nubia/video/mediaeditorview/n;

    .line 2
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syncPositionInLongPressState: longPressIndex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TimeLineView"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 4
    :goto_0
    iget-object v3, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 5
    iget-object v3, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/video/mediaeditorview/c;

    add-int v4, p1, p2

    .line 6
    invoke-virtual {v3, v4}, Lcn/nubia/video/mediaeditorview/c;->p(I)Z

    move-result v5

    if-eqz v5, :cond_4

    if-ne v2, v1, :cond_0

    return-void

    .line 7
    :cond_0
    invoke-virtual {v3}, Lcn/nubia/video/mediaeditorview/c;->l()Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3}, Lcn/nubia/video/mediaeditorview/c;->l()Landroid/graphics/Rect;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    if-ge v2, v1, :cond_2

    if-ge v4, p1, :cond_1

    .line 8
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 9
    :cond_1
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->a:Ljava/util/ArrayList;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 10
    :goto_1
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->a:Ljava/util/ArrayList;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_3

    :cond_2
    if-ge v4, p1, :cond_3

    .line 11
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 12
    :cond_3
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->a:Ljava/util/ArrayList;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 13
    :goto_2
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 14
    :goto_3
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 15
    iput p1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->y:I

    .line 16
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/TimeLineView;->K()V

    return-void

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private O(I)I
    .locals 8

    const/high16 v0, 0x42480000    # 50.0f

    const/high16 v1, 0x447a0000    # 1000.0f

    const/4 v2, 0x0

    if-gtz p1, :cond_0

    .line 1
    sget v3, Lcn/nubia/video/mediaeditorview/TimeLineView;->C:I

    sub-int/2addr v2, p1

    int-to-float p1, v2

    div-float/2addr p1, v1

    mul-float/2addr p1, v0

    iget v0, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->A:F

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    sub-int/2addr v3, p1

    return v3

    :cond_0
    move v3, v2

    move v4, v3

    .line 2
    :goto_0
    iget-object v5, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->a:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 3
    iget-object v5, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->a:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/video/mediaeditorview/n;

    .line 4
    iget v6, v5, Lcn/nubia/video/mediaeditorview/c;->i:I

    add-int v7, v4, v6

    if-gt p1, v7, :cond_1

    .line 5
    invoke-virtual {v5}, Lcn/nubia/video/mediaeditorview/c;->l()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-int/2addr p1, v4

    int-to-float p1, p1

    div-float/2addr p1, v1

    mul-float/2addr p1, v0

    iget v0, v5, Lcn/nubia/video/mediaeditorview/c;->z:F

    mul-float/2addr p1, v0

    add-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1

    :cond_1
    add-int/2addr v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-le p1, v4, :cond_3

    .line 6
    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/video/mediaeditorview/c;

    invoke-virtual {v2}, Lcn/nubia/video/mediaeditorview/c;->l()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-int/2addr p1, v4

    int-to-float p1, p1

    div-float/2addr p1, v1

    mul-float/2addr p1, v0

    iget v0, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->A:F

    mul-float/2addr p1, v0

    add-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1

    :cond_3
    return v2
.end method

.method private Q()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2
    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/video/mediaeditorview/n;

    .line 3
    iget v3, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->A:F

    invoke-virtual {v2, v3}, Lcn/nubia/video/mediaeditorview/n;->y(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    :goto_1
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 5
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/video/mediaeditorview/a;

    .line 6
    iget v2, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->A:F

    invoke-virtual {v1, v2}, Lcn/nubia/video/mediaeditorview/a;->y(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 7
    :cond_1
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/TimeLineView;->K()V

    return-void
.end method

.method static synthetic a(Lcn/nubia/video/mediaeditorview/TimeLineView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->q:Z

    return p0
.end method

.method static synthetic b(Lcn/nubia/video/mediaeditorview/TimeLineView;)Lcn/nubia/video/mediaeditorview/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->p:Lcn/nubia/video/mediaeditorview/c;

    return-object p0
.end method

.method static synthetic c(Lcn/nubia/video/mediaeditorview/TimeLineView;Lcn/nubia/video/mediaeditorview/c;)Lcn/nubia/video/mediaeditorview/c;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->p:Lcn/nubia/video/mediaeditorview/c;

    return-object p1
.end method

.method static synthetic d(Lcn/nubia/video/mediaeditorview/TimeLineView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->q:Z

    return p1
.end method

.method static synthetic e(Lcn/nubia/video/mediaeditorview/TimeLineView;)Landroid/widget/Scroller;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->o:Landroid/widget/Scroller;

    return-object p0
.end method

.method static synthetic f(Lcn/nubia/video/mediaeditorview/TimeLineView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/TimeLineView;->L()V

    return-void
.end method

.method static synthetic g(Lcn/nubia/video/mediaeditorview/TimeLineView;Lcn/nubia/video/mediaeditorview/a;I)Landroid/graphics/Rect;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/nubia/video/mediaeditorview/TimeLineView;->E(Lcn/nubia/video/mediaeditorview/a;I)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method private getAddVideoIndexOfIndicator()I
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    sget v1, Lcn/nubia/video/mediaeditorview/TimeLineView;->C:I

    add-int/2addr v0, v1

    const/4 v1, 0x0

    move v2, v1

    .line 2
    :goto_0
    iget-object v3, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 3
    iget-object v3, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/video/mediaeditorview/c;

    invoke-virtual {v3}, Lcn/nubia/video/mediaeditorview/c;->l()Landroid/graphics/Rect;

    move-result-object v3

    .line 4
    iget v4, v3, Landroid/graphics/Rect;->left:I

    if-lt v0, v4, :cond_0

    iget v5, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v4

    div-int/lit8 v5, v5, 0x2

    if-ge v0, v5, :cond_0

    move v1, v2

    goto :goto_1

    .line 5
    :cond_0
    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v3

    div-int/lit8 v4, v4, 0x2

    if-lt v0, v4, :cond_1

    add-int/lit8 v3, v3, 0x50

    if-ge v0, v3, :cond_1

    add-int/lit8 v1, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method static synthetic h(Lcn/nubia/video/mediaeditorview/TimeLineView;I)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/nubia/video/mediaeditorview/TimeLineView;->H(I)I

    move-result p0

    return p0
.end method

.method static synthetic i(Lcn/nubia/video/mediaeditorview/TimeLineView;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->c:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic j(Lcn/nubia/video/mediaeditorview/TimeLineView;)F
    .locals 0

    .line 1
    iget p0, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->A:F

    return p0
.end method

.method static synthetic k(Lcn/nubia/video/mediaeditorview/TimeLineView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->l:Z

    return p1
.end method

.method static synthetic l(Lcn/nubia/video/mediaeditorview/TimeLineView;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->d:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic m(Lcn/nubia/video/mediaeditorview/TimeLineView;)Lcn/nubia/video/mediaeditorview/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->m:Lcn/nubia/video/mediaeditorview/b;

    return-object p0
.end method

.method static synthetic n(Lcn/nubia/video/mediaeditorview/TimeLineView;Lcn/nubia/video/mediaeditorview/b;)Lcn/nubia/video/mediaeditorview/b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->m:Lcn/nubia/video/mediaeditorview/b;

    return-object p1
.end method

.method static synthetic o(Lcn/nubia/video/mediaeditorview/TimeLineView;)Lcn/nubia/video/mediaeditorview/TimeLineView$d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->r:Lcn/nubia/video/mediaeditorview/TimeLineView$d;

    return-object p0
.end method

.method static synthetic p(Lcn/nubia/video/mediaeditorview/TimeLineView;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->x:I

    return p1
.end method

.method static synthetic q(Lcn/nubia/video/mediaeditorview/TimeLineView;Lcn/nubia/video/mediaeditorview/c;)Lcn/nubia/video/mediaeditorview/c;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->n:Lcn/nubia/video/mediaeditorview/c;

    return-object p1
.end method

.method static synthetic r(Lcn/nubia/video/mediaeditorview/TimeLineView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->i:Z

    return p0
.end method

.method static synthetic s(Lcn/nubia/video/mediaeditorview/TimeLineView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->i:Z

    return p1
.end method

.method static synthetic t(Lcn/nubia/video/mediaeditorview/TimeLineView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->j:Z

    return p0
.end method

.method static synthetic u(Lcn/nubia/video/mediaeditorview/TimeLineView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->j:Z

    return p1
.end method

.method static synthetic v(Lcn/nubia/video/mediaeditorview/TimeLineView;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->a:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic w(Lcn/nubia/video/mediaeditorview/TimeLineView;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->b:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic x(Lcn/nubia/video/mediaeditorview/TimeLineView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->h:Z

    return p0
.end method

.method static synthetic y(Lcn/nubia/video/mediaeditorview/TimeLineView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->h:Z

    return p1
.end method

.method static synthetic z(Lcn/nubia/video/mediaeditorview/TimeLineView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->v:I

    return p0
.end method


# virtual methods
.method public J()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->q:Z

    .line 2
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->o:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isOnFlingFinished = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TimeLineView"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "isOnFlingFinished in ForceFinished"

    .line 5
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->o:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    :cond_0
    return-void
.end method

.method public N(I)I
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "turnPositionToTime indicatorPosition = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TimeLineView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    move v2, v0

    .line 2
    :goto_0
    iget-object v3, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/high16 v4, 0x42480000    # 50.0f

    if-ge v0, v3, :cond_2

    .line 3
    iget-object v3, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/video/mediaeditorview/n;

    .line 4
    invoke-virtual {v3}, Lcn/nubia/video/mediaeditorview/c;->l()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->left:I

    if-le v5, p1, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {v3}, Lcn/nubia/video/mediaeditorview/c;->l()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->left:I

    if-lt p1, v5, :cond_1

    invoke-virtual {v3}, Lcn/nubia/video/mediaeditorview/c;->l()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->right:I

    if-gt p1, v5, :cond_1

    .line 6
    invoke-virtual {v3}, Lcn/nubia/video/mediaeditorview/c;->l()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int v0, p1, v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-float v0, v0

    iget v3, v3, Lcn/nubia/video/mediaeditorview/c;->z:F

    mul-float/2addr v3, v4

    div-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr v2, v0

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {v3}, Lcn/nubia/video/mediaeditorview/c;->j()I

    move-result v5

    mul-int/lit16 v5, v5, 0x3e8

    int-to-float v5, v5

    iget v3, v3, Lcn/nubia/video/mediaeditorview/c;->z:F

    mul-float/2addr v3, v4

    div-float/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8
    :cond_2
    :goto_1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/video/mediaeditorview/c;

    invoke-virtual {v0}, Lcn/nubia/video/mediaeditorview/c;->l()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-le p1, v0, :cond_3

    .line 9
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/video/mediaeditorview/c;

    invoke-virtual {v0}, Lcn/nubia/video/mediaeditorview/c;->l()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, v0

    mul-int/lit16 p1, p1, 0x3e8

    int-to-float p1, p1

    iget v0, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->A:F

    mul-float/2addr v0, v4

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    add-int/2addr v2, p1

    .line 10
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "turnPositionToTime timeLinePositionTime = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public P()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->p:Lcn/nubia/video/mediaeditorview/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Lcn/nubia/video/mediaeditorview/c;->s(Z)V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->p:Lcn/nubia/video/mediaeditorview/c;

    .line 4
    iput-boolean v1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->h:Z

    .line 5
    iput-boolean v1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->i:Z

    .line 6
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->r:Lcn/nubia/video/mediaeditorview/TimeLineView$d;

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    const/4 v2, -0x1

    .line 7
    invoke-interface {v0, v1, v2}, Lcn/nubia/video/mediaeditorview/TimeLineView$d;->d(II)V

    :cond_1
    return-void
.end method

.method public computeScroll()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->computeScroll()V

    .line 2
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->o:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->o:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    .line 4
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->o:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    .line 5
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->scrollTo(II)V

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    goto :goto_0

    .line 7
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->k:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->k:Z

    .line 9
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/TimeLineView;->C()V

    :cond_1
    :goto_0
    return-void
.end method

.method public getCurIndicatorTime()I
    .locals 2

    .line 1
    sget v0, Lcn/nubia/video/mediaeditorview/TimeLineView;->C:I

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    add-int/2addr v0, v1

    .line 2
    invoke-virtual {p0, v0}, Lcn/nubia/video/mediaeditorview/TimeLineView;->N(I)I

    move-result v0

    return v0
.end method

.method public getEntryShowVideoSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getPlayState()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->q:Z

    return v0
.end method

.method public getSelectedIndex()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->h:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->p:Lcn/nubia/video/mediaeditorview/c;

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Lcn/nubia/video/mediaeditorview/n;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 4
    :cond_0
    instance-of v1, v0, Lcn/nubia/video/mediaeditorview/a;

    if-eqz v1, :cond_1

    .line 5
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getSelectedVideoTime()I
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->p:Lcn/nubia/video/mediaeditorview/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcn/nubia/video/mediaeditorview/c;->j()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-float v0, v0

    const/high16 v1, 0x42480000    # 50.0f

    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->p:Lcn/nubia/video/mediaeditorview/c;

    iget v2, v2, Lcn/nubia/video/mediaeditorview/c;->z:F

    mul-float/2addr v2, v1

    div-float/2addr v0, v2

    float-to-int v0, v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/TimeLineView;->K()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-direct {p0, p1}, Lcn/nubia/video/mediaeditorview/TimeLineView;->G(Landroid/graphics/Canvas;)V

    .line 3
    iget-boolean v0, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->m:Lcn/nubia/video/mediaeditorview/b;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Lcn/nubia/video/mediaeditorview/b;->a(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public onScrollChanged(IIII)V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->i:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->k:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->q:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    move v1, v0

    .line 3
    :cond_1
    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2

    .line 4
    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/video/mediaeditorview/c;

    .line 5
    iget-object v3, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->a:Ljava/util/ArrayList;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/video/mediaeditorview/c;

    .line 6
    invoke-virtual {v2}, Lcn/nubia/video/mediaeditorview/c;->l()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sget v4, Lcn/nubia/video/mediaeditorview/TimeLineView;->C:I

    sub-int/2addr v2, v4

    if-ne p1, v2, :cond_1

    .line 7
    invoke-virtual {v3}, Lcn/nubia/video/mediaeditorview/c;->l()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sget v2, Lcn/nubia/video/mediaeditorview/TimeLineView;->C:I

    sub-int v5, v1, v2

    .line 8
    invoke-virtual {v3}, Lcn/nubia/video/mediaeditorview/c;->j()I

    move-result v7

    mul-int/lit16 v1, v7, 0x3e8

    int-to-float v1, v1

    const/high16 v2, 0x42480000    # 50.0f

    .line 9
    iget v3, v3, Lcn/nubia/video/mediaeditorview/c;->z:F

    mul-float/2addr v3, v2

    div-float/2addr v1, v3

    float-to-int v9, v1

    .line 10
    iget-object v4, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->o:Landroid/widget/Scroller;

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 12
    :cond_2
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/video/mediaeditorview/c;

    invoke-virtual {v1}, Lcn/nubia/video/mediaeditorview/c;->l()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sget v2, Lcn/nubia/video/mediaeditorview/TimeLineView;->C:I

    sub-int/2addr v1, v2

    if-ne p1, v1, :cond_3

    .line 13
    iput-boolean v0, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->q:Z

    .line 14
    :cond_3
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/TimeLineView;->C()V

    .line 15
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onScrollChanged(IIII)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onTouch event = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "; action = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TimeLineView"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_1

    .line 3
    iget-boolean p1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->h:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->p:Lcn/nubia/video/mediaeditorview/c;

    .line 4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1, v3, v4}, Lcn/nubia/video/mediaeditorview/c;->m(II)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->g:Landroid/view/GestureDetector;

    invoke-virtual {p1, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->g:Landroid/view/GestureDetector;

    invoke-virtual {p1, v2}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 7
    :cond_1
    :goto_0
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->g:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 8
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v2, :cond_9

    .line 9
    iget-boolean p1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->h:Z

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->i:Z

    if-eqz p1, :cond_4

    const-string p1, "ontouch Action up in 1"

    .line 10
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    iget-boolean p1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->j:Z

    if-eqz p1, :cond_2

    .line 12
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->p:Lcn/nubia/video/mediaeditorview/c;

    invoke-virtual {p1}, Lcn/nubia/video/mediaeditorview/c;->l()Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->left:I

    sget v0, Lcn/nubia/video/mediaeditorview/TimeLineView;->C:I

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v3

    goto :goto_1

    .line 13
    :cond_2
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->p:Lcn/nubia/video/mediaeditorview/c;

    invoke-virtual {p1}, Lcn/nubia/video/mediaeditorview/c;->l()Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->right:I

    sget v0, Lcn/nubia/video/mediaeditorview/TimeLineView;->C:I

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    sub-int/2addr p1, v0

    move v6, p1

    .line 14
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->r:Lcn/nubia/video/mediaeditorview/TimeLineView$d;

    if-eqz p1, :cond_3

    .line 15
    invoke-interface {p1}, Lcn/nubia/video/mediaeditorview/TimeLineView$d;->c()V

    .line 16
    iput v2, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->v:I

    :cond_3
    if-eqz v6, :cond_4

    .line 17
    iput-boolean v2, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->k:Z

    .line 18
    iget-object v3, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->o:Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x64

    invoke-virtual/range {v3 .. v8}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 20
    :cond_4
    iput-boolean v1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->i:Z

    .line 21
    iput-boolean v1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->j:Z

    .line 22
    iget-boolean p1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->l:Z

    if-eqz p1, :cond_18

    .line 23
    iput-boolean v1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->l:Z

    .line 24
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->m:Lcn/nubia/video/mediaeditorview/b;

    const/4 v0, 0x0

    const/4 v2, -0x1

    if-eqz p1, :cond_6

    .line 25
    iget p1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->x:I

    if-eq p1, v2, :cond_5

    iget v3, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->y:I

    if-eq v3, v2, :cond_5

    if-eq p1, v3, :cond_5

    .line 26
    iget-object v4, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->r:Lcn/nubia/video/mediaeditorview/TimeLineView$d;

    invoke-interface {v4, p1, v3}, Lcn/nubia/video/mediaeditorview/TimeLineView$d;->g(II)V

    .line 27
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/TimeLineView;->C()V

    .line 28
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/TimeLineView;->C()V

    .line 29
    :cond_5
    iput v2, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->x:I

    .line 30
    iput v2, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->y:I

    .line 31
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->m:Lcn/nubia/video/mediaeditorview/b;

    iget-object p1, p1, Lcn/nubia/video/mediaeditorview/b;->a:Lcn/nubia/video/mediaeditorview/n;

    invoke-virtual {p1, v1}, Lcn/nubia/video/mediaeditorview/c;->r(Z)V

    .line 32
    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->m:Lcn/nubia/video/mediaeditorview/b;

    .line 33
    :cond_6
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->n:Lcn/nubia/video/mediaeditorview/c;

    if-eqz p1, :cond_8

    .line 34
    invoke-virtual {p1, v1}, Lcn/nubia/video/mediaeditorview/c;->s(Z)V

    .line 35
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->n:Lcn/nubia/video/mediaeditorview/c;

    instance-of v3, p1, Lcn/nubia/video/mediaeditorview/a;

    if-eqz v3, :cond_7

    .line 36
    iget-object v3, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    goto :goto_2

    :cond_7
    move p1, v2

    .line 37
    :goto_2
    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->n:Lcn/nubia/video/mediaeditorview/c;

    .line 38
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->r:Lcn/nubia/video/mediaeditorview/TimeLineView$d;

    if-eqz v0, :cond_8

    if-eq p1, v2, :cond_8

    .line 39
    iget v2, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->w:I

    invoke-interface {v0, p1, v2}, Lcn/nubia/video/mediaeditorview/TimeLineView$d;->h(II)V

    .line 40
    :cond_8
    iput v1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->w:I

    .line 41
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_7

    .line 42
    :cond_9
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_18

    .line 43
    iget-boolean p1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->l:Z

    if-eqz p1, :cond_18

    .line 44
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->m:Lcn/nubia/video/mediaeditorview/b;

    if-eqz p1, :cond_e

    .line 45
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    if-ltz p1, :cond_b

    const/16 v3, 0xa0

    if-gt p1, v3, :cond_b

    rsub-int v3, p1, 0xa0

    neg-int v3, v3

    .line 46
    div-int/2addr v3, v0

    .line 47
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v4

    add-int/2addr v4, v3

    sget v5, Lcn/nubia/video/mediaeditorview/TimeLineView;->C:I

    add-int/2addr v4, v5

    iget-object v5, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->a:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/video/mediaeditorview/c;

    invoke-virtual {v5}, Lcn/nubia/video/mediaeditorview/c;->l()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->left:I

    if-ge v4, v5, :cond_a

    .line 48
    iget-object v3, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/video/mediaeditorview/c;

    invoke-virtual {v3}, Lcn/nubia/video/mediaeditorview/c;->l()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v4

    sget v5, Lcn/nubia/video/mediaeditorview/TimeLineView;->C:I

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    .line 49
    :cond_a
    invoke-virtual {p0, v3, v1}, Landroid/view/View;->scrollBy(II)V

    goto :goto_3

    :cond_b
    const/16 v3, 0x398

    if-lt p1, v3, :cond_d

    const/16 v3, 0x438

    if-gt p1, v3, :cond_d

    rsub-int v3, p1, 0x398

    neg-int v3, v3

    .line 50
    div-int/2addr v3, v0

    .line 51
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v4

    add-int/2addr v4, v3

    sget v5, Lcn/nubia/video/mediaeditorview/TimeLineView;->C:I

    add-int/2addr v4, v5

    iget-object v5, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->a:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/video/mediaeditorview/c;

    invoke-virtual {v5}, Lcn/nubia/video/mediaeditorview/c;->l()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->right:I

    if-le v4, v5, :cond_c

    .line 52
    iget-object v3, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/video/mediaeditorview/c;

    invoke-virtual {v3}, Lcn/nubia/video/mediaeditorview/c;->l()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v4

    sget v5, Lcn/nubia/video/mediaeditorview/TimeLineView;->C:I

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    .line 53
    :cond_c
    invoke-virtual {p0, v3, v1}, Landroid/view/View;->scrollBy(II)V

    .line 54
    :cond_d
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v3

    .line 55
    iget-object v4, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->m:Lcn/nubia/video/mediaeditorview/b;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v4, p1, v5, v3}, Lcn/nubia/video/mediaeditorview/b;->c(III)V

    .line 56
    invoke-direct {p0, p1, v3}, Lcn/nubia/video/mediaeditorview/TimeLineView;->M(II)V

    .line 57
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 58
    :cond_e
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->n:Lcn/nubia/video/mediaeditorview/c;

    if-eqz p1, :cond_18

    .line 59
    instance-of v3, p1, Lcn/nubia/video/mediaeditorview/a;

    if-eqz v3, :cond_18

    .line 60
    iget-object v3, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 61
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v4, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->u:F

    sub-float/2addr v3, v4

    float-to-int v3, v3

    const/16 v4, 0x50

    if-lt v3, v4, :cond_f

    const/16 v3, 0x4f

    goto :goto_4

    :cond_f
    const/16 v4, -0x50

    if-gt v3, v4, :cond_10

    const/16 v3, -0x4f

    :cond_10
    :goto_4
    if-gez v3, :cond_13

    if-eqz p1, :cond_13

    .line 62
    iget-object v4, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->n:Lcn/nubia/video/mediaeditorview/c;

    invoke-virtual {v4}, Lcn/nubia/video/mediaeditorview/c;->l()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v3

    if-gez v3, :cond_13

    if-eqz p1, :cond_13

    move v5, v1

    .line 63
    :goto_5
    iget-object v6, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->c:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_12

    .line 64
    iget-object v6, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->c:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    if-le v4, v6, :cond_11

    iget-object v6, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->c:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    if-ge v4, v6, :cond_11

    iget-object v6, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->b:Ljava/util/ArrayList;

    add-int/lit8 v7, p1, -0x1

    .line 65
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/nubia/video/mediaeditorview/c;

    invoke-virtual {v6}, Lcn/nubia/video/mediaeditorview/c;->l()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iget-object v7, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->c:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    if-ne v6, v7, :cond_11

    .line 66
    iget-object v3, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->n:Lcn/nubia/video/mediaeditorview/c;

    invoke-virtual {v6}, Lcn/nubia/video/mediaeditorview/c;->l()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v6

    :cond_11
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 67
    :cond_12
    iget-object v5, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->b:Ljava/util/ArrayList;

    add-int/lit8 v6, p1, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/video/mediaeditorview/c;

    invoke-virtual {v5}, Lcn/nubia/video/mediaeditorview/c;->l()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->right:I

    if-ge v4, v5, :cond_13

    .line 68
    iget-object v3, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/video/mediaeditorview/c;

    invoke-virtual {v3}, Lcn/nubia/video/mediaeditorview/c;->l()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->n:Lcn/nubia/video/mediaeditorview/c;

    invoke-virtual {v4}, Lcn/nubia/video/mediaeditorview/c;->l()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    :cond_13
    if-lez v3, :cond_16

    .line 69
    iget-object v4, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->b:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v2

    if-eq p1, v4, :cond_16

    .line 70
    iget-object v4, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->n:Lcn/nubia/video/mediaeditorview/c;

    invoke-virtual {v4}, Lcn/nubia/video/mediaeditorview/c;->l()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v3

    move v5, v1

    .line 71
    :goto_6
    iget-object v6, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->c:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_15

    .line 72
    iget-object v6, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->c:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    if-le v4, v6, :cond_14

    iget-object v6, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->c:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    if-ge v4, v6, :cond_14

    iget-object v6, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->b:Ljava/util/ArrayList;

    add-int/lit8 v7, p1, 0x1

    .line 73
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/nubia/video/mediaeditorview/c;

    invoke-virtual {v6}, Lcn/nubia/video/mediaeditorview/c;->l()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->c:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    if-ne v6, v7, :cond_14

    .line 74
    iget-object v3, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->n:Lcn/nubia/video/mediaeditorview/c;

    invoke-virtual {v6}, Lcn/nubia/video/mediaeditorview/c;->l()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v6

    :cond_14
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 75
    :cond_15
    iget-object v5, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->b:Ljava/util/ArrayList;

    add-int/2addr p1, v2

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/video/mediaeditorview/c;

    invoke-virtual {v5}, Lcn/nubia/video/mediaeditorview/c;->l()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->left:I

    if-le v4, v5, :cond_16

    .line 76
    iget-object v3, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/video/mediaeditorview/c;

    invoke-virtual {p1}, Lcn/nubia/video/mediaeditorview/c;->l()Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->n:Lcn/nubia/video/mediaeditorview/c;

    invoke-virtual {v3}, Lcn/nubia/video/mediaeditorview/c;->l()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int v3, p1, v3

    :cond_16
    mul-int/lit16 p1, v3, 0x3e8

    .line 77
    div-int/lit8 p1, p1, 0x32

    int-to-float p1, p1

    iget v4, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->A:F

    div-float/2addr p1, v4

    float-to-int p1, p1

    .line 78
    iget-object v4, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->n:Lcn/nubia/video/mediaeditorview/c;

    invoke-virtual {v4, p1}, Lcn/nubia/video/mediaeditorview/c;->q(I)V

    .line 79
    iget v4, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->w:I

    add-int/2addr v4, p1

    iput v4, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->w:I

    .line 80
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->n:Lcn/nubia/video/mediaeditorview/c;

    check-cast p1, Lcn/nubia/video/mediaeditorview/a;

    if-ltz v3, :cond_17

    move v2, v0

    :cond_17
    invoke-direct {p0, p1, v2}, Lcn/nubia/video/mediaeditorview/TimeLineView;->E(Lcn/nubia/video/mediaeditorview/a;I)Landroid/graphics/Rect;

    .line 81
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 82
    :cond_18
    :goto_7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->u:F

    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTouchTvent event.getActionMasked = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TimeLineView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v3, 0x5

    if-eq v0, v3, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    goto :goto_0

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTouchEvent ACTION_POINTER_DOWN = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->A:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 6
    invoke-direct {p0, p1}, Lcn/nubia/video/mediaeditorview/TimeLineView;->F(Landroid/view/MotionEvent;)D

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->z:D

    goto :goto_0

    .line 7
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTouchEvent move scaledRatio = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->A:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 9
    invoke-direct {p0, p1}, Lcn/nubia/video/mediaeditorview/TimeLineView;->F(Landroid/view/MotionEvent;)D

    move-result-wide v2

    .line 10
    iget p1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->A:F

    iget-wide v4, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->z:D

    div-double/2addr v2, v4

    double-to-float v0, v2

    mul-float/2addr p1, v0

    iput p1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->A:F

    const v0, 0x3e4ccccd    # 0.2f

    const/high16 v2, 0x40a00000    # 5.0f

    .line 11
    invoke-direct {p0, p1, v0, v2}, Lcn/nubia/video/mediaeditorview/TimeLineView;->D(FFF)F

    move-result p1

    iput p1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->A:F

    .line 12
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onTouchEvent move after 2 scaledRatio = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->A:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/TimeLineView;->Q()V

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_3
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public setAnimatorinvalidateFlag(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->s:Z

    if-eqz p1, :cond_0

    .line 2
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/TimeLineView;->C()V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setFilterFlag(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->p:Lcn/nubia/video/mediaeditorview/c;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->h:Z

    if-eqz v1, :cond_1

    .line 2
    instance-of v0, v0, Lcn/nubia/video/mediaeditorview/n;

    if-eqz v0, :cond_1

    const-string v0, "No Filter"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->p:Lcn/nubia/video/mediaeditorview/c;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcn/nubia/video/mediaeditorview/c;->t(Z)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->p:Lcn/nubia/video/mediaeditorview/c;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcn/nubia/video/mediaeditorview/c;->t(Z)V

    .line 6
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setMuteFlag(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->p:Lcn/nubia/video/mediaeditorview/c;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->h:Z

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 2
    invoke-virtual {v0, p1}, Lcn/nubia/video/mediaeditorview/c;->u(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    invoke-virtual {v0, p1}, Lcn/nubia/video/mediaeditorview/c;->u(Z)V

    .line 4
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTextFlag(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->p:Lcn/nubia/video/mediaeditorview/c;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->h:Z

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 2
    invoke-virtual {v0, p1}, Lcn/nubia/video/mediaeditorview/c;->v(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    invoke-virtual {v0, p1}, Lcn/nubia/video/mediaeditorview/c;->v(Z)V

    .line 4
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTimeLineViewListener(Lcn/nubia/video/mediaeditorview/TimeLineView$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->r:Lcn/nubia/video/mediaeditorview/TimeLineView$d;

    return-void
.end method

.method public setmLoadCompleteAnimatorlistener(Lcn/nubia/video/mediaeditorview/TimeLineView$b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/TimeLineView;->t:Lcn/nubia/video/mediaeditorview/TimeLineView$c;

    invoke-virtual {v0, p1}, Lcn/nubia/video/mediaeditorview/TimeLineView$c;->a(Lcn/nubia/video/mediaeditorview/TimeLineView$b;)V

    return-void
.end method
