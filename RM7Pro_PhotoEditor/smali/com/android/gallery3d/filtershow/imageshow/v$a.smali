.class Lcom/android/gallery3d/filtershow/imageshow/v$a;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/filtershow/imageshow/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/gallery3d/filtershow/imageshow/v;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/imageshow/v;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/v$a;->a:Lcom/android/gallery3d/filtershow/imageshow/v;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/v$a;->a:Lcom/android/gallery3d/filtershow/imageshow/v;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/imageshow/v;->I(Lcom/android/gallery3d/filtershow/imageshow/v;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/v$a;->a:Lcom/android/gallery3d/filtershow/imageshow/v;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/imageshow/v;->H(Lcom/android/gallery3d/filtershow/imageshow/v;)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/v$a;->a:Lcom/android/gallery3d/filtershow/imageshow/v;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/imageshow/v;->G(Lcom/android/gallery3d/filtershow/imageshow/v;)V

    :goto_0
    return-void
.end method
