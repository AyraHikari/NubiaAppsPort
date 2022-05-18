.class Lcom/android/gallery3d/filtershow/materials/MaterialActivity$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/gallery3d/filtershow/materials/d$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/filtershow/materials/MaterialActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/gallery3d/filtershow/materials/MaterialActivity;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/filtershow/materials/MaterialActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity$b;->a:Lcom/android/gallery3d/filtershow/materials/MaterialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/filtershow/materials/MaterialActivity;Lcom/android/gallery3d/filtershow/materials/MaterialActivity$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/materials/MaterialActivity$b;-><init>(Lcom/android/gallery3d/filtershow/materials/MaterialActivity;)V

    return-void
.end method


# virtual methods
.method public onContentChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity$b;->a:Lcom/android/gallery3d/filtershow/materials/MaterialActivity;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->h(Lcom/android/gallery3d/filtershow/materials/MaterialActivity;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity$b;->a:Lcom/android/gallery3d/filtershow/materials/MaterialActivity;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->h(Lcom/android/gallery3d/filtershow/materials/MaterialActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
