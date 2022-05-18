.class Lcom/android/gallery3d/filtershow/editors/z$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/gallery3d/filtershow/category/f$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/editors/z;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/gallery3d/filtershow/editors/z;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/editors/z;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/editors/z$a;->a:Lcom/android/gallery3d/filtershow/editors/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/z$a;->a:Lcom/android/gallery3d/filtershow/editors/z;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/gallery3d/filtershow/editors/z;->b(Lcom/android/gallery3d/filtershow/editors/z;Z)Z

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/z$a;->a:Lcom/android/gallery3d/filtershow/editors/z;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/editors/z;->c(Lcom/android/gallery3d/filtershow/editors/z;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    return-void
.end method
