.class public Lcom/android/gallery3d/filtershow/words/b;
.super Lcn/nubia/app/a;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/gallery3d/filtershow/words/TextColorPickerView$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/filtershow/words/b$c;
    }
.end annotation


# instance fields
.field private g:Landroid/content/Context;

.field private h:Landroid/os/Handler;

.field private i:Landroid/widget/EditText;

.field private j:Landroid/widget/TextView;

.field private k:Lcom/android/gallery3d/filtershow/words/c;

.field private l:Landroid/widget/Button;

.field private m:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/nubia/app/a;-><init>(Landroid/content/Context;I)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/words/b;->h:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/words/b;->i:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/words/b;->j:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/words/b;->k:Lcom/android/gallery3d/filtershow/words/c;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/words/b;->l:Landroid/widget/Button;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/words/b;->m:Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/words/b;->g:Landroid/content/Context;

    return-void
.end method

.method static synthetic j(Lcom/android/gallery3d/filtershow/words/b;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/gallery3d/filtershow/words/b;->h:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic k(Lcom/android/gallery3d/filtershow/words/b;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/android/gallery3d/filtershow/words/b;->i:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic l(Lcom/android/gallery3d/filtershow/words/b;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/gallery3d/filtershow/words/b;->g:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic m(Lcom/android/gallery3d/filtershow/words/b;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/android/gallery3d/filtershow/words/b;->j:Landroid/widget/TextView;

    return-object p0
.end method

.method private o()V
    .locals 3

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/words/b;->k:Lcom/android/gallery3d/filtershow/words/c;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/words/c;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/words/b;->k:Lcom/android/gallery3d/filtershow/words/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/words/c;->k(Z)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/words/b;->l:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/words/b;->g:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070064

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/words/b;->k:Lcom/android/gallery3d/filtershow/words/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/words/c;->k(Z)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/words/b;->l:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/words/b;->g:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070065

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private q()V
    .locals 3

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/words/b;->k:Lcom/android/gallery3d/filtershow/words/c;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/words/c;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/words/b;->k:Lcom/android/gallery3d/filtershow/words/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/words/c;->l(Z)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/words/b;->m:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/words/b;->g:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070086

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/words/b;->k:Lcom/android/gallery3d/filtershow/words/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/words/c;->l(Z)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/words/b;->m:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/words/b;->g:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070087

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/words/b;->k:Lcom/android/gallery3d/filtershow/words/c;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/words/c;->i(I)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/words/b;->k:Lcom/android/gallery3d/filtershow/words/c;

    invoke-virtual {p1, p2}, Lcom/android/gallery3d/filtershow/words/c;->h(I)V

    return-void
.end method

.method public n()Lcom/android/gallery3d/filtershow/words/c;
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/words/b;->i:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/words/b;->k:Lcom/android/gallery3d/filtershow/words/c;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/filtershow/words/c;->j(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/words/b;->k:Lcom/android/gallery3d/filtershow/words/c;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f080048

    if-eq p1, v0, :cond_1

    const v0, 0x7f080056

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/words/b;->q()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/words/b;->o()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0063

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/app/a;->i(Landroid/view/View;)V

    const v1, 0x7f080292

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/words/b;->i:Landroid/widget/EditText;

    new-instance v3, Lcom/android/gallery3d/filtershow/words/b$c;

    invoke-direct {v3, p0, v2}, Lcom/android/gallery3d/filtershow/words/b$c;-><init>(Lcom/android/gallery3d/filtershow/words/b;Lcom/android/gallery3d/filtershow/words/b$a;)V

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/words/b;->i:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/words/b;->k:Lcom/android/gallery3d/filtershow/words/c;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/words/c;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/words/b;->i:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/words/b;->i:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelected(Z)V

    const v1, 0x7f080293

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/words/b;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/words/b;->g:Landroid/content/Context;

    const v3, 0x7f0e0141

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/words/b;->i:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/16 v4, 0xf

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/words/b;->j:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f080264

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/words/TextColorPickerView;

    invoke-virtual {v1, p0}, Lcom/android/gallery3d/filtershow/words/TextColorPickerView;->setOnTextColorChangedListener(Lcom/android/gallery3d/filtershow/words/TextColorPickerView$a;)V

    const v3, 0x7f080048

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/gallery3d/filtershow/words/b;->l:Landroid/widget/Button;

    const v3, 0x7f080056

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/words/b;->m:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/words/b;->l:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/words/b;->m:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/words/b;->k:Lcom/android/gallery3d/filtershow/words/c;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/words/c;->e()Z

    move-result v0

    if-ne v2, v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/words/b;->l:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/words/b;->g:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070065

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/words/b;->l:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/words/b;->g:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070064

    :goto_0
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/words/b;->k:Lcom/android/gallery3d/filtershow/words/c;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/words/c;->f()Z

    move-result v0

    if-ne v2, v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/words/b;->m:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/words/b;->g:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070087

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/words/b;->m:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/words/b;->g:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070086

    :goto_1
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/words/b;->k:Lcom/android/gallery3d/filtershow/words/c;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/words/c;->c()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/filtershow/words/TextColorPickerView;->setCurrentIndex(I)V

    const/4 v0, -0x2

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/words/b;->g:Landroid/content/Context;

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/gallery3d/filtershow/words/b$a;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/filtershow/words/b$a;-><init>(Lcom/android/gallery3d/filtershow/words/b;)V

    invoke-virtual {p0, v0, v1, v2}, Lcn/nubia/app/a;->h(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/words/b;->g:Landroid/content/Context;

    const v2, 0x104000a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/gallery3d/filtershow/words/b$b;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/filtershow/words/b$b;-><init>(Lcom/android/gallery3d/filtershow/words/b;)V

    invoke-virtual {p0, v0, v1, v2}, Lcn/nubia/app/a;->h(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-super {p0, p1}, Lcn/nubia/app/a;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public p(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/words/b;->h:Landroid/os/Handler;

    return-void
.end method

.method public r(Lcom/android/gallery3d/filtershow/words/c;)V
    .locals 1

    new-instance v0, Lcom/android/gallery3d/filtershow/words/c;

    invoke-direct {v0, p1}, Lcom/android/gallery3d/filtershow/words/c;-><init>(Lcom/android/gallery3d/filtershow/words/c;)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/words/b;->k:Lcom/android/gallery3d/filtershow/words/c;

    return-void
.end method
