.class public Lcom/zte/mifavor/widget/CheckedTextViewZTE;
.super Landroid/widget/CheckedTextView;
.source "CheckedTextViewZTE.java"

# interfaces
.implements Lcom/zte/mifavor/widget/FontScaleSupport;


# static fields
.field private static final DEBUG:Z = false

.field private static final STATE_DISABLE_CHECKED:[I

.field private static final STATE_DISABLE_UNCHECKED:[I

.field private static final STATE_ENABLE_CHECKED:[I

.field private static final STATE_ENABLE_UNCHECKED:[I

.field private static final TAG:Ljava/lang/String; = "CheckedTextViewZTE"


# instance fields
.field private mFontScale:Lcom/zte/mifavor/widget/FontScale;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    .line 42
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/zte/mifavor/widget/CheckedTextViewZTE;->STATE_ENABLE_UNCHECKED:[I

    .line 45
    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Lcom/zte/mifavor/widget/CheckedTextViewZTE;->STATE_ENABLE_CHECKED:[I

    .line 48
    new-array v1, v0, [I

    fill-array-data v1, :array_2

    sput-object v1, Lcom/zte/mifavor/widget/CheckedTextViewZTE;->STATE_DISABLE_UNCHECKED:[I

    .line 51
    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/zte/mifavor/widget/CheckedTextViewZTE;->STATE_DISABLE_CHECKED:[I

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

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, v0}, Lcom/zte/mifavor/widget/CheckedTextViewZTE;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x10103c8

    .line 62
    invoke-direct {p0, p1, p2, v0}, Lcom/zte/mifavor/widget/CheckedTextViewZTE;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/zte/mifavor/widget/CheckedTextViewZTE;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 70
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 55
    new-instance v0, Lcom/zte/mifavor/widget/FontScale;

    invoke-direct {v0}, Lcom/zte/mifavor/widget/FontScale;-><init>()V

    iput-object v0, p0, Lcom/zte/mifavor/widget/CheckedTextViewZTE;->mFontScale:Lcom/zte/mifavor/widget/FontScale;

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/zte/extres/R$color;->mfv_common_rb_on:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/zte/extres/R$color;->mfv_common_rb_off:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 73
    invoke-direct {p0, v0, p1}, Lcom/zte/mifavor/widget/CheckedTextViewZTE;->getDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/CheckedTextViewZTE;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 74
    iget-object p1, p0, Lcom/zte/mifavor/widget/CheckedTextViewZTE;->mFontScale:Lcom/zte/mifavor/widget/FontScale;

    invoke-virtual {p1, p0, p2, p3, p4}, Lcom/zte/mifavor/widget/FontScale;->init(Landroid/widget/TextView;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private getDrawable(II)Landroid/graphics/drawable/Drawable;
    .locals 16

    move/from16 v0, p1

    move/from16 v1, p2

    .line 79
    new-instance v2, Landroid/graphics/drawable/AnimatedStateListDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/AnimatedStateListDrawable;-><init>()V

    .line 84
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/widget/CheckedTextViewZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/zte/extres/R$drawable;->btn_radio_to_on_mtrl_007:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    const/16 v4, 0x1f

    .line 85
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 86
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 87
    sget-object v5, Lcom/zte/mifavor/widget/CheckedTextViewZTE;->STATE_DISABLE_CHECKED:[I

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v3, v6}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;I)V

    .line 90
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/widget/CheckedTextViewZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/zte/extres/R$drawable;->btn_radio_to_on_mtrl_000:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    .line 91
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 92
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 93
    sget-object v4, Lcom/zte/mifavor/widget/CheckedTextViewZTE;->STATE_DISABLE_UNCHECKED:[I

    invoke-virtual {v2, v4, v3, v6}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;I)V

    .line 96
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/widget/CheckedTextViewZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/zte/extres/R$drawable;->btn_radio_to_on_mtrl_007:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    const/16 v4, 0xff

    .line 97
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 98
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 99
    sget-object v5, Lcom/zte/mifavor/widget/CheckedTextViewZTE;->STATE_ENABLE_CHECKED:[I

    sget v7, Lcom/zte/extres/R$id;->on:I

    invoke-virtual {v2, v5, v3, v7}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;I)V

    .line 102
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/widget/CheckedTextViewZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/zte/extres/R$drawable;->btn_radio_to_on_mtrl_000:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    .line 103
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 104
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 105
    sget-object v4, Lcom/zte/mifavor/widget/CheckedTextViewZTE;->STATE_ENABLE_UNCHECKED:[I

    sget v5, Lcom/zte/extres/R$id;->off:I

    invoke-virtual {v2, v4, v3, v5}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;I)V

    .line 108
    sget v3, Lcom/zte/extres/R$id;->off:I

    .line 109
    sget v4, Lcom/zte/extres/R$id;->on:I

    .line 111
    new-instance v5, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 113
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/widget/CheckedTextViewZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->btn_radio_to_on_mtrl_000:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/BitmapDrawable;

    .line 114
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    const/16 v8, 0xf

    .line 115
    invoke-virtual {v5, v7, v8}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 117
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/widget/CheckedTextViewZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/zte/extres/R$drawable;->btn_radio_to_on_mtrl_001:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    check-cast v9, Landroid/graphics/drawable/BitmapDrawable;

    .line 118
    invoke-virtual {v9, v1}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 119
    invoke-virtual {v5, v9, v8}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 121
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/widget/CheckedTextViewZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/zte/extres/R$drawable;->btn_radio_to_on_mtrl_002:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    check-cast v10, Landroid/graphics/drawable/BitmapDrawable;

    .line 122
    invoke-virtual {v10, v1}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 123
    invoke-virtual {v5, v10, v8}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 125
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/widget/CheckedTextViewZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/zte/extres/R$drawable;->btn_radio_to_on_mtrl_003:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    check-cast v11, Landroid/graphics/drawable/BitmapDrawable;

    .line 126
    invoke-virtual {v11, v1}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 127
    invoke-virtual {v5, v11, v8}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 129
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/widget/CheckedTextViewZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/zte/extres/R$drawable;->btn_radio_to_on_mtrl_004:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    check-cast v12, Landroid/graphics/drawable/BitmapDrawable;

    .line 130
    invoke-virtual {v12, v0}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 131
    invoke-virtual {v5, v12, v8}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 133
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/widget/CheckedTextViewZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    sget v14, Lcom/zte/extres/R$drawable;->btn_radio_to_on_mtrl_005:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    check-cast v13, Landroid/graphics/drawable/BitmapDrawable;

    .line 134
    invoke-virtual {v13, v0}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 135
    invoke-virtual {v5, v13, v8}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 137
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/widget/CheckedTextViewZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/zte/extres/R$drawable;->btn_radio_to_on_mtrl_006:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    check-cast v14, Landroid/graphics/drawable/BitmapDrawable;

    .line 138
    invoke-virtual {v14, v0}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 139
    invoke-virtual {v5, v14, v8}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 141
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/widget/CheckedTextViewZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v6, Lcom/zte/extres/R$drawable;->btn_radio_to_on_mtrl_007:I

    invoke-virtual {v15, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    .line 142
    invoke-virtual {v6, v0}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 143
    invoke-virtual {v5, v6, v8}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    const/4 v15, 0x0

    .line 145
    invoke-virtual {v2, v3, v4, v5, v15}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addTransition(IILandroid/graphics/drawable/Drawable;Z)V

    .line 148
    sget v3, Lcom/zte/extres/R$id;->on:I

    .line 149
    sget v4, Lcom/zte/extres/R$id;->off:I

    .line 151
    new-instance v5, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 153
    invoke-virtual {v6, v0}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 154
    invoke-virtual {v5, v6, v8}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 156
    invoke-virtual {v14, v0}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 157
    invoke-virtual {v5, v14, v8}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 159
    invoke-virtual {v13, v0}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 160
    invoke-virtual {v5, v13, v8}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 162
    invoke-virtual {v12, v0}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 163
    invoke-virtual {v5, v12, v8}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 165
    invoke-virtual {v11, v1}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 166
    invoke-virtual {v5, v11, v8}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 168
    invoke-virtual {v10, v1}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 169
    invoke-virtual {v5, v10, v8}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 171
    invoke-virtual {v9, v1}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 172
    invoke-virtual {v5, v9, v8}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 174
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 175
    invoke-virtual {v5, v7, v8}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    const/4 v0, 0x0

    .line 177
    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addTransition(IILandroid/graphics/drawable/Drawable;Z)V

    return-object v2
.end method


# virtual methods
.method public setTextAppearance(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .line 184
    invoke-super {p0, p1}, Landroid/widget/CheckedTextView;->setTextAppearance(I)V

    .line 185
    iget-object p0, p0, Lcom/zte/mifavor/widget/CheckedTextViewZTE;->mFontScale:Lcom/zte/mifavor/widget/FontScale;

    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/FontScale;->setTextAppearance(I)V

    return-void
.end method

.method public setTextFontScale(I)V
    .locals 0

    .line 190
    iget-object p0, p0, Lcom/zte/mifavor/widget/CheckedTextViewZTE;->mFontScale:Lcom/zte/mifavor/widget/FontScale;

    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/FontScale;->setScaleType(I)V

    return-void
.end method

.method public setTextFontScale(IF)V
    .locals 0

    .line 195
    iget-object p0, p0, Lcom/zte/mifavor/widget/CheckedTextViewZTE;->mFontScale:Lcom/zte/mifavor/widget/FontScale;

    invoke-virtual {p0, p1, p2}, Lcom/zte/mifavor/widget/FontScale;->update(IF)V

    return-void
.end method
