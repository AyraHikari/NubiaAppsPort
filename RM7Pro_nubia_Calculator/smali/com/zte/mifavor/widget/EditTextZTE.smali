.class public Lcom/zte/mifavor/widget/EditTextZTE;
.super Landroid/widget/EditText;
.source "EditTextZTE.java"


# static fields
.field private static final STATE_DEFAULT:[I

.field private static final STATE_FOCUSED:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    .line 51
    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x101009c

    aput v3, v1, v2

    sput-object v1, Lcom/zte/mifavor/widget/EditTextZTE;->STATE_FOCUSED:[I

    .line 54
    new-array v0, v0, [I

    const v1, -0x101009c

    aput v1, v0, v2

    sput-object v0, Lcom/zte/mifavor/widget/EditTextZTE;->STATE_DEFAULT:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1, v0}, Lcom/zte/mifavor/widget/EditTextZTE;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101006e

    .line 64
    invoke-direct {p0, p1, p2, v0}, Lcom/zte/mifavor/widget/EditTextZTE;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/zte/mifavor/widget/EditTextZTE;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 72
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/zte/extres/R$color;->mfv_common_tf_fc:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/zte/extres/R$color;->mfv_common_tf:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    const-string p3, "EditTextZTE"

    .line 77
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "color ="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-virtual {p0, p2, p1}, Lcom/zte/mifavor/widget/EditTextZTE;->SetColor(II)V

    return-void
.end method


# virtual methods
.method public SetColor(I)V
    .locals 2

    .line 117
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/EditTextZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/zte/extres/R$color;->mfv_common_tf:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/zte/mifavor/widget/EditTextZTE;->SetColor(II)V

    return-void
.end method

.method public SetColor(II)V
    .locals 4

    .line 90
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 91
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/EditTextZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/zte/extres/R$drawable;->textfield_default:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 92
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/EditTextZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/zte/extres/R$drawable;->textfield_actived:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 94
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 95
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 97
    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 99
    sget-object p2, Lcom/zte/mifavor/widget/EditTextZTE;->STATE_DEFAULT:[I

    invoke-virtual {v0, p2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 101
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    const/16 p1, 0xff

    .line 102
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 103
    sget-object p1, Lcom/zte/mifavor/widget/EditTextZTE;->STATE_FOCUSED:[I

    invoke-virtual {v0, p1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 105
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/EditTextZTE;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 106
    instance-of p2, p1, Landroid/graphics/drawable/InsetDrawable;

    if-eqz p2, :cond_0

    .line 107
    check-cast p1, Landroid/graphics/drawable/InsetDrawable;

    .line 108
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/InsetDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 109
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/EditTextZTE;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 111
    :cond_0
    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/EditTextZTE;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 p1, 0x0

    .line 84
    invoke-super {p0, p1, p1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 86
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/EditTextZTE;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/zte/extres/R$color;->mfv_common_tf_wrong:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/EditTextZTE;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/zte/extres/R$color;->mfv_common_tf:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/zte/mifavor/widget/EditTextZTE;->SetColor(II)V

    return-void
.end method
