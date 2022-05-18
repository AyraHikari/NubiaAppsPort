.class Lcom/android/gallery3d/filtershow/FilterShowActivity$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/FilterShowActivity;->p2(Landroid/view/View;FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/gallery3d/filtershow/category/CategorySelected;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;Lcom/android/gallery3d/filtershow/category/CategorySelected;)V
    .locals 0

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$d;->a:Lcom/android/gallery3d/filtershow/category/CategorySelected;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$d;->a:Lcom/android/gallery3d/filtershow/category/CategorySelected;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$d;->a:Lcom/android/gallery3d/filtershow/category/CategorySelected;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$d;->a:Lcom/android/gallery3d/filtershow/category/CategorySelected;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$d;->a:Lcom/android/gallery3d/filtershow/category/CategorySelected;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
