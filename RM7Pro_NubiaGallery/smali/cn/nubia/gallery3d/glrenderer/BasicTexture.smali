.class public abstract Lcn/nubia/gallery3d/glrenderer/BasicTexture;
.super Ljava/lang/Object;
.source "BasicTexture.java"

# interfaces
.implements Lcn/nubia/gallery3d/glrenderer/Texture;


# static fields
.field private static final MAX_TEXTURE_SIZE:I = 0x1000

.field protected static final STATE_ERROR:I = -0x1

.field protected static final STATE_LOADED:I = 0x1

.field protected static final STATE_UNLOADED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BasicTexture"

.field protected static final UNSPECIFIED:I = -0x1

.field private static sAllTextures:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lcn/nubia/gallery3d/glrenderer/BasicTexture;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static sInFinalizer:Ljava/lang/ThreadLocal;


# instance fields
.field protected mCanvasRef:Lcn/nubia/gallery3d/glrenderer/GLCanvas;

.field private mHasBorder:Z

.field protected mHeight:I

.field protected mId:I

.field protected mState:I

.field protected mTextureHeight:I

.field protected mTextureWidth:I

.field protected mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcn/nubia/gallery3d/glrenderer/BasicTexture;->sAllTextures:Ljava/util/WeakHashMap;

    .line 54
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcn/nubia/gallery3d/glrenderer/BasicTexture;->sInFinalizer:Ljava/lang/ThreadLocal;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 66
    invoke-direct {p0, v0, v1, v1}, Lcn/nubia/gallery3d/glrenderer/BasicTexture;-><init>(Lcn/nubia/gallery3d/glrenderer/GLCanvas;II)V

    return-void
.end method

