.class public Lcom/android/gallery3d/filtershow/materials/t/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/gallery3d/filtershow/materials/t/b;


# instance fields
.field private a:Lcom/android/gallery3d/filtershow/materials/c;

.field private b:Lcom/android/gallery3d/filtershow/materials/d;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/filtershow/materials/c;Lcom/android/gallery3d/filtershow/materials/d;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/materials/t/c;->a:Lcom/android/gallery3d/filtershow/materials/c;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/materials/t/c;->b:Lcom/android/gallery3d/filtershow/materials/d;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/materials/t/c;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/materials/t/c;->a:Lcom/android/gallery3d/filtershow/materials/c;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/materials/t/c;->b:Lcom/android/gallery3d/filtershow/materials/d;

    iput-object p3, p0, Lcom/android/gallery3d/filtershow/materials/t/c;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public b(JJ)V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 7

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/t/c;->a:Lcom/android/gallery3d/filtershow/materials/c;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/materials/t/c;->c:Ljava/lang/String;

    const-string v2, "sourcePath"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "state"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/materials/t/c;->b:Lcom/android/gallery3d/filtershow/materials/d;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/materials/t/c;->a:Lcom/android/gallery3d/filtershow/materials/c;

    new-array v1, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/gallery3d/filtershow/materials/t/c;->a:Lcom/android/gallery3d/filtershow/materials/c;

    invoke-virtual {v6}, Lcom/android/gallery3d/filtershow/materials/c;->b()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    const-string v4, "id = ?"

    invoke-virtual {v2, v3, v0, v4, v1}, Lcom/android/gallery3d/filtershow/materials/d;->o(Ljava/lang/Object;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 0

    return-void
.end method
