.class public Lcom/zte/mifavor/widget/CheckedTextViewMutiZTE;
.super Landroid/widget/CheckedTextView;
.source "CheckedTextViewMutiZTE.java"


# static fields
.field private static final STATE_DISABLE_CHECKED:[I

.field private static final STATE_DISABLE_UNCHECKED:[I

.field private static final STATE_ENABLE_CHECKED:[I

.field private static final STATE_ENABLE_UNCHECKED:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    .line 39
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/zte/mifavor/widget/CheckedTextViewMutiZTE;->STATE_ENABLE_UNCHECKED:[I

    .line 42
    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Lcom/zte/mifavor/widget/CheckedTextViewMutiZTE;->STATE_ENABLE_CHECKED:[I

    .line 45
    new-array v1, v0, [I

    fill-array-data v1, :array_2

    sput-object v1, Lcom/zte/mifavor/widget/CheckedTextViewMutiZTE;->STATE_DISABLE_UNCHECKED:[I

    .line 48
    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/zte/mifavor/widget/CheckedTextViewMutiZTE;->STATE_DISABLE_CHECKED:[I

    return-void

    :array_0
    .array-data 4
        0x101009e
        -0x10100a0
    .end array-data

    :array_1
    .array-data 4
        0x101009e
        0x10100a0
    .end array-data

    :array_2
    .array-data 4
        -0x101009e
        -0x10100a0
    .end array-data

    :array_3
    .array-data 4
        -0x101009e
        0x10100a0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 54
    invoke-direct {p0, p1}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;)V

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/zte/extres/R$color;->mfv_common_cb_on:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 56
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/CheckedTextViewMutiZTE;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/CheckedTextViewMutiZTE;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/zte/extres/R$color;->mfv_common_cb_on:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 63
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/CheckedTextViewMutiZTE;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/CheckedTextViewMutiZTE;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/zte/extres/R$color;->mfv_common_cb_on:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 70
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/CheckedTextViewMutiZTE;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/CheckedTextViewMutiZTE;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 74
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/zte/extres/R$color;->mfv_common_cb_on:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 77
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/CheckedTextViewMutiZTE;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/CheckedTextViewMutiZTE;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 16

    move/from16 v0, p1

    .line 82
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/widget/CheckedTextViewMutiZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/zte/extres/R$color;->mfv_common_cb_off:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 84
    new-instance v2, Landroid/graphics/drawable/AnimatedStateListDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/AnimatedStateListDrawable;-><init>()V

    .line 89
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/widget/CheckedTextViewMutiZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/zte/extres/R$drawable;->btn_check_to_on_mtrl_007:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    const/16 v4, 0x1f

    .line 90
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 91
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 92
    sget-object v5, Lcom/zte/mifavor/widget/CheckedTextViewMutiZTE;->STATE_DISABLE_CHECKED:[I

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v3, v6}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;I)V

    .line 95
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/widget/CheckedTextViewMutiZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/zte/extres/R$drawable;->btn_check_to_on_mtrl_000:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    .line 96
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 97
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 98
    sget-object v4, Lcom/zte/mifavor/widget/CheckedTextViewMutiZTE;->STATE_DISABLE_UNCHECKED:[I

    invoke-virtual {v2, v4, v3, v6}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;I)V

    .line 101
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/widget/CheckedTextViewMutiZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/zte/extres/R$drawable;->btn_check_to_on_mtrl_007:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    const/16 v4, 0xff

    .line 102
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 103
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 104
    sget-object v5, Lcom/zte/mifavor/widget/CheckedTextViewMutiZTE;->STATE_ENABLE_CHECKED:[I

    sget v7, Lcom/zte/extres/R$id;->on:I

    invoke-virtual {v2, v5, v3, v7}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;I)V

    .line 107
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/widget/CheckedTextViewMutiZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/zte/extres/R$drawable;->btn_check_to_on_mtrl_000:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    .line 108
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 109
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 110
    sget-object v4, Lcom/zte/mifavor/widget/CheckedTextViewMutiZTE;->STATE_ENABLE_UNCHECKED:[I

    sget v5, Lcom/zte/extres/R$id;->off:I

    invoke-virtual {v2, v4, v3, v5}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;I)V

    .line 113
    sget v3, Lcom/zte/extres/R$id;->off:I

    .line 114
    sget v4, Lcom/zte/extres/R$id;->on:I

    .line 116
    new-instance v5, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 118
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/widget/CheckedTextViewMutiZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_check_to_on_mtrl_000:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/BitmapDrawable;

    .line 119
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    const/16 v8, 0xf

    .line 120
    invoke-virtual {v5, v7, v8}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 122
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/widget/CheckedTextViewMutiZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/zte/extres/R$drawable;->btn_check_to_on_mtrl_001:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    check-cast v9, Landroid/graphics/drawable/BitmapDrawable;

    .line 123
    invoke-virtual {v9, v1}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 124
    invoke-virtual {v5, v9, v8}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 126
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/widget/CheckedTextViewMutiZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/zte/extres/R$drawable;->btn_check_to_on_mtrl_002:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    check-cast v10, Landroid/graphics/drawable/BitmapDrawable;

    .line 127
    invoke-virtual {v10, v1}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 128
    invoke-virtual {v5, v10, v8}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 130
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/widget/CheckedTextViewMutiZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/zte/extres/R$drawable;->btn_check_to_on_mtrl_003:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    check-cast v11, Landroid/graphics/drawable/BitmapDrawable;

    .line 131
    invoke-virtual {v11, v1}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 132
    invoke-virtual {v5, v11, v8}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 134
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/widget/CheckedTextViewMutiZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_check_to_on_mtrl_004:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    check-cast v12, Landroid/graphics/drawable/BitmapDrawable;

    .line 135
    invoke-virtual {v12, v0}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 136
    invoke-virtual {v5, v12, v8}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 138
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/widget/CheckedTextViewMutiZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    sget v14, Lcom/zte/extres/R$drawable;->btn_check_to_on_mtrl_005:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    check-cast v13, Landroid/graphics/drawable/BitmapDrawable;

    .line 139
    invoke-virtual {v13, v0}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 140
    invoke-virtual {v5, v13, v8}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 142
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/widget/CheckedTextViewMutiZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_check_to_on_mtrl_006:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    check-cast v14, Landroid/graphics/drawable/BitmapDrawable;

    .line 143
    invoke-virtual {v14, v0}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 144
    invoke-virtual {v5, v14, v8}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 146
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/widget/CheckedTextViewMutiZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v6, Lcom/zte/extres/R$drawable;->btn_check_to_on_mtrl_007:I

    invoke-virtual {v15, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    .line 147
    invoke-virtual {v6, v0}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 148
    invoke-virtual {v5, v6, v8}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    const/4 v15, 0x0

    .line 150
    invoke-virtual {v2, v3, v4, v5, v15}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addTransition(IILandroid/graphics/drawable/Drawable;Z)V

    .line 153
    sget v3, Lcom/zte/extres/R$id;->on:I

    .line 154
    sget v4, Lcom/zte/extres/R$id;->off:I

    .line 156
    new-instance v5, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 158
    invoke-virtual {v6, v0}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 159
    invoke-virtual {v5, v6, v8}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 161
    invoke-virtual {v14, v0}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 162
    invoke-virtual {v5, v14, v8}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 164
    invoke-virtual {v13, v0}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 165
    invoke-virtual {v5, v13, v8}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 167
    invoke-virtual {v12, v0}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 168
    invoke-virtual {v5, v12, v8}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 170
    invoke-virtual {v11, v1}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 171
    invoke-virtual {v5, v11, v8}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 173
    invoke-virtual {v10, v1}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 174
    invoke-virtual {v5, v10, v8}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 176
    invoke-virtual {v9, v1}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 177
    invoke-virtual {v5, v9, v8}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 179
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 180
    invoke-virtual {v5, v7, v8}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    const/4 v0, 0x0

    .line 182
    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addTransition(IILandroid/graphics/drawable/Drawable;Z)V

    return-object v2
.end method
