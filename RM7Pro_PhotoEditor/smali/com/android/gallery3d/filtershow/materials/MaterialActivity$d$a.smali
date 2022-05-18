.class Lcom/android/gallery3d/filtershow/materials/MaterialActivity$d$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/materials/MaterialActivity$d;-><init>(Lcom/android/gallery3d/filtershow/materials/MaterialActivity;Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/android/gallery3d/filtershow/materials/MaterialActivity$d;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/materials/MaterialActivity$d;Lcom/android/gallery3d/filtershow/materials/MaterialActivity;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity$d$a;->b:Lcom/android/gallery3d/filtershow/materials/MaterialActivity$d;

    iput p3, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity$d$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity$d$a;->b:Lcom/android/gallery3d/filtershow/materials/MaterialActivity$d;

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity$d;->a:Lcom/android/gallery3d/filtershow/materials/MaterialActivity;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->d(Lcom/android/gallery3d/filtershow/materials/MaterialActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "material-type"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity$d$a;->b:Lcom/android/gallery3d/filtershow/materials/MaterialActivity$d;

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity$d;->a:Lcom/android/gallery3d/filtershow/materials/MaterialActivity;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->c(Lcom/android/gallery3d/filtershow/materials/MaterialActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity$d$a;->a:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "category-type"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "cn.nubia.photoeditor"

    const-string v2, "com.android.gallery3d.filtershow.materials.MaterialMoreActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity$d$a;->b:Lcom/android/gallery3d/filtershow/materials/MaterialActivity$d;

    iget-object p1, p1, Lcom/android/gallery3d/filtershow/materials/MaterialActivity$d;->a:Lcom/android/gallery3d/filtershow/materials/MaterialActivity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
