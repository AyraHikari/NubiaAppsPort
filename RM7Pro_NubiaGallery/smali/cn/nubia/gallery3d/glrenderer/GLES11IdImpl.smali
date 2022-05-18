.class public Lcn/nubia/gallery3d/glrenderer/GLES11IdImpl;
.super Ljava/lang/Object;
.source "GLES11IdImpl.java"

# interfaces
.implements Lcn/nubia/gallery3d/glrenderer/GLId;


# static fields
.field private static sLock:Ljava/lang/Object; = null

.field private static sNextId:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/nubia/gallery3d/glrenderer/GLES11IdImpl;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateTexture()I
    .locals 3

    .line 32
    sget-object v0, Lcn/nubia/gallery3d/glrenderer/GLES11IdImpl;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 33
    :try_start_0
    sget v1, Lcn/nubia/gallery3d/glrenderer/GLES11IdImpl;->sNextId:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcn/nubia/gallery3d/glrenderer/GLES11IdImpl;->sNextId:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 34
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public glDeleteBuffers(Ljavax/microedition/khronos/opengles/GL11;I[II)V
    .locals 1

    .line 55
    sget-object v0, Lcn/nubia/gallery3d/glrenderer/GLES11IdImpl;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 56
    :try_start_0
    invoke-interface {p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glDeleteBuffers(I[II)V

    .line 57
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public glDeleteFramebuffers(Ljavax/microedition/khronos/opengles/GL11ExtensionPack;I[II)V
    .locals 1

    .line 62
    sget-object v0, Lcn/nubia/gallery3d/glrenderer/GLES11IdImpl;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 63
    :try_start_0
    invoke-interface {p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glDeleteFramebuffersOES(I[II)V

    .line 64
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public glDeleteTextures(Ljavax/microedition/khronos/opengles/GL11;I[II)V
    .locals 1

    .line 48
    sget-object v0, Lcn/nubia/gallery3d/glrenderer/GLES11IdImpl;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 49
    :try_start_0
    invoke-interface {p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glDeleteTextures(I[II)V

    .line 50
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public glGenBuffers(I[II)V
    .locals 4

    .line 39
    sget-object v0, Lcn/nubia/gallery3d/glrenderer/GLES11IdImpl;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :goto_0
    add-int/lit8 v1, p1, -0x1

    if-lez p1, :cond_0

    add-int p1, p3, v1

    .line 41
    :try_start_0
    sget v2, Lcn/nubia/gallery3d/glrenderer/GLES11IdImpl;->sNextId:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lcn/nubia/gallery3d/glrenderer/GLES11IdImpl;->sNextId:I

    aput v2, p2, p1

    move p1, v1

    goto :goto_0

    .line 43
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
