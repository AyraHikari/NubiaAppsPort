.class public abstract Landroidx/constraintlayout/widget/c;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field protected a:[I

.field protected b:I

.field protected c:Landroid/content/Context;

.field protected d:Landroidx/constraintlayout/b/a/i;

.field protected e:Z

.field protected f:Ljava/lang/String;

.field protected g:Ljava/lang/String;

.field private h:[Landroid/view/View;

.field private i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 83
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x20

    new-array v0, v0, [I

    .line 48
    iput-object v0, p0, Landroidx/constraintlayout/widget/c;->a:[I

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/c;->e:Z

    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Landroidx/constraintlayout/widget/c;->h:[Landroid/view/View;

    .line 80
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/widget/c;->i:Ljava/util/HashMap;

    .line 84
    iput-object p1, p0, Landroidx/constraintlayout/widget/c;->c:Landroid/content/Context;

    .line 85
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/c;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroidx/constraintlayout/widget/ConstraintLayout;Ljava/lang/String;)I
    .locals 7

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 371
    :cond_0
    iget-object v1, p0, Landroidx/constraintlayout/widget/c;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    .line 375
    :cond_1
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v2

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_3

    .line 377
    invoke-virtual {p1, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 378
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    const/4 v5, 0x0

    .line 381
    :try_start_0
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    :catch_0
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 386
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result p1

    return p1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v0
.end method

.method private a(I)V
    .locals 3

    .line 203
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/c;->getId()I

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    .line 206
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/widget/c;->b:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Landroidx/constraintlayout/widget/c;->a:[I

    array-length v2, v1

    if-le v0, v2, :cond_1

    .line 207
    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/widget/c;->a:[I

    .line 209
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/widget/c;->a:[I

    iget v1, p0, Landroidx/constraintlayout/widget/c;->b:I

    aput p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 210
    iput v1, p0, Landroidx/constraintlayout/widget/c;->b:I

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_4

    .line 252
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 255
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/widget/c;->c:Landroid/content/Context;

    if-nez v0, :cond_1

    return-void

    .line 259
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 262
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/c;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_2

    .line 263
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/c;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 265
    :cond_2
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/c;->c(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 267
    iget-object v1, p0, Landroidx/constraintlayout/widget/c;->i:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    invoke-direct {p0, v0}, Landroidx/constraintlayout/widget/c;->a(I)V

    goto :goto_0

    .line 270
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not find id of \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ConstraintHelper"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 7

    if-eqz p1, :cond_6

    .line 278
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 281
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/widget/c;->c:Landroid/content/Context;

    if-nez v0, :cond_1

    return-void

    .line 285
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 288
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/c;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v1, :cond_2

    .line 289
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/c;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    :cond_2
    const-string v1, "ConstraintHelper"

    if-nez v0, :cond_3

    const-string p1, "Parent not a ConstraintLayout"

    .line 292
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 295
    :cond_3
    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_6

    .line 297
    invoke-virtual {v0, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 298
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 299
    instance-of v6, v5, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    if-eqz v6, :cond_5

    .line 300
    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    .line 301
    iget-object v5, v5, Landroidx/constraintlayout/widget/ConstraintLayout$a;->V:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 302
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_4

    .line 303
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "to use ConstraintTag view "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " must have an ID"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 305
    :cond_4
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    invoke-direct {p0, v4}, Landroidx/constraintlayout/widget/c;->a(I)V

    :cond_5
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    :goto_2
    return-void
.end method

.method private c(Ljava/lang/String;)I
    .locals 5

    .line 320
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/c;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/c;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 326
    :goto_0
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/c;->isInEditMode()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 327
    invoke-virtual {v0, v3, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 328
    instance-of v4, v2, Ljava/lang/Integer;

    if-eqz v4, :cond_1

    .line 329
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :cond_1
    if-nez v3, :cond_2

    if-eqz v0, :cond_2

    .line 336
    invoke-direct {p0, v0, p1}, Landroidx/constraintlayout/widget/c;->a(Landroidx/constraintlayout/widget/ConstraintLayout;Ljava/lang/String;)I

    move-result v3

    :cond_2
    if-nez v3, :cond_3

    .line 341
    :try_start_0
    const-class v0, Landroidx/constraintlayout/widget/j$a;

    .line 342
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 343
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    if-nez v3, :cond_4

    .line 352
    iget-object v0, p0, Landroidx/constraintlayout/widget/c;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Landroidx/constraintlayout/widget/c;->c:Landroid/content/Context;

    .line 353
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    .line 352
    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    :cond_4
    return v3
.end method


# virtual methods
.method protected a(Landroid/util/AttributeSet;)V
    .locals 4

    if-eqz p1, :cond_3

    .line 105
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/c;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroidx/constraintlayout/widget/j$b;->ba:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 106
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 108
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 109
    sget v3, Landroidx/constraintlayout/widget/j$b;->bm:I

    if-ne v2, v3, :cond_0

    .line 110
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroidx/constraintlayout/widget/c;->f:Ljava/lang/String;

    .line 111
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/widget/c;->setIds(Ljava/lang/String;)V

    goto :goto_1

    .line 112
    :cond_0
    sget v3, Landroidx/constraintlayout/widget/j$b;->bn:I

    if-ne v2, v3, :cond_1

    .line 113
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroidx/constraintlayout/widget/c;->g:Ljava/lang/String;

    .line 114
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/widget/c;->setReferenceTags(Ljava/lang/String;)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 117
    :cond_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_3
    return-void
.end method

.method public a(Landroidx/constraintlayout/b/a/e;Z)V
    .locals 0

    return-void
.end method

.method protected a(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 7

    .line 440
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/c;->getVisibility()I

    move-result v0

    .line 442
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    .line 443
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/c;->getElevation()F

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const/4 v4, 0x0

    .line 445
    :goto_1
    iget v5, p0, Landroidx/constraintlayout/widget/c;->b:I

    if-ge v4, v5, :cond_2

    .line 446
    iget-object v5, p0, Landroidx/constraintlayout/widget/c;->a:[I

    aget v5, v5, v4

    .line 447
    invoke-virtual {p1, v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->b(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 449
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    cmpl-float v6, v1, v3

    if-lez v6, :cond_1

    .line 450
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v2, :cond_1

    .line 451
    invoke-virtual {v5}, Landroid/view/View;->getTranslationZ()F

    move-result v6

    add-float/2addr v6, v1

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationZ(F)V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public b()V
    .locals 2

    .line 238
    iget-object v0, p0, Landroidx/constraintlayout/widget/c;->d:Landroidx/constraintlayout/b/a/i;

    if-nez v0, :cond_0

    return-void

    .line 241
    :cond_0
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/c;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 242
    instance-of v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    if-eqz v1, :cond_1

    .line 243
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    .line 244
    iget-object v1, p0, Landroidx/constraintlayout/widget/c;->d:Landroidx/constraintlayout/b/a/i;

    check-cast v1, Landroidx/constraintlayout/b/a/e;

    iput-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->an:Landroidx/constraintlayout/b/a/e;

    :cond_1
    return-void
.end method

.method public b(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 5

    .line 474
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/c;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Landroidx/constraintlayout/widget/c;->f:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/c;->setIds(Ljava/lang/String;)V

    .line 477
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/widget/c;->d:Landroidx/constraintlayout/b/a/i;

    if-nez v0, :cond_1

    return-void

    .line 480
    :cond_1
    invoke-interface {v0}, Landroidx/constraintlayout/b/a/i;->j()V

    const/4 v0, 0x0

    .line 481
    :goto_0
    iget v1, p0, Landroidx/constraintlayout/widget/c;->b:I

    if-ge v0, v1, :cond_4

    .line 482
    iget-object v1, p0, Landroidx/constraintlayout/widget/c;->a:[I

    aget v1, v1, v0

    .line 483
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->b(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_2

    .line 487
    iget-object v3, p0, Landroidx/constraintlayout/widget/c;->i:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 488
    invoke-direct {p0, p1, v1}, Landroidx/constraintlayout/widget/c;->a(Landroidx/constraintlayout/widget/ConstraintLayout;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_2

    .line 490
    iget-object v2, p0, Landroidx/constraintlayout/widget/c;->a:[I

    aput v3, v2, v0

    .line 491
    iget-object v2, p0, Landroidx/constraintlayout/widget/c;->i:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    invoke-virtual {p1, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->b(I)Landroid/view/View;

    move-result-object v2

    :cond_2
    if-eqz v2, :cond_3

    .line 496
    iget-object v1, p0, Landroidx/constraintlayout/widget/c;->d:Landroidx/constraintlayout/b/a/i;

    invoke-virtual {p1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->a(Landroid/view/View;)Landroidx/constraintlayout/b/a/e;

    move-result-object v2

    invoke-interface {v1, v2}, Landroidx/constraintlayout/b/a/i;->a(Landroidx/constraintlayout/b/a/e;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 499
    :cond_4
    iget-object v0, p0, Landroidx/constraintlayout/widget/c;->d:Landroidx/constraintlayout/b/a/i;

    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroidx/constraintlayout/b/a/f;

    invoke-interface {v0, p1}, Landroidx/constraintlayout/b/a/i;->a(Landroidx/constraintlayout/b/a/f;)V

    return-void
.end method

.method protected c()V
    .locals 2

    .line 461
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/c;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 462
    instance-of v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v1, :cond_0

    .line 463
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/c;->a(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_0
    return-void
.end method

.method public c(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0

    return-void
.end method

.method public d(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0

    return-void
.end method

.method public e(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0

    return-void
.end method

.method public getReferencedIds()[I
    .locals 2

    .line 184
    iget-object v0, p0, Landroidx/constraintlayout/widget/c;->a:[I

    iget v1, p0, Landroidx/constraintlayout/widget/c;->b:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 123
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 124
    iget-object v0, p0, Landroidx/constraintlayout/widget/c;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/c;->setIds(Ljava/lang/String;)V

    .line 127
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/widget/c;->g:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 128
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/c;->setReferenceTags(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 226
    iget-boolean v0, p0, Landroidx/constraintlayout/widget/c;->e:Z

    if-eqz v0, :cond_0

    .line 227
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 229
    invoke-virtual {p0, p1, p1}, Landroidx/constraintlayout/widget/c;->setMeasuredDimension(II)V

    :goto_0
    return-void
.end method

.method protected setIds(Ljava/lang/String;)V
    .locals 3

    .line 397
    iput-object p1, p0, Landroidx/constraintlayout/widget/c;->f:Ljava/lang/String;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 402
    iput v0, p0, Landroidx/constraintlayout/widget/c;->b:I

    :goto_0
    const/16 v1, 0x2c

    .line 404
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 406
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/c;->a(Ljava/lang/String;)V

    return-void

    .line 409
    :cond_1
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/constraintlayout/widget/c;->a(Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    goto :goto_0
.end method

.method protected setReferenceTags(Ljava/lang/String;)V
    .locals 3

    .line 417
    iput-object p1, p0, Landroidx/constraintlayout/widget/c;->g:Ljava/lang/String;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 422
    iput v0, p0, Landroidx/constraintlayout/widget/c;->b:I

    :goto_0
    const/16 v1, 0x2c

    .line 424
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 426
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/c;->b(Ljava/lang/String;)V

    return-void

    .line 429
    :cond_1
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/constraintlayout/widget/c;->b(Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    goto :goto_0
.end method

.method public setReferencedIds([I)V
    .locals 2

    const/4 v0, 0x0

    .line 192
    iput-object v0, p0, Landroidx/constraintlayout/widget/c;->f:Ljava/lang/String;

    const/4 v0, 0x0

    .line 193
    iput v0, p0, Landroidx/constraintlayout/widget/c;->b:I

    .line 194
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 195
    aget v1, p1, v0

    invoke-direct {p0, v1}, Landroidx/constraintlayout/widget/c;->a(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setTag(ILjava/lang/Object;)V
    .locals 0

    .line 598
    invoke-super {p0, p1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    if-nez p2, :cond_0

    .line 599
    iget-object p2, p0, Landroidx/constraintlayout/widget/c;->f:Ljava/lang/String;

    if-nez p2, :cond_0

    .line 600
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/c;->a(I)V

    :cond_0
    return-void
.end method
