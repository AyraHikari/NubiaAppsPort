.class public Lcom/zte/mifavor/widget/DialogButtonBar;
.super Landroid/widget/LinearLayout;
.source "DialogButtonBar.java"


# instance fields
.field private mButtons:[Landroid/view/View;

.field private mDividers:[Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x3

    .line 13
    new-array p1, p1, [Landroid/view/View;

    iput-object p1, p0, Lcom/zte/mifavor/widget/DialogButtonBar;->mButtons:[Landroid/view/View;

    const/4 p1, 0x2

    .line 14
    new-array p1, p1, [Landroid/view/View;

    iput-object p1, p0, Lcom/zte/mifavor/widget/DialogButtonBar;->mDividers:[Landroid/view/View;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x3

    .line 13
    new-array p1, p1, [Landroid/view/View;

    iput-object p1, p0, Lcom/zte/mifavor/widget/DialogButtonBar;->mButtons:[Landroid/view/View;

    const/4 p1, 0x2

    .line 14
    new-array p1, p1, [Landroid/view/View;

    iput-object p1, p0, Lcom/zte/mifavor/widget/DialogButtonBar;->mDividers:[Landroid/view/View;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x3

    .line 13
    new-array p1, p1, [Landroid/view/View;

    iput-object p1, p0, Lcom/zte/mifavor/widget/DialogButtonBar;->mButtons:[Landroid/view/View;

    const/4 p1, 0x2

    .line 14
    new-array p1, p1, [Landroid/view/View;

    iput-object p1, p0, Lcom/zte/mifavor/widget/DialogButtonBar;->mDividers:[Landroid/view/View;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x3

    .line 13
    new-array p1, p1, [Landroid/view/View;

    iput-object p1, p0, Lcom/zte/mifavor/widget/DialogButtonBar;->mButtons:[Landroid/view/View;

    const/4 p1, 0x2

    .line 14
    new-array p1, p1, [Landroid/view/View;

    iput-object p1, p0, Lcom/zte/mifavor/widget/DialogButtonBar;->mDividers:[Landroid/view/View;

    return-void
.end method

.method private ensureViews()V
    .locals 5

    .line 39
    iget-object v0, p0, Lcom/zte/mifavor/widget/DialogButtonBar;->mButtons:[Landroid/view/View;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/DialogButtonBar;->mButtons:[Landroid/view/View;

    const v2, 0x102001a

    invoke-virtual {p0, v2}, Lcom/zte/mifavor/widget/DialogButtonBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    .line 45
    iget-object v0, p0, Lcom/zte/mifavor/widget/DialogButtonBar;->mButtons:[Landroid/view/View;

    const v2, 0x102001b

    invoke-virtual {p0, v2}, Lcom/zte/mifavor/widget/DialogButtonBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    .line 46
    iget-object v0, p0, Lcom/zte/mifavor/widget/DialogButtonBar;->mButtons:[Landroid/view/View;

    const/4 v2, 0x2

    const v4, 0x1020019

    invoke-virtual {p0, v4}, Lcom/zte/mifavor/widget/DialogButtonBar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    aput-object v4, v0, v2

    .line 47
    iget-object v0, p0, Lcom/zte/mifavor/widget/DialogButtonBar;->mDividers:[Landroid/view/View;

    sget v2, Lcom/zte/extres/R$id;->divider1:I

    invoke-virtual {p0, v2}, Lcom/zte/mifavor/widget/DialogButtonBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    .line 48
    iget-object v0, p0, Lcom/zte/mifavor/widget/DialogButtonBar;->mDividers:[Landroid/view/View;

    sget v1, Lcom/zte/extres/R$id;->divider2:I

    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/DialogButtonBar;->findViewById(I)Landroid/view/View;

    move-result-object p0

    aput-object p0, v0, v3

    return-void
.end method

.method private syncVisibilityForDividers()V
    .locals 6

    .line 52
    invoke-direct {p0}, Lcom/zte/mifavor/widget/DialogButtonBar;->ensureViews()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    move-object v3, v1

    move v1, v2

    .line 56
    :goto_0
    iget-object v4, p0, Lcom/zte/mifavor/widget/DialogButtonBar;->mButtons:[Landroid/view/View;

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 57
    iget-object v4, p0, Lcom/zte/mifavor/widget/DialogButtonBar;->mButtons:[Landroid/view/View;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    .line 59
    iget-object v3, p0, Lcom/zte/mifavor/widget/DialogButtonBar;->mButtons:[Landroid/view/View;

    aget-object v3, v3, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    const/4 v4, 0x1

    if-ne v2, v1, :cond_2

    .line 64
    iget-object v1, p0, Lcom/zte/mifavor/widget/DialogButtonBar;->mDividers:[Landroid/view/View;

    aget-object v1, v1, v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 65
    iget-object p0, p0, Lcom/zte/mifavor/widget/DialogButtonBar;->mDividers:[Landroid/view/View;

    aget-object p0, p0, v4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    const/16 v1, 0x8

    if-ne v2, v4, :cond_3

    .line 67
    iget-object v2, p0, Lcom/zte/mifavor/widget/DialogButtonBar;->mDividers:[Landroid/view/View;

    aget-object v0, v2, v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 68
    iget-object p0, p0, Lcom/zte/mifavor/widget/DialogButtonBar;->mDividers:[Landroid/view/View;

    aget-object p0, p0, v4

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_3
    const/4 v5, 0x2

    if-ne v2, v5, :cond_5

    .line 70
    iget-object v2, p0, Lcom/zte/mifavor/widget/DialogButtonBar;->mButtons:[Landroid/view/View;

    aget-object v2, v2, v4

    if-ne v3, v2, :cond_4

    .line 71
    iget-object v2, p0, Lcom/zte/mifavor/widget/DialogButtonBar;->mDividers:[Landroid/view/View;

    aget-object v2, v2, v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 72
    iget-object p0, p0, Lcom/zte/mifavor/widget/DialogButtonBar;->mDividers:[Landroid/view/View;

    aget-object p0, p0, v4

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 74
    :cond_4
    iget-object v2, p0, Lcom/zte/mifavor/widget/DialogButtonBar;->mDividers:[Landroid/view/View;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 75
    iget-object p0, p0, Lcom/zte/mifavor/widget/DialogButtonBar;->mDividers:[Landroid/view/View;

    aget-object p0, p0, v4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/zte/mifavor/widget/DialogButtonBar;->syncVisibilityForDividers()V

    .line 35
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method
