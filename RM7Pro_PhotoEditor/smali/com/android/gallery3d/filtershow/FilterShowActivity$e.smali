.class Lcom/android/gallery3d/filtershow/FilterShowActivity$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/FilterShowActivity;->g2(Landroid/content/Context;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/android/gallery3d/filtershow/FilterShowActivity;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$e;->b:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$e;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$e;->a:Landroid/content/Context;

    const v0, 0x7f0e011f

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$e;->b:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->y(Lcom/android/gallery3d/filtershow/FilterShowActivity;)V

    return-void
.end method
