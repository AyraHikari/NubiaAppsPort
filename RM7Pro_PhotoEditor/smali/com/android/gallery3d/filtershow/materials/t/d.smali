.class public Lcom/android/gallery3d/filtershow/materials/t/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/gallery3d/filtershow/materials/t/a;


# instance fields
.field private a:Lc/c/a/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/materials/t/d;->a:Lc/c/a/b;

    new-instance v0, Lc/c/a/b;

    invoke-direct {v0}, Lc/c/a/b;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/materials/t/d;->a:Lc/c/a/b;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/android/gallery3d/filtershow/materials/t/b;)V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/t/d;->a:Lc/c/a/b;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "download url = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " destinationFolder = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MaterialDownload"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/t/d;->a:Lc/c/a/b;

    new-instance v1, Lcom/android/gallery3d/filtershow/materials/t/d$a;

    invoke-direct {v1, p0, p3}, Lcom/android/gallery3d/filtershow/materials/t/d$a;-><init>(Lcom/android/gallery3d/filtershow/materials/t/d;Lcom/android/gallery3d/filtershow/materials/t/b;)V

    invoke-virtual {v0, p1, p2, v1}, Lc/c/a/b;->b(Ljava/lang/String;Ljava/lang/String;Lc/c/a/f/g/d;)Lc/c/a/f/b;

    :cond_0
    return-void
.end method
