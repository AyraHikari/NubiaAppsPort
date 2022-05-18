.class Lcom/android/gallery3d/filtershow/materials/MaterialActivity$c;
.super Landroid/widget/BaseAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/filtershow/materials/MaterialActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field final synthetic b:Lcom/android/gallery3d/filtershow/materials/MaterialActivity;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/filtershow/materials/MaterialActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity$c;->b:Lcom/android/gallery3d/filtershow/materials/MaterialActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity$c;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity$c;->b:Lcom/android/gallery3d/filtershow/materials/MaterialActivity;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->c(Lcom/android/gallery3d/filtershow/materials/MaterialActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    new-instance p2, Lcom/android/gallery3d/filtershow/materials/MaterialActivity$d;

    iget-object p3, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity$c;->b:Lcom/android/gallery3d/filtershow/materials/MaterialActivity;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity$c;->a:Landroid/content/Context;

    invoke-direct {p2, p3, v0, p1}, Lcom/android/gallery3d/filtershow/materials/MaterialActivity$d;-><init>(Lcom/android/gallery3d/filtershow/materials/MaterialActivity;Landroid/content/Context;I)V

    return-object p2
.end method
