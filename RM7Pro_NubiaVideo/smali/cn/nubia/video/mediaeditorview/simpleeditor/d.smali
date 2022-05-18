.class public Lcn/nubia/video/mediaeditorview/simpleeditor/d;
.super Lcn/nubia/video/mediaeditorview/simpleeditor/a;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView$b;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Lb/a/c/a/c$b;
.implements Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView$a;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;

.field private d:Landroid/widget/SeekBar;

.field private e:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:F

.field private k:I

.field private l:I

.field private m:Z

.field private n:Lcn/nubia/video/mediaeditorview/o/a;

.field private o:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/a;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->f:I

    .line 3
    iput v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->g:I

    .line 4
    iput v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->h:I

    .line 5
    iput v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->i:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 6
    iput v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->j:F

    .line 7
    iput v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->k:I

    .line 8
    iput v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->l:I

    return-void
.end method

.method static synthetic A(Lcn/nubia/video/mediaeditorview/simpleeditor/d;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->g:I

    return p0
.end method

.method private B(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->c:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;

    if-eqz v0, :cond_0

    int-to-float p1, p1

    .line 2
    iget v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->l:I

    int-to-float v1, v1

    div-float/2addr p1, v1

    invoke-virtual {v0, p1}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->a(F)V

    :cond_0
    return-void
.end method

.method private C(F)I
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->n:Lcn/nubia/video/mediaeditorview/o/a;

    invoke-virtual {v0}, Lcn/nubia/video/mediaeditorview/o/a;->A()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->D()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x5a

    goto :goto_0

    :cond_1
    const/16 v2, 0x78

    :goto_0
    int-to-float v2, v2

    cmpl-float v0, v0, v2

    const/4 v2, 0x1

    if-lez v0, :cond_2

    move v1, v2

    .line 2
    :cond_2
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->n:Lcn/nubia/video/mediaeditorview/o/a;

    invoke-virtual {v0}, Lcn/nubia/video/mediaeditorview/o/a;->A()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    const/high16 v3, 0x40c00000    # 6.0f

    cmpg-float v0, v0, v3

    if-gez v0, :cond_3

    const/4 v1, 0x2

    .line 3
    :cond_3
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->n:Lcn/nubia/video/mediaeditorview/o/a;

    invoke-virtual {v0}, Lcn/nubia/video/mediaeditorview/o/a;->A()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    const/high16 p1, 0x41f00000    # 30.0f

    cmpl-float p1, v0, p1

    if-lez p1, :cond_4

    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->n:Lcn/nubia/video/mediaeditorview/o/a;

    .line 4
    invoke-virtual {p1}, Lcn/nubia/video/mediaeditorview/o/a;->w()I

    move-result p1

    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->n:Lcn/nubia/video/mediaeditorview/o/a;

    invoke-virtual {v0}, Lcn/nubia/video/mediaeditorview/o/a;->v()I

    move-result v0

    mul-int/2addr p1, v0

    const v0, 0x7e9000

    if-lt p1, v0, :cond_4

    goto :goto_1

    :cond_4
    move v2, v1

    :goto_1
    return v2
.end method

.method private D()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->n:Lcn/nubia/video/mediaeditorview/o/a;

    invoke-virtual {v0}, Lcn/nubia/video/mediaeditorview/o/a;->w()I

    move-result v0

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->n:Lcn/nubia/video/mediaeditorview/o/a;

    invoke-virtual {v1}, Lcn/nubia/video/mediaeditorview/o/a;->v()I

    move-result v1

    mul-int/2addr v0, v1

    const v1, 0x1fe000

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private E()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->n:Lcn/nubia/video/mediaeditorview/o/a;

    invoke-virtual {v0}, Lcn/nubia/video/mediaeditorview/o/a;->t()Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->m:Z

    .line 2
    iget v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->l:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->n:Lcn/nubia/video/mediaeditorview/o/a;

    invoke-virtual {v0}, Lcn/nubia/video/mediaeditorview/o/a;->y()I

    move-result v0

    iput v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->l:I

    .line 4
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->n:Lcn/nubia/video/mediaeditorview/o/a;

    invoke-virtual {v0}, Lcn/nubia/video/mediaeditorview/o/a;->q()I

    move-result v0

    .line 5
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->n:Lcn/nubia/video/mediaeditorview/o/a;

    invoke-virtual {v1}, Lcn/nubia/video/mediaeditorview/o/a;->p()I

    move-result v1

    .line 6
    iget-boolean v2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->m:Z

    if-nez v2, :cond_0

    .line 7
    iput v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->f:I

    iput v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->h:I

    .line 8
    iput v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->g:I

    iput v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->i:I

    goto :goto_0

    .line 9
    :cond_0
    iget v2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->l:I

    sub-int v1, v2, v1

    iput v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->f:I

    iput v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->h:I

    sub-int/2addr v2, v0

    .line 10
    iput v2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->g:I

    iput v2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->i:I

    :cond_1
    :goto_0
    return-void
.end method

.method private F()V
    .locals 3

    const-string v0, "CutMenuFragment"

    const-string v1, "initTimeLineView"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->e:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;

    invoke-virtual {v0}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->q()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {}, Lcn/nubia/video/mediaeditorview/simpleeditor/g;->i()Lcn/nubia/video/mediaeditorview/simpleeditor/g;

    move-result-object v1

    new-instance v2, Lcn/nubia/video/mediaeditorview/simpleeditor/d$a;

    invoke-direct {v2, p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/d$a;-><init>(Lcn/nubia/video/mediaeditorview/simpleeditor/d;)V

    invoke-virtual {v1, v0, v2}, Lcn/nubia/video/mediaeditorview/simpleeditor/g;->j(Ljava/lang/String;Lcn/nubia/video/mediaeditorview/simpleeditor/g$b;)V

    .line 4
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->c:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;

    invoke-virtual {v0, p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->setmOnIncatorChangeListener(Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView$a;)V

    return-void
.end method

.method private G()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->a:Landroid/widget/TextView;

    iget v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->f:I

    invoke-direct {p0, v0, v1}, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->H(Landroid/widget/TextView;I)V

    .line 2
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->b:Landroid/widget/TextView;

    iget v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->g:I

    invoke-direct {p0, v0, v1}, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->H(Landroid/widget/TextView;I)V

    return-void
.end method

.method private H(Landroid/widget/TextView;I)V
    .locals 5

    const/4 v0, -0x1

    if-eq p2, v0, :cond_2

    int-to-float p2, p2

    .line 1
    iget v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->j:F

    div-float/2addr p2, v0

    float-to-int p2, p2

    .line 2
    div-int/lit16 p2, p2, 0x3e8

    div-int/lit8 v0, p2, 0x3c

    .line 3
    rem-int/lit8 p2, p2, 0x3c

    const-string v1, ""

    const-string v2, "0"

    const/16 v3, 0xa

    if-ge v0, v3, :cond_0

    .line 4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-ge p2, v3, :cond_1

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 8
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method static synthetic w(Lcn/nubia/video/mediaeditorview/simpleeditor/d;)Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->c:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;

    return-object p0
.end method

.method static synthetic x(Lcn/nubia/video/mediaeditorview/simpleeditor/d;)Lcn/nubia/video/mediaeditorview/o/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->n:Lcn/nubia/video/mediaeditorview/o/a;

    return-object p0
.end method

.method static synthetic y(Lcn/nubia/video/mediaeditorview/simpleeditor/d;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->f:I

    return p0
.end method

.method static synthetic z(Lcn/nubia/video/mediaeditorview/simpleeditor/d;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->l:I

    return p0
.end method


# virtual methods
.method public a(F)V
    .locals 3

    .line 1
    iget v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->l:I

    int-to-float v1, v0

    mul-float/2addr v1, p1

    float-to-int p1, v1

    iput p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->g:I

    .line 2
    iget-boolean v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->m:Z

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->n:Lcn/nubia/video/mediaeditorview/o/a;

    const/4 v2, 0x0

    sub-int/2addr v0, p1

    invoke-virtual {v1, v2, v0}, Lcn/nubia/video/mediaeditorview/o/a;->i(II)V

    .line 4
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->n:Lcn/nubia/video/mediaeditorview/o/a;

    iget v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->l:I

    iget v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->g:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcn/nubia/video/mediaeditorview/o/a;->M(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->n:Lcn/nubia/video/mediaeditorview/o/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcn/nubia/video/mediaeditorview/o/a;->i(II)V

    .line 6
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->n:Lcn/nubia/video/mediaeditorview/o/a;

    iget v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->g:I

    invoke-virtual {p1, v0}, Lcn/nubia/video/mediaeditorview/o/a;->M(I)V

    .line 7
    :goto_0
    iget p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->g:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 8
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->b:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->H(Landroid/widget/TextView;I)V

    :cond_1
    return-void
.end method

.method public b(F)V
    .locals 3

    .line 1
    iget v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->l:I

    int-to-float v1, v0

    mul-float/2addr v1, p1

    float-to-int p1, v1

    iput p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->f:I

    .line 2
    iget-boolean v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->m:Z

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->n:Lcn/nubia/video/mediaeditorview/o/a;

    const/4 v2, 0x1

    sub-int/2addr v0, p1

    invoke-virtual {v1, v2, v0}, Lcn/nubia/video/mediaeditorview/o/a;->i(II)V

    .line 4
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->n:Lcn/nubia/video/mediaeditorview/o/a;

    iget v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->l:I

    iget v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->f:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcn/nubia/video/mediaeditorview/o/a;->M(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->n:Lcn/nubia/video/mediaeditorview/o/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcn/nubia/video/mediaeditorview/o/a;->i(II)V

    .line 6
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->n:Lcn/nubia/video/mediaeditorview/o/a;

    iget v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->f:I

    invoke-virtual {p1, v0}, Lcn/nubia/video/mediaeditorview/o/a;->M(I)V

    .line 7
    :goto_0
    iget p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->f:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 8
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->a:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->H(Landroid/widget/TextView;I)V

    :cond_1
    return-void
.end method

.method public m(I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->m:Z

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->l:I

    sub-int p1, v0, p1

    .line 3
    :cond_0
    iget v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->f:I

    if-ge p1, v0, :cond_1

    move p1, v0

    .line 4
    :cond_1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->n:Lcn/nubia/video/mediaeditorview/o/a;

    invoke-virtual {v0}, Lcn/nubia/video/mediaeditorview/o/a;->D()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->c:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;

    if-eqz v0, :cond_2

    int-to-float p1, p1

    .line 6
    iget v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->l:I

    int-to-float v1, v1

    div-float/2addr p1, v1

    invoke-virtual {v0, p1}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->j(F)V

    :cond_2
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const-string p3, "CutMenuFragment"

    const-string v0, "onCreateView"

    .line 1
    invoke-static {p3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget v0, Lcn/nubia/video/mediaeditorview/h;->d:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;

    iput-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->e:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;

    .line 4
    invoke-static {}, Lcn/nubia/video/mediaeditorview/o/a;->s()Lcn/nubia/video/mediaeditorview/o/a;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->n:Lcn/nubia/video/mediaeditorview/o/a;

    .line 5
    sget p2, Lcn/nubia/video/mediaeditorview/g;->j:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->a:Landroid/widget/TextView;

    .line 6
    sget p2, Lcn/nubia/video/mediaeditorview/g;->i:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->b:Landroid/widget/TextView;

    .line 7
    sget p2, Lcn/nubia/video/mediaeditorview/g;->k:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;

    iput-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->c:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;

    .line 8
    sget p2, Lcn/nubia/video/mediaeditorview/g;->R:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/SeekBar;

    iput-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->d:Landroid/widget/SeekBar;

    .line 9
    invoke-virtual {p2}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->e:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcn/nubia/video/mediaeditorview/d;->e:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 10
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->n:Lcn/nubia/video/mediaeditorview/o/a;

    invoke-virtual {p2}, Lcn/nubia/video/mediaeditorview/o/a;->x()F

    move-result p2

    iput p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->j:F

    const/high16 v0, 0x42480000    # 50.0f

    mul-float/2addr p2, v0

    float-to-int p2, p2

    .line 11
    iput p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->k:I

    .line 12
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->d:Landroid/widget/SeekBar;

    const/16 v2, 0x19

    if-lt p2, v2, :cond_0

    move v1, p2

    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 13
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->d:Landroid/widget/SeekBar;

    invoke-virtual {p2, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 14
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->c:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;

    invoke-virtual {p2, p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->setmSimpleTimeLineListener(Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView$b;)V

    .line 15
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->E()V

    .line 16
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "oncreateView mClipHeadTime = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->f:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "mClipEndTime = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->g:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ";mIsReverse = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->m:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->F()V

    .line 18
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->a:Landroid/widget/TextView;

    iget p3, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->f:I

    invoke-direct {p0, p2, p3}, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->H(Landroid/widget/TextView;I)V

    .line 19
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->b:Landroid/widget/TextView;

    iget p3, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->g:I

    invoke-direct {p0, p2, p3}, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->H(Landroid/widget/TextView;I)V

    .line 20
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->n:Lcn/nubia/video/mediaeditorview/o/a;

    invoke-virtual {p2, p0}, Lcn/nubia/video/mediaeditorview/o/a;->c0(Lb/a/c/a/c$b;)V

    .line 21
    iget-boolean p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->m:Z

    if-nez p2, :cond_1

    .line 22
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->n:Lcn/nubia/video/mediaeditorview/o/a;

    iget p3, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->f:I

    invoke-virtual {p2, p3}, Lcn/nubia/video/mediaeditorview/o/a;->M(I)V

    goto :goto_0

    .line 23
    :cond_1
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->n:Lcn/nubia/video/mediaeditorview/o/a;

    iget p3, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->l:I

    iget v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->g:I

    sub-int/2addr p3, v0

    invoke-virtual {p2, p3}, Lcn/nubia/video/mediaeditorview/o/a;->M(I)V

    :goto_0
    return-object p1
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    .line 1
    iget p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->j:F

    const/4 p3, 0x0

    const/4 v0, 0x1

    const/16 v1, 0xc

    if-gt p2, v1, :cond_0

    const/high16 p2, 0x3e800000    # 0.25f

    cmpl-float v1, p1, p2

    if-eqz v1, :cond_4

    .line 2
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->n:Lcn/nubia/video/mediaeditorview/o/a;

    invoke-virtual {v1, p2}, Lcn/nubia/video/mediaeditorview/o/a;->X(F)V

    .line 3
    iput p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->j:F

    .line 4
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->G()V

    :goto_0
    move p2, v0

    goto :goto_1

    :cond_0
    const/16 v1, 0x25

    if-gt p2, v1, :cond_1

    const/high16 p2, 0x3f000000    # 0.5f

    cmpl-float v1, p1, p2

    if-eqz v1, :cond_4

    .line 5
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->n:Lcn/nubia/video/mediaeditorview/o/a;

    invoke-virtual {v1, p2}, Lcn/nubia/video/mediaeditorview/o/a;->X(F)V

    .line 6
    iput p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->j:F

    .line 7
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->G()V

    goto :goto_0

    :cond_1
    const/16 v1, 0x3e

    if-gt p2, v1, :cond_2

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float v1, p1, p2

    if-eqz v1, :cond_4

    .line 8
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->n:Lcn/nubia/video/mediaeditorview/o/a;

    invoke-virtual {v1, p2}, Lcn/nubia/video/mediaeditorview/o/a;->X(F)V

    .line 9
    iput p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->j:F

    .line 10
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->G()V

    goto :goto_0

    :cond_2
    const/16 v1, 0x57

    if-gt p2, v1, :cond_3

    const/high16 p2, 0x3fc00000    # 1.5f

    cmpl-float v1, p1, p2

    if-eqz v1, :cond_4

    .line 11
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->n:Lcn/nubia/video/mediaeditorview/o/a;

    invoke-virtual {v1, p2}, Lcn/nubia/video/mediaeditorview/o/a;->X(F)V

    .line 12
    iput p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->j:F

    .line 13
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->G()V

    goto :goto_0

    :cond_3
    const/high16 p2, 0x40000000    # 2.0f

    cmpl-float v1, p1, p2

    if-eqz v1, :cond_4

    .line 14
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->n:Lcn/nubia/video/mediaeditorview/o/a;

    invoke-virtual {v1, p2}, Lcn/nubia/video/mediaeditorview/o/a;->X(F)V

    .line 15
    iput p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->j:F

    .line 16
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->G()V

    goto :goto_0

    :cond_4
    move p2, p3

    :goto_1
    if-eqz p2, :cond_9

    .line 17
    iget p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->j:F

    invoke-direct {p0, p2}, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->C(F)I

    move-result p2

    if-lez p2, :cond_9

    if-ne p2, v0, :cond_6

    .line 18
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->o:Landroid/widget/Toast;

    if-nez p2, :cond_5

    .line 19
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    sget v0, Lcn/nubia/video/mediaeditorview/i;->Q:I

    invoke-static {p2, v0, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->o:Landroid/widget/Toast;

    goto :goto_2

    .line 20
    :cond_5
    sget v0, Lcn/nubia/video/mediaeditorview/i;->Q:I

    invoke-virtual {p2, v0}, Landroid/widget/Toast;->setText(I)V

    goto :goto_2

    .line 21
    :cond_6
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->o:Landroid/widget/Toast;

    if-nez p2, :cond_7

    .line 22
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    sget v0, Lcn/nubia/video/mediaeditorview/i;->R:I

    invoke-static {p2, v0, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->o:Landroid/widget/Toast;

    goto :goto_2

    .line 23
    :cond_7
    sget v0, Lcn/nubia/video/mediaeditorview/i;->R:I

    invoke-virtual {p2, v0}, Landroid/widget/Toast;->setText(I)V

    .line 24
    :goto_2
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->o:Landroid/widget/Toast;

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 25
    iput p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->j:F

    .line 26
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->n:Lcn/nubia/video/mediaeditorview/o/a;

    invoke-virtual {p2, p1}, Lcn/nubia/video/mediaeditorview/o/a;->X(F)V

    const/high16 p1, 0x42480000    # 50.0f

    .line 27
    iget p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->j:F

    mul-float/2addr p2, p1

    float-to-int p1, p2

    .line 28
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->d:Landroid/widget/SeekBar;

    const/16 v0, 0x19

    if-lt p1, v0, :cond_8

    goto :goto_3

    :cond_8
    move p1, p3

    :goto_3
    invoke-virtual {p2, p1, p3}, Landroid/widget/SeekBar;->setProgress(IZ)V

    :cond_9
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    const/4 v0, 0x1

    const/16 v1, 0xc

    if-gt p1, v1, :cond_0

    .line 2
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->d:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/widget/SeekBar;->setProgress(IZ)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x25

    if-gt p1, v1, :cond_1

    .line 3
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->d:Landroid/widget/SeekBar;

    const/16 v1, 0x19

    invoke-virtual {p1, v1, v0}, Landroid/widget/SeekBar;->setProgress(IZ)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x3e

    if-gt p1, v1, :cond_2

    .line 4
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->d:Landroid/widget/SeekBar;

    const/16 v1, 0x32

    invoke-virtual {p1, v1, v0}, Landroid/widget/SeekBar;->setProgress(IZ)V

    goto :goto_0

    :cond_2
    const/16 v1, 0x57

    if-gt p1, v1, :cond_3

    .line 5
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->d:Landroid/widget/SeekBar;

    const/16 v1, 0x4b

    invoke-virtual {p1, v1, v0}, Landroid/widget/SeekBar;->setProgress(IZ)V

    goto :goto_0

    .line 6
    :cond_3
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->d:Landroid/widget/SeekBar;

    const/16 v1, 0x64

    invoke-virtual {p1, v1, v0}, Landroid/widget/SeekBar;->setProgress(IZ)V

    .line 7
    :goto_0
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->G()V

    .line 8
    invoke-static {}, Lb/a/b/a/j/a;->i()Lb/a/b/a/j/a;

    move-result-object p1

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "video_edit_used"

    const-string v3, "speed"

    invoke-virtual {p1, v1, v2, v3, v0}, Lb/a/b/a/j/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public t(F)V
    .locals 1

    .line 1
    iget v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->l:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int p1, v0

    .line 2
    invoke-direct {p0, p1}, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->B(I)V

    .line 3
    iget-boolean v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->m:Z

    if-eqz v0, :cond_0

    .line 4
    iget v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->l:I

    sub-int p1, v0, p1

    .line 5
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->n:Lcn/nubia/video/mediaeditorview/o/a;

    invoke-virtual {v0, p1}, Lcn/nubia/video/mediaeditorview/o/a;->M(I)V

    return-void
.end method

.method u()V
    .locals 2

    const-string v0, "CutMenuFragment"

    const-string v1, "onApplyClick!"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method v()V
    .locals 5

    const-string v0, "CutMenuFragment"

    const-string v1, "onCancelClick!"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-boolean v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->m:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->n:Lcn/nubia/video/mediaeditorview/o/a;

    iget v3, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->l:I

    iget v4, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->h:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, v1, v3}, Lcn/nubia/video/mediaeditorview/o/a;->i(II)V

    .line 4
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->n:Lcn/nubia/video/mediaeditorview/o/a;

    iget v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->l:I

    iget v3, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->i:I

    sub-int/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Lcn/nubia/video/mediaeditorview/o/a;->i(II)V

    .line 5
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->n:Lcn/nubia/video/mediaeditorview/o/a;

    iget v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->l:I

    iget v3, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->i:I

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Lcn/nubia/video/mediaeditorview/o/a;->M(I)V

    .line 6
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->n:Lcn/nubia/video/mediaeditorview/o/a;

    iget v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->l:I

    iget v3, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->i:I

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Lcn/nubia/video/mediaeditorview/o/a;->M(I)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->n:Lcn/nubia/video/mediaeditorview/o/a;

    iget v3, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->i:I

    invoke-virtual {v0, v1, v3}, Lcn/nubia/video/mediaeditorview/o/a;->i(II)V

    .line 8
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->n:Lcn/nubia/video/mediaeditorview/o/a;

    iget v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->h:I

    invoke-virtual {v0, v2, v1}, Lcn/nubia/video/mediaeditorview/o/a;->i(II)V

    .line 9
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->n:Lcn/nubia/video/mediaeditorview/o/a;

    iget v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->h:I

    invoke-virtual {v0, v1}, Lcn/nubia/video/mediaeditorview/o/a;->M(I)V

    .line 10
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->n:Lcn/nubia/video/mediaeditorview/o/a;

    iget v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->h:I

    invoke-virtual {v0, v1}, Lcn/nubia/video/mediaeditorview/o/a;->M(I)V

    :goto_0
    const/4 v0, 0x0

    .line 11
    iget v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->k:I

    invoke-virtual {p0, v0, v1, v2}, Lcn/nubia/video/mediaeditorview/simpleeditor/d;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    return-void
.end method
