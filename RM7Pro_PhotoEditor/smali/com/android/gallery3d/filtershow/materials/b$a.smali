.class Lcom/android/gallery3d/filtershow/materials/b$a;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/materials/b;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/gallery3d/filtershow/materials/d;Lcom/android/gallery3d/filtershow/materials/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/gallery3d/filtershow/materials/b;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/materials/b;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/materials/b$a;->a:Lcom/android/gallery3d/filtershow/materials/b;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/materials/b$a;->a:Lcom/android/gallery3d/filtershow/materials/b;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/materials/b;->a(Lcom/android/gallery3d/filtershow/materials/b;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/materials/b$a;->a:Lcom/android/gallery3d/filtershow/materials/b;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/materials/b;->b(Lcom/android/gallery3d/filtershow/materials/b;)Landroid/widget/LinearLayout;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/materials/b$a;->a:Lcom/android/gallery3d/filtershow/materials/b;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/materials/b;->f(Lcom/android/gallery3d/filtershow/materials/b;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/materials/b$a;->a:Lcom/android/gallery3d/filtershow/materials/b;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/materials/b;->b(Lcom/android/gallery3d/filtershow/materials/b;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/materials/b$a;->a:Lcom/android/gallery3d/filtershow/materials/b;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/materials/b;->a(Lcom/android/gallery3d/filtershow/materials/b;)Landroid/widget/TextView;

    move-result-object p1

    const v1, 0x7f0e0061

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/materials/b$a;->a:Lcom/android/gallery3d/filtershow/materials/b;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/materials/b;->a(Lcom/android/gallery3d/filtershow/materials/b;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/materials/b$a;->a:Lcom/android/gallery3d/filtershow/materials/b;

    invoke-static {p1, v2}, Lcom/android/gallery3d/filtershow/materials/b;->g(Lcom/android/gallery3d/filtershow/materials/b;Z)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/materials/b$a;->a:Lcom/android/gallery3d/filtershow/materials/b;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/materials/b;->a(Lcom/android/gallery3d/filtershow/materials/b;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/materials/b$a;->a:Lcom/android/gallery3d/filtershow/materials/b;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/materials/b;->b(Lcom/android/gallery3d/filtershow/materials/b;)Landroid/widget/LinearLayout;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/materials/b$a;->a:Lcom/android/gallery3d/filtershow/materials/b;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/materials/b;->e(Lcom/android/gallery3d/filtershow/materials/b;)Landroid/widget/ProgressBar;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/materials/b$a;->a:Lcom/android/gallery3d/filtershow/materials/b;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/materials/b;->e(Lcom/android/gallery3d/filtershow/materials/b;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/materials/b$a;->a:Lcom/android/gallery3d/filtershow/materials/b;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/materials/b;->b(Lcom/android/gallery3d/filtershow/materials/b;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/materials/b$a;->a:Lcom/android/gallery3d/filtershow/materials/b;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/materials/b;->a(Lcom/android/gallery3d/filtershow/materials/b;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method
