.class public Lcn/nubia/video/mediaeditorview/simpleeditor/h;
.super Lcn/nubia/video/mediaeditorview/simpleeditor/a;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView$g;
.implements Lb/a/c/a/c$b;
.implements Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView$a;


# instance fields
.field private a:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;

.field private b:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;

.field private g:Landroid/widget/LinearLayout;

.field private h:Lcn/nubia/video/mediaeditorview/o/a;

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/video/mediaeditorview/simpleeditor/j;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/video/mediaeditorview/simpleeditor/e;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/video/mediaeditorview/simpleeditor/e;",
            ">;"
        }
    .end annotation
.end field

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/a;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->m:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->o:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->r:Z

    return-void
.end method

.method private A(I)V
    .locals 3

    .line 1
    iput p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->l:I

    .line 2
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->b:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;

    if-eqz v0, :cond_0

    .line 3
    iget v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->j:I

    sub-int/2addr p1, v1

    int-to-float p1, p1

    iget v2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->k:I

    sub-int/2addr v2, v1

    int-to-float v1, v2

    div-float/2addr p1, v1

    invoke-virtual {v0, p1}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->a(F)V

    :cond_0
    return-void
.end method

.method private B()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->h:Lcn/nubia/video/mediaeditorview/o/a;

    invoke-virtual {v0}, Lcn/nubia/video/mediaeditorview/o/a;->w()I

    move-result v0

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->h:Lcn/nubia/video/mediaeditorview/o/a;

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

.method private C(Ljava/lang/String;)I
    .locals 6

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x401299999999999aL    # 4.65

    mul-double/2addr v0, v2

    double-to-int v0, v0

    add-int/lit16 v0, v0, -0x12e

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    int-to-double v4, v1

    mul-double/2addr v4, v2

    double-to-int v1, v4

    add-int/lit16 v1, v1, -0x12e

    const/4 v4, 0x2

    .line 3
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result p1

    int-to-double v4, p1

    mul-double/2addr v4, v2

    double-to-int p1, v4

    add-int/lit16 p1, p1, -0x12e

    shl-int/lit8 v0, v0, 0x10

    const/high16 v2, 0x7f000000

    or-int/2addr v0, v2

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    or-int/2addr p1, v0

    return p1
.end method

