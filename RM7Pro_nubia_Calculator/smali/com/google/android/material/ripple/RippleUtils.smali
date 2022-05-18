.class public Lcom/google/android/material/ripple/RippleUtils;
.super Ljava/lang/Object;
.source "RippleUtils.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final FOCUSED_STATE_SET:[I

.field private static final HOVERED_FOCUSED_STATE_SET:[I

.field private static final HOVERED_STATE_SET:[I

.field private static final PRESSED_STATE_SET:[I

.field private static final SELECTED_FOCUSED_STATE_SET:[I

.field private static final SELECTED_HOVERED_FOCUSED_STATE_SET:[I

.field private static final SELECTED_HOVERED_STATE_SET:[I

.field private static final SELECTED_PRESSED_STATE_SET:[I

.field private static final SELECTED_STATE_SET:[I

.field public static final USE_FRAMEWORK_RIPPLE:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 40
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x15

    if-lt v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/google/android/material/ripple/RippleUtils;->USE_FRAMEWORK_RIPPLE:Z

    .line 42
    new-array v0, v2, [I

    const v3, 0x10100a7

    aput v3, v0, v1

    sput-object v0, Lcom/google/android/material/ripple/RippleUtils;->PRESSED_STATE_SET:[I

    const/4 v0, 0x2

    .line 45
    new-array v3, v0, [I

    fill-array-data v3, :array_0

    sput-object v3, Lcom/google/android/material/ripple/RippleUtils;->HOVERED_FOCUSED_STATE_SET:[I

    .line 48
    new-array v3, v2, [I

    const v4, 0x101009c

    aput v4, v3, v1

    sput-object v3, Lcom/google/android/material/ripple/RippleUtils;->FOCUSED_STATE_SET:[I

    .line 51
    new-array v3, v2, [I

    const v4, 0x1010367

    aput v4, v3, v1

    sput-object v3, Lcom/google/android/material/ripple/RippleUtils;->HOVERED_STATE_SET:[I

    .line 55
    new-array v3, v0, [I

    fill-array-data v3, :array_1

    sput-object v3, Lcom/google/android/material/ripple/RippleUtils;->SELECTED_PRESSED_STATE_SET:[I

    const/4 v3, 0x3

    .line 58
    new-array v3, v3, [I

    fill-array-data v3, :array_2

    sput-object v3, Lcom/google/android/material/ripple/RippleUtils;->SELECTED_HOVERED_FOCUSED_STATE_SET:[I

    .line 61
    new-array v3, v0, [I

    fill-array-data v3, :array_3

    sput-object v3, Lcom/google/android/material/ripple/RippleUtils;->SELECTED_FOCUSED_STATE_SET:[I

    .line 64
    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/google/android/material/ripple/RippleUtils;->SELECTED_HOVERED_STATE_SET:[I

    .line 67
    new-array v0, v2, [I

    const v2, 0x10100a1

    aput v2, v0, v1

    sput-object v0, Lcom/google/android/material/ripple/RippleUtils;->SELECTED_STATE_SET:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1010367
        0x101009c
    .end array-data

    :array_1
    .array-data 4
        0x10100a1
        0x10100a7
    .end array-data

    :array_2
    .array-data 4
        0x10100a1
        0x1010367
        0x101009c
    .end array-data

    :array_3
    .array-data 4
        0x10100a1
        0x101009c
    .end array-data

    :array_4
    .array-data 4
        0x10100a1
        0x1010367
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertToRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .locals 6
    .param p0    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 99
    sget-boolean v0, Lcom/google/android/material/ripple/RippleUtils;->USE_FRAMEWORK_RIPPLE:Z

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 102
    new-array v0, v2, [[I

    .line 103
    new-array v2, v2, [I

    .line 112
    sget-object v4, Lcom/google/android/material/ripple/RippleUtils;->SELECTED_STATE_SET:[I

    aput-object v4, v0, v3

    .line 113
    sget-object v4, Lcom/google/android/material/ripple/RippleUtils;->SELECTED_PRESSED_STATE_SET:[I

    invoke-static {p0, v4}, Lcom/google/android/material/ripple/RippleUtils;->getColorForState(Landroid/content/res/ColorStateList;[I)I

    move-result v4

    aput v4, v2, v3

    .line 117
    sget-object v3, Landroid/util/StateSet;->NOTHING:[I

    aput-object v3, v0, v1

    .line 118
    sget-object v3, Lcom/google/android/material/ripple/RippleUtils;->PRESSED_STATE_SET:[I

    invoke-static {p0, v3}, Lcom/google/android/material/ripple/RippleUtils;->getColorForState(Landroid/content/res/ColorStateList;[I)I

    move-result p0

    aput p0, v2, v1

    .line 121
    new-instance p0, Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object p0

    :cond_0
    const/16 v0, 0xa

    .line 125
    new-array v4, v0, [[I

    .line 126
    new-array v0, v0, [I

    .line 129
    sget-object v5, Lcom/google/android/material/ripple/RippleUtils;->SELECTED_PRESSED_STATE_SET:[I

    aput-object v5, v4, v3

    .line 130
    sget-object v5, Lcom/google/android/material/ripple/RippleUtils;->SELECTED_PRESSED_STATE_SET:[I

    invoke-static {p0, v5}, Lcom/google/android/material/ripple/RippleUtils;->getColorForState(Landroid/content/res/ColorStateList;[I)I

    move-result v5

    aput v5, v0, v3

    .line 133
    sget-object v5, Lcom/google/android/material/ripple/RippleUtils;->SELECTED_HOVERED_FOCUSED_STATE_SET:[I

    aput-object v5, v4, v1

    .line 134
    sget-object v5, Lcom/google/android/material/ripple/RippleUtils;->SELECTED_HOVERED_FOCUSED_STATE_SET:[I

    invoke-static {p0, v5}, Lcom/google/android/material/ripple/RippleUtils;->getColorForState(Landroid/content/res/ColorStateList;[I)I

    move-result v5

    aput v5, v0, v1

    .line 137
    sget-object v1, Lcom/google/android/material/ripple/RippleUtils;->SELECTED_FOCUSED_STATE_SET:[I

    aput-object v1, v4, v2

    .line 138
    sget-object v1, Lcom/google/android/material/ripple/RippleUtils;->SELECTED_FOCUSED_STATE_SET:[I

    invoke-static {p0, v1}, Lcom/google/android/material/ripple/RippleUtils;->getColorForState(Landroid/content/res/ColorStateList;[I)I

    move-result v1

    aput v1, v0, v2

    const/4 v1, 0x3

    .line 141
    sget-object v2, Lcom/google/android/material/ripple/RippleUtils;->SELECTED_HOVERED_STATE_SET:[I

    aput-object v2, v4, v1

    .line 142
    sget-object v2, Lcom/google/android/material/ripple/RippleUtils;->SELECTED_HOVERED_STATE_SET:[I

    invoke-static {p0, v2}, Lcom/google/android/material/ripple/RippleUtils;->getColorForState(Landroid/content/res/ColorStateList;[I)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x4

    .line 146
    sget-object v2, Lcom/google/android/material/ripple/RippleUtils;->SELECTED_STATE_SET:[I

    aput-object v2, v4, v1

    aput v3, v0, v1

    const/4 v1, 0x5

    .line 150
    sget-object v2, Lcom/google/android/material/ripple/RippleUtils;->PRESSED_STATE_SET:[I

    aput-object v2, v4, v1

    .line 151
    sget-object v2, Lcom/google/android/material/ripple/RippleUtils;->PRESSED_STATE_SET:[I

    invoke-static {p0, v2}, Lcom/google/android/material/ripple/RippleUtils;->getColorForState(Landroid/content/res/ColorStateList;[I)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 154
    sget-object v2, Lcom/google/android/material/ripple/RippleUtils;->HOVERED_FOCUSED_STATE_SET:[I

    aput-object v2, v4, v1

    .line 155
    sget-object v2, Lcom/google/android/material/ripple/RippleUtils;->HOVERED_FOCUSED_STATE_SET:[I

    invoke-static {p0, v2}, Lcom/google/android/material/ripple/RippleUtils;->getColorForState(Landroid/content/res/ColorStateList;[I)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 158
    sget-object v2, Lcom/google/android/material/ripple/RippleUtils;->FOCUSED_STATE_SET:[I

    aput-object v2, v4, v1

    .line 159
    sget-object v2, Lcom/google/android/material/ripple/RippleUtils;->FOCUSED_STATE_SET:[I

    invoke-static {p0, v2}, Lcom/google/android/material/ripple/RippleUtils;->getColorForState(Landroid/content/res/ColorStateList;[I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x8

    .line 162
    sget-object v2, Lcom/google/android/material/ripple/RippleUtils;->HOVERED_STATE_SET:[I

    aput-object v2, v4, v1

    .line 163
    sget-object v2, Lcom/google/android/material/ripple/RippleUtils;->HOVERED_STATE_SET:[I

    invoke-static {p0, v2}, Lcom/google/android/material/ripple/RippleUtils;->getColorForState(Landroid/content/res/ColorStateList;[I)I

    move-result p0

    aput p0, v0, v1

    const/16 p0, 0x9

    .line 167
    sget-object v1, Landroid/util/StateSet;->NOTHING:[I

    aput-object v1, v4, p0

    aput v3, v0, p0

    .line 171
    new-instance p0, Landroid/content/res/ColorStateList;

    invoke-direct {p0, v4, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object p0
.end method

.method private static doubleAlpha(I)I
    .locals 2
    .param p0    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 193
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    const/16 v1, 0xff

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 194
    invoke-static {p0, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p0

    return p0
.end method

.method private static getColorForState(Landroid/content/res/ColorStateList;[I)I
    .locals 1
    .param p0    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    if-eqz p0, :cond_0

    .line 179
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 183
    :goto_0
    sget-boolean p1, Lcom/google/android/material/ripple/RippleUtils;->USE_FRAMEWORK_RIPPLE:Z

    if-eqz p1, :cond_1

    invoke-static {p0}, Lcom/google/android/material/ripple/RippleUtils;->doubleAlpha(I)I

    move-result p0

    :cond_1
    return p0
.end method
