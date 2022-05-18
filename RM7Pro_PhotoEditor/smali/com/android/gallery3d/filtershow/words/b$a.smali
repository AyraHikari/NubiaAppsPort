.class Lcom/android/gallery3d/filtershow/words/b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/words/b;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/gallery3d/filtershow/words/b;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/words/b;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/words/b$a;->a:Lcom/android/gallery3d/filtershow/words/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x2

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/words/b$a;->a:Lcom/android/gallery3d/filtershow/words/b;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/words/b;->j(Lcom/android/gallery3d/filtershow/words/b;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/words/b$a;->a:Lcom/android/gallery3d/filtershow/words/b;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/words/b;->j(Lcom/android/gallery3d/filtershow/words/b;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
