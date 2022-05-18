.class Lcom/android/gallery3d/filtershow/materials/MaterialActivity$a;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/filtershow/materials/MaterialActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/gallery3d/filtershow/materials/MaterialActivity;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/materials/MaterialActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity$a;->a:Lcom/android/gallery3d/filtershow/materials/MaterialActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    const/4 p1, 0x4

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity$a;->a:Lcom/android/gallery3d/filtershow/materials/MaterialActivity;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->m()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity$a;->a:Lcom/android/gallery3d/filtershow/materials/MaterialActivity;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->b(Lcom/android/gallery3d/filtershow/materials/MaterialActivity;)Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity$a;->a:Lcom/android/gallery3d/filtershow/materials/MaterialActivity;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->b(Lcom/android/gallery3d/filtershow/materials/MaterialActivity;)Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0e0172

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_2
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity$a;->a:Lcom/android/gallery3d/filtershow/materials/MaterialActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_5

    check-cast p1, Lcom/android/gallery3d/filtershow/materials/c;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity$a;->a:Lcom/android/gallery3d/filtershow/materials/MaterialActivity;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->a(Lcom/android/gallery3d/filtershow/materials/MaterialActivity;)Lcom/android/gallery3d/filtershow/materials/f;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity$a;->a:Lcom/android/gallery3d/filtershow/materials/MaterialActivity;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->a(Lcom/android/gallery3d/filtershow/materials/MaterialActivity;)Lcom/android/gallery3d/filtershow/materials/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/materials/f;->g(Lcom/android/gallery3d/filtershow/materials/c;)V

    goto :goto_0

    :cond_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_5

    check-cast p1, Lcom/android/gallery3d/filtershow/materials/c;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity$a;->a:Lcom/android/gallery3d/filtershow/materials/MaterialActivity;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->a(Lcom/android/gallery3d/filtershow/materials/MaterialActivity;)Lcom/android/gallery3d/filtershow/materials/f;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity$a;->a:Lcom/android/gallery3d/filtershow/materials/MaterialActivity;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->a(Lcom/android/gallery3d/filtershow/materials/MaterialActivity;)Lcom/android/gallery3d/filtershow/materials/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/materials/f;->f(Lcom/android/gallery3d/filtershow/materials/c;)V

    :cond_5
    :goto_0
    return-void
.end method
