.class Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;
.super Lcom/google/android/material/textfield/EndIconDelegate;
.source "DropdownMenuEndIconDelegate.java"


# static fields
.field private static final IS_LOLLIPOP:Z


# instance fields
.field private final dropdownMenuOnEditTextAttachedListener:Lcom/google/android/material/textfield/TextInputLayout$OnEditTextAttachedListener;

.field private dropdownPopupActivatedAt:J

.field private dropdownPopupDirty:Z

.field private final exposedDropdownEndIconTextWatcher:Landroid/text/TextWatcher;

.field private filledPopupBackground:Landroid/graphics/drawable/StateListDrawable;

.field private outlinedPopupBackground:Lcom/google/android/material/shape/MaterialShapeDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 50
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->IS_LOLLIPOP:Z

    return-void
.end method

.method constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 2

    .line 97
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/EndIconDelegate;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    const/4 p1, 0x0

    .line 52
    iput-boolean p1, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->dropdownPopupDirty:Z

    const-wide v0, 0x7fffffffffffffffL

    .line 53
    iput-wide v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->dropdownPopupActivatedAt:J

    .line 56
    new-instance p1, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$1;

    invoke-direct {p1, p0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$1;-><init>(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;)V

    iput-object p1, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->exposedDropdownEndIconTextWatcher:Landroid/text/TextWatcher;

    .line 79
    new-instance p1, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$2;

    invoke-direct {p1, p0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$2;-><init>(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;)V

    iput-object p1, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->dropdownMenuOnEditTextAttachedListener:Lcom/google/android/material/textfield/TextInputLayout$OnEditTextAttachedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;Landroid/widget/EditText;)Landroid/widget/AutoCompleteTextView;
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->castAutoCompleteTextViewOrThrow(Landroid/widget/EditText;)Landroid/widget/AutoCompleteTextView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$102(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;Z)Z
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->dropdownPopupDirty:Z

    return p1
.end method

.method static synthetic access$200(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;Landroid/widget/AutoCompleteTextView;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->setPopupBackground(Landroid/widget/AutoCompleteTextView;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;Landroid/widget/AutoCompleteTextView;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->addRippleEffect(Landroid/widget/AutoCompleteTextView;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;Landroid/widget/AutoCompleteTextView;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->setUpDropdownShowHideBehavior(Landroid/widget/AutoCompleteTextView;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;)Landroid/text/TextWatcher;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->exposedDropdownEndIconTextWatcher:Landroid/text/TextWatcher;

    return-object p0
.end method

.method static synthetic access$600(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;Landroid/widget/AutoCompleteTextView;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->showHideDropdown(Landroid/widget/AutoCompleteTextView;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;)Z
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->isDropdownPopupActive()Z

    move-result p0

    return p0
.end method

.method static synthetic access$802(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;J)J
    .locals 0

    .line 48
    iput-wide p1, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->dropdownPopupActivatedAt:J

    return-wide p1
.end method

.method private addRippleEffect(Landroid/widget/AutoCompleteTextView;)V
    .locals 9

    .line 197
    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getBoxBackgroundMode()I

    move-result v0

    .line 202
    iget-object v1, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getBoxBackground()Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v1

    .line 203
    sget v2, Lcom/google/android/material/R$attr;->colorControlHighlight:I

    invoke-static {p1, v2}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/view/View;I)I

    move-result v2

    const/4 v3, 0x2

    .line 204
    new-array v4, v3, [[I

    const/4 v5, 0x1

    new-array v6, v5, [I

    const v7, 0x10100a7

    const/4 v8, 0x0

    aput v7, v6, v8

    aput-object v6, v4, v8

    new-array v6, v8, [I

    aput-object v6, v4, v5

    if-ne v0, v3, :cond_1

    .line 210
    invoke-direct {p0, p1, v2, v4, v1}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->addRippleEffectOnOutlinedLayout(Landroid/widget/AutoCompleteTextView;I[[ILcom/google/android/material/shape/MaterialShapeDrawable;)V

    goto :goto_0

    :cond_1
    if-ne v0, v5, :cond_2

    .line 212
    invoke-direct {p0, p1, v2, v4, v1}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->addRippleEffectOnFilledLayout(Landroid/widget/AutoCompleteTextView;I[[ILcom/google/android/material/shape/MaterialShapeDrawable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private addRippleEffectOnFilledLayout(Landroid/widget/AutoCompleteTextView;I[[ILcom/google/android/material/shape/MaterialShapeDrawable;)V
    .locals 4

    .line 252
    iget-object p0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getBoxBackgroundColor()I

    move-result p0

    const v0, 0x3dcccccd    # 0.1f

    .line 253
    invoke-static {p2, p0, v0}, Lcom/google/android/material/color/MaterialColors;->layer(IIF)I

    move-result p2

    const/4 v0, 0x2

    .line 254
    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 p2, 0x1

    aput p0, v1, p2

    .line 256
    sget-boolean p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->IS_LOLLIPOP:Z

    if-eqz p0, :cond_0

    .line 257
    new-instance p0, Landroid/content/res/ColorStateList;

    invoke-direct {p0, p3, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 258
    new-instance p2, Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {p2, p0, p4, p4}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 260
    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 262
    :cond_0
    new-instance p0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 263
    invoke-virtual {p4}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 264
    new-instance v3, Landroid/content/res/ColorStateList;

    invoke-direct {v3, p3, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p0, v3}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    .line 265
    new-array p3, v0, [Landroid/graphics/drawable/Drawable;

    aput-object p4, p3, v2

    aput-object p0, p3, p2

    .line 266
    new-instance p0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {p0, p3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 267
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result p2

    .line 268
    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getPaddingTop()I

    move-result p3

    .line 269
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    move-result p4

    .line 270
    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getPaddingBottom()I

    move-result v0

    .line 271
    invoke-static {p1, p0}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 272
    invoke-static {p1, p2, p3, p4, v0}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    :goto_0
    return-void
.end method

.method private addRippleEffectOnOutlinedLayout(Landroid/widget/AutoCompleteTextView;I[[ILcom/google/android/material/shape/MaterialShapeDrawable;)V
    .locals 6

    .line 222
    sget p0, Lcom/google/android/material/R$attr;->colorSurface:I

    invoke-static {p1, p0}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/view/View;I)I

    move-result p0

    .line 223
    new-instance v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 224
    invoke-virtual {p4}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    const v1, 0x3dcccccd    # 0.1f

    .line 225
    invoke-static {p2, p0, v1}, Lcom/google/android/material/color/MaterialColors;->layer(IIF)I

    move-result p2

    const/4 v1, 0x2

    .line 226
    new-array v2, v1, [I

    const/4 v3, 0x0

    aput p2, v2, v3

    const/4 v4, 0x1

    aput v3, v2, v4

    .line 227
    new-instance v5, Landroid/content/res/ColorStateList;

    invoke-direct {v5, p3, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v0, v5}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    .line 229
    sget-boolean v2, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->IS_LOLLIPOP:Z

    if-eqz v2, :cond_0

    .line 230
    invoke-virtual {v0, p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setTint(I)V

    .line 231
    new-array v2, v1, [I

    aput p2, v2, v3

    aput p0, v2, v4

    .line 232
    new-instance p0, Landroid/content/res/ColorStateList;

    invoke-direct {p0, p3, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 233
    new-instance p2, Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 234
    invoke-virtual {p4}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    const/4 p3, -0x1

    .line 235
    invoke-virtual {p2, p3}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setTint(I)V

    .line 236
    new-instance p3, Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {p3, p0, v0, p2}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 237
    new-array p0, v1, [Landroid/graphics/drawable/Drawable;

    aput-object p3, p0, v3

    aput-object p4, p0, v4

    .line 238
    new-instance p2, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {p2, p0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 240
    :cond_0
    new-array p0, v1, [Landroid/graphics/drawable/Drawable;

    aput-object v0, p0, v3

    aput-object p4, p0, v4

    .line 241
    new-instance p2, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {p2, p0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 244
    :goto_0
    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private castAutoCompleteTextViewOrThrow(Landroid/widget/EditText;)Landroid/widget/AutoCompleteTextView;
    .locals 0

    .line 336
    instance-of p0, p1, Landroid/widget/AutoCompleteTextView;

    if-eqz p0, :cond_0

    .line 342
    check-cast p1, Landroid/widget/AutoCompleteTextView;

    return-object p1

    .line 337
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "EditText needs to be an AutoCompleteTextView if an Exposed Dropdown Menu is being used."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getPopUpMaterialShapeDrawable(FFFI)Lcom/google/android/material/shape/MaterialShapeDrawable;
    .locals 1

    .line 320
    new-instance v0, Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-direct {v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;-><init>()V

    .line 321
    invoke-virtual {v0, p1, p1, p2, p2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setCornerRadii(FFFF)V

    .line 323
    iget-object p0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->context:Landroid/content/Context;

    .line 324
    invoke-static {p0, p3}, Lcom/google/android/material/shape/MaterialShapeDrawable;->createWithElevationOverlay(Landroid/content/Context;F)Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object p0

    .line 325
    invoke-virtual {p0, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    const/4 p1, 0x0

    .line 326
    invoke-virtual {p0, p1, p4, p1, p4}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setPadding(IIII)V

    return-object p0
.end method

.method private isDropdownPopupActive()Z
    .locals 4

    .line 331
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->dropdownPopupActivatedAt:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-ltz p0, :cond_1

    const-wide/16 v2, 0x12c

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private setPopupBackground(Landroid/widget/AutoCompleteTextView;)V
    .locals 2

    .line 185
    sget-boolean v0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->IS_LOLLIPOP:Z

    if-eqz v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getBoxBackgroundMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 188
    iget-object p0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->outlinedPopupBackground:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {p1, p0}, Landroid/widget/AutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 190
    iget-object p0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->filledPopupBackground:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {p1, p0}, Landroid/widget/AutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setUpDropdownShowHideBehavior(Landroid/widget/AutoCompleteTextView;)V
    .locals 1

    .line 278
    new-instance v0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$4;

    invoke-direct {v0, p0, p1}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$4;-><init>(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;Landroid/widget/AutoCompleteTextView;)V

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 293
    new-instance v0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$5;

    invoke-direct {v0, p0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$5;-><init>(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;)V

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 305
    sget-boolean v0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->IS_LOLLIPOP:Z

    if-eqz v0, :cond_0

    .line 306
    new-instance v0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$6;

    invoke-direct {v0, p0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$6;-><init>(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;)V

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setOnDismissListener(Landroid/widget/AutoCompleteTextView$OnDismissListener;)V

    :cond_0
    return-void
.end method

.method private showHideDropdown(Landroid/widget/AutoCompleteTextView;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 168
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->isDropdownPopupActive()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 169
    iput-boolean v1, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->dropdownPopupDirty:Z

    .line 171
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->dropdownPopupDirty:Z

    if-nez v0, :cond_3

    .line 172
    iget-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->toggle()V

    .line 173
    iget-object p0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {p0}, Lcom/google/android/material/internal/CheckableImageButton;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 174
    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    .line 175
    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    goto :goto_0

    .line 177
    :cond_2
    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    goto :goto_0

    .line 180
    :cond_3
    iput-boolean v1, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->dropdownPopupDirty:Z

    :goto_0
    return-void
.end method


# virtual methods
.method initialize()V
    .locals 6

    .line 102
    iget-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->context:Landroid/content/Context;

    .line 104
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$dimen;->mtrl_shape_corner_size_small_component:I

    .line 105
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    .line 106
    iget-object v1, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->context:Landroid/content/Context;

    .line 108
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/material/R$dimen;->mtrl_exposed_dropdown_menu_popup_elevation:I

    .line 109
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    .line 110
    iget-object v2, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->context:Landroid/content/Context;

    .line 112
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/android/material/R$dimen;->mtrl_exposed_dropdown_menu_popup_vertical_padding:I

    .line 113
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 117
    invoke-direct {p0, v0, v0, v1, v2}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->getPopUpMaterialShapeDrawable(FFFI)Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v3

    const/4 v4, 0x0

    .line 124
    invoke-direct {p0, v4, v0, v1, v2}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->getPopUpMaterialShapeDrawable(FFFI)Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v0

    .line 130
    iput-object v3, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->outlinedPopupBackground:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 131
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->filledPopupBackground:Landroid/graphics/drawable/StateListDrawable;

    .line 132
    iget-object v1, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->filledPopupBackground:Landroid/graphics/drawable/StateListDrawable;

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v4, 0x0

    const v5, 0x10100aa

    aput v5, v2, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 134
    iget-object v1, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->filledPopupBackground:Landroid/graphics/drawable/StateListDrawable;

    new-array v2, v4, [I

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 138
    sget-boolean v0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->IS_LOLLIPOP:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/google/android/material/R$drawable;->mtrl_dropdown_arrow:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/google/android/material/R$drawable;->mtrl_ic_arrow_drop_down:I

    .line 140
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v2, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->context:Landroid/content/Context;

    invoke-static {v2, v0}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 141
    iget-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v1, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 142
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/material/R$string;->exposed_dropdown_menu_content_description:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 141
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconContentDescription(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    new-instance v1, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$3;

    invoke-direct {v1, p0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$3;-><init>(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object p0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->dropdownMenuOnEditTextAttachedListener:Lcom/google/android/material/textfield/TextInputLayout$OnEditTextAttachedListener;

    invoke-virtual {v0, p0}, Lcom/google/android/material/textfield/TextInputLayout;->addOnEditTextAttachedListener(Lcom/google/android/material/textfield/TextInputLayout$OnEditTextAttachedListener;)V

    return-void
.end method

.method isBoxBackgroundModeSupported(I)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method shouldTintIconOnError()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
