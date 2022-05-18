.class public Lcn/nubia/video/player/nubiaplayer/SliderBar;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/video/player/nubiaplayer/SliderBar$b;
    }
.end annotation


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:I

.field private E:Lcn/nubia/video/player/nubiaplayer/SliderBar$b;

.field private F:Landroid/view/GestureDetector;

.field private G:Z

.field private H:Z

.field private I:Z

.field private J:I

.field private K:Z

.field private L:I

.field private M:I

.field private N:Landroid/view/GestureDetector$OnGestureListener;

.field private a:Landroid/content/Context;

.field private b:I

.field private c:Landroid/graphics/Paint;

.field private d:Landroid/graphics/Rect;

.field private e:I

.field private f:I

.field private g:I

.field private h:Landroid/graphics/Paint;

.field private i:Landroid/graphics/Rect;

.field private j:I

.field private k:Landroid/graphics/Rect;

.field private l:I

.field private m:I

.field private n:Landroid/graphics/Paint;

.field private o:I

.field private p:Landroid/graphics/Rect;

.field private q:Landroid/graphics/Rect;

.field private r:Landroid/graphics/Rect;

.field private s:Landroid/graphics/Rect;

.field private t:Landroid/graphics/Rect;

.field private u:I

.field private v:J

.field private w:J

.field private x:J

.field private y:J

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/video/player/nubiaplayer/SliderBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p2, 0x33ffffff

    .line 3
    iput p2, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->b:I

    const/4 p2, 0x5

    .line 4
    iput p2, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->e:I

    const/16 p2, 0xa

    .line 5
    iput p2, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->f:I

    const/4 p3, 0x1

    .line 6
    iput p3, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->g:I

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->j:I

    .line 8
    iput p3, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->l:I

    .line 9
    iput p3, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->m:I

    .line 10
    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->o:I

    .line 11
    iput p2, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->u:I

    const-wide/16 v0, 0x32

    .line 12
    iput-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->v:J

    const-wide/16 v0, 0x96

    .line 13
    iput-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->w:J

    const-wide/16 v0, 0xc8

    .line 14
    iput-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->x:J

    const/16 p2, 0x14

    .line 15
    iput p2, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->B:I

    const/4 p2, 0x0

    .line 16
    iput p2, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->C:I

    .line 17
    iput p2, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->D:I

    .line 18
    iput-boolean p2, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->G:Z

    .line 19
    iput-boolean p3, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->H:Z

    .line 20
    iput-boolean p2, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->I:Z

    .line 21
    iput p2, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->J:I

    .line 22
    iput-boolean p3, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->K:Z

    const p2, 0x55ffffff    # 3.518437E13f

    .line 23
    iput p2, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->L:I

    const p2, 0x11ffffff

    .line 24
    iput p2, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->M:I

    .line 25
    new-instance p2, Lcn/nubia/video/player/nubiaplayer/SliderBar$a;

    invoke-direct {p2, p0}, Lcn/nubia/video/player/nubiaplayer/SliderBar$a;-><init>(Lcn/nubia/video/player/nubiaplayer/SliderBar;)V

    iput-object p2, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->N:Landroid/view/GestureDetector$OnGestureListener;

    .line 26
    iput-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->a:Landroid/content/Context;

    .line 27
    invoke-direct {p0}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->l()V

    return-void
.end method

.method private a(J)J
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->G:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr p1, v0

    iget-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->x:J

    div-long/2addr p1, v0

    return-wide p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->d:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->z:I

    sub-int/2addr v0, v1

    iget v2, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->A:I

    sub-int/2addr v0, v2

    int-to-long v2, v0

    mul-long/2addr p1, v2

    iget-wide v2, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->x:J

    div-long/2addr p1, v2

    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->d:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    int-to-long v0, v0

    add-long/2addr p1, v0

    return-wide p1
.end method

.method private b(J)J
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->G:Z

    if-eqz v0, :cond_0

    .line 2
    iget-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->x:J

    mul-long/2addr v0, p1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-long p1, p1

    div-long/2addr v0, p1

    return-wide v0

    :cond_0
    const/4 v0, 0x0

    long-to-int p1, p1

    .line 3
    iget p2, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->z:I

    sub-int/2addr p1, p2

    iget-object p2, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->d:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, p2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 4
    iget-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->x:J

    int-to-long p1, p1

    mul-long/2addr v0, p1

    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->d:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget p2, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->z:I

    sub-int/2addr p1, p2

    iget p2, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->A:I

    sub-int/2addr p1, p2

    int-to-long p1, p1

    div-long/2addr v0, p1

    return-wide v0
