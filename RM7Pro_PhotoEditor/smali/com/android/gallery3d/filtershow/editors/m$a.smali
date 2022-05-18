.class Lcom/android/gallery3d/filtershow/editors/m$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/editors/m;->E(Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/gallery3d/filtershow/editors/m;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/editors/m;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/editors/m$a;->a:Lcom/android/gallery3d/filtershow/editors/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/m$a;->a:Lcom/android/gallery3d/filtershow/editors/m;

    iget-object p1, p1, Lcom/android/gallery3d/filtershow/editors/m;->r:Lcom/android/gallery3d/filtershow/imageshow/n;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/imageshow/n;->G()V

    return-void
.end method
