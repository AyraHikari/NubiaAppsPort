.class public Lcom/android/gallery3d/filtershow/controller/SeekBarTextView;
.super Landroid/widget/TextView;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/filtershow/controller/SeekBarTextView$d;,
        Lcom/android/gallery3d/filtershow/controller/SeekBarTextView$c;,
        Lcom/android/gallery3d/filtershow/controller/SeekBarTextView$b;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/SeekBar;

.field private j:Landroid/widget/LinearLayout;

.field private k:Lcom/android/gallery3d/filtershow/controller/SeekBarTextView$c;

.field private l:Lcom/android/gallery3d/filtershow/controller/SeekBarTextView$d;

.field private m:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/gallery3d/filtershow/controller/SeekBarTextView;->a:I

    iput p1, p0, Lcom/android/gallery3d/filtershow/controller/SeekBarTextView;->b:I

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/controller/SeekBarTextView;->c:Ljava/lang/String;

    iput p1, p0, Lcom/android/gallery3d/filtershow/controller/SeekBarTextView;->d:I

    iput p1, p0, Lcom/android/gallery3d/filtershow/controller/SeekBarTextView;->e:I

    iput p1, p0, Lcom/android/gallery3d/filtershow/controller/SeekBarTextView;->f:I

    iput p1, p0, Lcom/android/gallery3d/filtershow/controller/SeekBarTextView;->g:I

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/controller/SeekBarTextView;->k:Lcom/android/gallery3d/filtershow/controller/SeekBarTextView$c;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/controller/SeekBarTextView;->l:Lcom/android/gallery3d/filtershow/controller/SeekBarTextView$d;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/controller/SeekBarTextView;->m:Z

    return-void
.end method

.method static synthetic a(Lcom/android/gallery3d/filtershow/controller/SeekBarTextView;)I
    .locals 0

    iget p0, p0, Lcom/android/gallery3d/filtershow/controller/SeekBarTextView;->a:I

    return p0
.end method

.method static synthetic b(Lcom/android/gallery3d/filtershow/controller/SeekBarTextView;)I
    .locals 0

    iget p0, p0, Lcom/android/gallery3d/filtershow/controller/SeekBarTextView;->b:I

    return p0
.end method

.method static synthetic c(Lcom/android/gallery3d/filtershow/controller/SeekBarTextView;)I
    .locals 0

    iget p0, p0, Lcom/android/gallery3d/filtershow/controller/SeekBarTextView;->d:I

    return p0
.end method

.method static synthetic d(Lcom/android/gallery3d/filtershow/controller/SeekBarTextView;)I
    .locals 0

    iget p0, p0, Lcom/android/gallery3d/filtershow/controller/SeekBarTextView;->e:I

    return p0
.end method

.method static synthetic e(Lcom/android/gallery3d/filtershow/controller/SeekBarTextView;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/android/gallery3d/filtershow/controller/SeekBarTextView;->h:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic f(Lcom/android/gallery3d/filtershow/controller/SeekBarTextView;)I
    .locals 0

    iget p0, p0, Lcom/android/gallery3d/filtershow/controller/SeekBarTextView;->f:I

    return p0
.end method

.method private g()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/controller/SeekBarTextView;->i()V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/controller/SeekBarTextView;->l:Lcom/android/gallery3d/filtershow/controller/SeekBarTextView$d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/gallery3d/filtershow/controller/SeekBarTextView$d;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/filtershow/controller/SeekBarTextView$d;-><init>(Lcom/android/gallery3d/filtershow/controller/SeekBarTextView;)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/controller/SeekBarTextView;->l:Lcom/android/gallery3d/filtershow/controller/SeekBarTextView$d;

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/controller/SeekBarTextView;->l:Lcom/android/gallery3d/filtershow/controller/SeekBarTextView$d;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/controller/SeekBarTextView;->k:Lcom/android/gallery3d/filtershow/controller/SeekBarTextView$c;

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/controller/SeekBarTextView;->h()V

    return-void
.end method

.method private h()V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/controller/SeekBarTextView;->k:Lcom/android/gallery3d/filtershow/controller/SeekBarTextView$c;

    new-instance v1, Lcom/android/gallery3d/filtershow/controller/SeekBarTextView$a;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/filtershow/controller/SeekBarTextView$a;-><init>(Lcom/android/gallery3d/filtershow/controller/SeekBarTextView;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/controller/SeekBarTextView$c;->h(Lcom/android/gallery3d/filtershow/controller/SeekBarTextView$b;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/controller/SeekBarTextView;->k:Lcom/android/gallery3d/filtershow/controller/SeekBarTextView$c;

    invoke-virtual {v0}, Lc/b/a/a/a;->f()V

    return-void
.end method


# virtual methods
.method public i()V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/controller/SeekBarTextView;->i:Landroid/widget/SeekBar;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getThumbOffset()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/controller/SeekBarTextView;->f:I

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/controller/SeekBarTextView;->i:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/controller/SeekBarTextView;->i:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/filtershow/controller/SeekBarTextView;->a:I

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/controller/SeekBarTextView;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/controller/SeekBarTextView;->b:I

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/controller/SeekBarTextView;->i:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget v1, p0, Lcom/android/gallery3d/filtershow/controller/SeekBarTextView;->g:I

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/controller/SeekBarTextView;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/controller/SeekBarTextView;->h:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/controller/SeekBarTextView;->d:I

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/controller/SeekBarTextView;->h:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/controller/SeekBarTextView;->e:I

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/controller/SeekBarTextView;->i:Landroid/widget/SeekBar;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/controller/SeekBarTextView;->m:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/controller/SeekBarTextView;->g()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/controller/SeekBarTextView;->m:Z

    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/controller/SeekBarTextView;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/controller/SeekBarTextView;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/controller/SeekBarTextView;->k:Lcom/android/gallery3d/filtershow/controller/SeekBarTextView$c;

    if-eqz v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/controller/SeekBarTextView;->k:Lcom/android/gallery3d/filtershow/controller/SeekBarTextView$c;

    invoke-virtual {v2, v0, v1}, Lc/b/a/a/a;->a(J)Z

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/controller/SeekBarTextView;->k:Lcom/android/gallery3d/filtershow/controller/SeekBarTextView$c;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/controller/SeekBarTextView$c;->g(Landroid/graphics/Canvas;)V

    :cond_3
    return-void
.end method

.method public setLayout(Landroid/widget/LinearLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/controller/SeekBarTextView;->j:Landroid/widget/LinearLayout;

    return-void
.end method

.method public setMinValue(I)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/controller/SeekBarTextView;->g:I

    return-void
.end method

.method public setSeekBar(Landroid/widget/SeekBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/controller/SeekBarTextView;->i:Landroid/widget/SeekBar;

    return-void
.end method

.method public setTextView(Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/controller/SeekBarTextView;->h:Landroid/widget/TextView;

    return-void
.end method
