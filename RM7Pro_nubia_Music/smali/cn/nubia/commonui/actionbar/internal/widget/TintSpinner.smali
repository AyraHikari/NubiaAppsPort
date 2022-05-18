.class public Lcn/nubia/commonui/actionbar/internal/widget/TintSpinner;
.super Landroid/widget/Spinner;
.source "TintSpinner.java"

# interfaces
.implements Landroid/support/v4/view/TintableBackgroundView;


# static fields
.field private static final TINT_ATTRS:[I


# instance fields
.field private mBackgroundTint:Lcn/nubia/commonui/actionbar/internal/widget/f;


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

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/commonui/actionbar/internal/widget/TintSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 53
    const v0, 0x1010081

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/commonui/actionbar/internal/widget/TintSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    sget-boolean v0, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->SHOULD_BE_USED:Z

    if-eqz v0, :cond_2

    .line 60
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/TintSpinner;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcn/nubia/commonui/actionbar/internal/widget/TintSpinner;->TINT_ATTRS:[I

    invoke-static {v0, p2, v1, p3, v3}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;

    move-result-object v0

    .line 62
    invoke-virtual {v0, v3}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->getTintManager()Lcn/nubia/commonui/actionbar/internal/widget/TintManager;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v0, v3, v2}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 63
    invoke-virtual {p0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/TintSpinner;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 66
    :cond_0
    invoke-virtual {v0, v4}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 67
    invoke-virtual {v0, v4}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 68
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_3

    .line 69
    invoke-virtual {p0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/TintSpinner;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 74
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->recycle()V

    .line 76
    :cond_2
    return-void

    .line 70
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

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintSpinner;->mBackgroundTint:Lcn/nubia/commonui/actionbar/internal/widget/f;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintSpinner;->mBackgroundTint:Lcn/nubia/commonui/actionbar/internal/widget/f;

    invoke-static {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->tintViewBackground(Landroid/view/View;Lcn/nubia/commonui/actionbar/internal/widget/f;)V

    .line 161
    :cond_0
    return-void
.end method

.method private static setPopupBackgroundDrawableV11(Landroid/widget/Spinner;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 81
    :try_start_0
    const-class v0, Landroid/widget/Spinner;

    const-string v1, "mPopup"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 82
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 84
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 86
    instance-of v1, v0, Landroid/widget/ListPopupWindow;

    if-eqz v1, :cond_0

    .line 87
    check-cast v0, Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 89
    :catch_0
    move-exception v0

    .line 90
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    .line 91
    :catch_1
    move-exception v0

    .line 92
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

    .prologue
    .line 121
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintSpinner;->mBackgroundTint:Lcn/nubia/commonui/actionbar/internal/widget/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintSpinner;->mBackgroundTint:Lcn/nubia/commonui/actionbar/internal/widget/f;

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/f;->a:Landroid/content/res/ColorStateList;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintSpinner;->mBackgroundTint:Lcn/nubia/commonui/actionbar/internal/widget/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintSpinner;->mBackgroundTint:Lcn/nubia/commonui/actionbar/internal/widget/f;

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/f;->b:Landroid/graphics/PorterDuff$Mode;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintSpinner;->mBackgroundTint:Lcn/nubia/commonui/actionbar/internal/widget/f;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 106
    new-instance v0, Lcn/nubia/commonui/actionbar/internal/widget/f;

    invoke-direct {v0}, Lcn/nubia/commonui/actionbar/internal/widget/f;-><init>()V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintSpinner;->mBackgroundTint:Lcn/nubia/commonui/actionbar/internal/widget/f;

    .line 108
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintSpinner;->mBackgroundTint:Lcn/nubia/commonui/actionbar/internal/widget/f;

    iput-object p1, v0, Lcn/nubia/commonui/actionbar/internal/widget/f;->a:Landroid/content/res/ColorStateList;

    .line 109
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/widget/TintSpinner;->applySupportBackgroundTint()V

    .line 110
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintSpinner;->mBackgroundTint:Lcn/nubia/commonui/actionbar/internal/widget/f;

    if-nez v0, :cond_0

    .line 133
    new-instance v0, Lcn/nubia/commonui/actionbar/internal/widget/f;

    invoke-direct {v0}, Lcn/nubia/commonui/actionbar/internal/widget/f;-><init>()V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintSpinner;->mBackgroundTint:Lcn/nubia/commonui/actionbar/internal/widget/f;

    .line 135
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintSpinner;->mBackgroundTint:Lcn/nubia/commonui/actionbar/internal/widget/f;

    iput-object p1, v0, Lcn/nubia/commonui/actionbar/internal/widget/f;->b:Landroid/graphics/PorterDuff$Mode;

    .line 136
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/widget/TintSpinner;->applySupportBackgroundTint()V

    .line 137
    return-void
.end method
