.class public Lcn/nubia/commonui/actionbar/internal/widget/TintRatingBar;
.super Landroid/widget/RatingBar;
.source "TintRatingBar.java"


# static fields
.field private static final TINT_ATTRS:[I


# instance fields
.field private mSampleTile:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcn/nubia/commonui/actionbar/internal/widget/TintRatingBar;->TINT_ATTRS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x101013b
        0x101013c
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/commonui/actionbar/internal/widget/TintRatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 57
    const v0, 0x101007c

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/commonui/actionbar/internal/widget/TintRatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    sget-boolean v0, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->SHOULD_BE_USED:Z

    if-eqz v0, :cond_2

    .line 64
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/TintRatingBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcn/nubia/commonui/actionbar/internal/widget/TintRatingBar;->TINT_ATTRS:[I

    invoke-static {v0, p2, v1, p3, v2}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;

    move-result-object v0

    .line 67
    invoke-virtual {v0, v2}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 68
    if-eqz v1, :cond_0

    .line 69
    invoke-direct {p0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/TintRatingBar;->tileifyIndeterminate(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/TintRatingBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 72
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 73
    if-eqz v1, :cond_1

    .line 74
    invoke-direct {p0, v1, v2}, Lcn/nubia/commonui/actionbar/internal/widget/TintRatingBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/TintRatingBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 77
    :cond_1
    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->recycle()V

    .line 79
    :cond_2
    return-void
.end method

.method private getDrawableShape()Landroid/graphics/drawable/shapes/Shape;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 151
    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    .line 152
    new-instance v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v1, v0, v2, v2}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    return-object v1

    .line 151
    :array_0
    .array-data 4
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
    .end array-data
.end method

.method private tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 86
    instance-of v0, p1, Landroid/support/v4/graphics/drawable/DrawableWrapper;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 87
    check-cast v0, Landroid/support/v4/graphics/drawable/DrawableWrapper;

    invoke-interface {v0}, Landroid/support/v4/graphics/drawable/DrawableWrapper;->getWrappedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 88
    if-eqz v0, :cond_0

    .line 89
    invoke-direct {p0, v0, p2}, Lcn/nubia/commonui/actionbar/internal/widget/TintRatingBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v0, p1

    .line 90
    check-cast v0, Landroid/support/v4/graphics/drawable/DrawableWrapper;

    invoke-interface {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableWrapper;->setWrappedDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    move-object v0, p1

    .line 124
    :cond_1
    :goto_0
    return-object v0

    .line 92
    :cond_2
    instance-of v0, p1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_6

    .line 93
    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    .line 94
    invoke-virtual {p1}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v4

    .line 95
    new-array v5, v4, [Landroid/graphics/drawable/Drawable;

    move v3, v1

    .line 97
    :goto_1
    if-ge v3, v4, :cond_5

    .line 98
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v0

    .line 99
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const v7, 0x102000d

    if-eq v0, v7, :cond_3

    const v7, 0x102000f

    if-ne v0, v7, :cond_4

    :cond_3
    move v0, v2

    :goto_2
    invoke-direct {p0, v6, v0}, Lcn/nubia/commonui/actionbar/internal/widget/TintRatingBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aput-object v0, v5, v3

    .line 97
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_4
    move v0, v1

    .line 99
    goto :goto_2

    .line 102
    :cond_5
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v0, v5}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 104
    :goto_3
    if-ge v1, v4, :cond_1

    .line 105
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 104
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 110
    :cond_6
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 111
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 112
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintRatingBar;->mSampleTile:Landroid/graphics/Bitmap;

    if-nez v1, :cond_7

    .line 113
    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintRatingBar;->mSampleTile:Landroid/graphics/Bitmap;

    .line 116
    :cond_7
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/widget/TintRatingBar;->getDrawableShape()Landroid/graphics/drawable/shapes/Shape;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 117
    new-instance v3, Landroid/graphics/BitmapShader;

    sget-object v4, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v3, v0, v4, v5}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 119
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 120
    if-eqz p2, :cond_8

    new-instance v0, Landroid/graphics/drawable/ClipDrawable;

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3, v2}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    goto :goto_0

    :cond_8
    move-object v0, v1

    goto :goto_0
.end method

.method private tileifyIndeterminate(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    const/16 v5, 0x2710

    .line 133
    instance-of v0, p1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_1

    .line 134
    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    .line 135
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v2

    .line 136
    new-instance v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 137
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->isOneShot()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 139
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 140
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lcn/nubia/commonui/actionbar/internal/widget/TintRatingBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 141
    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 142
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 139
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 144
    :cond_0
    invoke-virtual {v0, v5}, Landroid/graphics/drawable/AnimationDrawable;->setLevel(I)Z

    move-object p1, v0

    .line 147
    :cond_1
    return-object p1
.end method


# virtual methods
.method protected declared-synchronized onMeasure(II)V
    .locals 2

    .prologue
    .line 157
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/widget/RatingBar;->onMeasure(II)V

    .line 159
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintRatingBar;->mSampleTile:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintRatingBar;->mSampleTile:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/TintRatingBar;->getNumStars()I

    move-result v1

    mul-int/2addr v0, v1

    .line 161
    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v0

    .line 162
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/TintRatingBar;->getMeasuredHeight()I

    move-result v1

    .line 161
    invoke-virtual {p0, v0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/TintRatingBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    :cond_0
    monitor-exit p0

    return-void

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
