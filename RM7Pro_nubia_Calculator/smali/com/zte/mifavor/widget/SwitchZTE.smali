.class public Lcom/zte/mifavor/widget/SwitchZTE;
.super Landroid/widget/Switch;
.source "SwitchZTE.java"


# static fields
.field private static final STATE_DISABLE_CHECKED:[I

.field private static final STATE_DISABLE_UNCHECKED:[I

.field private static final STATE_ENABLE_CHECKED:[I

.field private static final STATE_ENABLE_UNCHECKED:[I

.field public static final STATE_THMB_CHECKED:[I

.field public static final STATE_THMB_UNCHECKED:[I

.field private static TAG:Ljava/lang/String;


# instance fields
.field mCheckedBgColor:I

.field mCheckedThumbColor:I

.field private mContext:Landroid/content/Context;

.field private mOnActionBar:Z

.field mUnCheckedBgColor:I

.field mUnCheckedThumbColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    .line 60
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_THMB_UNCHECKED:[I

    .line 63
    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_THMB_CHECKED:[I

    .line 66
    new-array v1, v0, [I

    fill-array-data v1, :array_2

    sput-object v1, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_ENABLE_UNCHECKED:[I

    .line 69
    new-array v1, v0, [I

    fill-array-data v1, :array_3

    sput-object v1, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_ENABLE_CHECKED:[I

    .line 72
    new-array v1, v0, [I

    fill-array-data v1, :array_4

    sput-object v1, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_DISABLE_UNCHECKED:[I

    .line 75
    new-array v0, v0, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_DISABLE_CHECKED:[I

    const-string v0, "SwitchZTE"

    .line 78
    sput-object v0, Lcom/zte/mifavor/widget/SwitchZTE;->TAG:Ljava/lang/String;

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
        0x101009e
        -0x10100a0
    .end array-data

    :array_3
    .array-data 4
        0x101009e
        0x10100a0
    .end array-data

    :array_4
    .array-data 4
        -0x101009e
        -0x10100a0
    .end array-data

    :array_5
    .array-data 4
        -0x101009e
        0x10100a0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 92
    invoke-direct {p0, p1, v0}, Lcom/zte/mifavor/widget/SwitchZTE;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 105
    sget v0, Lcom/zte/extres/R$attr;->switchStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/zte/mifavor/widget/SwitchZTE;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 120
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, -0x1

    .line 79
    iput p2, p0, Lcom/zte/mifavor/widget/SwitchZTE;->mCheckedThumbColor:I

    .line 80
    iput p2, p0, Lcom/zte/mifavor/widget/SwitchZTE;->mUnCheckedThumbColor:I

    .line 81
    iput p2, p0, Lcom/zte/mifavor/widget/SwitchZTE;->mCheckedBgColor:I

    .line 82
    iput p2, p0, Lcom/zte/mifavor/widget/SwitchZTE;->mUnCheckedBgColor:I

    const/4 p2, 0x0

    .line 84
    iput-boolean p2, p0, Lcom/zte/mifavor/widget/SwitchZTE;->mOnActionBar:Z

    const-string p2, ""

    .line 121
    invoke-virtual {p0, p2}, Lcom/zte/mifavor/widget/SwitchZTE;->setTextOn(Ljava/lang/CharSequence;)V

    const-string p2, ""

    .line 122
    invoke-virtual {p0, p2}, Lcom/zte/mifavor/widget/SwitchZTE;->setTextOff(Ljava/lang/CharSequence;)V

    .line 123
    iput-object p1, p0, Lcom/zte/mifavor/widget/SwitchZTE;->mContext:Landroid/content/Context;

    .line 149
    iget-object p1, p0, Lcom/zte/mifavor/widget/SwitchZTE;->mContext:Landroid/content/Context;

    sget p2, Lcom/zte/extres/R$drawable;->switch_thumb_drawable_zte:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/SwitchZTE;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 150
    iget-object p1, p0, Lcom/zte/mifavor/widget/SwitchZTE;->mContext:Landroid/content/Context;

    sget p2, Lcom/zte/extres/R$drawable;->switch_track_drawable_zte:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/SwitchZTE;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 155
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, -0x1

    .line 79
    iput p1, p0, Lcom/zte/mifavor/widget/SwitchZTE;->mCheckedThumbColor:I

    .line 80
    iput p1, p0, Lcom/zte/mifavor/widget/SwitchZTE;->mUnCheckedThumbColor:I

    .line 81
    iput p1, p0, Lcom/zte/mifavor/widget/SwitchZTE;->mCheckedBgColor:I

    .line 82
    iput p1, p0, Lcom/zte/mifavor/widget/SwitchZTE;->mUnCheckedBgColor:I

    const/4 p1, 0x0

    .line 84
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/SwitchZTE;->mOnActionBar:Z

    return-void
.end method

.method private SetColorForAndroid50(IIII)V
    .locals 8

    .line 202
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/zte/extres/R$integer;->switch_track_disable_alpha:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 203
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/zte/extres/R$integer;->switch_thumb_disable_alpha:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 204
    new-instance v2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 205
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/zte/extres/R$drawable;->switch_track_off_bg:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 207
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/zte/extres/R$drawable;->switch_track_off_bg:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v4

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 208
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/zte/extres/R$drawable;->switch_track_off_bg:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v5

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 210
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/zte/extres/R$drawable;->switch_track_off_bg:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v6

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 212
    invoke-virtual {v4, p3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 213
    sget-object v7, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_ENABLE_CHECKED:[I

    invoke-virtual {v2, v7, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 214
    invoke-virtual {v3, p4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 215
    sget-object v4, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_ENABLE_UNCHECKED:[I

    invoke-virtual {v2, v4, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 216
    invoke-virtual {v6, p3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 217
    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 218
    sget-object p3, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_DISABLE_CHECKED:[I

    invoke-virtual {v2, p3, v6}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 219
    invoke-virtual {v5, p4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 220
    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 221
    sget-object p3, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_DISABLE_UNCHECKED:[I

    invoke-virtual {v2, p3, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 223
    new-instance p3, Landroid/graphics/drawable/AnimatedStateListDrawable;

    invoke-direct {p3}, Landroid/graphics/drawable/AnimatedStateListDrawable;-><init>()V

    .line 227
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v0, Lcom/zte/extres/R$drawable;->btn_switch:I

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p4

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 228
    invoke-virtual {p4, p2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 229
    invoke-virtual {p4, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 230
    sget-object v0, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_DISABLE_UNCHECKED:[I

    const/4 v3, 0x0

    invoke-virtual {p3, v0, p4, v3}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;I)V

    .line 233
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v0, Lcom/zte/extres/R$drawable;->btn_switch:I

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p4

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 234
    invoke-virtual {p4, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 235
    sget-object v0, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_ENABLE_CHECKED:[I

    sget v4, Lcom/zte/extres/R$id;->on:I

    invoke-virtual {p3, v0, p4, v4}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;I)V

    .line 237
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v0, Lcom/zte/extres/R$drawable;->btn_switch:I

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p4

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 238
    invoke-virtual {p4, p2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 239
    sget-object p2, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_ENABLE_UNCHECKED:[I

    sget v0, Lcom/zte/extres/R$id;->off:I

    invoke-virtual {p3, p2, p4, v0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;I)V

    .line 241
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p4, Lcom/zte/extres/R$drawable;->btn_switch:I

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 242
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 243
    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 244
    sget-object p1, Lcom/zte/mifavor/widget/SwitchZTE;->STATE_DISABLE_CHECKED:[I

    invoke-virtual {p3, p1, p2, v3}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;I)V

    .line 246
    invoke-virtual {p0, p3}, Lcom/zte/mifavor/widget/SwitchZTE;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 247
    invoke-virtual {p0, v2}, Lcom/zte/mifavor/widget/SwitchZTE;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public SetColor(I)V
    .locals 2

    .line 197
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/zte/extres/R$color;->mfv_common_sw_off:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/zte/mifavor/widget/SwitchZTE;->SetColor(II)V

    return-void
.end method

.method public SetColor(II)V
    .locals 0

    return-void
.end method

.method public SetColor(IIII)V
    .locals 1

    .line 168
    iget v0, p0, Lcom/zte/mifavor/widget/SwitchZTE;->mCheckedThumbColor:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/zte/mifavor/widget/SwitchZTE;->mUnCheckedThumbColor:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/zte/mifavor/widget/SwitchZTE;->mCheckedBgColor:I

    if-ne v0, p3, :cond_0

    iget v0, p0, Lcom/zte/mifavor/widget/SwitchZTE;->mUnCheckedBgColor:I

    if-ne v0, p4, :cond_0

    .line 170
    sget-object p1, Lcom/zte/mifavor/widget/SwitchZTE;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "do nothing: checkedThumbColor="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/zte/mifavor/widget/SwitchZTE;->mCheckedThumbColor:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", unCheckedThumbColor="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/zte/mifavor/widget/SwitchZTE;->mUnCheckedThumbColor:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", checkedBgColor="

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", unCheckedBgColor="

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 175
    :cond_0
    iput p1, p0, Lcom/zte/mifavor/widget/SwitchZTE;->mCheckedThumbColor:I

    .line 176
    iput p2, p0, Lcom/zte/mifavor/widget/SwitchZTE;->mUnCheckedThumbColor:I

    .line 177
    iput p3, p0, Lcom/zte/mifavor/widget/SwitchZTE;->mCheckedBgColor:I

    .line 178
    iput p4, p0, Lcom/zte/mifavor/widget/SwitchZTE;->mUnCheckedBgColor:I

    .line 180
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/SwitchZTE;->mOnActionBar:Z

    if-eqz v0, :cond_1

    .line 181
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/zte/extres/R$color;->mfv_common_acb_sw_on:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/zte/extres/R$color;->mfv_common_acb_sw_off:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    .line 182
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/zte/extres/R$color;->mfv_common_acb_sw_bg_on:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v0, Lcom/zte/extres/R$color;->mfv_common_acb_sw_bg_off:I

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p4

    .line 181
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zte/mifavor/widget/SwitchZTE;->SetColorForAndroid50(IIII)V

    goto :goto_0

    .line 184
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zte/mifavor/widget/SwitchZTE;->SetColorForAndroid50(IIII)V

    :goto_0
    return-void
.end method

.method public SetOnActionBar(Z)V
    .locals 4

    .line 160
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/SwitchZTE;->mOnActionBar:Z

    .line 161
    iget-boolean p1, p0, Lcom/zte/mifavor/widget/SwitchZTE;->mOnActionBar:Z

    if-eqz p1, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/zte/extres/R$color;->mfv_common_acb_sw_on:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/zte/extres/R$color;->mfv_common_acb_sw_off:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 163
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/zte/extres/R$color;->mfv_common_acb_sw_bg_on:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/zte/extres/R$color;->mfv_common_acb_sw_bg_off:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 162
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/zte/mifavor/widget/SwitchZTE;->SetColorForAndroid50(IIII)V

    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 1

    .line 252
    invoke-super {p0, p1, p2}, Landroid/widget/Switch;->onMeasure(II)V

    .line 254
    :try_start_0
    const-class p1, Landroid/widget/Switch;

    const-string p2, "mSwitchWidth"

    .line 255
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 p2, 0x1

    .line 256
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 257
    iget-object p2, p0, Lcom/zte/mifavor/widget/SwitchZTE;->mContext:Landroid/content/Context;

    const/16 v0, 0x28

    invoke-static {p2, v0}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 258
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/SwitchZTE;->getMeasuredWidthAndState()I

    move-result p1

    iget-object p2, p0, Lcom/zte/mifavor/widget/SwitchZTE;->mContext:Landroid/content/Context;

    invoke-static {p2, v0}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result p2

    if-ne p1, p2, :cond_0

    .line 259
    iget-object p1, p0, Lcom/zte/mifavor/widget/SwitchZTE;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result p1

    iget-object p2, p0, Lcom/zte/mifavor/widget/SwitchZTE;->mContext:Landroid/content/Context;

    const/16 v0, 0x18

    invoke-static {p2, v0}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/zte/mifavor/widget/SwitchZTE;->setMeasuredDimension(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 262
    sget-object p1, Lcom/zte/mifavor/widget/SwitchZTE;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method