.method protected constructor <init>(Lcn/nubia/gallery3d/glrenderer/GLCanvas;II)V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 40
    iput v0, p0, Lcn/nubia/gallery3d/glrenderer/BasicTexture;->mId:I

    .line 43
    iput v0, p0, Lcn/nubia/gallery3d/glrenderer/BasicTexture;->mWidth:I

    .line 44
    iput v0, p0, Lcn/nubia/gallery3d/glrenderer/BasicTexture;->mHeight:I

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcn/nubia/gallery3d/glrenderer/BasicTexture;->mCanvasRef:Lcn/nubia/gallery3d/glrenderer/GLCanvas;

    .line 57
    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/glrenderer/BasicTexture;->setAssociatedCanvas(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V

    .line 58
    iput p2, p0, Lcn/nubia/gallery3d/glrenderer/BasicTexture;->mId:I

    .line 59
    iput p3, p0, Lcn/nubia/gallery3d/glrenderer/BasicTexture;->mState:I

    .line 60
    sget-object p1, Lcn/nubia/gallery3d/glrenderer/BasicTexture;->sAllTextures:Ljava/util/WeakHashMap;

    monitor-enter p1

    .line 61
    :try_start_0
    sget-object p2, Lcn/nubia/gallery3d/glrenderer/BasicTexture;->sAllTextures:Ljava/util/WeakHashMap;

    invoke-virtual {p2, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method private freeResource()V
    .locals 2

    .line 170
    iget-object v0, p0, Lcn/nubia/gallery3d/glrenderer/BasicTexture;->mCanvasRef:Lcn/nubia/gallery3d/glrenderer/GLCanvas;

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {p0}, Lcn/nubia/gallery3d/glrenderer/BasicTexture;->isLoaded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    invoke-interface {v0, p0}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->unloadTexture(Lcn/nubia/gallery3d/glrenderer/BasicTexture;)Z

    :cond_0
    const/4 v0, 0x0

    .line 174
    iput v0, p0, Lcn/nubia/gallery3d/glrenderer/BasicTexture;->mState:I

    const/4 v0, 0x0

    .line 175
    invoke-virtual {p0, v0}, Lcn/nubia/gallery3d/glrenderer/BasicTexture;->setAssociatedCanvas(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V

    return-void
.end method

.method public static inFinalizer()Z
    .locals 1

    .line 189
    sget-object v0, Lcn/nubia/gallery3d/glrenderer/BasicTexture;->sInFinalizer:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static invalidateAllTextures()V
    .locals 4

    .line 201
    sget-object v0, Lcn/nubia/gallery3d/glrenderer/BasicTexture;->sAllTextures:Ljava/util/WeakHashMap;

    monitor-enter v0

    .line 202
    :try_start_0
    sget-object v1, Lcn/nubia/gallery3d/glrenderer/BasicTexture;->sAllTextures:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/gallery3d/glrenderer/BasicTexture;

    const/4 v3, 0x0

    .line 203
    iput v3, v2, Lcn/nubia/gallery3d/glrenderer/BasicTexture;->mState:I

    const/4 v3, 0x0

    .line 204
    invoke-virtual {v2, v3}, Lcn/nubia/gallery3d/glrenderer/BasicTexture;->setAssociatedCanvas(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V

    goto :goto_0

    .line 206
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static yieldAllTextures()V
    .locals 3

    .line 193
    sget-object v0, Lcn/nubia/gallery3d/glrenderer/BasicTexture;->sAllTextures:Ljava/util/WeakHashMap;

    monitor-enter v0

    .line 194
    :try_start_0
    sget-object v1, Lcn/nubia/gallery3d/glrenderer/BasicTexture;->sAllTextures:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/gallery3d/glrenderer/BasicTexture;

    .line 195
    invoke-virtual {v2}, Lcn/nubia/gallery3d/glrenderer/BasicTexture;->yield()V

    goto :goto_0

    .line 197
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;II)V
    .locals 6

    .line 136
    invoke-virtual {p0}, Lcn/nubia/gallery3d/glrenderer/BasicTexture;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcn/nubia/gallery3d/glrenderer/BasicTexture;->getHeight()I

    move-result v5

    move-object v0, p1

    move-object v1, p0

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->drawTexture(Lcn/nubia/gallery3d/glrenderer/BasicTexture;IIII)V

    return-void
.end method

.method public draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;IIII)V
    .locals 6

    move-object v0, p1

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 140
    invoke-interface/range {v0 .. v5}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->drawTexture(Lcn/nubia/gallery3d/glrenderer/BasicTexture;IIII)V

    return-void
.end method

.method protected finalize()V
    .locals 2

    .line 180
    sget-object v0, Lcn/nubia/gallery3d/glrenderer/BasicTexture;->sInFinalizer:Ljava/lang/ThreadLocal;

    const-class v1, Lcn/nubia/gallery3d/glrenderer/BasicTexture;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 181
    invoke-virtual {p0}, Lcn/nubia/gallery3d/glrenderer/BasicTexture;->recycle()V

    .line 182
    sget-object v0, Lcn/nubia/gallery3d/glrenderer/BasicTexture;->sInFinalizer:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public getHeight()I
    .locals 1

    .line 103
    iget v0, p0, Lcn/nubia/gallery3d/glrenderer/BasicTexture;->mHeight:I

    return v0
.end method

.method public getId()I
    .locals 1

    .line 93
    iget v0, p0, Lcn/nubia/gallery3d/glrenderer/BasicTexture;->mId:I

    return v0
.end method

.method protected abstract getTarget()I
.end method

.method public getTextureHeight()I
    .locals 1

    .line 113
    iget v0, p0, Lcn/nubia/gallery3d/glrenderer/BasicTexture;->mTextureHeight:I

    return v0
.end method

.method public getTextureWidth()I
    .locals 1

    .line 108
    iget v0, p0, Lcn/nubia/gallery3d/glrenderer/BasicTexture;->mTextureWidth:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 98
    iget v0, p0, Lcn/nubia/gallery3d/glrenderer/BasicTexture;->mWidth:I

    return v0
.end method

.method public hasBorder()Z
    .locals 1

    .line 128
    iget-boolean v0, p0, Lcn/nubia/gallery3d/glrenderer/BasicTexture;->mHasBorder:Z

    return v0
.end method

.method public isFlippedVertically()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isLoaded()Z
    .locals 2

    .line 151
    iget v0, p0, Lcn/nubia/gallery3d/glrenderer/BasicTexture;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected abstract onBind(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)Z
.end method

.method public recycle()V
    .locals 0

    .line 157
    invoke-direct {p0}, Lcn/nubia/gallery3d/glrenderer/BasicTexture;->freeResource()V

    return-void
.end method

.method protected setAssociatedCanvas(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcn/nubia/gallery3d/glrenderer/BasicTexture;->mCanvasRef:Lcn/nubia/gallery3d/glrenderer/GLCanvas;

    return-void
.end method

.method protected setBorder(Z)V
    .locals 0

    .line 132
    iput-boolean p1, p0, Lcn/nubia/gallery3d/glrenderer/BasicTexture;->mHasBorder:Z

    return-void
.end method

.method public setSize(II)V
    .locals 2

    .line 78
    iput p1, p0, Lcn/nubia/gallery3d/glrenderer/BasicTexture;->mWidth:I

    .line 79
    iput p2, p0, Lcn/nubia/gallery3d/glrenderer/BasicTexture;->mHeight:I

    const/4 v0, 0x0

    if-lez p1, :cond_0

    .line 80
    invoke-static {p1}, Lcn/nubia/gallery3d/common/Utils;->nextPowerOf2(I)I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iput p1, p0, Lcn/nubia/gallery3d/glrenderer/BasicTexture;->mTextureWidth:I

    if-lez p2, :cond_1

    .line 81
    invoke-static {p2}, Lcn/nubia/gallery3d/common/Utils;->nextPowerOf2(I)I

    move-result p1

    goto :goto_1

    :cond_1
    move p1, v0

    :goto_1
    iput p1, p0, Lcn/nubia/gallery3d/glrenderer/BasicTexture;->mTextureHeight:I

    .line 82
    iget p2, p0, Lcn/nubia/gallery3d/glrenderer/BasicTexture;->mTextureWidth:I

    const/16 v1, 0x1000

    if-gt p2, v1, :cond_2

    if-le p1, v1, :cond_3

    :cond_2
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    .line 84
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    const/4 p2, 0x1

    iget v0, p0, Lcn/nubia/gallery3d/glrenderer/BasicTexture;->mTextureHeight:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, p2

    const-string p2, "texture is too large: %d x %d"

    .line 83
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/Exception;

    invoke-direct {p2}, Ljava/lang/Exception;-><init>()V

    const-string v0, "BasicTexture"

    invoke-static {v0, p1, p2}, Lcn/nubia/gallery3d/ui/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    return-void
.end method

.method public yield()V
    .locals 0

    .line 166
    invoke-direct {p0}, Lcn/nubia/gallery3d/glrenderer/BasicTexture;->freeResource()V

    return-void
.end method
