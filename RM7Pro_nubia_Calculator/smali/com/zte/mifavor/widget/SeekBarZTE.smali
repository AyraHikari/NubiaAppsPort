.class public Lcom/zte/mifavor/widget/SeekBarZTE;
.super Landroid/widget/SeekBar;
.source "SeekBarZTE.java"


# static fields
.field public static final NORMAL:[I

.field private static final STATE_DISABLE:[I

.field public static final STATE_DISABLE_PRESSED:[I

.field public static final STATE_ENABLE:[I

.field private static final STATE_ENABLED_PRESSED:[I

.field private static final STATE_ENABLED_UNPRESSED:[I

.field private static final STATE_ENABLE_MF50:[I

.field public static final STATE_PRESSED:[I

.field public static final STATE_SELECTED:[I


# instance fields
.field disThumbDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field mProgressDrawable:Landroid/graphics/drawable/LayerDrawable;

.field secondDrawable:Landroid/graphics/drawable/ScaleDrawable;

.field thumbPressDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field thumbUnPressDrawable:Landroid/graphics/drawable/BitmapDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    .line 52
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/zte/mifavor/widget/SeekBarZTE;->STATE_DISABLE_PRESSED:[I

    const/4 v1, 0x1

    .line 56
    new-array v2, v1, [I

    const/4 v3, 0x0

    const v4, 0x10100a7

    aput v4, v2, v3

    sput-object v2, Lcom/zte/mifavor/widget/SeekBarZTE;->STATE_PRESSED:[I

    .line 60
    new-array v2, v3, [I

    sput-object v2, Lcom/zte/mifavor/widget/SeekBarZTE;->NORMAL:[I

    .line 65
    new-array v2, v1, [I

    const v4, -0x101009e

    aput v4, v2, v3

    sput-object v2, Lcom/zte/mifavor/widget/SeekBarZTE;->STATE_ENABLE:[I

    .line 69
    new-array v2, v0, [I

    fill-array-data v2, :array_1

    sput-object v2, Lcom/zte/mifavor/widget/SeekBarZTE;->STATE_SELECTED:[I

    .line 73
    new-array v2, v1, [I

    aput v4, v2, v3

    sput-object v2, Lcom/zte/mifavor/widget/SeekBarZTE;->STATE_DISABLE:[I

    .line 77
    new-array v2, v0, [I

    fill-array-data v2, :array_2

    sput-object v2, Lcom/zte/mifavor/widget/SeekBarZTE;->STATE_ENABLED_PRESSED:[I

    .line 81
    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/zte/mifavor/widget/SeekBarZTE;->STATE_ENABLED_UNPRESSED:[I

    .line 85
    new-array v0, v1, [I

    const v1, 0x101009e

    aput v1, v0, v3

    sput-object v0, Lcom/zte/mifavor/widget/SeekBarZTE;->STATE_ENABLE_MF50:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x101009e
        0x10100a7
    .end array-data

    :array_1
    .array-data 4
        0x10100a1
        -0x10100a0
    .end array-data

    :array_2
    .array-data 4
        0x101009e
        0x10100a7
    .end array-data

    :array_3
    .array-data 4
        0x101009e
        -0x10100a7
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 96
    invoke-direct {p0, p1, v0}, Lcom/zte/mifavor/widget/SeekBarZTE;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101007b

    .line 100
    invoke-direct {p0, p1, p2, v0}, Lcom/zte/mifavor/widget/SeekBarZTE;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 104
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 114
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p3, v0, :cond_2

    .line 115
    sget-object p3, Lcom/zte/extres/R$styleable;->SeekBar:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 118
    sget p3, Lcom/zte/extres/R$styleable;->SeekBar_android_thumbOffset:I

    const/4 v0, -0x1

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    .line 119
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    if-eq p3, v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 130
    :goto_0
    sget p3, Lcom/zte/extres/R$drawable;->progressbar_slider_pressed_light:I

    sget v0, Lcom/zte/extres/R$drawable;->progressbar_slider_light:I

    sget v1, Lcom/zte/extres/R$drawable;->progressbar_slider_disabled_light:I

    invoke-virtual {p0, p3, v0, v1}, Lcom/zte/mifavor/widget/SeekBarZTE;->SetThumbDrawable(III)V

    .line 131
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/zte/extres/R$color;->mfv_common_pb:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/zte/extres/R$color;->mfv_common_pb_bg:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p3, p1}, Lcom/zte/mifavor/widget/SeekBarZTE;->SetColor(II)V

    .line 134
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x18

    const/high16 v0, 0x40000000    # 2.0f

    if-lt p1, p3, :cond_1

    .line 135
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SeekBarZTE;->getTickMark()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_3

    if-nez p2, :cond_3

    .line 137
    iget-object p1, p0, Lcom/zte/mifavor/widget/SeekBarZTE;->thumbPressDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    iget-object p2, p0, Lcom/zte/mifavor/widget/SeekBarZTE;->thumbUnPressDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    sub-int/2addr p1, p2

    int-to-float p1, p1

    div-float/2addr p1, v0

    .line 138
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 139
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/SeekBarZTE;->setThumbOffset(I)V

    goto :goto_1

    :cond_1
    if-nez p2, :cond_3

    .line 147
    iget-object p1, p0, Lcom/zte/mifavor/widget/SeekBarZTE;->thumbPressDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    iget-object p2, p0, Lcom/zte/mifavor/widget/SeekBarZTE;->thumbUnPressDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    sub-int/2addr p1, p2

    int-to-float p1, p1

    div-float/2addr p1, v0

    .line 148
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 149
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/SeekBarZTE;->setThumbOffset(I)V

    goto :goto_1

    .line 159
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const-string v0, "common_controller_color"

    const v1, -0xce7422    # -2.3599959E38f

    invoke-static {p3, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p3

    .line 161
    sget-object v0, Lcom/zte/extres/R$styleable;->SeekBar:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 162
    sget p2, Lcom/zte/extres/R$styleable;->SeekBar_android_color:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    .line 163
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 165
    invoke-virtual {p0, p2}, Lcom/zte/mifavor/widget/SeekBarZTE;->SetColor(I)V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public SetColor(I)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 172
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SeekBarZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/zte/extres/R$color;->mfv_common_pb_bg:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/zte/mifavor/widget/SeekBarZTE;->SetColor(II)V

    return-void
.end method

.method public SetColor(II)V
    .locals 7

    .line 210
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 211
    iget-object v0, p0, Lcom/zte/mifavor/widget/SeekBarZTE;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 212
    new-instance v1, Landroid/graphics/drawable/AnimatedStateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/AnimatedStateListDrawable;-><init>()V

    .line 213
    new-instance v2, Landroid/graphics/drawable/AnimatedStateListDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/AnimatedStateListDrawable;-><init>()V

    .line 215
    sget v3, Lcom/zte/extres/R$drawable;->scrubber_track_zte_light:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 216
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 217
    invoke-virtual {v3, p2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 219
    sget v4, Lcom/zte/extres/R$drawable;->scrubber_track_zte_light:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 220
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 221
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 222
    sget p1, Lcom/zte/extres/R$drawable;->scrubber_track_zte_light:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 223
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/16 v0, 0xff

    .line 224
    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v5

    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v6

    .line 225
    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result p2

    .line 224
    invoke-static {v0, v5, v6, p2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p2

    .line 226
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    const/16 p2, 0x1f

    .line 227
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 228
    new-instance p2, Landroid/graphics/drawable/ScaleDrawable;

    const/4 v0, 0x3

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, -0x40800000    # -1.0f

    invoke-direct {p2, v4, v0, v5, v6}, Landroid/graphics/drawable/ScaleDrawable;-><init>(Landroid/graphics/drawable/Drawable;IFF)V

    iput-object p2, p0, Lcom/zte/mifavor/widget/SeekBarZTE;->secondDrawable:Landroid/graphics/drawable/ScaleDrawable;

    .line 229
    sget-object p2, Lcom/zte/mifavor/widget/SeekBarZTE;->STATE_DISABLE:[I

    const/4 v0, 0x0

    invoke-virtual {v1, p2, p1, v0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;I)V

    .line 230
    sget-object p2, Lcom/zte/mifavor/widget/SeekBarZTE;->STATE_ENABLE_MF50:[I

    invoke-virtual {v1, p2, v3, v0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;I)V

    .line 231
    sget-object p2, Lcom/zte/mifavor/widget/SeekBarZTE;->STATE_DISABLE:[I

    invoke-virtual {v2, p2, p1, v0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;I)V

    .line 232
    sget-object p1, Lcom/zte/mifavor/widget/SeekBarZTE;->STATE_ENABLE_MF50:[I

    iget-object p2, p0, Lcom/zte/mifavor/widget/SeekBarZTE;->secondDrawable:Landroid/graphics/drawable/ScaleDrawable;

    invoke-virtual {v2, p1, p2, v0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;I)V

    const/4 p1, 0x2

    .line 233
    new-array p1, p1, [Landroid/graphics/drawable/Drawable;

    aput-object v1, p1, v0

    const/4 p2, 0x1

    aput-object v2, p1, p2

    .line 236
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v1, p0, Lcom/zte/mifavor/widget/SeekBarZTE;->mProgressDrawable:Landroid/graphics/drawable/LayerDrawable;

    .line 237
    iget-object p1, p0, Lcom/zte/mifavor/widget/SeekBarZTE;->mProgressDrawable:Landroid/graphics/drawable/LayerDrawable;

    const/high16 v1, 0x1020000

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 238
    iget-object p1, p0, Lcom/zte/mifavor/widget/SeekBarZTE;->mProgressDrawable:Landroid/graphics/drawable/LayerDrawable;

    const v1, 0x102000d

    invoke-virtual {p1, p2, v1}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 239
    iget-object p1, p0, Lcom/zte/mifavor/widget/SeekBarZTE;->mProgressDrawable:Landroid/graphics/drawable/LayerDrawable;

    const/16 v1, 0x17

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    .line 240
    iget-object p1, p0, Lcom/zte/mifavor/widget/SeekBarZTE;->mProgressDrawable:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {p1, p2, v1}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    .line 241
    iget-object p1, p0, Lcom/zte/mifavor/widget/SeekBarZTE;->mProgressDrawable:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/SeekBarZTE;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public SetColor(IIII)V
    .locals 0

    return-void
.end method

.method public SetThumbDrawable(III)V
    .locals 4

    .line 176
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 177
    new-instance v0, Landroid/graphics/drawable/AnimatedStateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/AnimatedStateListDrawable;-><init>()V

    .line 178
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    const/4 v2, 0x1

    .line 179
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->setConstantSize(Z)V

    .line 182
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SeekBarZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    check-cast p3, Landroid/graphics/drawable/BitmapDrawable;

    iput-object p3, p0, Lcom/zte/mifavor/widget/SeekBarZTE;->disThumbDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 183
    iget-object p3, p0, Lcom/zte/mifavor/widget/SeekBarZTE;->disThumbDrawable:Landroid/graphics/drawable/BitmapDrawable;

    const/16 v1, 0x11

    invoke-virtual {p3, v1}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    .line 184
    sget-object p3, Lcom/zte/mifavor/widget/SeekBarZTE;->STATE_DISABLE:[I

    iget-object v2, p0, Lcom/zte/mifavor/widget/SeekBarZTE;->disThumbDrawable:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v3, 0x0

    invoke-virtual {v0, p3, v2, v3}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;I)V

    .line 186
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SeekBarZTE;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    iput-object p1, p0, Lcom/zte/mifavor/widget/SeekBarZTE;->thumbPressDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 187
    iget-object p1, p0, Lcom/zte/mifavor/widget/SeekBarZTE;->thumbPressDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    .line 188
    sget-object p1, Lcom/zte/mifavor/widget/SeekBarZTE;->STATE_ENABLED_PRESSED:[I

    iget-object p3, p0, Lcom/zte/mifavor/widget/SeekBarZTE;->thumbPressDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1, p3, v3}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;I)V

    .line 190
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SeekBarZTE;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    iput-object p1, p0, Lcom/zte/mifavor/widget/SeekBarZTE;->thumbUnPressDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 191
    iget-object p1, p0, Lcom/zte/mifavor/widget/SeekBarZTE;->thumbUnPressDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    .line 192
    sget-object p1, Lcom/zte/mifavor/widget/SeekBarZTE;->STATE_ENABLED_UNPRESSED:[I

    iget-object p2, p0, Lcom/zte/mifavor/widget/SeekBarZTE;->thumbUnPressDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1, p2, v3}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;I)V

    .line 193
    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/SeekBarZTE;->setThumb(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public SetThumbDrawableColor(III)V
    .locals 2

    .line 198
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 199
    iget-object v0, p0, Lcom/zte/mifavor/widget/SeekBarZTE;->thumbPressDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 200
    iget-object p1, p0, Lcom/zte/mifavor/widget/SeekBarZTE;->thumbUnPressDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 201
    iget-object p0, p0, Lcom/zte/mifavor/widget/SeekBarZTE;->disThumbDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0, p3}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    :cond_0
    return-void
.end method
