.class public Lpl/droidsonroids/gif/GifAnimationMetaData;
.super Ljava/lang/Object;
.source "GifAnimationMetaData.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lpl/droidsonroids/gif/GifAnimationMetaData;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x4eff56d4f010140dL


# instance fields
.field private final mDuration:I

.field private final mHeight:I

.field private final mImageCount:I

.field private final mLoopCount:I

.field private final mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 247
    new-instance v0, Lpl/droidsonroids/gif/GifAnimationMetaData$1;

    invoke-direct {v0}, Lpl/droidsonroids/gif/GifAnimationMetaData$1;-><init>()V

    sput-object v0, Lpl/droidsonroids/gif/GifAnimationMetaData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 156
    invoke-static {p1, p2, v0}, Lpl/droidsonroids/gif/GifInfoHandle;->openUri(Landroid/content/ContentResolver;Landroid/net/Uri;Z)Lpl/droidsonroids/gif/GifInfoHandle;

    move-result-object p1

    invoke-direct {p0, p1}, Lpl/droidsonroids/gif/GifAnimationMetaData;-><init>(Lpl/droidsonroids/gif/GifInfoHandle;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetFileDescriptor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 108
    invoke-static {p1, v0}, Lpl/droidsonroids/gif/GifInfoHandle;->openAssetFileDescriptor(Landroid/content/res/AssetFileDescriptor;Z)Lpl/droidsonroids/gif/GifInfoHandle;

    move-result-object p1

    invoke-direct {p0, p1}, Lpl/droidsonroids/gif/GifAnimationMetaData;-><init>(Lpl/droidsonroids/gif/GifInfoHandle;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    invoke-direct {p0, p1}, Lpl/droidsonroids/gif/GifAnimationMetaData;-><init>(Landroid/content/res/AssetFileDescriptor;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    invoke-direct {p0, p1}, Lpl/droidsonroids/gif/GifAnimationMetaData;-><init>(Landroid/content/res/AssetFileDescriptor;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lpl/droidsonroids/gif/GifAnimationMetaData;->mLoopCount:I

    .line 241
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lpl/droidsonroids/gif/GifAnimationMetaData;->mDuration:I

    .line 242
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lpl/droidsonroids/gif/GifAnimationMetaData;->mHeight:I

    .line 243
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lpl/droidsonroids/gif/GifAnimationMetaData;->mWidth:I

    .line 244
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lpl/droidsonroids/gif/GifAnimationMetaData;->mImageCount:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lpl/droidsonroids/gif/GifAnimationMetaData$1;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lpl/droidsonroids/gif/GifAnimationMetaData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lpl/droidsonroids/gif/GifInfoHandle;->openFile(Ljava/lang/String;Z)Lpl/droidsonroids/gif/GifInfoHandle;

    move-result-object p1

    invoke-direct {p0, p1}, Lpl/droidsonroids/gif/GifAnimationMetaData;-><init>(Lpl/droidsonroids/gif/GifInfoHandle;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    .line 119
    invoke-static {p1, v0, v1, v2}, Lpl/droidsonroids/gif/GifInfoHandle;->openFd(Ljava/io/FileDescriptor;JZ)Lpl/droidsonroids/gif/GifInfoHandle;

    move-result-object p1

    invoke-direct {p0, p1}, Lpl/droidsonroids/gif/GifAnimationMetaData;-><init>(Lpl/droidsonroids/gif/GifInfoHandle;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 96
    invoke-static {p1, v0}, Lpl/droidsonroids/gif/GifInfoHandle;->openMarkableInputStream(Ljava/io/InputStream;Z)Lpl/droidsonroids/gif/GifInfoHandle;

    move-result-object p1

    invoke-direct {p0, p1}, Lpl/droidsonroids/gif/GifAnimationMetaData;-><init>(Lpl/droidsonroids/gif/GifInfoHandle;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 72
    invoke-static {p1, v0}, Lpl/droidsonroids/gif/GifInfoHandle;->openFile(Ljava/lang/String;Z)Lpl/droidsonroids/gif/GifInfoHandle;

    move-result-object p1

    invoke-direct {p0, p1}, Lpl/droidsonroids/gif/GifAnimationMetaData;-><init>(Lpl/droidsonroids/gif/GifInfoHandle;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 143
    invoke-static {p1, v0}, Lpl/droidsonroids/gif/GifInfoHandle;->openDirectByteBuffer(Ljava/nio/ByteBuffer;Z)Lpl/droidsonroids/gif/GifInfoHandle;

    move-result-object p1

    invoke-direct {p0, p1}, Lpl/droidsonroids/gif/GifAnimationMetaData;-><init>(Lpl/droidsonroids/gif/GifInfoHandle;)V

    return-void
.end method

.method private constructor <init>(Lpl/droidsonroids/gif/GifInfoHandle;)V
    .locals 1

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    invoke-virtual {p1}, Lpl/droidsonroids/gif/GifInfoHandle;->getLoopCount()I

    move-result v0

    iput v0, p0, Lpl/droidsonroids/gif/GifAnimationMetaData;->mLoopCount:I

    .line 161
    invoke-virtual {p1}, Lpl/droidsonroids/gif/GifInfoHandle;->getDuration()I

    move-result v0

    iput v0, p0, Lpl/droidsonroids/gif/GifAnimationMetaData;->mDuration:I

    .line 162
    invoke-virtual {p1}, Lpl/droidsonroids/gif/GifInfoHandle;->recycle()V

    .line 163
    iget v0, p1, Lpl/droidsonroids/gif/GifInfoHandle;->width:I

    iput v0, p0, Lpl/droidsonroids/gif/GifAnimationMetaData;->mWidth:I

    .line 164
    iget v0, p1, Lpl/droidsonroids/gif/GifInfoHandle;->height:I

    iput v0, p0, Lpl/droidsonroids/gif/GifAnimationMetaData;->mHeight:I

    .line 165
    iget p1, p1, Lpl/droidsonroids/gif/GifInfoHandle;->frameCount:I

    iput p1, p0, Lpl/droidsonroids/gif/GifAnimationMetaData;->mImageCount:I

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 131
    invoke-static {p1, v0}, Lpl/droidsonroids/gif/GifInfoHandle;->openByteArray([BZ)Lpl/droidsonroids/gif/GifInfoHandle;

    move-result-object p1

    invoke-direct {p0, p1}, Lpl/droidsonroids/gif/GifAnimationMetaData;-><init>(Lpl/droidsonroids/gif/GifInfoHandle;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDuration()I
    .locals 1

    .line 208
    iget v0, p0, Lpl/droidsonroids/gif/GifAnimationMetaData;->mDuration:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 179
    iget v0, p0, Lpl/droidsonroids/gif/GifAnimationMetaData;->mHeight:I

    return v0
.end method

.method public getLoopCount()I
    .locals 1

    .line 196
    iget v0, p0, Lpl/droidsonroids/gif/GifAnimationMetaData;->mLoopCount:I

    return v0
.end method

.method public getNumberOfFrames()I
    .locals 1

    .line 186
    iget v0, p0, Lpl/droidsonroids/gif/GifAnimationMetaData;->mImageCount:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 172
    iget v0, p0, Lpl/droidsonroids/gif/GifAnimationMetaData;->mWidth:I

    return v0
.end method

.method public isAnimated()Z
    .locals 2

    .line 215
    iget v0, p0, Lpl/droidsonroids/gif/GifAnimationMetaData;->mImageCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget v0, p0, Lpl/droidsonroids/gif/GifAnimationMetaData;->mDuration:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 220
    iget v0, p0, Lpl/droidsonroids/gif/GifAnimationMetaData;->mLoopCount:I

    if-nez v0, :cond_0

    const-string v0, "Infinity"

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 221
    :goto_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lpl/droidsonroids/gif/GifAnimationMetaData;->mWidth:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lpl/droidsonroids/gif/GifAnimationMetaData;->mHeight:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lpl/droidsonroids/gif/GifAnimationMetaData;->mImageCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object v0, v2, v3

    const/4 v0, 0x4

    iget v3, p0, Lpl/droidsonroids/gif/GifAnimationMetaData;->mDuration:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v0, "GIF: size: %dx%d, frames: %d, loops: %s, duration: %d"

    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 222
    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifAnimationMetaData;->isAnimated()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Animated "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 232
    iget p2, p0, Lpl/droidsonroids/gif/GifAnimationMetaData;->mLoopCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 233
    iget p2, p0, Lpl/droidsonroids/gif/GifAnimationMetaData;->mDuration:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    iget p2, p0, Lpl/droidsonroids/gif/GifAnimationMetaData;->mHeight:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 235
    iget p2, p0, Lpl/droidsonroids/gif/GifAnimationMetaData;->mWidth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 236
    iget p2, p0, Lpl/droidsonroids/gif/GifAnimationMetaData;->mImageCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
