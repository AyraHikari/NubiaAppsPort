.class Lcom/android/gallery3d/filtershow/words/b$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/words/b;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/gallery3d/filtershow/words/b;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/words/b;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/words/b$b;->a:Lcom/android/gallery3d/filtershow/words/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/words/b$b;->a:Lcom/android/gallery3d/filtershow/words/b;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/words/b;->j(Lcom/android/gallery3d/filtershow/words/b;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/words/b$b;->a:Lcom/android/gallery3d/filtershow/words/b;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/words/b;->k(Lcom/android/gallery3d/filtershow/words/b;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_0

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/utils/b;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/words/b$b;->a:Lcom/android/gallery3d/filtershow/words/b;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/words/b;->l(Lcom/android/gallery3d/filtershow/words/b;)Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0e0104

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/words/b$b;->a:Lcom/android/gallery3d/filtershow/words/b;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/words/b;->j(Lcom/android/gallery3d/filtershow/words/b;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x2

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/words/b$b;->a:Lcom/android/gallery3d/filtershow/words/b;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/words/b;->j(Lcom/android/gallery3d/filtershow/words/b;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x3

    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method
