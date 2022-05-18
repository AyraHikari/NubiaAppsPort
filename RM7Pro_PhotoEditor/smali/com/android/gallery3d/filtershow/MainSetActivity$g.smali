.class Lcom/android/gallery3d/filtershow/MainSetActivity$g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/filtershow/MainSetActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/gallery3d/filtershow/MainSetActivity;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/MainSetActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/MainSetActivity$g;->a:Lcom/android/gallery3d/filtershow/MainSetActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0801ab

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/MainSetActivity$g;->a:Lcom/android/gallery3d/filtershow/MainSetActivity;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/MainSetActivity;->b(Lcom/android/gallery3d/filtershow/MainSetActivity;)Lcn/nubia/collage/a;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcn/nubia/collage/a;->d(I)V

    goto :goto_1

    :cond_0
    const v0, 0x7f0801db

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/MainSetActivity$g;->a:Lcom/android/gallery3d/filtershow/MainSetActivity;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/MainSetActivity;->b(Lcom/android/gallery3d/filtershow/MainSetActivity;)Lcn/nubia/collage/a;

    move-result-object p1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const v0, 0x7f080172

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/MainSetActivity$g;->a:Lcom/android/gallery3d/filtershow/MainSetActivity;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/MainSetActivity;->b(Lcom/android/gallery3d/filtershow/MainSetActivity;)Lcn/nubia/collage/a;

    move-result-object p1

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
