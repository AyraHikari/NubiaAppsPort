.class Lcom/android/gallery3d/filtershow/materials/b$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/materials/b;->t(Landroid/view/View;)V
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

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/materials/b$b;->a:Lcom/android/gallery3d/filtershow/materials/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/b$b;->a:Lcom/android/gallery3d/filtershow/materials/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/gallery3d/filtershow/materials/b;->h(Lcom/android/gallery3d/filtershow/materials/b;Z)Z

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/b$b;->a:Lcom/android/gallery3d/filtershow/materials/b;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcom/android/gallery3d/filtershow/materials/b;->i(Lcom/android/gallery3d/filtershow/materials/b;F)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/b$b;->a:Lcom/android/gallery3d/filtershow/materials/b;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/materials/b;->j(Lcom/android/gallery3d/filtershow/materials/b;)V

    return-void
.end method
