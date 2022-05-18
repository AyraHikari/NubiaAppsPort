.class public Lcn/nubia/camera/prosetting/ui/MeteringModeView;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/prosetting/ui/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/prosetting/ui/MeteringModeView$b;,
        Lcn/nubia/camera/prosetting/ui/MeteringModeView$a;,
        Lcn/nubia/camera/prosetting/ui/MeteringModeView$c;
    }
.end annotation


# instance fields
.field private A:I

.field private B:Lcn/nubia/camera/prosetting/ui/MeteringModeView$c;

.field private C:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcn/nubia/camera/prosetting/ui/MeteringModeView$b;",
            ">;"
        }
    .end annotation
.end field

.field private D:Landroid/view/VelocityTracker;

.field private E:Landroid/widget/Scroller;

.field private F:F

.field private G:I

.field private H:Z

.field private I:Ljava/lang/String;

.field private J:F

.field private K:F

.field private L:F

.field private M:F

.field private N:Z

.field protected a:Landroid/content/Context;

.field private b:[I

.field private c:Z

.field private final d:[Lcn/nubia/camera/prosetting/ui/MeteringModeView$a;

.field private e:I

.field private f:I

.field private g:F

.field private h:F

.field private i:I

.field private j:I

.field private k:F

.field private l:F

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:Landroid/graphics/RectF;

.field private s:Landroid/graphics/Paint;

.field private t:Landroid/graphics/RectF;

.field private u:Landroid/graphics/Paint;

.field private v:Landroid/graphics/RectF;

.field private w:Landroid/graphics/Paint;

.field private x:Landroid/graphics/RectF;

.field private y:Landroid/graphics/Paint;

.field private z:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 108
    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/camera/prosetting/ui/MeteringModeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 109
    invoke-virtual {p0}, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f060064

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    iput p1, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->A:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 113
    invoke-direct {p0, p1, p2, p3, v0}, Lcn/nubia/camera/prosetting/ui/MeteringModeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 114
    invoke-virtual {p0}, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f060064

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    iput p1, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->A:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 13

    move-object v7, p0

    .line 118
    invoke-direct/range {p0 .. p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 34
    fill-array-data v1, :array_0

    iput-object v1, v7, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->b:[I

    const/4 v8, 0x0

    .line 36
    iput-boolean v8, v7, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->c:Z

    new-array v9, v0, [Lcn/nubia/camera/prosetting/ui/MeteringModeView$a;

    .line 54
    new-instance v10, Lcn/nubia/camera/prosetting/ui/MeteringModeView$a;

    iget-object v0, v7, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->b:[I

    aget v2, v0, v8

    const/4 v3, 0x2

    const v4, 0x7f0802f1

    const v5, 0x7f0802f2

    const v6, 0x7f0f00e4

    move-object v0, v10

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcn/nubia/camera/prosetting/ui/MeteringModeView$a;-><init>(Lcn/nubia/camera/prosetting/ui/MeteringModeView;IIIII)V

    aput-object v10, v9, v8

    new-instance v10, Lcn/nubia/camera/prosetting/ui/MeteringModeView$a;

    iget-object v0, v7, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->b:[I

    const/4 v11, 0x1

    aget v2, v0, v11

    const/4 v3, 0x1

    const v4, 0x7f0800ca

    const v5, 0x7f0800cb

    const v6, 0x7f0f00d7

    move-object v0, v10

    invoke-direct/range {v0 .. v6}, Lcn/nubia/camera/prosetting/ui/MeteringModeView$a;-><init>(Lcn/nubia/camera/prosetting/ui/MeteringModeView;IIIII)V

    aput-object v10, v9, v11

    new-instance v10, Lcn/nubia/camera/prosetting/ui/MeteringModeView$a;

    iget-object v0, v7, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->b:[I

    const/4 v12, 0x2

    aget v2, v0, v12

    const/4 v3, 0x0

    const v4, 0x7f08010b

    const v5, 0x7f08010c

    const v6, 0x7f0f00d5

    move-object v0, v10

    invoke-direct/range {v0 .. v6}, Lcn/nubia/camera/prosetting/ui/MeteringModeView$a;-><init>(Lcn/nubia/camera/prosetting/ui/MeteringModeView;IIIII)V

    aput-object v10, v9, v12

    iput-object v9, v7, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->d:[Lcn/nubia/camera/prosetting/ui/MeteringModeView$a;

    .line 64
    iput v8, v7, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->e:I

    .line 65
    iput v8, v7, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->f:I

    const v0, 0x4222cccd    # 40.7f

    .line 66
    iput v0, v7, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->g:F

    .line 68
    iput v11, v7, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->i:I

    const/4 v0, 0x6

    .line 69
    iput v0, v7, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->j:I

    const v1, 0x406ccccd    # 3.7f

    .line 70
    iput v1, v7, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->k:F

    const v1, 0x402ccccd    # 2.7f

    .line 71
    iput v1, v7, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->l:F

    const/16 v1, 0x8

    .line 72
    iput v1, v7, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->m:I

    const/4 v1, 0x7

    .line 73
    iput v1, v7, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->n:I

    .line 74
    iput v0, v7, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->o:I

    .line 75
    iput v1, v7, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->p:I

    const/16 v0, 0x1e

    .line 76
    iput v0, v7, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->q:I

    const/4 v0, 0x0

    .line 93
    iput-object v0, v7, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->B:Lcn/nubia/camera/prosetting/ui/MeteringModeView$c;

    .line 94
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v7, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->C:Ljava/util/HashMap;

    .line 99
    iput-boolean v8, v7, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->H:Z

    .line 100
    iget-object v1, v7, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->b:[I

    aget v1, v1, v11

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->I:Ljava/lang/String;

    const/4 v1, 0x0

    .line 316
    iput v1, v7, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->J:F

    .line 317
    iput v1, v7, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->K:F

    .line 318
    iput v1, v7, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->L:F

    .line 319
    iput v1, v7, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->M:F

    .line 320
    iput-boolean v8, v7, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->N:Z

    move-object v1, p1

    .line 119
    iput-object v1, v7, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->a:Landroid/content/Context;

    .line 120
    invoke-virtual {p0}, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060064

    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, v7, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->A:I

    .line 121
    invoke-virtual {p0}, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->a()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x14
        0x28
    .end array-data
.end method

.method static synthetic a(Lcn/nubia/camera/prosetting/ui/MeteringModeView;F)F
    .locals 0

    .line 29
    iput p1, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->h:F

    return p1
.end method

.method private a(FLjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 269
    new-instance p3, Lcn/nubia/camera/prosetting/ui/MeteringModeView$b;

    invoke-direct {p3, p0, p1, p2}, Lcn/nubia/camera/prosetting/ui/MeteringModeView$b;-><init>(Lcn/nubia/camera/prosetting/ui/MeteringModeView;FLjava/lang/String;)V

    .line 270
    iget-object p1, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->C:Ljava/util/HashMap;

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    invoke-virtual {p3}, Lcn/nubia/camera/prosetting/ui/MeteringModeView$b;->a()F

    move-result p1

    invoke-direct {p0, p1}, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->a(F)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 272
    iget-object p1, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->B:Lcn/nubia/camera/prosetting/ui/MeteringModeView$c;

    const/4 p3, 0x0

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->c:Z

    if-eqz p1, :cond_1

    move p1, p3

    .line 273
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->d:[Lcn/nubia/camera/prosetting/ui/MeteringModeView$a;

    array-length v1, v0

    if-ge p1, v1, :cond_1

    .line 274
    aget-object v0, v0, p1

    invoke-static {v0}, Lcn/nubia/camera/prosetting/ui/MeteringModeView$a;->b(Lcn/nubia/camera/prosetting/ui/MeteringModeView$a;)I

    move-result v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 275
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->B:Lcn/nubia/camera/prosetting/ui/MeteringModeView$c;

    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->d:[Lcn/nubia/camera/prosetting/ui/MeteringModeView$a;

    aget-object v1, v1, p1

    invoke-static {v1}, Lcn/nubia/camera/prosetting/ui/MeteringModeView$a;->e(Lcn/nubia/camera/prosetting/ui/MeteringModeView$a;)I

    move-result v1

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->a:Landroid/content/Context;

    iget-object v3, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->d:[Lcn/nubia/camera/prosetting/ui/MeteringModeView$a;

    aget-object p1, v3, p1

    invoke-static {p1}, Lcn/nubia/camera/prosetting/ui/MeteringModeView$a;->a(Lcn/nubia/camera/prosetting/ui/MeteringModeView$a;)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcn/nubia/camera/prosetting/ui/MeteringModeView$c;->a(ILjava/lang/String;)V

    .line 276
    iput-object p2, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->I:Ljava/lang/String;

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 281
    :cond_1
    :goto_1
    iput-boolean p3, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->c:Z

    :cond_2
    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 6

    .line 193
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->r:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    .line 194
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->t:Landroid/graphics/RectF;

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->r:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 195
    :goto_0
    iget v1, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->e:I

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->b:[I

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 196
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->t:Landroid/graphics/RectF;

    iput v0, v1, Landroid/graphics/RectF;->left:F

    .line 197
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->t:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->i:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 198
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->t:Landroid/graphics/RectF;

    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->s:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 199
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->t:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->j:I

    mul-int/lit8 v1, v1, 0x14

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->i:I

    mul-int/lit8 v2, v2, 0x13

    add-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 200
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->b:[I

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->e:I

    aget v1, v1, v2

    invoke-direct {p0, v1}, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->c(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 201
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->b:[I

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->e:I

    aget v1, v1, v2

    invoke-direct {p0, v1}, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->c(I)I

    move-result v1

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->t:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->i:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->r:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-direct {p0, p1, v1, v2, v3}, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->a(Landroid/graphics/Canvas;IFF)V

    .line 204
    :cond_0
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->t:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->b:[I

    iget v3, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->e:I

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->a:Landroid/content/Context;

    iget-object v4, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->d:[Lcn/nubia/camera/prosetting/ui/MeteringModeView$a;

    iget v5, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->e:I

    aget-object v4, v4, v5

    .line 205
    invoke-static {v4}, Lcn/nubia/camera/prosetting/ui/MeteringModeView$a;->a(Lcn/nubia/camera/prosetting/ui/MeteringModeView$a;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 204
    invoke-direct {p0, v1, v2, v3}, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->a(FLjava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->b:[I

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->e:I

    aget v2, v1, v2

    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    aget v1, v1, v3

    if-eq v2, v1, :cond_1

    .line 207
    invoke-direct {p0, p1}, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->b(Landroid/graphics/Canvas;)V

    .line 209
    :cond_1
    iget v1, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->e:I

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method private a(Landroid/graphics/Canvas;IFF)V
    .locals 3

    .line 255
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->t:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    invoke-direct {p0, v0}, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->a(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    invoke-virtual {p0}, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->d:[Lcn/nubia/camera/prosetting/ui/MeteringModeView$a;

    aget-object p2, v1, p2

    invoke-static {p2}, Lcn/nubia/camera/prosetting/ui/MeteringModeView$a;->c(Lcn/nubia/camera/prosetting/ui/MeteringModeView$a;)I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    goto :goto_0

    .line 258
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->d:[Lcn/nubia/camera/prosetting/ui/MeteringModeView$a;

    aget-object p2, v1, p2

    invoke-static {p2}, Lcn/nubia/camera/prosetting/ui/MeteringModeView$a;->d(Lcn/nubia/camera/prosetting/ui/MeteringModeView$a;)I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 261
    :goto_0
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float v0, p3, v0

    float-to-int v0, v0

    .line 262
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, p4, v1

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->k:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 263
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr p3, v2

    float-to-int p3, p3

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->k:F

    sub-float/2addr p4, v2

    float-to-int p4, p4

    .line 260
    invoke-virtual {p2, v0, v1, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 265
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/prosetting/ui/MeteringModeView;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->e()V

    return-void
.end method

.method private a(F)Z
    .locals 2

    .line 305
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->z:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->z:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr p1, v0

    goto :goto_0

    .line 308
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->z:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, p1

    iget p1, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->i:I

    int-to-float p1, p1

    sub-float p1, v0, p1

    .line 310
    :goto_0
    iget v0, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->j:I

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic a(Lcn/nubia/camera/prosetting/ui/MeteringModeView;Z)Z
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->H:Z

    return p1
.end method

.method private b()V
    .locals 4

    .line 168
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->z:Landroid/graphics/RectF;

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->f:I

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    iget v3, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->n:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    sub-float/2addr v1, v3

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700aa

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 169
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->z:Landroid/graphics/RectF;

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->q:I

    int-to-float v1, v1

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->l:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 170
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->z:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->n:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 171
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->z:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->m:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 5

    .line 214
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->t:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->j:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x13

    if-ge v1, v2, :cond_0

    .line 217
    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->x:Landroid/graphics/RectF;

    iget-object v3, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->t:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 218
    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->x:Landroid/graphics/RectF;

    iget-object v3, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->t:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 219
    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->x:Landroid/graphics/RectF;

    iput v0, v2, Landroid/graphics/RectF;->left:F

    .line 220
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->x:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->i:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 221
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->x:Landroid/graphics/RectF;

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->w:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 222
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->x:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->j:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    .line 223
    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->x:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->b:[I

    iget v4, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->e:I

    aget v3, v3, v4

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->a(FLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic b(Lcn/nubia/camera/prosetting/ui/MeteringModeView;Z)Z
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->c:Z

    return p1
.end method

.method private c(I)I
    .locals 3

    const/4 v0, 0x0

    .line 245
    :goto_0
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->d:[Lcn/nubia/camera/prosetting/ui/MeteringModeView$a;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 246
    aget-object v1, v1, v0

    invoke-static {v1}, Lcn/nubia/camera/prosetting/ui/MeteringModeView$a;->b(Lcn/nubia/camera/prosetting/ui/MeteringModeView$a;)I

    move-result v1

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private c()V
    .locals 4

    .line 176
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->r:Landroid/graphics/RectF;

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->h:F

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->i:I

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 177
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->r:Landroid/graphics/RectF;

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->q:I

    int-to-float v1, v1

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->k:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 178
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->r:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->i:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 179
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->r:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->o:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method private c(Landroid/graphics/Canvas;)V
    .locals 4

    .line 229
    iget v0, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->h:F

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->p:I

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 230
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->t:Landroid/graphics/RectF;

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->z:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    const/4 v1, 0x0

    .line 231
    :goto_0
    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->b:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 232
    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->t:Landroid/graphics/RectF;

    iput v0, v2, Landroid/graphics/RectF;->left:F

    .line 233
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->t:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->p:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 234
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->t:Landroid/graphics/RectF;

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->s:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 235
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->t:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->j:I

    mul-int/lit8 v2, v2, 0x14

    int-to-float v2, v2

    add-float/2addr v0, v2

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->i:I

    mul-int/lit8 v3, v2, 0x13

    int-to-float v3, v3

    add-float/2addr v0, v3

    iget v3, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->p:I

    int-to-float v3, v3

    sub-float/2addr v0, v3

    int-to-float v2, v2

    add-float/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private d()V
    .locals 11

    .line 360
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->D:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    const v2, 0x453b8000    # 3000.0f

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 361
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->D:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    .line 362
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->G:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 363
    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->E:Landroid/widget/Scroller;

    const/4 v3, 0x0

    const/4 v4, 0x0

    float-to-int v5, v0

    const/4 v6, 0x0

    const/high16 v7, -0x80000000

    const v8, 0x7fffffff

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 365
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->getIntegralPointValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 366
    invoke-direct {p0}, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->e()V

    goto :goto_0

    .line 368
    :cond_1
    invoke-direct {p0}, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->getMoveToBigPointWidth()F

    move-result v0

    .line 369
    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->h:F

    aput v3, v1, v2

    const/4 v2, 0x1

    aput v0, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 370
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 371
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 372
    new-instance v1, Lcn/nubia/camera/prosetting/ui/MeteringModeView$1;

    invoke-direct {v1, p0}, Lcn/nubia/camera/prosetting/ui/MeteringModeView$1;-><init>(Lcn/nubia/camera/prosetting/ui/MeteringModeView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 379
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 380
    new-instance v1, Lcn/nubia/camera/prosetting/ui/MeteringModeView$2;

    invoke-direct {v1, p0}, Lcn/nubia/camera/prosetting/ui/MeteringModeView$2;-><init>(Lcn/nubia/camera/prosetting/ui/MeteringModeView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :goto_0
    return-void
.end method

.method private d(Landroid/graphics/Canvas;)V
    .locals 2

    .line 241
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->z:Landroid/graphics/RectF;

    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->y:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private e()V
    .locals 8

    .line 403
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->z:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->n:I

    const/4 v2, 0x2

    div-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-direct {p0}, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->getMaxWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 404
    iget v1, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->h:F

    cmpg-float v3, v1, v0

    const-wide/16 v4, 0x12c

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-gez v3, :cond_0

    .line 405
    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    new-array v1, v2, [F

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->h:F

    aput v2, v1, v7

    aput v0, v1, v6

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 406
    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 407
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 408
    new-instance v1, Lcn/nubia/camera/prosetting/ui/MeteringModeView$3;

    invoke-direct {v1, p0}, Lcn/nubia/camera/prosetting/ui/MeteringModeView$3;-><init>(Lcn/nubia/camera/prosetting/ui/MeteringModeView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 415
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 416
    new-instance v1, Lcn/nubia/camera/prosetting/ui/MeteringModeView$4;

    invoke-direct {v1, p0}, Lcn/nubia/camera/prosetting/ui/MeteringModeView$4;-><init>(Lcn/nubia/camera/prosetting/ui/MeteringModeView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 435
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->z:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_1

    .line 436
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    new-array v0, v2, [F

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->h:F

    aput v1, v0, v7

    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->z:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->n:I

    div-int/2addr v3, v2

    int-to-float v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v6

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 437
    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 438
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 439
    new-instance v1, Lcn/nubia/camera/prosetting/ui/MeteringModeView$5;

    invoke-direct {v1, p0}, Lcn/nubia/camera/prosetting/ui/MeteringModeView$5;-><init>(Lcn/nubia/camera/prosetting/ui/MeteringModeView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 446
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 447
    new-instance v1, Lcn/nubia/camera/prosetting/ui/MeteringModeView$6;

    invoke-direct {v1, p0}, Lcn/nubia/camera/prosetting/ui/MeteringModeView$6;-><init>(Lcn/nubia/camera/prosetting/ui/MeteringModeView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 468
    :cond_1
    iput-boolean v7, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->H:Z

    .line 469
    iput-boolean v6, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->c:Z

    :goto_0
    return-void
.end method

.method private getIntegralPointValue()I
    .locals 3

    .line 474
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->C:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 475
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 476
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 477
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/prosetting/ui/MeteringModeView$b;

    .line 478
    invoke-virtual {v1}, Lcn/nubia/camera/prosetting/ui/MeteringModeView$b;->a()F

    move-result v2

    invoke-direct {p0, v2}, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->a(F)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 479
    invoke-virtual {v1}, Lcn/nubia/camera/prosetting/ui/MeteringModeView$b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private getMaxWidth()I
    .locals 3

    .line 514
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->b:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->j:I

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->i:I

    add-int/2addr v1, v2

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x14

    return v0
.end method

.method private getMoveToBigPointValue()I
    .locals 6

    .line 486
    invoke-direct {p0}, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->getIntegralPointValue()I

    move-result v0

    .line 487
    iget-boolean v1, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->N:Z

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    .line 488
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->b:[I

    aget v3, v1, v3

    if-lt v0, v3, :cond_0

    aget v3, v1, v4

    if-gt v0, v3, :cond_0

    .line 489
    aget v0, v1, v4

    return v0

    .line 490
    :cond_0
    aget v3, v1, v4

    if-le v0, v3, :cond_3

    aget v3, v1, v2

    if-gt v0, v3, :cond_3

    .line 491
    aget v0, v1, v2

    return v0

    .line 494
    :cond_1
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->b:[I

    aget v5, v1, v3

    if-lt v0, v5, :cond_2

    aget v5, v1, v4

    if-gt v0, v5, :cond_2

    .line 495
    aget v0, v1, v3

    return v0

    .line 496
    :cond_2
    aget v3, v1, v4

    if-le v0, v3, :cond_3

    aget v2, v1, v2

    if-gt v0, v2, :cond_3

    .line 497
    aget v0, v1, v4

    return v0

    :cond_3
    const/4 v0, -0x1

    return v0
.end method

.method private getMoveToBigPointWidth()F
    .locals 1

    .line 504
    invoke-direct {p0}, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->getMoveToBigPointValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->a(I)F

    move-result v0

    return v0
.end method


# virtual methods
.method protected a(I)F
    .locals 2

    int-to-float p1, p1

    .line 508
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->b:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    int-to-float v0, v0

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-int p1, p1

    .line 509
    iget v0, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->j:I

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->i:I

    add-int/2addr v0, v1

    mul-int/2addr p1, v0

    .line 510
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->z:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->n:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    int-to-float p1, p1

    sub-float/2addr v0, p1

    return v0
.end method

.method protected a()V
    .locals 4

    .line 125
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->a:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 126
    invoke-virtual {p0}, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 127
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 128
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->f:I

    .line 129
    iget v0, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->g:F

    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v2

    iput v0, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->g:F

    .line 130
    iget v0, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->f:I

    int-to-float v0, v0

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v0, v2

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700aa

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iput v0, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->h:F

    .line 131
    iget v0, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->i:I

    int-to-float v0, v0

    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->i:I

    .line 132
    iget v0, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->j:I

    int-to-float v0, v0

    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->j:I

    .line 133
    iget v0, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->k:F

    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v2

    iput v0, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->k:F

    .line 134
    iget v0, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->l:F

    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v2

    iput v0, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->l:F

    .line 135
    iget v0, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->m:I

    int-to-float v0, v0

    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->m:I

    .line 136
    iget v0, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->o:I

    int-to-float v0, v0

    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->o:I

    .line 137
    iget v0, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->q:I

    int-to-float v0, v0

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->q:I

    .line 139
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->r:Landroid/graphics/RectF;

    .line 140
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->t:Landroid/graphics/RectF;

    .line 141
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->s:Landroid/graphics/Paint;

    const/4 v1, -0x1

    .line 142
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 143
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->s:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 145
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->v:Landroid/graphics/RectF;

    .line 146
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->u:Landroid/graphics/Paint;

    .line 147
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 148
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->u:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 150
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->x:Landroid/graphics/RectF;

    .line 151
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->w:Landroid/graphics/Paint;

    .line 152
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 153
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->w:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 155
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->z:Landroid/graphics/RectF;

    .line 156
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->y:Landroid/graphics/Paint;

    .line 157
    iget v1, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->A:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 158
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->y:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 160
    invoke-direct {p0}, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->b()V

    .line 161
    invoke-direct {p0}, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->c()V

    .line 162
    new-instance v0, Landroid/widget/Scroller;

    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->E:Landroid/widget/Scroller;

    .line 163
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->G:I

    return-void
.end method

.method public b(I)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 523
    :goto_0
    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->d:[Lcn/nubia/camera/prosetting/ui/MeteringModeView$a;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 524
    aget-object v2, v2, v1

    invoke-static {v2}, Lcn/nubia/camera/prosetting/ui/MeteringModeView$a;->e(Lcn/nubia/camera/prosetting/ui/MeteringModeView$a;)I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 525
    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->d:[Lcn/nubia/camera/prosetting/ui/MeteringModeView$a;

    aget-object v1, v2, v1

    invoke-static {v1}, Lcn/nubia/camera/prosetting/ui/MeteringModeView$a;->b(Lcn/nubia/camera/prosetting/ui/MeteringModeView$a;)I

    move-result v1

    .line 526
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->I:Ljava/lang/String;

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    .line 530
    :goto_1
    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->b:[I

    aget v0, v2, v0

    sub-int/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 531
    iget v1, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->j:I

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->i:I

    add-int/2addr v1, v2

    mul-int/2addr v0, v1

    .line 532
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->z:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->n:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    int-to-float v0, v0

    sub-float/2addr v1, v0

    iput v1, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->h:F

    .line 533
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->I:Ljava/lang/String;

    .line 534
    invoke-virtual {p0}, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->invalidate()V

    return-void
.end method

.method public getMember()Lcn/nubia/camera/w/b;
    .locals 1

    .line 539
    sget-object v0, Lcn/nubia/camera/w/b;->k:Lcn/nubia/camera/w/b;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 544
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->I:Ljava/lang/String;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    const/4 v0, 0x0

    .line 184
    iput v0, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->e:I

    .line 185
    invoke-direct {p0}, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->c()V

    .line 186
    invoke-direct {p0}, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->b()V

    .line 187
    invoke-direct {p0, p1}, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->a(Landroid/graphics/Canvas;)V

    .line 188
    invoke-direct {p0, p1}, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->c(Landroid/graphics/Canvas;)V

    .line 189
    invoke-direct {p0, p1}, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->d(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 323
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 324
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 326
    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->D:Landroid/view/VelocityTracker;

    if-nez v2, :cond_0

    .line 327
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->D:Landroid/view/VelocityTracker;

    .line 329
    :cond_0
    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->D:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v3, :cond_2

    const/4 v4, 0x2

    if-eq v0, v4, :cond_1

    const/4 v4, 0x3

    if-eq v0, v4, :cond_2

    goto :goto_1

    .line 340
    :cond_1
    iput-boolean v3, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->H:Z

    .line 341
    iget p1, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->F:F

    sub-float p1, v1, p1

    .line 342
    iget v0, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->h:F

    add-float/2addr v0, p1

    iput v0, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->h:F

    .line 343
    invoke-virtual {p0}, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->postInvalidate()V

    goto :goto_1

    .line 347
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v4, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->J:F

    sub-float/2addr v0, v4

    iput v0, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->L:F

    .line 348
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v0, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->K:F

    sub-float/2addr p1, v0

    iput p1, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->M:F

    .line 349
    iget p1, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->L:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->M:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_4

    .line 350
    iget p1, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->L:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_3

    goto :goto_0

    :cond_3
    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->N:Z

    .line 352
    :cond_4
    invoke-direct {p0}, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->d()V

    goto :goto_1

    .line 333
    :cond_5
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->E:Landroid/widget/Scroller;

    invoke-virtual {v0, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 334
    iput-boolean v3, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->H:Z

    .line 335
    iput-boolean v2, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->c:Z

    .line 336
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->J:F

    .line 337
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->K:F

    .line 355
    :goto_1
    iput v1, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->F:F

    return v3
.end method

.method public setListener(Lcn/nubia/camera/prosetting/ui/MeteringModeView$c;)V
    .locals 0

    .line 518
    iput-object p1, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView;->B:Lcn/nubia/camera/prosetting/ui/MeteringModeView$c;

    return-void
.end method
