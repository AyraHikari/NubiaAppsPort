.class Lcom/android/gallery3d/filtershow/a$a;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/a;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/gallery3d/filtershow/a;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/a;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/a$a;->a:Lcom/android/gallery3d/filtershow/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/a$a;->a:Lcom/android/gallery3d/filtershow/a;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/a;->a(Lcom/android/gallery3d/filtershow/a;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/a$a;->a:Lcom/android/gallery3d/filtershow/a;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/a;->c()V

    :cond_0
    return-void
.end method
