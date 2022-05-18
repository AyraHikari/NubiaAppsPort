.class public Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;
.super Ljava/lang/Object;
.source "TintTypedArray.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mTintManager:Lcn/nubia/commonui/actionbar/internal/widget/TintManager;

.field private final mWrapped:Landroid/content/res/TypedArray;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->mContext:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    .line 56
    return-void
.end method

.method public static obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[I)Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;
    .locals 2

    .prologue
    .line 43
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 44
    new-instance v1, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;

    invoke-direct {v1, p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    return-object v1
.end method

.method public static obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;
    .locals 2

    .prologue
    .line 49
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 50
    new-instance v1, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;

    invoke-direct {v1, p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    return-object v1
.end method


# virtual methods
.method public getBoolean(IZ)Z
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v0

    return v0
.end method

.method public getColor(II)I
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    return v0
.end method

.method public getColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getDimension(IF)F
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    return v0
.end method

.method public getDimensionPixelOffset(II)I
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    return v0
.end method

.method public getDimensionPixelSize(II)I
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    return v0
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 61
    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->getTintManager()Lcn/nubia/commonui/actionbar/internal/widget/TintManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 65
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public getFloat(IF)F
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    return v0
.end method

.method public getFraction(IIIF)F
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v0

    return v0
.end method

.method public getIndex(I)I
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    return v0
.end method

.method public getIndexCount()I
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    return v0
.end method

.method public getInt(II)I
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    return v0
.end method

.method public getInteger(II)I
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    return v0
.end method

.method public getLayoutDimension(II)I
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    return v0
.end method

.method public getLayoutDimension(ILjava/lang/String;)I
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getLayoutDimension(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getNonResourceString(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPositionDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResourceId(II)I
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    return v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText(I)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTextArray(I)[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTintManager()Lcn/nubia/commonui/actionbar/internal/widget/TintManager;
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->mTintManager:Lcn/nubia/commonui/actionbar/internal/widget/TintManager;

    if-nez v0, :cond_0

    .line 182
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->mContext:Landroid/content/Context;

    check-cast v0, Lcn/nubia/commonui/actionbar/internal/widget/e;

    .line 183
    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/e;->a()Lcn/nubia/commonui/actionbar/internal/widget/TintManager;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->mTintManager:Lcn/nubia/commonui/actionbar/internal/widget/TintManager;

    .line 186
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->mTintManager:Lcn/nubia/commonui/actionbar/internal/widget/TintManager;

    return-object v0

    .line 183
    :cond_1
    new-instance v0, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public getType(I)I
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v0

    return v0
.end method

.method public getValue(ILandroid/util/TypedValue;)Z
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v0

    return v0
.end method

.method public hasValue(I)Z
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    return v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    return v0
.end method

.method public peekValue(I)Landroid/util/TypedValue;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    return-object v0
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 174
    return-void
.end method
