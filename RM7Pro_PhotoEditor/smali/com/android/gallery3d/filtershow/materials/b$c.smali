.class Lcom/android/gallery3d/filtershow/materials/b$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnKeyListener;


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

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/materials/b$c;->a:Lcom/android/gallery3d/filtershow/materials/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/materials/b$c;->a:Lcom/android/gallery3d/filtershow/materials/b;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/gallery3d/filtershow/materials/b;->k(Lcom/android/gallery3d/filtershow/materials/b;Z)Z

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/materials/b$c;->a:Lcom/android/gallery3d/filtershow/materials/b;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/materials/b;->o()V

    return p2

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
