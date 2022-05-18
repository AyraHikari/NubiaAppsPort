.class Lcom/android/gallery3d/filtershow/editors/s$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/editors/s;->I(Landroid/view/View;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/gallery3d/filtershow/editors/s;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/editors/s;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/editors/s$c;->a:Lcom/android/gallery3d/filtershow/editors/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/s$c;->a:Lcom/android/gallery3d/filtershow/editors/s;

    iget-object p1, p1, Lcom/android/gallery3d/filtershow/editors/s;->r:Lcom/android/gallery3d/filtershow/imageshow/s;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/imageshow/s;->N()V

    return-void
.end method
