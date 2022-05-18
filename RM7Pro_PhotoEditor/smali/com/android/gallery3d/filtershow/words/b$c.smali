.class Lcom/android/gallery3d/filtershow/words/b$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/filtershow/words/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/gallery3d/filtershow/words/b;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/filtershow/words/b;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/words/b$c;->a:Lcom/android/gallery3d/filtershow/words/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/filtershow/words/b;Lcom/android/gallery3d/filtershow/words/b$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/words/b$c;-><init>(Lcom/android/gallery3d/filtershow/words/b;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xf

    if-le v0, v2, :cond_0

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/words/b$c;->a:Lcom/android/gallery3d/filtershow/words/b;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/words/b;->k(Lcom/android/gallery3d/filtershow/words/b;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/words/b$c;->a:Lcom/android/gallery3d/filtershow/words/b;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/words/b;->k(Lcom/android/gallery3d/filtershow/words/b;)Landroid/widget/EditText;

    move-result-object p1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/words/b$c;->a:Lcom/android/gallery3d/filtershow/words/b;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/words/b;->k(Lcom/android/gallery3d/filtershow/words/b;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/words/b$c;->a:Lcom/android/gallery3d/filtershow/words/b;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/words/b;->l(Lcom/android/gallery3d/filtershow/words/b;)Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0e0141

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/words/b$c;->a:Lcom/android/gallery3d/filtershow/words/b;

    invoke-static {v3}, Lcom/android/gallery3d/filtershow/words/b;->k(Lcom/android/gallery3d/filtershow/words/b;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/words/b$c;->a:Lcom/android/gallery3d/filtershow/words/b;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/words/b;->m(Lcom/android/gallery3d/filtershow/words/b;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/words/b$c;->a:Lcom/android/gallery3d/filtershow/words/b;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/words/b;->m(Lcom/android/gallery3d/filtershow/words/b;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
