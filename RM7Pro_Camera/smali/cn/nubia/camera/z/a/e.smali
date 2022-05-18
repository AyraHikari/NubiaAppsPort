.class Lcn/nubia/camera/z/a/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>()V
    .locals 11

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0xa00000

    .line 31
    iput v0, p0, Lcn/nubia/camera/z/a/e;->b:I

    const/4 v0, 0x1

    .line 32
    iput v0, p0, Lcn/nubia/camera/z/a/e;->c:I

    .line 39
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v2

    :goto_0
    const-string v5, "video/avc"

    if-ge v4, v1, :cond_2

    .line 41
    invoke-static {v4}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v6

    .line 42
    invoke-virtual {v6}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 44
    invoke-virtual {v6}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v6

    .line 45
    array-length v7, v6

    move v8, v2

    :goto_1
    if-ge v8, v7, :cond_1

    aget-object v9, v6, v8

    .line 47
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    move-object v3, v9

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    .line 57
    iput-object v3, p0, Lcn/nubia/camera/z/a/e;->a:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mMime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoParam"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 54
    :cond_3
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v5, v0, v2

    const-string v2, "Not support MIME: %s"

    .line 55
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
