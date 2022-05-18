.class public Lcn/nubia/commonui/actionbar/internal/widget/TintSpinner;
.super Landroid/widget/Spinner;
.source "TintSpinner.java"

# interfaces
.implements Landroid/support/v4/view/TintableBackgroundView;


# static fields
.field private static final TINT_ATTRS:[I


# instance fields
.field private mBackgroundTint:Lcn/nubia/commonui/actionbar/internal/widget/TintInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcn/nubia/commonui/actionbar/internal/widget/TintSpinner;->TINT_ATTRS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x10100d4
        0x1010176
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/commonui/actionbar/internal/widget/TintSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 53
    const v0, 0x1010081

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/commonui/actionbar/internal/widget/TintSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    sget-boolean v2, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->SHOULD_BE_USED:Z

    if-eqz v2, :cond_2

    .line 60
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/TintSpinner;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcn/nubia/commonui/actionbar/internal/widget/TintSpinner;->TINT_ATTRS:[I

    invoke-static {v2, p2, v3, p3, v4}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;

    move-result-object v0

    .line 62
    .local v0, "a":Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;
    invoke-virtual {v0, v4}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->getTintManager()Lcn/nubia/commonui/actionbar/internal/widget/TintManager;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v0, v4, v3}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v2, v3}, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 63
    invoke-virtual {p0, v2}, Lcn/nubia/commonui/actionbar/internal/widget/TintSpinner;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 66
    :cond_0
    invoke-virtual {v0, v5}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 67
    invoke-virtual {v0, v5}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 68
    .local v1, "popupBackground":Landroid/graphics/drawable/Drawable;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_3

    .line 69
    invoke-virtual {p0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/TintSpinner;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 74
    .end local v1    # "popupBackground":Landroid/graphics/drawable/Drawable;
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->recycle()V

    .line 76
    .end local v0    # "a":Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;
    :cond_2
    return-void

    .line 70
    .restart local v0    # "a":Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;
    .restart local v1    # "popupBackground":Landroid/graphics/drawable/Drawable;
    :cond_3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_1

    .line 71
    invoke-static {p0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/TintSpinner;->setPopupBackgroundDrawableV11(Landroid/widget/Spinner;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private applySupportBackgroundTint()V
    .locals 1

    .prologue
    .line 158
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/TintSpinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintSpinner;->mBackgroundTint:Lcn/nubia/commonui/actionbar/internal/widget/TintInfo;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintSpinner;->mBackgroundTint:Lcn/nubia/commonui/actionbar/internal/widget/TintInfo;

    invoke-static {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->tintViewBackground(Landroid/view/View;Lcn/nubia/commonui/actionbar/internal/widget/TintInfo;)V

    .line 161
    :cond_0
    return-void
.end method

.method private static setPopupBackgroundDrawableV11(Landroid/widget/Spinner;Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .param p0, "view"    # Landroid/widget/Spinner;
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 81
    :try_start_0
    const-class v3, Landroid/widget/Spinner;

    const-string v4, "mPopup"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 82
    .local v2, "popupField":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 84
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 86
    .local v1, "popup":Ljava/lang/Object;
    instance-of v3, v1, Landroid/widget/ListPopupWindow;

    if-eqz v3, :cond_0

    .line 87
    check-cast v1, Landroid/widget/ListPopupWindow;

    .end local v1    # "popup":Ljava/lang/Object;
    invoke-virtual {v1, p1}, Landroid/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 94
    .end local v2    # "popupField":Ljava/lang/reflect/Field;
    :cond_0
    :goto_0
    return-void

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    .line 91
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 153
    invoke-super {p0}, Landroid/widget/Spinner;->drawableStateChanged()V

    .line 154
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/widget/TintSpinner;->applySupportBackgroundTint()V

    .line 155
    return-void
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintSpinner;->mBackgroundTint:Lcn/nubia/commonui/actionbar/internal/widget/TintInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintSpinner;->mBackgroundTint:Lcn/nubia/commonui/actionbar/internal/widget/TintInfo;

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintSpinner;->mBackgroundTint:Lcn/nubia/commonui/actionbar/internal/widget/TintInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintSpinner;->mBackgroundTint:Lcn/nubia/commonui/actionbar/internal/widget/TintInfo;

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 105
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintSpinner;->mBackgroundTint:Lcn/nubia/commonui/actionbar/internal/widget/TintInfo;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 106
    new-instance v0, Lcn/nubia/commonui/actionbar/internal/widget/TintInfo;

    invoke-direct {v0}, Lcn/nubia/commonui/actionbar/internal/widget/TintInfo;-><init>()V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintSpinner;->mBackgroundTint:Lcn/nubia/commonui/actionbar/internal/widget/TintInfo;

    .line 108
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintSpinner;->mBackgroundTint:Lcn/nubia/commonui/actionbar/internal/widget/TintInfo;

    iput-object p1, v0, Lcn/nubia/commonui/actionbar/internal/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    .line 109
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/widget/TintSpinner;->applySupportBackgroundTint()V

    .line 110
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 132
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintSpinner;->mBackgroundTint:Lcn/nubia/commonui/actionbar/internal/widget/TintInfo;

    if-nez v0, :cond_0

    .line 133
    new-instance v0, Lcn/nubia/commonui/actionbar/internal/widget/TintInfo;

    invoke-direct {v0}, Lcn/nubia/commonui/actionbar/internal/widget/TintInfo;-><init>()V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintSpinner;->mBackgroundTint:Lcn/nubia/commonui/actionbar/internal/widget/TintInfo;

    .line 135
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintSpinner;->mBackgroundTint:Lcn/nubia/commonui/actionbar/internal/widget/TintInfo;

    iput-object p1, v0, Lcn/nubia/commonui/actionbar/internal/widget/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 136
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/widget/TintSpinner;->applySupportBackgroundTint()V

    .line 137
    return-void
.end method
