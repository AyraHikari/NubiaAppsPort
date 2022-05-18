.class Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity$a;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity$a;->a:Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 p1, 0x4

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity$a;->a:Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->q()V

    goto :goto_0

    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_2

    check-cast p1, Lcom/android/gallery3d/filtershow/materials/c;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity$a;->a:Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->a(Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;)Lcom/android/gallery3d/filtershow/materials/f;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity$a;->a:Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->a(Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;)Lcom/android/gallery3d/filtershow/materials/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/materials/f;->g(Lcom/android/gallery3d/filtershow/materials/c;)V

    :cond_2
    :goto_0
    return-void
.end method
