.class public Lcom/zte/mifavor/widget/ButtonZTE;
.super Landroid/widget/Button;
.source "ButtonZTE.java"

# interfaces
.implements Lcom/zte/mifavor/widget/FontScaleSupport;


# instance fields
.field private mFontScale:Lcom/zte/mifavor/widget/FontScale;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 14
    invoke-direct {p0, p1, v0}, Lcom/zte/mifavor/widget/ButtonZTE;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010048

    .line 18
    invoke-direct {p0, p1, p2, v0}, Lcom/zte/mifavor/widget/ButtonZTE;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/zte/mifavor/widget/ButtonZTE;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 11
    new-instance p1, Lcom/zte/mifavor/widget/FontScale;

    invoke-direct {p1}, Lcom/zte/mifavor/widget/FontScale;-><init>()V

    iput-object p1, p0, Lcom/zte/mifavor/widget/ButtonZTE;->mFontScale:Lcom/zte/mifavor/widget/FontScale;

    .line 28
    iget-object p1, p0, Lcom/zte/mifavor/widget/ButtonZTE;->mFontScale:Lcom/zte/mifavor/widget/FontScale;

    invoke-virtual {p1, p0, p2, p3, p4}, Lcom/zte/mifavor/widget/FontScale;->init(Landroid/widget/TextView;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public setTextAppearance(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .line 33
    invoke-super {p0, p1}, Landroid/widget/Button;->setTextAppearance(I)V

    .line 34
    iget-object p0, p0, Lcom/zte/mifavor/widget/ButtonZTE;->mFontScale:Lcom/zte/mifavor/widget/FontScale;

    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/FontScale;->setTextAppearance(I)V

    return-void
.end method

.method public setTextFontScale(I)V
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/zte/mifavor/widget/ButtonZTE;->mFontScale:Lcom/zte/mifavor/widget/FontScale;

    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/FontScale;->setScaleType(I)V

    return-void
.end method

.method public setTextFontScale(IF)V
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/zte/mifavor/widget/ButtonZTE;->mFontScale:Lcom/zte/mifavor/widget/FontScale;

    invoke-virtual {p0, p1, p2}, Lcom/zte/mifavor/widget/FontScale;->update(IF)V

    return-void
.end method
