.class Lcom/android/gallery3d/filtershow/materials/u/c$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/gallery3d/filtershow/materials/u/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/materials/u/c;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/gallery3d/filtershow/materials/u/c;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/materials/u/c;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/materials/u/c$a;->a:Lcom/android/gallery3d/filtershow/materials/u/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ParseHotResourceListener getCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MaterialOnLine"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/u/c$a;->a:Lcom/android/gallery3d/filtershow/materials/u/c;

    invoke-static {v0, p1}, Lcom/android/gallery3d/filtershow/materials/u/c;->a(Lcom/android/gallery3d/filtershow/materials/u/c;I)I

    return-void
.end method
