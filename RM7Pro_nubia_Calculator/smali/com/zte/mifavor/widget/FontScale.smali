.class public Lcom/zte/mifavor/widget/FontScale;
.super Ljava/lang/Object;
.source "FontScale.java"


# static fields
.field private static final SCALE_FACTORS:[[F

.field private static final SYSTEM_SCALES:[Ljava/lang/Float;

.field public static final TAG:Ljava/lang/String; = "FontScale"

.field public static final TYPE_1:I = 0x1

.field public static final TYPE_2:I = 0x2

.field public static final TYPE_3:I = 0x3

.field public static final TYPE_4:I = 0x4

.field public static final TYPE_5:I = 0x5

.field public static final TYPE_NONE:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mScaleType:I

.field private mTextSize:F

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x4

    .line 26
    new-array v1, v0, [Ljava/lang/Float;

    const v2, 0x3f59999a    # 0.85f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const v2, 0x3f933333    # 1.15f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const v2, 0x3fa66666    # 1.3f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v1, v6

    sput-object v1, Lcom/zte/mifavor/widget/FontScale;->SYSTEM_SCALES:[Ljava/lang/Float;

    const/4 v1, 0x5

    .line 27
    new-array v1, v1, [[F

    new-array v2, v0, [F

    fill-array-data v2, :array_0

    aput-object v2, v1, v3

    new-array v2, v0, [F

    fill-array-data v2, :array_1

    aput-object v2, v1, v4

    new-array v2, v0, [F

    fill-array-data v2, :array_2

    aput-object v2, v1, v5

    new-array v2, v0, [F

    fill-array-data v2, :array_3

    aput-object v2, v1, v6

    new-array v2, v0, [F

    fill-array-data v2, :array_4

    aput-object v2, v1, v0

    sput-object v1, Lcom/zte/mifavor/widget/FontScale;->SCALE_FACTORS:[[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3f553f7d    # 0.833f
        0x3f800000    # 1.0f
        0x3f953f7d    # 1.166f
        0x3faa9fbe    # 1.333f
    .end array-data

    :array_1
    .array-data 4
        0x3f5b645a    # 0.857f
        0x3f800000    # 1.0f
        0x3f922d0e    # 1.142f
        0x3fa47ae1    # 1.285f
    .end array-data

    :array_2
    .array-data 4
        0x3f726e98    # 0.947f
        0x3f800000    # 1.0f
        0x3f86c8b4    # 1.053f
        0x3f8d70a4    # 1.105f
    .end array-data

    :array_3
    .array-data 4
        0x3f600000    # 0.875f
        0x3f800000    # 1.0f
        0x3fa00000    # 1.25f
        0x3fc00000    # 1.5f
    .end array-data

    :array_4
    .array-data 4
        0x3f70e560    # 0.941f
        0x3f800000    # 1.0f
        0x3f878d50    # 1.059f
        0x3f8ef9db    # 1.117f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, v0}, Lcom/zte/mifavor/widget/FontScale;-><init>(F)V

    return-void
.end method

.method public constructor <init>(F)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lcom/zte/mifavor/widget/FontScale;->mScaleType:I

    .line 46
    iput p1, p0, Lcom/zte/mifavor/widget/FontScale;->mTextSize:F

    .line 47
    iput v0, p0, Lcom/zte/mifavor/widget/FontScale;->mScaleType:I

    return-void
.end method

.method private updateView()V
    .locals 1

    .line 145
    iget v0, p0, Lcom/zte/mifavor/widget/FontScale;->mScaleType:I

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/zte/mifavor/widget/FontScale;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/FontScale;->getScaledTextSize()F

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getScaleType()I
    .locals 0

    .line 130
    iget p0, p0, Lcom/zte/mifavor/widget/FontScale;->mScaleType:I

    return p0
.end method

.method public getScaledTextSize()F
    .locals 4

    .line 98
    iget v0, p0, Lcom/zte/mifavor/widget/FontScale;->mScaleType:I

    if-nez v0, :cond_0

    .line 99
    iget p0, p0, Lcom/zte/mifavor/widget/FontScale;->mTextSize:F

    return p0

    .line 102
    :cond_0
    iget v0, p0, Lcom/zte/mifavor/widget/FontScale;->mTextSize:F

    .line 103
    iget-object v1, p0, Lcom/zte/mifavor/widget/FontScale;->mContext:Landroid/content/Context;

    .line 104
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "font_scale"

    const/high16 v3, 0x3f800000    # 1.0f

    .line 103
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v1

    .line 106
    sget-object v2, Lcom/zte/mifavor/widget/FontScale;->SYSTEM_SCALES:[Ljava/lang/Float;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_1

    .line 108
    iget v0, p0, Lcom/zte/mifavor/widget/FontScale;->mTextSize:F

    div-float/2addr v0, v1

    sget-object v1, Lcom/zte/mifavor/widget/FontScale;->SCALE_FACTORS:[[F

    iget p0, p0, Lcom/zte/mifavor/widget/FontScale;->mScaleType:I

    add-int/lit8 p0, p0, -0x1

    aget-object p0, v1, p0

    aget p0, p0, v2

    mul-float/2addr v0, p0

    :cond_1
    return v0
.end method

.method public getTextSize()F
    .locals 0

    .line 118
    iget p0, p0, Lcom/zte/mifavor/widget/FontScale;->mTextSize:F

    return p0
.end method

.method public init(Landroid/widget/TextView;Landroid/util/AttributeSet;II)V
    .locals 6
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 52
    iput-object p1, p0, Lcom/zte/mifavor/widget/FontScale;->mTextView:Landroid/widget/TextView;

    .line 53
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/zte/mifavor/widget/FontScale;->mContext:Landroid/content/Context;

    .line 55
    iget-object p1, p0, Lcom/zte/mifavor/widget/FontScale;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const/4 v0, 0x2

    .line 56
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 59
    sget-object v1, Lcom/zte/extres/R$styleable;->TextViewAppearance:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 60
    sget v2, Lcom/zte/extres/R$styleable;->TextViewAppearance_android_textAppearance:I

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 61
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 63
    iget-object v1, p0, Lcom/zte/mifavor/widget/FontScale;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v2, v3, :cond_1

    .line 65
    invoke-virtual {p1, v2, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 66
    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 67
    invoke-virtual {v2, v5, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    iput v3, p0, Lcom/zte/mifavor/widget/FontScale;->mTextSize:F

    .line 69
    :cond_0
    iget v3, p0, Lcom/zte/mifavor/widget/FontScale;->mScaleType:I

    invoke-virtual {v2, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/zte/mifavor/widget/FontScale;->mScaleType:I

    .line 70
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 73
    :cond_1
    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 74
    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 75
    invoke-virtual {p1, v5, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v1

    iput p2, p0, Lcom/zte/mifavor/widget/FontScale;->mTextSize:F

    .line 77
    :cond_2
    iget p2, p0, Lcom/zte/mifavor/widget/FontScale;->mScaleType:I

    invoke-virtual {p1, v4, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/zte/mifavor/widget/FontScale;->mScaleType:I

    .line 78
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 80
    invoke-direct {p0}, Lcom/zte/mifavor/widget/FontScale;->updateView()V

    return-void

    :array_0
    .array-data 4
        0x1010095
        0x1010144
    .end array-data
.end method

.method public setScaleType(I)V
    .locals 0

    .line 134
    iput p1, p0, Lcom/zte/mifavor/widget/FontScale;->mScaleType:I

    .line 135
    invoke-direct {p0}, Lcom/zte/mifavor/widget/FontScale;->updateView()V

    return-void
.end method

.method public setTextAppearance(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .line 84
    iget-object v0, p0, Lcom/zte/mifavor/widget/FontScale;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 85
    iget-object v1, p0, Lcom/zte/mifavor/widget/FontScale;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const v4, 0x1010095

    aput v4, v2, v3

    invoke-virtual {v1, p1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 86
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    invoke-virtual {p1, v3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    iput v1, p0, Lcom/zte/mifavor/widget/FontScale;->mTextSize:F

    .line 89
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 91
    invoke-direct {p0}, Lcom/zte/mifavor/widget/FontScale;->updateView()V

    return-void
.end method

.method public setTextSize(F)V
    .locals 0

    .line 125
    iput p1, p0, Lcom/zte/mifavor/widget/FontScale;->mTextSize:F

    .line 126
    invoke-direct {p0}, Lcom/zte/mifavor/widget/FontScale;->updateView()V

    return-void
.end method

.method public update(IF)V
    .locals 0

    .line 139
    iput p1, p0, Lcom/zte/mifavor/widget/FontScale;->mScaleType:I

    .line 140
    iput p2, p0, Lcom/zte/mifavor/widget/FontScale;->mTextSize:F

    .line 141
    invoke-direct {p0}, Lcom/zte/mifavor/widget/FontScale;->updateView()V

    return-void
.end method
