.class Lcom/android/gallery3d/filtershow/imageshow/x$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/filtershow/imageshow/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/gallery3d/filtershow/imageshow/x;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/imageshow/x;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/x$a;->a:Lcom/android/gallery3d/filtershow/imageshow/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/x$a;->a:Lcom/android/gallery3d/filtershow/imageshow/x;

    invoke-static {v1}, Lcom/android/gallery3d/filtershow/imageshow/x;->b(Lcom/android/gallery3d/filtershow/imageshow/x;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/x$a;->a:Lcom/android/gallery3d/filtershow/imageshow/x;

    invoke-static {v1}, Lcom/android/gallery3d/filtershow/imageshow/x;->b(Lcom/android/gallery3d/filtershow/imageshow/x;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->u()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/x$a;->a:Lcom/android/gallery3d/filtershow/imageshow/x;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->j0()V

    return-void
.end method
