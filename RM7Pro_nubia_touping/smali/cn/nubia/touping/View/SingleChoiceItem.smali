.class public Lcn/nubia/touping/View/SingleChoiceItem;
.super Landroid/widget/RelativeLayout;
.source "SingleChoiceItem.java"

# interfaces
.implements Landroid/widget/Checkable;


# static fields
.field private static final TYPE_DEFAULT:I = 0x1

.field private static final TYPE_WITH_TIPS:I = 0x2


# instance fields
.field private mImage:Landroid/widget/ImageView;

.field private mRoot:Landroid/view/View;

.field private mText:Landroid/widget/TextView;

.field private mTips:Landroid/widget/TextView;

.field private mType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/touping/View/SingleChoiceItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/touping/View/SingleChoiceItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    sget-object v2, Lcn/nubia/touping/R$styleable;->SingleChoiceItem:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 36
    .local v0, "array":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcn/nubia/touping/View/SingleChoiceItem;->mType:I

    .line 37
    invoke-direct {p0, p1}, Lcn/nubia/touping/View/SingleChoiceItem;->init(Landroid/content/Context;)V

    .line 39
    iget-object v2, p0, Lcn/nubia/touping/View/SingleChoiceItem;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    iget-object v2, p0, Lcn/nubia/touping/View/SingleChoiceItem;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 41
    iget v1, p0, Lcn/nubia/touping/View/SingleChoiceItem;->mType:I

    if-ne v1, v5, :cond_0

    .line 42
    iget-object v1, p0, Lcn/nubia/touping/View/SingleChoiceItem;->mTips:Landroid/widget/TextView;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    :cond_0
    return-void

    .line 40
    :cond_1
    const/4 v1, 0x4

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 47
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget v0, p0, Lcn/nubia/touping/View/SingleChoiceItem;->mType:I

    if-ne v0, v2, :cond_1

    const v0, 0x7f04005d

    :goto_0
    invoke-virtual {v1, v0, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/touping/View/SingleChoiceItem;->mRoot:Landroid/view/View;

    .line 49
    const v0, 0x7f0e0126

    invoke-virtual {p0, v0}, Lcn/nubia/touping/View/SingleChoiceItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/touping/View/SingleChoiceItem;->mText:Landroid/widget/TextView;

    .line 50
    const v0, 0x7f0e0127

    invoke-virtual {p0, v0}, Lcn/nubia/touping/View/SingleChoiceItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/touping/View/SingleChoiceItem;->mImage:Landroid/widget/ImageView;

    .line 51
    iget v0, p0, Lcn/nubia/touping/View/SingleChoiceItem;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 52
    const v0, 0x7f0e0128

    invoke-virtual {p0, v0}, Lcn/nubia/touping/View/SingleChoiceItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/touping/View/SingleChoiceItem;->mTips:Landroid/widget/TextView;

    .line 54
    :cond_0
    return-void

    .line 47
    :cond_1
    const v0, 0x7f04005e

    goto :goto_0
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcn/nubia/touping/View/SingleChoiceItem;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 2
    .param p1, "checked"    # Z

    .prologue
    .line 58
    iget-object v1, p0, Lcn/nubia/touping/View/SingleChoiceItem;->mImage:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 59
    return-void

    .line 58
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public toggle()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcn/nubia/touping/View/SingleChoiceItem;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Lcn/nubia/touping/View/SingleChoiceItem;->mImage:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 73
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lcn/nubia/touping/View/SingleChoiceItem;->mImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
