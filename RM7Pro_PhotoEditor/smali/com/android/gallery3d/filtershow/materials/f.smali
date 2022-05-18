.class public Lcom/android/gallery3d/filtershow/materials/f;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private c:Landroid/content/Context;

.field private d:Lcom/android/gallery3d/filtershow/materials/u/c;

.field private e:Lcom/android/gallery3d/filtershow/materials/d;

.field private f:Lcom/android/gallery3d/filtershow/materials/t/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/materials/f;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/PhotoEditor/.PhotoEditorMaterials"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/materials/f;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/materials/f;->c:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/materials/f;->d:Lcom/android/gallery3d/filtershow/materials/u/c;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/materials/f;->e:Lcom/android/gallery3d/filtershow/materials/d;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/materials/f;->f:Lcom/android/gallery3d/filtershow/materials/t/a;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/materials/f;->c:Landroid/content/Context;

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/materials/f;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/materialThumbnail/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/materials/f;->a:Ljava/lang/String;

    new-instance v0, Lcom/android/gallery3d/filtershow/materials/u/c;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/gallery3d/filtershow/materials/u/c;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/materials/f;->d:Lcom/android/gallery3d/filtershow/materials/u/c;

    new-instance p1, Lcom/android/gallery3d/filtershow/materials/t/d;

    invoke-direct {p1}, Lcom/android/gallery3d/filtershow/materials/t/d;-><init>()V

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/materials/f;->f:Lcom/android/gallery3d/filtershow/materials/t/a;

    return-void
.end method

.method static synthetic a(Lcom/android/gallery3d/filtershow/materials/f;)Lcom/android/gallery3d/filtershow/materials/u/c;
    .locals 0

    iget-object p0, p0, Lcom/android/gallery3d/filtershow/materials/f;->d:Lcom/android/gallery3d/filtershow/materials/u/c;

    return-object p0
.end method

.method private c(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteFile targetPath = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MaterialManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/utils/b;->f(Ljava/io/File;)V

    const-string v0, ".zip"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteFile folderPath = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/materials/f;->d(Ljava/io/File;)V

    return-void
.end method

.method private d(Ljava/io/File;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteFolder file.path = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MaterialManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/utils/b;->f(Ljava/io/File;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3

    array-length v1, v0

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    invoke-direct {p0, v3}, Lcom/android/gallery3d/filtershow/materials/f;->d(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/android/gallery3d/filtershow/utils/b;->f(Ljava/io/File;)V

    goto :goto_2

    :cond_3
    :goto_1
    invoke-static {p1}, Lcom/android/gallery3d/filtershow/utils/b;->f(Ljava/io/File;)V

    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    new-instance v0, Lcom/android/gallery3d/filtershow/materials/f$a;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/filtershow/materials/f$a;-><init>(Lcom/android/gallery3d/filtershow/materials/f;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public e(Lcom/android/gallery3d/filtershow/materials/c;)V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/f;->d:Lcom/android/gallery3d/filtershow/materials/u/c;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/materials/u/c;->f(Lcom/android/gallery3d/filtershow/materials/c;)V

    return-void
.end method

.method public f(Lcom/android/gallery3d/filtershow/materials/c;)V
    .locals 5

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/materials/c;->j()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downloadMaterialThumbnail url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MaterialManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ".com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/materials/f;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " path = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/android/gallery3d/filtershow/materials/t/e;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/materials/f;->e:Lcom/android/gallery3d/filtershow/materials/d;

    invoke-direct {v2, p1, v3, v1}, Lcom/android/gallery3d/filtershow/materials/t/e;-><init>(Lcom/android/gallery3d/filtershow/materials/c;Lcom/android/gallery3d/filtershow/materials/d;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/materials/f;->f:Lcom/android/gallery3d/filtershow/materials/t/a;

    invoke-interface {p1, v0, v1, v2}, Lcom/android/gallery3d/filtershow/materials/t/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/android/gallery3d/filtershow/materials/t/b;)V

    :cond_0
    return-void
.end method

.method public g(Lcom/android/gallery3d/filtershow/materials/c;)V
    .locals 4

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/materials/c;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/materials/c;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/materials/f;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".zip"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "downloadRealMaterial urlPath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MaterialManager"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/android/gallery3d/filtershow/materials/t/c;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/materials/f;->e:Lcom/android/gallery3d/filtershow/materials/d;

    invoke-direct {v2, p1, v3, v1}, Lcom/android/gallery3d/filtershow/materials/t/c;-><init>(Lcom/android/gallery3d/filtershow/materials/c;Lcom/android/gallery3d/filtershow/materials/d;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/materials/f;->f:Lcom/android/gallery3d/filtershow/materials/t/a;

    invoke-interface {p1, v0, v1, v2}, Lcom/android/gallery3d/filtershow/materials/t/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/android/gallery3d/filtershow/materials/t/b;)V

    return-void
.end method

.method public h(Lcom/android/gallery3d/filtershow/materials/c;)V
    .locals 6

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/materials/c;->g()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/materials/f;->c(Ljava/lang/String;)V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "sourcePath"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "state"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/materials/f;->e:Lcom/android/gallery3d/filtershow/materials/d;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/materials/c;->b()I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    const-string v1, "id = ?"

    invoke-virtual {v3, p1, v0, v1, v4}, Lcom/android/gallery3d/filtershow/materials/d;->o(Ljava/lang/Object;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public i(Lcom/android/gallery3d/filtershow/materials/d;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/materials/f;->e:Lcom/android/gallery3d/filtershow/materials/d;

    return-void
.end method

.method public j(Lcom/android/gallery3d/filtershow/materials/c;)V
    .locals 5

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "isNewMaterial"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/materials/f;->e:Lcom/android/gallery3d/filtershow/materials/d;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/materials/c;->b()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "id = ?"

    invoke-virtual {v1, p1, v0, v3, v2}, Lcom/android/gallery3d/filtershow/materials/d;->o(Ljava/lang/Object;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