.end method

.method static synthetic c(Lcn/nubia/video/player/nubiaplayer/SliderBar;II)I
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->v(II)I

    move-result p0

    return p0
.end method

.method static synthetic d(Lcn/nubia/video/player/nubiaplayer/SliderBar;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->G:Z

    return p1
.end method

.method static synthetic e(Lcn/nubia/video/player/nubiaplayer/SliderBar;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->y:J

    return-wide p1
.end method

.method static synthetic f(Lcn/nubia/video/player/nubiaplayer/SliderBar;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->v:J

    return-wide v0
.end method

.method static synthetic g(Lcn/nubia/video/player/nubiaplayer/SliderBar;)Lcn/nubia/video/player/nubiaplayer/SliderBar$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->E:Lcn/nubia/video/player/nubiaplayer/SliderBar$b;

    return-object p0
.end method

.method static synthetic h(Lcn/nubia/video/player/nubiaplayer/SliderBar;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->w:J

    return-wide v0
.end method

.method private i(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->e:I

    shl-int/lit8 v0, v0, 0x2

    .line 2
    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->f:I

    shl-int/lit8 v1, v1, 0x2

    .line 3
    iget-object v2, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->i:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 4
    :goto_0
    iget-object v3, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->d:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-gt v2, v3, :cond_2

    .line 5
    iget-object v3, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->i:Landroid/graphics/Rect;

    iput v2, v3, Landroid/graphics/Rect;->left:I

    .line 6
    iget v4, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->g:I

    add-int/2addr v4, v2

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 7
    iget-object v5, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->r:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    if-lt v4, v5, :cond_0

    iget-object v4, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->s:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-le v2, v4, :cond_1

    .line 8
    :cond_0
    iget-object v2, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 9
    :cond_1
    iget-object v2, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->i:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v0

    goto :goto_0

    .line 10
    :cond_2
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->k:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 11
    :goto_1
    iget-object v2, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->d:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-gt v0, v2, :cond_4

    .line 12
    iget-object v2, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->k:Landroid/graphics/Rect;

    iput v0, v2, Landroid/graphics/Rect;->left:I

    .line 13
    iget v3, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->l:I

    add-int/2addr v0, v3

    iput v0, v2, Landroid/graphics/Rect;->right:I

    .line 14
    iget-object v3, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->r:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-lt v0, v3, :cond_3

    iget-object v3, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->s:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-gt v0, v3, :cond_3

    .line 15
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 16
    :cond_3
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->k:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    goto :goto_1

    :cond_4
    return-void
.end method

.method private j(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->i:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 2
    :goto_0
    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->d:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-gt v0, v1, :cond_2

    .line 3
    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->i:Landroid/graphics/Rect;

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 4
    iget v2, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->g:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 5
    iget-object v3, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->p:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-lt v2, v3, :cond_0

    iget-object v2, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->q:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-le v0, v2, :cond_1

    .line 6
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 7
    :cond_1
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->i:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->e:I

    add-int/2addr v0, v1

    goto :goto_0

    .line 8
    :cond_2
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->k:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 9
    :goto_1
    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->d:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-gt v0, v1, :cond_4

    .line 10
    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->k:Landroid/graphics/Rect;

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 11
    iget v2, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->l:I

    add-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 12
    iget-object v2, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->p:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-lt v0, v2, :cond_3

    iget-object v2, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->q:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-gt v0, v2, :cond_3

    .line 13
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 14
    :cond_3
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->k:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->f:I

    add-int/2addr v0, v1

    goto :goto_1

    :cond_4
    return-void
.end method

.method private l()V
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->d:Landroid/graphics/Rect;

    .line 2
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->c:Landroid/graphics/Paint;

    .line 3
    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->b:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 5
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->i:Landroid/graphics/Rect;

    .line 6
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->h:Landroid/graphics/Paint;

    .line 7
    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->j:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 8
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 9
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->k:Landroid/graphics/Rect;

    .line 10
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->n:Landroid/graphics/Paint;

    .line 11
    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->o:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 12
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->n:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 13
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->p:Landroid/graphics/Rect;

    .line 14
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->q:Landroid/graphics/Rect;

    .line 15
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->r:Landroid/graphics/Rect;

    .line 16
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->s:Landroid/graphics/Rect;

    .line 17
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->t:Landroid/graphics/Rect;

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 19
    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->u:I

    int-to-float v1, v1

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->u:I

    .line 20
    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->e:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->e:I

    .line 21
    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->f:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->f:I

    .line 22
    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->g:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->g:I

    .line 23
    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->m:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->m:I

    .line 24
    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->B:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->B:I

    .line 25
    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->l:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->l:I

    .line 26
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080079

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->A:I

    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->z:I

    .line 28
    :cond_0
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->N:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->F:Landroid/view/GestureDetector;

    return-void
.end method

.method private m(II)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->q:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->B:I

    sub-int/2addr v1, v2

    if-lt p1, v1, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    if-gt p1, v1, :cond_0

    iget p1, v0, Landroid/graphics/Rect;->top:I

    if-lt p2, p1, :cond_0

    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, v2

    if-gt p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private n(II)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->p:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->B:I

    sub-int/2addr v1, v2

    if-lt p1, v1, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    if-gt p1, v1, :cond_0

    iget p1, v0, Landroid/graphics/Rect;->top:I

    if-lt p2, p1, :cond_0

    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, v2

    if-gt p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private o(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->t:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->setParam(Landroid/graphics/Rect;)V

    .line 2
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->t:Landroid/graphics/Rect;

    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 3
    invoke-direct {p0}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->r()V

    .line 4
    invoke-direct {p0, p1}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->i(Landroid/graphics/Canvas;)V

    .line 5
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->r:Landroid/graphics/Rect;

    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->n:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 6
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->s:Landroid/graphics/Rect;

    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->n:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method private p(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->t:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->setParam(Landroid/graphics/Rect;)V

    .line 2
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->t:Landroid/graphics/Rect;

    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 3
    invoke-direct {p0}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->t()V

    .line 4
    invoke-direct {p0, p1}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->i(Landroid/graphics/Canvas;)V

    .line 5
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->r:Landroid/graphics/Rect;

    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->n:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 6
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->s:Landroid/graphics/Rect;

    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->n:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method private q(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->d:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->setParam(Landroid/graphics/Rect;)V

    .line 2
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->d:Landroid/graphics/Rect;

    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 3
    invoke-direct {p0, p1}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->j(Landroid/graphics/Canvas;)V

    .line 4
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->p:Landroid/graphics/Rect;

    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->n:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 5
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->q:Landroid/graphics/Rect;

    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->n:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method private r()V
    .locals 5

    .line 1
    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->J:I

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->a(J)J

    move-result-wide v0

    long-to-int v0, v0

    .line 2
    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->r:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->p:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int v3, v0, v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 3
    iget v3, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->m:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 4
    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->s:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->q:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v4

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    .line 5
    iput v2, v1, Landroid/graphics/Rect;->right:I

    return-void
.end method

.method private setParam(Landroid/graphics/Rect;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->i:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->i:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->g:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 3
    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->k:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->p:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->p:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->u:I

    div-int/lit8 v2, v1, 0x2

    sub-int/2addr v0, v2

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 6
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 7
    iget-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->v:J

    invoke-direct {p0, v0, v1}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->a(J)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 8
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->p:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->m:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 9
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->q:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 10
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->q:Landroid/graphics/Rect;

    iget-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->w:J

    invoke-direct {p0, v0, v1}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->a(J)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 11
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->q:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->m:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    return-void
.end method

.method private t()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->H:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->r:Landroid/graphics/Rect;

    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->p:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->s:Landroid/graphics/Rect;

    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->q:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4
    :cond_0
    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->C:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->s:Landroid/graphics/Rect;

    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->q:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 6
    iget-boolean v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->H:Z

    if-eqz v0, :cond_3

    .line 7
    iput-boolean v2, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->H:Z

    .line 8
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->r:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->s:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v1

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 9
    iget v2, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->m:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 10
    :cond_2
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->r:Landroid/graphics/Rect;

    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->p:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 11
    iget-boolean v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->H:Z

    if-eqz v0, :cond_3

    .line 12
    iput-boolean v2, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->H:Z

    .line 13
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->s:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->r:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int v2, v1, v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 14
    iget v2, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->m:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    :cond_3
    :goto_0
    return-void
.end method

.method private v(II)I
    .locals 3

    .line 1
    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->D:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 2
    invoke-direct {p0, p1, p2}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->n(II)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->m(II)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    .line 4
    :cond_1
    invoke-direct {p0, p1, p2}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->m(II)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    move v1, v2

    goto :goto_1

    .line 5
    :cond_2
    invoke-direct {p0, p1, p2}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->n(II)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    return v1
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 2
    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->F:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    or-int/2addr p1, v0

    return p1
.end method

.method public getEndTime()I
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->w:J

    long-to-int v0, v0

    return v0
.end method

.method public getStartTime()I
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->v:J

    long-to-int v0, v0

    return v0
.end method

.method public k(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->K:Z

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->c:Landroid/graphics/Paint;

    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->b:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 3
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->n:Landroid/graphics/Paint;

    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->o:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->h:Landroid/graphics/Paint;

    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->j:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->c:Landroid/graphics/Paint;

    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->M:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->n:Landroid/graphics/Paint;

    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->L:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 7
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->h:Landroid/graphics/Paint;

    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->L:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 8
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-boolean v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->G:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->p(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->I:Z

    if-eqz v0, :cond_1

    .line 5
    invoke-direct {p0, p1}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->o(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-direct {p0, p1}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->q(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->d:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->u:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sub-int/2addr p4, p2

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    sub-int p2, p4, p2

    sub-int/2addr p5, p3

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p3

    sub-int p3, p5, p3

    iget v2, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->u:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr p3, v2

    .line 5
    invoke-virtual {p1, v0, v1, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 6
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->t:Landroid/graphics/Rect;

    const/4 p2, 0x0

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p3

    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->u:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p3, v0

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    sub-int/2addr p5, v0

    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->u:I

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p5, v0

    .line 9
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->K:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_6

    const/4 v2, 0x0

    if-eq p1, v1, :cond_4

    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    return v2

    .line 5
    :cond_1
    iget p1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->C:I

    if-eq p1, v1, :cond_3

    if-eq p1, v3, :cond_2

    goto :goto_0

    :cond_2
    int-to-long v2, v0

    .line 6
    invoke-direct {p0, v2, v3}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->b(J)J

    move-result-wide v2

    .line 7
    iget-wide v4, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->x:J

    iget-wide v6, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->v:J

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->w:J

    iput-wide v2, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->y:J

    .line 8
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->E:Lcn/nubia/video/player/nubiaplayer/SliderBar$b;

    long-to-int v0, v2

    invoke-interface {p1, v0}, Lcn/nubia/video/player/nubiaplayer/SliderBar$b;->a(I)V

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_3
    int-to-long v2, v0

    .line 10
    invoke-direct {p0, v2, v3}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->b(J)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    .line 11
    iget-wide v6, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->w:J

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->v:J

    iput-wide v2, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->y:J

    .line 12
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->E:Lcn/nubia/video/player/nubiaplayer/SliderBar$b;

    long-to-int v0, v2

    invoke-interface {p1, v0}, Lcn/nubia/video/player/nubiaplayer/SliderBar$b;->a(I)V

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :goto_0
    return v1

    .line 14
    :cond_4
    iput v2, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->C:I

    .line 15
    iget-boolean p1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->G:Z

    if-eqz p1, :cond_5

    .line 16
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->E:Lcn/nubia/video/player/nubiaplayer/SliderBar$b;

    iget-wide v3, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->y:J

    long-to-int v0, v3

    invoke-interface {p1, v1, v0}, Lcn/nubia/video/player/nubiaplayer/SliderBar$b;->b(II)V

    .line 17
    iput-boolean v2, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->G:Z

    .line 18
    :cond_5
    iput-boolean v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->H:Z

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v1

    .line 20
    :cond_6
    iput-boolean v1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->H:Z

    .line 21
    invoke-direct {p0, v0, v2}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->v(II)I

    move-result p1

    iput p1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->C:I

    .line 22
    iput p1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->D:I

    return v1
.end method

.method public s(II)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->I:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->I:Z

    .line 3
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->r:Landroid/graphics/Rect;

    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->p:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->s:Landroid/graphics/Rect;

    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->q:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5
    :goto_0
    iput p2, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->J:I

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setListener(Lcn/nubia/video/player/nubiaplayer/SliderBar$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->E:Lcn/nubia/video/player/nubiaplayer/SliderBar$b;

    return-void
.end method

.method public u(III)V
    .locals 2

    int-to-long v0, p1

    .line 1
    iput-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->v:J

    int-to-long v0, p2

    .line 2
    iput-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->w:J

    int-to-long v0, p3

    .line 3
    iput-wide v0, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->x:J

    if-ne p1, p2, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x2

    .line 4
    iput p1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->D:I

    goto :goto_0

    :cond_0
    if-ne p1, p2, :cond_1

    if-ne p1, p3, :cond_1

    const/4 p1, 0x1

    .line 5
    iput p1, p0, Lcn/nubia/video/player/nubiaplayer/SliderBar;->D:I

    .line 6
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
