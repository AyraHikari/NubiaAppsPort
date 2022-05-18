.class public Lcom/zte/drm/DRMContentProxy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ERROR_LOAD_CLASS:I = 0x2000

.field public static LOADSUCCESS:Z = false

.field public static final SEEK_CUR:I = 0x1

.field public static final SEEK_END:I = 0x2

.field public static final SEEK_SET:I

.field private static obj:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "cjl2"

    const-string v1, "yyyyy"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "ztemt.FMK.ZTEMTConfig_FMK"

    .line 2
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "ZTEMT_J_DRM_DEF"

    .line 3
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v2

    .line 4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bDRM----"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_0

    .line 5
    new-instance v2, Ljava/io/File;

    const-string v4, "java.io.tmpdir"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "test"

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    new-instance v4, Ljava/io/File;

    const-string v5, "optimized"

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 8
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    .line 9
    new-instance v2, Ljava/io/File;

    const-string v5, "file:///system/framework/ZteDrmClient.jar"

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "yyyyyjarFile--------"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    new-instance v5, Ldalvik/system/DexClassLoader;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-direct {v5, v2, v4, v3, v6}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-string v2, "com.zte.drm.DRMContent"

    .line 12
    invoke-virtual {v5, v2}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 13
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    sput-object v2, Lcom/zte/drm/DRMContentProxy;->obj:Ljava/lang/Object;

    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "obj--------"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/zte/drm/DRMContentProxy;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 15
    sput-boolean v0, Lcom/zte/drm/DRMContentProxy;->LOADSUCCESS:Z

    goto :goto_0

    .line 16
    :cond_0
    sput-boolean v1, Lcom/zte/drm/DRMContentProxy;->LOADSUCCESS:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 18
    sput-boolean v1, Lcom/zte/drm/DRMContentProxy;->LOADSUCCESS:Z

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static IngestFromFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)I
    .locals 7

    .line 1
    sget-boolean v0, Lcom/zte/drm/DRMContentProxy;->LOADSUCCESS:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/zte/drm/DRMContentProxy;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/zte/drm/a;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-interface/range {v1 .. v6}, Lcom/zte/drm/a;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0x2000

    return p0
.end method

