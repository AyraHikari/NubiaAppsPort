.class Lcom/android/gallery3d/filtershow/editors/r$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/editors/r;->E(Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/Button;

.field final synthetic b:Lcom/android/gallery3d/filtershow/editors/r;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/editors/r;Landroid/widget/Button;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/editors/r$a;->b:Lcom/android/gallery3d/filtershow/editors/r;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/editors/r$a;->a:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/r$a;->b:Lcom/android/gallery3d/filtershow/editors/r;

    iget-object p1, p1, Lcom/android/gallery3d/filtershow/editors/r;->r:Lcom/android/gallery3d/filtershow/imageshow/r;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/imageshow/r;->G()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/r$a;->b:Lcom/android/gallery3d/filtershow/editors/r;

    iget-object v1, v0, Lcom/android/gallery3d/filtershow/editors/c;->a:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/editors/r;->Q()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/r$a;->b:Lcom/android/gallery3d/filtershow/editors/r;

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/editors/r;->r:Lcom/android/gallery3d/filtershow/imageshow/r;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/r;->getLocalValue()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/r$a;->a:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
