.class Lcom/android/gallery3d/filtershow/materials/f$a;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/materials/f;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/gallery3d/filtershow/materials/f;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/materials/f;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/materials/f$a;->a:Lcom/android/gallery3d/filtershow/materials/f;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/f$a;->a:Lcom/android/gallery3d/filtershow/materials/f;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/materials/f;->a(Lcom/android/gallery3d/filtershow/materials/f;)Lcom/android/gallery3d/filtershow/materials/u/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/f$a;->a:Lcom/android/gallery3d/filtershow/materials/f;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/materials/f;->a(Lcom/android/gallery3d/filtershow/materials/f;)Lcom/android/gallery3d/filtershow/materials/u/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/materials/u/c;->l()V

    :cond_0
    return-void
.end method