.method public static IngestFromStreamBegin(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)I
    .locals 1

    .line 1
    sget-boolean v0, Lcom/zte/drm/DRMContentProxy;->LOADSUCCESS:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/zte/drm/DRMContentProxy;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/zte/drm/a;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/zte/drm/a;->g(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0x2000

    return p0
.end method

.method public static IngestFromStreamCancel(I)I
    .locals 1

    .line 1
    sget-boolean v0, Lcom/zte/drm/DRMContentProxy;->LOADSUCCESS:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/zte/drm/DRMContentProxy;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/zte/drm/a;

    invoke-interface {v0, p0}, Lcom/zte/drm/a;->p(I)I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0x2000

    return p0
.end method

.method public static IngestFromStreamFinal(I)Lcom/zte/drm/b/a;
    .locals 1

    .line 1
    sget-boolean v0, Lcom/zte/drm/DRMContentProxy;->LOADSUCCESS:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/zte/drm/DRMContentProxy;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/zte/drm/a;

    invoke-interface {v0, p0}, Lcom/zte/drm/a;->o(I)Lcom/zte/drm/b/a;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static IngestFromStreamProccess(I[BJ)I
    .locals 1

    .line 1
    sget-boolean v0, Lcom/zte/drm/DRMContentProxy;->LOADSUCCESS:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/zte/drm/DRMContentProxy;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/zte/drm/a;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/zte/drm/a;->r(I[BJ)I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0x2000

    return p0
.end method

.method public static canPreview(I)Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/zte/drm/DRMContentProxy;->LOADSUCCESS:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/zte/drm/DRMContentProxy;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/zte/drm/a;

    invoke-interface {v0, p0}, Lcom/zte/drm/a;->C(I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static canSetToSysFile(I)Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/zte/drm/DRMContentProxy;->LOADSUCCESS:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/zte/drm/DRMContentProxy;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/zte/drm/a;

    invoke-interface {v0, p0}, Lcom/zte/drm/a;->j(I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static closeHandle(I)I
    .locals 1

    .line 1
    sget-boolean v0, Lcom/zte/drm/DRMContentProxy;->LOADSUCCESS:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/zte/drm/DRMContentProxy;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/zte/drm/a;

    invoke-interface {v0, p0}, Lcom/zte/drm/a;->f(I)I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0x2000

    return p0
.end method

.method public static deleteAllRO()I
    .locals 1

    .line 1
    sget-boolean v0, Lcom/zte/drm/DRMContentProxy;->LOADSUCCESS:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/zte/drm/DRMContentProxy;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/zte/drm/a;

    invoke-interface {v0}, Lcom/zte/drm/a;->h()I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0x2000

    return v0
.end method

.method public static deleteExpiredRO()I
    .locals 1

    .line 1
    sget-boolean v0, Lcom/zte/drm/DRMContentProxy;->LOADSUCCESS:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/zte/drm/DRMContentProxy;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/zte/drm/a;

    invoke-interface {v0}, Lcom/zte/drm/a;->z()I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0x2000

    return v0
.end method

.method public static deleteFileAllRO(I)I
    .locals 1

    .line 1
    sget-boolean v0, Lcom/zte/drm/DRMContentProxy;->LOADSUCCESS:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/zte/drm/DRMContentProxy;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/zte/drm/a;

    invoke-interface {v0, p0}, Lcom/zte/drm/a;->y(I)I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0x2000

    return p0
.end method

.method public static deleteFileRO(II)I
    .locals 1

    .line 1
    sget-boolean v0, Lcom/zte/drm/DRMContentProxy;->LOADSUCCESS:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/zte/drm/DRMContentProxy;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/zte/drm/a;

    invoke-interface {v0, p0, p1}, Lcom/zte/drm/a;->l(II)I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0x2000

    return p0
.end method

.method public static getFileInfo(I)Lcom/zte/drm/b/b;
    .locals 1

    .line 1
    sget-boolean v0, Lcom/zte/drm/DRMContentProxy;->LOADSUCCESS:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/zte/drm/DRMContentProxy;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/zte/drm/a;

    invoke-interface {v0, p0}, Lcom/zte/drm/a;->B(I)Lcom/zte/drm/b/b;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getMIMEType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-boolean v0, Lcom/zte/drm/DRMContentProxy;->LOADSUCCESS:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/zte/drm/DRMContentProxy;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/zte/drm/a;

    invoke-interface {v0, p0}, Lcom/zte/drm/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getROInfo(II)[Lcom/zte/drm/b/c;
    .locals 1

    .line 1
    sget-boolean v0, Lcom/zte/drm/DRMContentProxy;->LOADSUCCESS:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/zte/drm/DRMContentProxy;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/zte/drm/a;

    invoke-interface {v0, p0, p1}, Lcom/zte/drm/a;->a(II)[Lcom/zte/drm/b/c;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getRONum(I)I
    .locals 1

    .line 1
    sget-boolean v0, Lcom/zte/drm/DRMContentProxy;->LOADSUCCESS:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/zte/drm/DRMContentProxy;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/zte/drm/a;

    invoke-interface {v0, p0}, Lcom/zte/drm/a;->n(I)I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0x2000

    return p0
.end method

.method public static getRightsIssuer(I)Ljava/lang/String;
    .locals 1

    .line 1
    sget-boolean v0, Lcom/zte/drm/DRMContentProxy;->LOADSUCCESS:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/zte/drm/DRMContentProxy;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/zte/drm/a;

    invoke-interface {v0, p0}, Lcom/zte/drm/a;->t(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getSize(I)J
    .locals 2

    .line 1
    sget-boolean v0, Lcom/zte/drm/DRMContentProxy;->LOADSUCCESS:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/zte/drm/DRMContentProxy;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/zte/drm/a;

    invoke-interface {v0, p0}, Lcom/zte/drm/a;->c(I)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x2000

    return-wide v0
.end method

.method public static helloWorld(I[I)I
    .locals 1

    .line 1
    sget-boolean v0, Lcom/zte/drm/DRMContentProxy;->LOADSUCCESS:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/zte/drm/DRMContentProxy;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/zte/drm/a;

    invoke-interface {v0, p0, p1}, Lcom/zte/drm/a;->m(I[I)I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0x2000

    return p0
.end method

.method public static isDrmFile(Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/zte/drm/DRMContentProxy;->LOADSUCCESS:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/zte/drm/DRMContentProxy;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/zte/drm/a;

    invoke-interface {v0, p0}, Lcom/zte/drm/a;->i(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isLoadSuccess()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/zte/drm/DRMContentProxy;->LOADSUCCESS:Z

    return v0
.end method

.method public static openFileHandle(Ljava/lang/String;)I
    .locals 2

    .line 1
    sget-boolean v0, Lcom/zte/drm/DRMContentProxy;->LOADSUCCESS:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "openFileHandle------------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cjl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    sget-object v0, Lcom/zte/drm/DRMContentProxy;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/zte/drm/a;

    invoke-interface {v0, p0}, Lcom/zte/drm/a;->x(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0x2000

    return p0
.end method

.method public static read(IJ)[B
    .locals 1

    .line 1
    sget-boolean v0, Lcom/zte/drm/DRMContentProxy;->LOADSUCCESS:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/zte/drm/DRMContentProxy;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/zte/drm/a;

    invoke-interface {v0, p0, p1, p2}, Lcom/zte/drm/a;->A(IJ)[B

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static remainCount(I)I
    .locals 1

    .line 1
    sget-boolean v0, Lcom/zte/drm/DRMContentProxy;->LOADSUCCESS:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/zte/drm/DRMContentProxy;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/zte/drm/a;

    invoke-interface {v0, p0}, Lcom/zte/drm/a;->d(I)I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0x2000

    return p0
.end method

.method public static remainTime(I)J
    .locals 2

    .line 1
    sget-boolean v0, Lcom/zte/drm/DRMContentProxy;->LOADSUCCESS:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/zte/drm/DRMContentProxy;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/zte/drm/a;

    invoke-interface {v0, p0}, Lcom/zte/drm/a;->k(I)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x2000

    return-wide v0
.end method

.method public static renewRights(I)I
    .locals 1

    .line 1
    sget-boolean v0, Lcom/zte/drm/DRMContentProxy;->LOADSUCCESS:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/zte/drm/DRMContentProxy;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/zte/drm/a;

    invoke-interface {v0, p0}, Lcom/zte/drm/a;->D(I)I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0x2000

    return p0
.end method

.method public static seek(IJI)I
    .locals 1

    .line 1
    sget-boolean v0, Lcom/zte/drm/DRMContentProxy;->LOADSUCCESS:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/zte/drm/DRMContentProxy;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/zte/drm/a;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/zte/drm/a;->s(IJI)I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0x2000

    return p0
.end method

.method public static startUsage(IIZ)I
    .locals 1

    .line 1
    sget-boolean v0, Lcom/zte/drm/DRMContentProxy;->LOADSUCCESS:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/zte/drm/DRMContentProxy;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/zte/drm/a;

    invoke-interface {v0, p0, p1, p2}, Lcom/zte/drm/a;->e(IIZ)I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0x2000

    return p0
.end method

.method public static stopUsage(I)I
    .locals 1

    .line 1
    sget-boolean v0, Lcom/zte/drm/DRMContentProxy;->LOADSUCCESS:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/zte/drm/DRMContentProxy;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/zte/drm/a;

    invoke-interface {v0, p0}, Lcom/zte/drm/a;->w(I)I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0x2000

    return p0
.end method

.method public static tell(I)J
    .locals 2

    .line 1
    sget-boolean v0, Lcom/zte/drm/DRMContentProxy;->LOADSUCCESS:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/zte/drm/DRMContentProxy;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/zte/drm/a;

    invoke-interface {v0, p0}, Lcom/zte/drm/a;->v(I)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x2000

    return-wide v0
.end method

.method public static verifyRights(Ljava/lang/String;I)I
    .locals 3

    const-string v0, "cjl2"

    const-string v1, "begin -----verifyRights"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget-boolean v1, Lcom/zte/drm/DRMContentProxy;->LOADSUCCESS:Z

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DRMContent1-----------verifyRights"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    sget-object v0, Lcom/zte/drm/DRMContentProxy;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/zte/drm/a;

    invoke-interface {v0, p0, p1}, Lcom/zte/drm/a;->q(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_0
    const-string p0, "fail"

    .line 5
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x2000

    return p0
.end method