.method private D(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->s:Landroid/widget/TextView;

    sget v0, Lcn/nubia/video/mediaeditorview/i;->I:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 2
    :cond_1
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->s:Landroid/widget/TextView;

    sget v0, Lcn/nubia/video/mediaeditorview/i;->H:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void
.end method

.method private E()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->h:Lcn/nubia/video/mediaeditorview/o/a;

    invoke-virtual {v0}, Lcn/nubia/video/mediaeditorview/o/a;->t()Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->q:Z

    iput-boolean v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->p:Z

    .line 2
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->h:Lcn/nubia/video/mediaeditorview/o/a;

    invoke-virtual {v0}, Lcn/nubia/video/mediaeditorview/o/a;->y()I

    move-result v0

    iput v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->i:I

    .line 3
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->h:Lcn/nubia/video/mediaeditorview/o/a;

    invoke-virtual {v0}, Lcn/nubia/video/mediaeditorview/o/a;->q()I

    move-result v0

    .line 4
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->h:Lcn/nubia/video/mediaeditorview/o/a;

    invoke-virtual {v1}, Lcn/nubia/video/mediaeditorview/o/a;->p()I

    move-result v1

    .line 5
    iget-boolean v2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->q:Z

    if-nez v2, :cond_0

    .line 6
    iput v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->j:I

    .line 7
    iput v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->k:I

    .line 8
    iput v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->l:I

    goto :goto_0

    .line 9
    :cond_0
    iget v2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->i:I

    sub-int v1, v2, v1

    iput v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->j:I

    sub-int/2addr v2, v0

    .line 10
    iput v2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->k:I

    .line 11
    iput v2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->l:I

    :goto_0
    return-void
.end method

.method private F()V
    .locals 7

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->o:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->o:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/video/mediaeditorview/simpleeditor/e;

    invoke-virtual {v1}, Lcn/nubia/video/mediaeditorview/simpleeditor/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->C(Ljava/lang/String;)I

    move-result v1

    .line 3
    new-instance v2, Lcn/nubia/video/mediaeditorview/simpleeditor/j;

    invoke-direct {v2, v1}, Lcn/nubia/video/mediaeditorview/simpleeditor/j;-><init>(I)V

    .line 4
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->o:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/video/mediaeditorview/simpleeditor/e;

    invoke-virtual {v1}, Lcn/nubia/video/mediaeditorview/simpleeditor/e;->c()I

    move-result v1

    iput v1, v2, Lcn/nubia/video/mediaeditorview/simpleeditor/j;->a:I

    .line 5
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->o:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/video/mediaeditorview/simpleeditor/e;

    invoke-virtual {v1}, Lcn/nubia/video/mediaeditorview/simpleeditor/e;->a()I

    move-result v1

    iput v1, v2, Lcn/nubia/video/mediaeditorview/simpleeditor/j;->b:I

    .line 6
    iget v3, v2, Lcn/nubia/video/mediaeditorview/simpleeditor/j;->a:I

    iget v4, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->j:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v5, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->k:I

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
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->m:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private G()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->a:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;

    invoke-virtual {v0}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->q()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Lcn/nubia/video/mediaeditorview/simpleeditor/g;->i()Lcn/nubia/video/mediaeditorview/simpleeditor/g;

    move-result-object v1

    new-instance v2, Lcn/nubia/video/mediaeditorview/simpleeditor/h$a;

    invoke-direct {v2, p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/h$a;-><init>(Lcn/nubia/video/mediaeditorview/simpleeditor/h;)V

    invoke-virtual {v1, v0, v2}, Lcn/nubia/video/mediaeditorview/simpleeditor/g;->j(Ljava/lang/String;Lcn/nubia/video/mediaeditorview/simpleeditor/g$b;)V

    .line 3
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->b:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->setmTimeGroupList(Ljava/util/ArrayList;)V

    .line 4
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->b:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;

    invoke-virtual {v0, p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->setmOnIncatorChangeListener(Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView$a;)V

    return-void
.end method

.method static synthetic w(Lcn/nubia/video/mediaeditorview/simpleeditor/h;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->i:I

    return p0
.end method

.method static synthetic x(Lcn/nubia/video/mediaeditorview/simpleeditor/h;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->j:I

    return p0
.end method

.method static synthetic y(Lcn/nubia/video/mediaeditorview/simpleeditor/h;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->k:I

    return p0
.end method

.method static synthetic z(Lcn/nubia/video/mediaeditorview/simpleeditor/h;)Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->b:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;

    return-object p0
.end method


# virtual methods
.method public i(Ljava/lang/String;Z)Z
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFilterItemClickEnd filterName= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpecialMenuFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "No Filter"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_7

    .line 3
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->m:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eqz p1, :cond_17

    .line 4
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->m:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, v2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->n:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, v2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 6
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->n:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_1

    .line 7
    iget-boolean p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->q:Z

    if-nez p1, :cond_0

    .line 8
    iget p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->j:I

    goto :goto_2

    .line 9
    :cond_0
    iget p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->i:I

    iget p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->k:I

    sub-int/2addr p1, p2

    goto :goto_2

    .line 10
    :cond_1
    iget-boolean p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->q:Z

    if-nez p1, :cond_3

    .line 11
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->m:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, v2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/video/mediaeditorview/simpleeditor/j;

    iget p1, p1, Lcn/nubia/video/mediaeditorview/simpleeditor/j;->b:I

    .line 12
    iget p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->j:I

    if-ge p1, p2, :cond_2

    :goto_0
    move p1, p2

    goto :goto_2

    .line 13
    :cond_2
    iget p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->k:I

    if-le p1, p2, :cond_5

    goto :goto_0

    .line 14
    :cond_3
    iget p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->i:I

    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->m:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/nubia/video/mediaeditorview/simpleeditor/j;

    iget p2, p2, Lcn/nubia/video/mediaeditorview/simpleeditor/j;->a:I

    sub-int/2addr p1, p2

    .line 15
    iget p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->i:I

    iget v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->k:I

    sub-int v2, p2, v0

    if-ge p1, v2, :cond_4

    :goto_1
    sub-int p1, p2, v0

    goto :goto_2

    .line 16
    :cond_4
    iget v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->j:I

    sub-int v2, p2, v0

    if-le p1, v2, :cond_5

    goto :goto_1

    .line 17
    :cond_5
    :goto_2
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->h:Lcn/nubia/video/mediaeditorview/o/a;

    invoke-virtual {p2}, Lcn/nubia/video/mediaeditorview/o/a;->D()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 18
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->h:Lcn/nubia/video/mediaeditorview/o/a;

    invoke-virtual {p2}, Lcn/nubia/video/mediaeditorview/o/a;->G()V

    .line 19
    :cond_6
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->h:Lcn/nubia/video/mediaeditorview/o/a;

    invoke-virtual {p2, p1}, Lcn/nubia/video/mediaeditorview/o/a;->M(I)V

    .line 20
    invoke-direct {p0, p1}, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->A(I)V

    .line 21
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->b:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    goto/16 :goto_7

    :cond_7
    const-string v0, "Reverse"

    .line 22
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 23
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->h:Lcn/nubia/video/mediaeditorview/o/a;

    invoke-virtual {p1}, Lcn/nubia/video/mediaeditorview/o/a;->u()Lb/a/c/a/e;

    move-result-object p1

    invoke-virtual {p1}, Lb/a/c/a/e;->K()Lb/a/c/a/d;

    move-result-object p1

    invoke-virtual {p1}, Lb/a/c/a/b;->e()I

    move-result p1

    const/16 p2, 0x7530

    if-le p1, p2, :cond_9

    .line 24
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->t:Landroid/widget/Toast;

    if-nez p1, :cond_8

    .line 25
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    sget p2, Lcn/nubia/video/mediaeditorview/i;->u:I

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->t:Landroid/widget/Toast;

    goto :goto_3

    .line 26
    :cond_8
    sget p2, Lcn/nubia/video/mediaeditorview/i;->u:I

    invoke-virtual {p1, p2}, Landroid/widget/Toast;->setText(I)V

    .line 27
    :goto_3
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->t:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_7

    .line 28
    :cond_9
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->B()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 29
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->t:Landroid/widget/Toast;

    if-nez p1, :cond_a

    .line 30
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    sget p2, Lcn/nubia/video/mediaeditorview/i;->t:I

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->t:Landroid/widget/Toast;

    goto :goto_4

    .line 31
    :cond_a
    sget p2, Lcn/nubia/video/mediaeditorview/i;->t:I

    invoke-virtual {p1, p2}, Landroid/widget/Toast;->setText(I)V

    .line 32
    :goto_4
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->t:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_7

    .line 33
    :cond_b
    iput-boolean v2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->q:Z

    .line 34
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->h:Lcn/nubia/video/mediaeditorview/o/a;

    invoke-virtual {p1}, Lcn/nubia/video/mediaeditorview/o/a;->L()V

    goto :goto_5

    :cond_c
    const-string v0, "No"

    .line 35
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 36
    iput-boolean v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->q:Z

    .line 37
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->h:Lcn/nubia/video/mediaeditorview/o/a;

    invoke-virtual {p1}, Lcn/nubia/video/mediaeditorview/o/a;->L()V

    :goto_5
    move v1, v2

    goto/16 :goto_7

    :cond_d
    if-nez p2, :cond_12

    .line 38
    iget p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->l:I

    .line 39
    iput-boolean v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->r:Z

    .line 40
    iget-boolean p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->q:Z

    if-nez p2, :cond_10

    .line 41
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->m:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/nubia/video/mediaeditorview/simpleeditor/j;

    iget p2, p2, Lcn/nubia/video/mediaeditorview/simpleeditor/j;->a:I

    if-lt p1, p2, :cond_e

    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->m:Ljava/util/ArrayList;

    .line 42
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/nubia/video/mediaeditorview/simpleeditor/j;

    iget p2, p2, Lcn/nubia/video/mediaeditorview/simpleeditor/j;->a:I

    if-ne p1, p2, :cond_f

    iget p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->j:I

    if-ne p1, p2, :cond_f

    .line 43
    :cond_e
    iget p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->k:I

    .line 44
    :cond_f
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->m:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/nubia/video/mediaeditorview/simpleeditor/j;

    iput p1, p2, Lcn/nubia/video/mediaeditorview/simpleeditor/j;->b:I

    .line 45
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->m:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/nubia/video/mediaeditorview/simpleeditor/j;

    iget v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->j:I

    sub-int v3, p1, v0

    int-to-float v3, v3

    iget v4, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->k:I

    sub-int/2addr v4, v0

    int-to-float v0, v4

    div-float/2addr v3, v0

    iput v3, p2, Lcn/nubia/video/mediaeditorview/simpleeditor/j;->e:F

    .line 46
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->n:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/nubia/video/mediaeditorview/simpleeditor/e;

    invoke-virtual {p2, p1}, Lcn/nubia/video/mediaeditorview/simpleeditor/e;->d(I)V

    .line 47
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->h:Lcn/nubia/video/mediaeditorview/o/a;

    invoke-virtual {p1}, Lcn/nubia/video/mediaeditorview/o/a;->G()V

    goto/16 :goto_7

    .line 48
    :cond_10
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->m:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/nubia/video/mediaeditorview/simpleeditor/j;

    iget p2, p2, Lcn/nubia/video/mediaeditorview/simpleeditor/j;->b:I

    if-lt p1, p2, :cond_11

    .line 49
    iget p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->j:I

    .line 50
    :cond_11
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->m:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/nubia/video/mediaeditorview/simpleeditor/j;

    iput p1, p2, Lcn/nubia/video/mediaeditorview/simpleeditor/j;->a:I

    .line 51
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->m:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/nubia/video/mediaeditorview/simpleeditor/j;

    iget v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->j:I

    sub-int v3, p1, v0

    int-to-float v3, v3

    iget v4, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->k:I

    sub-int/2addr v4, v0

    int-to-float v0, v4

    div-float/2addr v3, v0

    iput v3, p2, Lcn/nubia/video/mediaeditorview/simpleeditor/j;->d:F

    .line 52
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->n:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/nubia/video/mediaeditorview/simpleeditor/e;

    invoke-virtual {p2, p1}, Lcn/nubia/video/mediaeditorview/simpleeditor/e;->e(I)V

    .line 53
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->h:Lcn/nubia/video/mediaeditorview/o/a;

    invoke-virtual {p1}, Lcn/nubia/video/mediaeditorview/o/a;->G()V

    .line 54
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->h:Lcn/nubia/video/mediaeditorview/o/a;

    iget p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->i:I

    iget v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->l:I

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2}, Lcn/nubia/video/mediaeditorview/o/a;->M(I)V

    goto/16 :goto_7

    .line 55
    :cond_12
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->h:Lcn/nubia/video/mediaeditorview/o/a;

    invoke-virtual {p2, p1}, Lcn/nubia/video/mediaeditorview/o/a;->Q(Ljava/lang/String;)V

    .line 56
    invoke-direct {p0, p1}, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->C(Ljava/lang/String;)I

    move-result p2

    .line 57
    new-instance v0, Lcn/nubia/video/mediaeditorview/simpleeditor/j;

    invoke-direct {v0, p2}, Lcn/nubia/video/mediaeditorview/simpleeditor/j;-><init>(I)V

    .line 58
    iget-boolean p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->q:Z

    if-nez p2, :cond_14

    .line 59
    iget p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->l:I

    iput p2, v0, Lcn/nubia/video/mediaeditorview/simpleeditor/j;->a:I

    .line 60
    invoke-static {}, Lcn/nubia/modules/videoRender/e/c;->b()Lcn/nubia/modules/videoRender/e/c;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcn/nubia/modules/videoRender/e/c;->a(Ljava/lang/String;)Lcn/nubia/modules/videoRender/e/d;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/modules/videoRender/e/d;->f()I

    move-result v2

    add-int/2addr p2, v2

    .line 61
    iget v2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->k:I

    if-le p2, v2, :cond_13

    move p2, v2

    :cond_13
    iput p2, v0, Lcn/nubia/video/mediaeditorview/simpleeditor/j;->b:I

    .line 62
    iget v3, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->l:I

    iget v4, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->j:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sub-int v5, v2, v4

    int-to-float v5, v5

    div-float/2addr v3, v5

    iput v3, v0, Lcn/nubia/video/mediaeditorview/simpleeditor/j;->d:F

    sub-int/2addr p2, v4

    int-to-float p2, p2

    sub-int/2addr v2, v4

    int-to-float v2, v2

    div-float/2addr p2, v2

    .line 63
    iput p2, v0, Lcn/nubia/video/mediaeditorview/simpleeditor/j;->e:F

    .line 64
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->m:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    new-instance p2, Lcn/nubia/video/mediaeditorview/simpleeditor/e;

    invoke-direct {p2, p1}, Lcn/nubia/video/mediaeditorview/simpleeditor/e;-><init>(Ljava/lang/String;)V

    .line 66
    iget p1, v0, Lcn/nubia/video/mediaeditorview/simpleeditor/j;->a:I

    invoke-virtual {p2, p1}, Lcn/nubia/video/mediaeditorview/simpleeditor/e;->e(I)V

    .line 67
    iget p1, v0, Lcn/nubia/video/mediaeditorview/simpleeditor/j;->b:I

    invoke-virtual {p2, p1}, Lcn/nubia/video/mediaeditorview/simpleeditor/e;->d(I)V

    .line 68
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->n:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 69
    :cond_14
    iget p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->l:I

    iput p2, v0, Lcn/nubia/video/mediaeditorview/simpleeditor/j;->b:I

    .line 70
    invoke-static {}, Lcn/nubia/modules/videoRender/e/c;->b()Lcn/nubia/modules/videoRender/e/c;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcn/nubia/modules/videoRender/e/c;->a(Ljava/lang/String;)Lcn/nubia/modules/videoRender/e/d;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/modules/videoRender/e/d;->f()I

    move-result v2

    sub-int/2addr p2, v2

    .line 71
    iget v2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->j:I

    if-ge p2, v2, :cond_15

    move p2, v2

    :cond_15
    iput p2, v0, Lcn/nubia/video/mediaeditorview/simpleeditor/j;->a:I

    .line 72
    iget v3, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->l:I

    sub-int/2addr v3, v2

    int-to-float v3, v3

    iget v4, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->k:I

    sub-int v5, v4, v2

    int-to-float v5, v5

    div-float/2addr v3, v5

    iput v3, v0, Lcn/nubia/video/mediaeditorview/simpleeditor/j;->e:F

    sub-int/2addr p2, v2

    int-to-float p2, p2

    sub-int/2addr v4, v2

    int-to-float v2, v4

    div-float/2addr p2, v2

    .line 73
    iput p2, v0, Lcn/nubia/video/mediaeditorview/simpleeditor/j;->d:F

    .line 74
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->m:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    new-instance p2, Lcn/nubia/video/mediaeditorview/simpleeditor/e;

    invoke-direct {p2, p1}, Lcn/nubia/video/mediaeditorview/simpleeditor/e;-><init>(Ljava/lang/String;)V

    .line 76
    iget p1, v0, Lcn/nubia/video/mediaeditorview/simpleeditor/j;->a:I

    invoke-virtual {p2, p1}, Lcn/nubia/video/mediaeditorview/simpleeditor/e;->e(I)V

    .line 77
    iget p1, v0, Lcn/nubia/video/mediaeditorview/simpleeditor/j;->b:I

    invoke-virtual {p2, p1}, Lcn/nubia/video/mediaeditorview/simpleeditor/e;->d(I)V

    .line 78
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->n:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    :goto_6
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->h:Lcn/nubia/video/mediaeditorview/o/a;

    invoke-virtual {p1}, Lcn/nubia/video/mediaeditorview/o/a;->D()Z

    move-result p1

    if-nez p1, :cond_16

    .line 80
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->h:Lcn/nubia/video/mediaeditorview/o/a;

    invoke-virtual {p1}, Lcn/nubia/video/mediaeditorview/o/a;->K()V

    .line 81
    :cond_16
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->b:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_17
    :goto_7
    return v1
.end method

.method public k(Ljava/lang/String;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFilterItemLongClick filterName= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpecialMenuFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0, p1}, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->C(Ljava/lang/String;)I

    move-result v0

    .line 3
    new-instance v1, Lcn/nubia/video/mediaeditorview/simpleeditor/j;

    invoke-direct {v1, v0}, Lcn/nubia/video/mediaeditorview/simpleeditor/j;-><init>(I)V

    .line 4
    new-instance v0, Lcn/nubia/video/mediaeditorview/simpleeditor/e;

    invoke-direct {v0, p1}, Lcn/nubia/video/mediaeditorview/simpleeditor/e;-><init>(Ljava/lang/String;)V

    .line 5
    iget-boolean v2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->q:Z

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 6
    iget v2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->l:I

    iput v2, v1, Lcn/nubia/video/mediaeditorview/simpleeditor/j;->a:I

    .line 7
    iget v4, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->j:I

    sub-int/2addr v2, v4

    int-to-float v2, v2

    iget v5, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->k:I

    sub-int/2addr v5, v4

    int-to-float v4, v5

    div-float/2addr v2, v4

    iput v2, v1, Lcn/nubia/video/mediaeditorview/simpleeditor/j;->d:F

    .line 8
    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->m:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->m:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/video/mediaeditorview/simpleeditor/j;

    iget v1, v1, Lcn/nubia/video/mediaeditorview/simpleeditor/j;->a:I

    invoke-virtual {v0, v1}, Lcn/nubia/video/mediaeditorview/simpleeditor/e;->e(I)V

    .line 10
    iget v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->k:I

    invoke-virtual {v0, v1}, Lcn/nubia/video/mediaeditorview/simpleeditor/e;->d(I)V

    .line 11
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->n:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_0
    iget v2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->l:I

    iput v2, v1, Lcn/nubia/video/mediaeditorview/simpleeditor/j;->b:I

    .line 13
    iget v4, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->j:I

    sub-int/2addr v2, v4

    int-to-float v2, v2

    iget v5, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->k:I

    sub-int/2addr v5, v4

    int-to-float v4, v5

    div-float/2addr v2, v4

    iput v2, v1, Lcn/nubia/video/mediaeditorview/simpleeditor/j;->e:F

    .line 14
    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->m:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->m:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/video/mediaeditorview/simpleeditor/j;

    iget v1, v1, Lcn/nubia/video/mediaeditorview/simpleeditor/j;->b:I

    invoke-virtual {v0, v1}, Lcn/nubia/video/mediaeditorview/simpleeditor/e;->d(I)V

    .line 16
    iget v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->j:I

    invoke-virtual {v0, v1}, Lcn/nubia/video/mediaeditorview/simpleeditor/e;->e(I)V

    .line 17
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->n:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    :goto_0
    iput-boolean v3, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->r:Z

    .line 19
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->h:Lcn/nubia/video/mediaeditorview/o/a;

    invoke-virtual {v0, p1}, Lcn/nubia/video/mediaeditorview/o/a;->Q(Ljava/lang/String;)V

    .line 20
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->h:Lcn/nubia/video/mediaeditorview/o/a;

    invoke-virtual {p1}, Lcn/nubia/video/mediaeditorview/o/a;->D()Z

    move-result p1

    if-nez p1, :cond_1

    .line 21
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->h:Lcn/nubia/video/mediaeditorview/o/a;

    invoke-virtual {p1}, Lcn/nubia/video/mediaeditorview/o/a;->K()V

    :cond_1
    return-void
.end method

.method public m(I)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->q:Z

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->i:I

    sub-int p1, v0, p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->h:Lcn/nubia/video/mediaeditorview/o/a;

    invoke-virtual {v0}, Lcn/nubia/video/mediaeditorview/o/a;->D()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4
    iput p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->l:I

    .line 5
    iget v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->j:I

    if-ge p1, v0, :cond_2

    if-eqz p1, :cond_2

    .line 6
    iput v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->l:I

    .line 7
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->b:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p1}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->getIsTouchFlag()Z

    move-result p1

    if-nez p1, :cond_1

    .line 9
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->b:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;

    iget v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->l:I

    iget v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->j:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->k:I

    sub-int/2addr v2, v1

    int-to-float v1, v2

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->j(F)V

    :cond_1
    return-void

    :cond_2
    if-ge p1, v0, :cond_3

    .line 10
    iput v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->l:I

    .line 11
    :cond_3
    iget-boolean p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->r:Z

    if-eqz p1, :cond_7

    .line 12
    iget-boolean p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->q:Z

    if-nez p1, :cond_5

    .line 13
    iget p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->l:I

    sub-int/2addr p1, v0

    int-to-float p1, p1

    iget v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->k:I

    sub-int/2addr v1, v0

    int-to-float v0, v1

    div-float/2addr p1, v0

    .line 14
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/video/mediaeditorview/simpleeditor/j;

    iget v0, v0, Lcn/nubia/video/mediaeditorview/simpleeditor/j;->d:F

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_4

    const/high16 p1, 0x3f800000    # 1.0f

    .line 15
    iget v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->j:I

    iput v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->l:I

    .line 16
    :cond_4
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/video/mediaeditorview/simpleeditor/j;

    iput p1, v0, Lcn/nubia/video/mediaeditorview/simpleeditor/j;->e:F

    goto :goto_0

    .line 17
    :cond_5
    iget p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->l:I

    sub-int/2addr p1, v0

    int-to-float p1, p1

    iget v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->k:I

    sub-int/2addr v1, v0

    int-to-float v0, v1

    div-float/2addr p1, v0

    .line 18
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/video/mediaeditorview/simpleeditor/j;

    iget v0, v0, Lcn/nubia/video/mediaeditorview/simpleeditor/j;->e:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_6

    const/4 p1, 0x0

    .line 19
    iget v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->k:I

    iput v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->l:I

    .line 20
    :cond_6
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/video/mediaeditorview/simpleeditor/j;

    iput p1, v0, Lcn/nubia/video/mediaeditorview/simpleeditor/j;->d:F

    .line 21
    :cond_7
    :goto_0
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->b:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;

    if-eqz p1, :cond_8

    .line 22
    invoke-virtual {p1}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->getIsTouchFlag()Z

    move-result p1

    if-nez p1, :cond_8

    .line 23
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->b:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;

    iget v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->l:I

    iget v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->j:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->k:I

    sub-int/2addr v2, v1

    int-to-float v1, v2

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->j(F)V

    :cond_8
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2
    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcn/nubia/video/mediaeditorview/g;->N:I

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcn/nubia/video/mediaeditorview/g;->P:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x2

    goto :goto_1

    :cond_1
    move v0, v2

    .line 5
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v3, Lcn/nubia/video/mediaeditorview/g;->M:I

    if-ne v1, v3, :cond_2

    const/4 v0, 0x3

    .line 6
    :cond_2
    invoke-virtual {p1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 7
    invoke-direct {p0, v0}, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->D(I)V

    .line 8
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->f:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;

    invoke-virtual {p1, v0}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;->setFiltersId(I)V

    .line 9
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->f:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;

    iget-boolean v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->q:Z

    invoke-virtual {p1, v0}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;->g(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    check-cast p3, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;

    iput-object p3, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->a:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;

    .line 2
    invoke-static {}, Lcn/nubia/video/mediaeditorview/o/a;->s()Lcn/nubia/video/mediaeditorview/o/a;

    move-result-object p3

    iput-object p3, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->h:Lcn/nubia/video/mediaeditorview/o/a;

    .line 3
    sget p3, Lcn/nubia/video/mediaeditorview/h;->f:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 4
    sget p2, Lcn/nubia/video/mediaeditorview/g;->Q:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;

    iput-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->b:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;

    .line 5
    sget p2, Lcn/nubia/video/mediaeditorview/g;->H:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;

    iput-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->f:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;

    .line 6
    invoke-virtual {p2, p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;->setOnFilterItemClickListener(Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView$g;)V

    .line 7
    sget p2, Lcn/nubia/video/mediaeditorview/g;->O:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->s:Landroid/widget/TextView;

    .line 8
    sget p3, Lcn/nubia/video/mediaeditorview/i;->H:I

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 9
    sget p2, Lcn/nubia/video/mediaeditorview/g;->p:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->g:Landroid/widget/LinearLayout;

    .line 10
    sget p2, Lcn/nubia/video/mediaeditorview/g;->N:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->c:Landroid/widget/TextView;

    .line 11
    sget p2, Lcn/nubia/video/mediaeditorview/g;->M:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->d:Landroid/widget/TextView;

    .line 12
    sget p2, Lcn/nubia/video/mediaeditorview/g;->P:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->e:Landroid/widget/TextView;

    .line 13
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->c:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->c:Landroid/widget/TextView;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 15
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->d:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->e:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->E()V

    .line 18
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->h:Lcn/nubia/video/mediaeditorview/o/a;

    invoke-virtual {p2}, Lcn/nubia/video/mediaeditorview/o/a;->r()Ljava/util/ArrayList;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->n:Ljava/util/ArrayList;

    .line 19
    iget-object p3, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->o:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 20
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->G()V

    .line 21
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->F()V

    .line 22
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->h:Lcn/nubia/video/mediaeditorview/o/a;

    invoke-virtual {p2, p0}, Lcn/nubia/video/mediaeditorview/o/a;->c0(Lb/a/c/a/c$b;)V

    .line 23
    iget-boolean p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->q:Z

    if-nez p2, :cond_0

    .line 24
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->h:Lcn/nubia/video/mediaeditorview/o/a;

    iget p3, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->j:I

    invoke-virtual {p2, p3}, Lcn/nubia/video/mediaeditorview/o/a;->M(I)V

    goto :goto_0

    .line 25
    :cond_0
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->h:Lcn/nubia/video/mediaeditorview/o/a;

    iget p3, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->i:I

    iget v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->k:I

    sub-int/2addr p3, v0

    invoke-virtual {p2, p3}, Lcn/nubia/video/mediaeditorview/o/a;->M(I)V

    :goto_0
    return-object p1
.end method

.method public t(F)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->q:Z

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->i:I

    iget v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->j:I

    sub-int/2addr v0, v1

    iget v2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->k:I

    sub-int/2addr v2, v1

    int-to-float v1, v2

    mul-float/2addr v1, p1

    float-to-int p1, v1

    sub-int/2addr v0, p1

    iput v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->l:I

    goto :goto_0

    .line 3
    :cond_0
    iget v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->j:I

    iget v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->k:I

    sub-int/2addr v1, v0

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int p1, v1

    add-int/2addr v0, p1

    iput v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->l:I

    .line 4
    :goto_0
    iget p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->l:I

    invoke-direct {p0, p1}, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->A(I)V

    .line 5
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->h:Lcn/nubia/video/mediaeditorview/o/a;

    iget v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->l:I

    invoke-virtual {p1, v0}, Lcn/nubia/video/mediaeditorview/o/a;->M(I)V

    return-void
.end method

.method u()V
    .locals 2

    const-string v0, "SpecialMenuFragment"

    const-string v1, "onApplyClick"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method v()V
    .locals 2

    const-string v0, "SpecialMenuFragment"

    const-string v1, "onCancelClick"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->h:Lcn/nubia/video/mediaeditorview/o/a;

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcn/nubia/video/mediaeditorview/o/a;->P(Ljava/util/ArrayList;)V

    .line 3
    iget-boolean v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->q:Z

    iget-boolean v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->p:Z

    if-eq v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/h;->h:Lcn/nubia/video/mediaeditorview/o/a;

    invoke-virtual {v0}, Lcn/nubia/video/mediaeditorview/o/a;->L()V

    :cond_0
    return-void
.end method
