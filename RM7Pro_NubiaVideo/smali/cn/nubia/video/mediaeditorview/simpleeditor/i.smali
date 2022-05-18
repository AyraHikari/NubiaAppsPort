.class public Lcn/nubia/video/mediaeditorview/simpleeditor/i;
.super Lcn/nubia/video/mediaeditorview/simpleeditor/a;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView$a;
.implements Lb/a/c/a/c$b;
.implements Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$e;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/FrameLayout;

.field private e:Landroid/widget/FrameLayout;

.field private f:Lcn/nubia/video/mediaeditorview/simpleeditor/TextFontPickerView;

.field private g:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;

.field private h:Landroid/widget/SeekBar;

.field private i:I

.field private j:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;

.field private k:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

.field private l:Lcn/nubia/video/mediaeditorview/o/a;

.field private m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/video/mediaeditorview/textfilter/a;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/video/mediaeditorview/simpleeditor/j;",
            ">;"
        }
    .end annotation
.end field

.field private o:Z

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/a;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->n:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic A(Lcn/nubia/video/mediaeditorview/simpleeditor/i;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->r:I

    return p0
.end method

.method static synthetic B(Lcn/nubia/video/mediaeditorview/simpleeditor/i;)Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->g:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;

    return-object p0
.end method

.method static synthetic C(Lcn/nubia/video/mediaeditorview/simpleeditor/i;)Landroid/widget/SeekBar;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->h:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static synthetic D(Lcn/nubia/video/mediaeditorview/simpleeditor/i;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->i:I

    return p0
.end method

.method static synthetic E(Lcn/nubia/video/mediaeditorview/simpleeditor/i;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->i:I

    return p1
.end method

.method private F(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    float-to-int v1, v1

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    .line 3
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 4
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 5
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 6
    invoke-virtual {v2, p2, p2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 7
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    const/4 v3, 0x1

    .line 8
    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 9
    invoke-virtual {v1, p1, v2, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 10
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-object v0
.end method

.method private G(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)Landroid/graphics/Bitmap;
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p1

    move-object v5, p2

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 2
    iget p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->t:F

    invoke-direct {p0, p1, p2}, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->F(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private H(I)V
    .locals 3

    .line 1
    iput p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->s:I

    .line 2
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->g:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;

    if-eqz v0, :cond_0

    .line 3
    iget v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->q:I

    sub-int/2addr p1, v1

    int-to-float p1, p1

    iget v2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->r:I

    sub-int/2addr v2, v1

    int-to-float v1, v2

    div-float/2addr p1, v1

    invoke-virtual {v0, p1}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->a(F)V

    :cond_0
    return-void
.end method

.method private I()V
    .locals 3

    .line 1
    new-instance v0, Lcn/nubia/video/mediaeditorview/simpleeditor/c;

    invoke-direct {v0}, Lcn/nubia/video/mediaeditorview/simpleeditor/c;-><init>()V

    .line 2
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->h:Landroid/widget/SeekBar;

    new-instance v2, Lcn/nubia/video/mediaeditorview/simpleeditor/i$c;

    invoke-direct {v2, p0, v0}, Lcn/nubia/video/mediaeditorview/simpleeditor/i$c;-><init>(Lcn/nubia/video/mediaeditorview/simpleeditor/i;Lcn/nubia/video/mediaeditorview/simpleeditor/c;)V

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method private J()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->f:Lcn/nubia/video/mediaeditorview/simpleeditor/TextFontPickerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 2
    :goto_0
    sget-object v0, Lcn/nubia/video/mediaeditorview/textfilter/f;->c:[Ljava/lang/String;

    array-length v0, v0

    if-ge v1, v0, :cond_0

    .line 3
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->f:Lcn/nubia/video/mediaeditorview/simpleeditor/TextFontPickerView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcn/nubia/video/mediaeditorview/simpleeditor/i$a;

    invoke-direct {v2, p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/i$a;-><init>(Lcn/nubia/video/mediaeditorview/simpleeditor/i;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private K()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->l:Lcn/nubia/video/mediaeditorview/o/a;

    invoke-virtual {v0}, Lcn/nubia/video/mediaeditorview/o/a;->t()Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->o:Z

    .line 2
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->l:Lcn/nubia/video/mediaeditorview/o/a;

    invoke-virtual {v0}, Lcn/nubia/video/mediaeditorview/o/a;->y()I

    move-result v0

    iput v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->p:I

    .line 3
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->l:Lcn/nubia/video/mediaeditorview/o/a;

    invoke-virtual {v0}, Lcn/nubia/video/mediaeditorview/o/a;->q()I

    move-result v0

    .line 4
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->l:Lcn/nubia/video/mediaeditorview/o/a;

    invoke-virtual {v1}, Lcn/nubia/video/mediaeditorview/o/a;->p()I

    move-result v1

    .line 5
    iget-boolean v2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->o:Z

    if-nez v2, :cond_0

    .line 6
    iput v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->q:I

    .line 7
    iput v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->r:I

    .line 8
    iput v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->s:I

    goto :goto_0

    .line 9
    :cond_0
    iget v2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->p:I

    sub-int v1, v2, v1

    iput v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->q:I

    sub-int/2addr v2, v0

    .line 10
    iput v2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->r:I

    .line 11
    iput v2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->s:I

    :goto_0
    return-void
.end method

.method private L()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->k:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    invoke-virtual {v0}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->getAddFrameHolders()Ljava/util/ArrayList;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/video/mediaeditorview/textfilter/a;

    .line 3
    new-instance v2, Lcn/nubia/video/mediaeditorview/simpleeditor/j;

    const v3, -0x650053cd

    invoke-direct {v2, v3}, Lcn/nubia/video/mediaeditorview/simpleeditor/j;-><init>(I)V

    .line 4
    invoke-virtual {v1}, Lcn/nubia/video/mediaeditorview/textfilter/a;->a()Lcn/nubia/video/mediaeditorview/textfilter/b;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/video/mediaeditorview/textfilter/b;->getStartTime()J

    move-result-wide v3

    long-to-int v3, v3

    iput v3, v2, Lcn/nubia/video/mediaeditorview/simpleeditor/j;->a:I

    .line 5
    invoke-virtual {v1}, Lcn/nubia/video/mediaeditorview/textfilter/a;->a()Lcn/nubia/video/mediaeditorview/textfilter/b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/video/mediaeditorview/textfilter/b;->getEndTime()J

    move-result-wide v3

    long-to-int v1, v3

    iput v1, v2, Lcn/nubia/video/mediaeditorview/simpleeditor/j;->b:I

    .line 6
    iget v3, v2, Lcn/nubia/video/mediaeditorview/simpleeditor/j;->a:I

    iget v4, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->q:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v5, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->r:I

    sub-int v6, v5, v4

    int-to-float v6, v6

    div-float/2addr v3, v6

    iput v3, v2, Lcn/nubia/video/mediaeditorview/simpleeditor/j;->d:F

    sub-int/2addr v1, v4

    int-to-float v1, v1

    sub-int/2addr v5, v4

    int-to-float v3, v5

    div-float/2addr v1, v3

    .line 7
    iput v1, v2, Lcn/nubia/video/mediaeditorview/simpleeditor/j;->e:F

    .line 8
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->n:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private M()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->j:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;

    invoke-virtual {v0}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->q()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Lcn/nubia/video/mediaeditorview/simpleeditor/g;->i()Lcn/nubia/video/mediaeditorview/simpleeditor/g;

    move-result-object v1

    new-instance v2, Lcn/nubia/video/mediaeditorview/simpleeditor/i$b;

    invoke-direct {v2, p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/i$b;-><init>(Lcn/nubia/video/mediaeditorview/simpleeditor/i;)V

    invoke-virtual {v1, v0, v2}, Lcn/nubia/video/mediaeditorview/simpleeditor/g;->j(Ljava/lang/String;Lcn/nubia/video/mediaeditorview/simpleeditor/g$b;)V

    .line 3
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->g:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->setmTimeGroupList(Ljava/util/ArrayList;)V

    .line 4
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->g:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;

    invoke-virtual {v0, p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->setmOnIncatorChangeListener(Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView$a;)V

    return-void
.end method

.method static synthetic w(Lcn/nubia/video/mediaeditorview/simpleeditor/i;)Lcn/nubia/video/mediaeditorview/simpleeditor/TextFontPickerView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->f:Lcn/nubia/video/mediaeditorview/simpleeditor/TextFontPickerView;

    return-object p0
.end method

.method static synthetic x(Lcn/nubia/video/mediaeditorview/simpleeditor/i;)Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->k:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    return-object p0
.end method

.method static synthetic y(Lcn/nubia/video/mediaeditorview/simpleeditor/i;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->p:I

    return p0
.end method

.method static synthetic z(Lcn/nubia/video/mediaeditorview/simpleeditor/i;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->q:I

    return p0
.end method


# virtual methods
.method public j(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->g:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public m(I)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->o:Z

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->p:I

    sub-int p1, v0, p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->l:Lcn/nubia/video/mediaeditorview/o/a;

    invoke-virtual {v0}, Lcn/nubia/video/mediaeditorview/o/a;->D()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    iput p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->s:I

    .line 5
    iget v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->q:I

    if-ge p1, v0, :cond_1

    iput v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->s:I

    .line 6
    :cond_1
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->g:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p1}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->getIsTouchFlag()Z

    move-result p1

    if-nez p1, :cond_2

    .line 8
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->g:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;

    iget v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->s:I

    iget v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->q:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->r:I

    sub-int/2addr v2, v1

    int-to-float v1, v2

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->j(F)V

    :cond_2
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 2
    sget v0, Lcn/nubia/video/mediaeditorview/g;->T:I

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v0, :cond_0

    .line 3
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 6
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0

    .line 7
    :cond_0
    sget v0, Lcn/nubia/video/mediaeditorview/g;->U:I

    if-ne p1, v0, :cond_1

    .line 8
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 10
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 11
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 12
    :cond_1
    :goto_0
    sget v0, Lcn/nubia/video/mediaeditorview/g;->c:I

    if-ne p1, v0, :cond_5

    .line 13
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->k:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    invoke-virtual {p1}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->v()V

    .line 14
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->k:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    invoke-virtual {p1}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->C()V

    .line 15
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->k:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    invoke-virtual {p1, v2}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->setTouchable(Z)V

    .line 16
    iget-boolean p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->o:Z

    const v0, -0x650053cd

    if-nez p1, :cond_3

    .line 17
    iget p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->s:I

    add-int/lit16 p1, p1, 0xbb8

    .line 18
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->k:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    invoke-virtual {v1}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->getAddWordFrame()Lcn/nubia/video/mediaeditorview/textfilter/b;

    move-result-object v1

    iget v2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->s:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcn/nubia/video/mediaeditorview/textfilter/b;->setStartTime(J)V

    .line 19
    iget v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->r:I

    if-le p1, v1, :cond_2

    move p1, v1

    .line 20
    :cond_2
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->k:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    invoke-virtual {v1}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->getAddWordFrame()Lcn/nubia/video/mediaeditorview/textfilter/b;

    move-result-object v1

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Lcn/nubia/video/mediaeditorview/textfilter/b;->setEndTime(J)V

    .line 21
    new-instance v1, Lcn/nubia/video/mediaeditorview/simpleeditor/j;

    invoke-direct {v1, v0}, Lcn/nubia/video/mediaeditorview/simpleeditor/j;-><init>(I)V

    .line 22
    iget v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->s:I

    iput v0, v1, Lcn/nubia/video/mediaeditorview/simpleeditor/j;->a:I

    .line 23
    iput p1, v1, Lcn/nubia/video/mediaeditorview/simpleeditor/j;->b:I

    .line 24
    iget v2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->q:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iget v3, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->r:I

    sub-int v4, v3, v2

    int-to-float v4, v4

    div-float/2addr v0, v4

    iput v0, v1, Lcn/nubia/video/mediaeditorview/simpleeditor/j;->d:F

    sub-int/2addr p1, v2

    int-to-float p1, p1

    sub-int/2addr v3, v2

    int-to-float v0, v3

    div-float/2addr p1, v0

    .line 25
    iput p1, v1, Lcn/nubia/video/mediaeditorview/simpleeditor/j;->e:F

    .line 26
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->n:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 27
    :cond_3
    iget p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->s:I

    add-int/lit16 p1, p1, -0xbb8

    .line 28
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->k:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    invoke-virtual {v1}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->getAddWordFrame()Lcn/nubia/video/mediaeditorview/textfilter/b;

    move-result-object v1

    iget v2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->s:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcn/nubia/video/mediaeditorview/textfilter/b;->setEndTime(J)V

    .line 29
    iget v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->q:I

    if-ge p1, v1, :cond_4

    move p1, v1

    .line 30
    :cond_4
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->k:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    invoke-virtual {v1}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->getAddWordFrame()Lcn/nubia/video/mediaeditorview/textfilter/b;

    move-result-object v1

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Lcn/nubia/video/mediaeditorview/textfilter/b;->setStartTime(J)V

    .line 31
    new-instance v1, Lcn/nubia/video/mediaeditorview/simpleeditor/j;

    invoke-direct {v1, v0}, Lcn/nubia/video/mediaeditorview/simpleeditor/j;-><init>(I)V

    .line 32
    iget v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->s:I

    iput v0, v1, Lcn/nubia/video/mediaeditorview/simpleeditor/j;->b:I

    .line 33
    iput p1, v1, Lcn/nubia/video/mediaeditorview/simpleeditor/j;->a:I

    .line 34
    iget v2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->q:I

    sub-int/2addr p1, v2

    int-to-float p1, p1

    iget v3, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->r:I

    sub-int v4, v3, v2

    int-to-float v4, v4

    div-float/2addr p1, v4

    iput p1, v1, Lcn/nubia/video/mediaeditorview/simpleeditor/j;->d:F

    sub-int/2addr v0, v2

    int-to-float p1, v0

    sub-int/2addr v3, v2

    int-to-float v0, v3

    div-float/2addr p1, v0

    .line 35
    iput p1, v1, Lcn/nubia/video/mediaeditorview/simpleeditor/j;->e:F

    .line 36
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->n:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    :goto_1
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->g:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_5
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    check-cast p3, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;

    iput-object p3, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->j:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;

    .line 2
    invoke-static {}, Lcn/nubia/video/mediaeditorview/o/a;->s()Lcn/nubia/video/mediaeditorview/o/a;

    move-result-object p3

    iput-object p3, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->l:Lcn/nubia/video/mediaeditorview/o/a;

    .line 3
    sget p3, Lcn/nubia/video/mediaeditorview/h;->g:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 4
    sget p2, Lcn/nubia/video/mediaeditorview/g;->W:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;

    iput-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->g:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;

    .line 5
    sget p2, Lcn/nubia/video/mediaeditorview/g;->m:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/SeekBar;

    iput-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->h:Landroid/widget/SeekBar;

    .line 6
    sget p2, Lcn/nubia/video/mediaeditorview/g;->T:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->a:Landroid/widget/TextView;

    .line 7
    sget p2, Lcn/nubia/video/mediaeditorview/g;->U:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->b:Landroid/widget/TextView;

    .line 8
    sget p2, Lcn/nubia/video/mediaeditorview/g;->c:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->c:Landroid/widget/Button;

    .line 9
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->a:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->a:Landroid/widget/TextView;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 11
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->b:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->c:Landroid/widget/Button;

    invoke-virtual {p2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    sget p2, Lcn/nubia/video/mediaeditorview/g;->d:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->d:Landroid/widget/FrameLayout;

    .line 14
    sget p2, Lcn/nubia/video/mediaeditorview/g;->o:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->e:Landroid/widget/FrameLayout;

    .line 15
    sget p2, Lcn/nubia/video/mediaeditorview/g;->n:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcn/nubia/video/mediaeditorview/simpleeditor/TextFontPickerView;

    iput-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->f:Lcn/nubia/video/mediaeditorview/simpleeditor/TextFontPickerView;

    .line 16
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;

    invoke-virtual {p2}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->r()Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;->B()Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->k:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    .line 17
    invoke-virtual {p2, p0}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->setmOnDeleteListener(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$e;)V

    .line 18
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->k:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 19
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->K()V

    .line 20
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->M()V

    .line 21
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->L()V

    .line 22
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->I()V

    .line 23
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->J()V

    .line 24
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->k:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    invoke-virtual {p2, p3}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->setTouchable(Z)V

    .line 25
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->l:Lcn/nubia/video/mediaeditorview/o/a;

    invoke-virtual {p2, p0}, Lcn/nubia/video/mediaeditorview/o/a;->c0(Lb/a/c/a/c$b;)V

    .line 26
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->m:Ljava/util/ArrayList;

    .line 27
    iget-object p3, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->k:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    invoke-virtual {p3}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->getAddFrameHolders()Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 28
    iget-boolean p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->o:Z

    if-nez p2, :cond_0

    .line 29
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->l:Lcn/nubia/video/mediaeditorview/o/a;

    iget p3, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->q:I

    invoke-virtual {p2, p3}, Lcn/nubia/video/mediaeditorview/o/a;->M(I)V

    goto :goto_0

    .line 30
    :cond_0
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->l:Lcn/nubia/video/mediaeditorview/o/a;

    iget p3, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->p:I

    iget v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->r:I

    sub-int/2addr p3, v0

    invoke-virtual {p2, p3}, Lcn/nubia/video/mediaeditorview/o/a;->M(I)V

    :goto_0
    return-object p1
.end method

.method public t(F)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->o:Z

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->p:I

    iget v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->q:I

    sub-int/2addr v0, v1

    iget v2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->r:I

    sub-int/2addr v2, v1

    int-to-float v1, v2

    mul-float/2addr v1, p1

    float-to-int p1, v1

    sub-int/2addr v0, p1

    iput v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->s:I

    goto :goto_0

    .line 3
    :cond_0
    iget v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->q:I

    iget v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->r:I

    sub-int/2addr v1, v0

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int p1, v1

    add-int/2addr v0, p1

    iput v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->s:I

    .line 4
    :goto_0
    iget p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->s:I

    invoke-direct {p0, p1}, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->H(I)V

    .line 5
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->l:Lcn/nubia/video/mediaeditorview/o/a;

    iget v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->s:I

    invoke-virtual {p1, v0}, Lcn/nubia/video/mediaeditorview/o/a;->M(I)V

    return-void
.end method

.method u()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->k:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->setTouchable(Z)V

    .line 2
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->l:Lcn/nubia/video/mediaeditorview/o/a;

    invoke-virtual {v0}, Lcn/nubia/video/mediaeditorview/o/a;->o()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->l:Lcn/nubia/video/mediaeditorview/o/a;

    invoke-virtual {v0}, Lcn/nubia/video/mediaeditorview/o/a;->w()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->k:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    invoke-virtual {v2}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->getContainerWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    iput v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->t:F

    .line 4
    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->l:Lcn/nubia/video/mediaeditorview/o/a;

    invoke-virtual {v2, v0}, Lcn/nubia/video/mediaeditorview/o/a;->W(F)V

    move v0, v1

    .line 5
    :goto_0
    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->k:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    invoke-virtual {v2}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->getAddFrameHolders()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 6
    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->k:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    invoke-virtual {v2}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->getAddFrameHolders()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/video/mediaeditorview/textfilter/a;

    invoke-virtual {v2}, Lcn/nubia/video/mediaeditorview/textfilter/a;->a()Lcn/nubia/video/mediaeditorview/textfilter/b;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcn/nubia/video/mediaeditorview/textfilter/b;->setSelect(Z)V

    .line 7
    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->k:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    invoke-virtual {v2}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->getAddFrameHolders()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/video/mediaeditorview/textfilter/a;

    invoke-virtual {v2}, Lcn/nubia/video/mediaeditorview/textfilter/a;->a()Lcn/nubia/video/mediaeditorview/textfilter/b;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/video/mediaeditorview/textfilter/b;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    .line 8
    iget-object v3, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->k:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    invoke-virtual {v3}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->getAddFrameHolders()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/video/mediaeditorview/textfilter/a;

    invoke-virtual {v3}, Lcn/nubia/video/mediaeditorview/textfilter/a;->a()Lcn/nubia/video/mediaeditorview/textfilter/b;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/video/mediaeditorview/textfilter/b;->getLayout()Lcn/nubia/video/mediaeditorview/textfilter/d;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/video/mediaeditorview/textfilter/d;->getAddWordTextView()Lcn/nubia/video/mediaeditorview/textfilter/e;

    move-result-object v3

    invoke-static {v3}, Lcn/nubia/video/mediaeditorview/textfilter/g;->a(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 9
    iget-object v4, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->l:Lcn/nubia/video/mediaeditorview/o/a;

    invoke-virtual {v4}, Lcn/nubia/video/mediaeditorview/o/a;->o()Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {p0, v3, v2}, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->G(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 10
    :cond_0
    invoke-static {}, Lb/a/b/a/j/a;->i()Lb/a/b/a/j/a;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "video_edit_used:"

    const-string v3, "font"

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lb/a/b/a/j/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method v()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->k:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    invoke-virtual {v0}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->getAddFrameHolders()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->m:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->k:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    invoke-virtual {v1}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->getAddFrameHolders()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->k:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    .line 3
    invoke-virtual {v2}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->getAddFrameHolders()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/video/mediaeditorview/textfilter/a;

    invoke-virtual {v1}, Lcn/nubia/video/mediaeditorview/textfilter/a;->a()Lcn/nubia/video/mediaeditorview/textfilter/b;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcn/nubia/video/mediaeditorview/textfilter/b;->setSelect(Z)V

    .line 4
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->k:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    invoke-virtual {v1}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->getAddWordFrame()Lcn/nubia/video/mediaeditorview/textfilter/b;

    .line 5
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->k:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    invoke-virtual {v1}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->y()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->k:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->setAddFrameHolders(Ljava/util/ArrayList;)V

    .line 7
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->k:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->setTouchable(Z)V

    return-void
.end method
