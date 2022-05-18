.class public Lcom/zte/mifavor/widget/DialogTitle;
.super Lcom/zte/mifavor/widget/TextViewZTE;
.source "DialogTitle.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/TextViewZTE;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/zte/mifavor/widget/TextViewZTE;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/zte/mifavor/widget/TextViewZTE;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zte/mifavor/widget/TextViewZTE;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 3

    .line 62
    invoke-super {p0, p1, p2}, Lcom/zte/mifavor/widget/TextViewZTE;->onMeasure(II)V

    .line 64
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/DialogTitle;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 66
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    if-lez v1, :cond_1

    add-int/lit8 v1, v1, -0x1

    .line 68
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 70
    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/DialogTitle;->setSingleLine(Z)V

    const/4 v1, 0x2

    .line 71
    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/DialogTitle;->setMaxLines(I)V

    .line 73
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/DialogTitle;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/zte/extres/R$dimen;->mfvc_primary_font_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_0

    .line 76
    invoke-virtual {p0, v0, v1}, Lcom/zte/mifavor/widget/DialogTitle;->setTextSize(IF)V

    .line 79
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/zte/mifavor/widget/TextViewZTE;->onMeasure(II)V

    :cond_1
    return-void
.end method

.method public setDialogTitleColor(I)V
    .locals 0

    .line 55
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/DialogTitle;->setTextColor(I)V

    return-void
.end method
