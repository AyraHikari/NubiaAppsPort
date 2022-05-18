.class Lcn/nubia/camera/z/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/z/a/b$a;
    }
.end annotation


# instance fields
.field private a:Lcn/nubia/camera/z/a/e;

.field private b:Ljava/lang/Object;

.field private c:Landroid/media/MediaCodec;

.field private d:Landroid/media/MediaCodec$BufferInfo;

.field private e:Landroid/media/MediaMuxer;

.field private f:I

.field private g:Z

.field private h:J

.field private i:Z

.field private j:J

.field private k:I

.field private l:I

.field private m:I

.field private n:Lcn/nubia/camera/ad/a;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Landroid/net/Uri;

.field private s:Landroid/os/ParcelFileDescriptor;

.field private t:J

.field private u:Lcn/nubia/camera/z/a/b$a;

.field private v:Landroid/view/Surface;

.field private w:Z


# direct methods
.method public constructor <init>(Lcn/nubia/camera/ad/a;)V
    .locals 4

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcn/nubia/camera/z/a/b;->a:Lcn/nubia/camera/z/a/e;

    .line 42
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcn/nubia/camera/z/a/b;->b:Ljava/lang/Object;

    .line 43
    iput-object v0, p0, Lcn/nubia/camera/z/a/b;->c:Landroid/media/MediaCodec;

    .line 44
    iput-object v0, p0, Lcn/nubia/camera/z/a/b;->d:Landroid/media/MediaCodec$BufferInfo;

    .line 45
    iput-object v0, p0, Lcn/nubia/camera/z/a/b;->e:Landroid/media/MediaMuxer;

    const/4 v1, -0x1

    .line 46
    iput v1, p0, Lcn/nubia/camera/z/a/b;->f:I

    const/4 v1, 0x0

    .line 47
    iput-boolean v1, p0, Lcn/nubia/camera/z/a/b;->g:Z

    const-wide/16 v2, 0x0

    .line 48
    iput-wide v2, p0, Lcn/nubia/camera/z/a/b;->h:J

    .line 49
    iput-boolean v1, p0, Lcn/nubia/camera/z/a/b;->i:Z

    .line 50
    iput-wide v2, p0, Lcn/nubia/camera/z/a/b;->j:J

    const/16 v2, 0x64

    .line 51
    iput v2, p0, Lcn/nubia/camera/z/a/b;->k:I

    const/16 v2, 0xa

    .line 52
    iput v2, p0, Lcn/nubia/camera/z/a/b;->l:I

    .line 53
    iput v1, p0, Lcn/nubia/camera/z/a/b;->m:I

    .line 55
    iput-object v0, p0, Lcn/nubia/camera/z/a/b;->o:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcn/nubia/camera/z/a/b;->p:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lcn/nubia/camera/z/a/b;->q:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcn/nubia/camera/z/a/b;->r:Landroid/net/Uri;

    .line 59
    iput-object v0, p0, Lcn/nubia/camera/z/a/b;->s:Landroid/os/ParcelFileDescriptor;

    .line 61
    new-instance v0, Lcn/nubia/camera/z/a/b$a;

    invoke-direct {v0, p0}, Lcn/nubia/camera/z/a/b$a;-><init>(Lcn/nubia/camera/z/a/b;)V

    iput-object v0, p0, Lcn/nubia/camera/z/a/b;->u:Lcn/nubia/camera/z/a/b$a;

    const/4 v0, 0x1

    .line 63
    iput-boolean v0, p0, Lcn/nubia/camera/z/a/b;->w:Z

    .line 69
    new-instance v0, Lcn/nubia/camera/z/a/e;

    invoke-direct {v0}, Lcn/nubia/camera/z/a/e;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/z/a/b;->a:Lcn/nubia/camera/z/a/e;

    .line 70
    iput-object p1, p0, Lcn/nubia/camera/z/a/b;->n:Lcn/nubia/camera/ad/a;

    return-void
.end method

.method private a(Ljava/lang/String;II)Landroid/net/Uri;
    .locals 4

    const-string v0, "MyRecorder"

    .line 197
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "is_pending"

    const/4 v3, 0x1

    .line 198
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "mime_type"

    const-string v3, "video/mp4"

    .line 199
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "title"

    .line 200
    iget-object v3, p0, Lcn/nubia/camera/z/a/b;->p:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "_display_name"

    .line 201
    iget-object v3, p0, Lcn/nubia/camera/z/a/b;->q:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "relative_path"

    .line 202
    invoke-static {p1}, Lcn/nubia/camera/ba/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "datetaken"

    .line 203
    iget-wide v2, p0, Lcn/nubia/camera/z/a/b;->t:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "width"

    .line 204
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "height"

    .line 205
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "resolution"

    .line 206
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, "x"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 208
    :try_start_1
    iget-object p1, p0, Lcn/nubia/camera/z/a/b;->n:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->v()Lcn/nubia/e/a;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/e/a;->b()Landroid/location/Location;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "latitude"

    .line 210
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    invoke-virtual {v1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string p2, "longitude"

    .line 211
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {v1, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 214
    :try_start_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "get location error "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_0
    :goto_0
    iget-object p1, p0, Lcn/nubia/camera/z/a/b;->n:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object p2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    const-string p2, "createUri fail"

    .line 220
    invoke-static {v0, p2, p1}, Lcn/nubia/camera/c/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 221
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method private a(Ljava/lang/String;J)Ljava/lang/String;
    .locals 2

    .line 109
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p2, p3}, Ljava/util/Date;-><init>(J)V

    .line 110
    new-instance p2, Ljava/text/SimpleDateFormat;

    iget-object p3, p0, Lcn/nubia/camera/z/a/b;->n:Lcn/nubia/camera/ad/a;

    .line 111
    invoke-virtual {p3}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p3

    const v1, 0x7f0f03dc

    invoke-virtual {p3, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/camera/z/a/b;->p:Ljava/lang/String;

    .line 113
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcn/nubia/camera/z/a/b;->p:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ".mp4"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/camera/z/a/b;->q:Ljava/lang/String;

    .line 114
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/camera/z/a/b;->q:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(IILjava/lang/String;)V
    .locals 4

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prepareEncoder width is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "llw"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/z/a/b;->d:Landroid/media/MediaCodec$BufferInfo;

    .line 85
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/z/a/b;->a:Lcn/nubia/camera/z/a/e;

    iget-object v0, v0, Lcn/nubia/camera/z/a/e;->a:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    const-string v1, "color-format"

    const v2, 0x7f000789

    .line 89
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v1, "bitrate"

    .line 91
    iget-object v2, p0, Lcn/nubia/camera/z/a/b;->a:Lcn/nubia/camera/z/a/e;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v2, 0xa00000

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v1, "frame-rate"

    .line 92
    iget v2, p0, Lcn/nubia/camera/z/a/b;->l:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v1, "i-frame-interval"

    .line 93
    iget-object v2, p0, Lcn/nubia/camera/z/a/b;->a:Lcn/nubia/camera/z/a/e;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 94
    iget-object v1, p0, Lcn/nubia/camera/z/a/b;->a:Lcn/nubia/camera/z/a/e;

    iget-object v1, v1, Lcn/nubia/camera/z/a/e;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/z/a/b;->c:Landroid/media/MediaCodec;

    const/4 v3, 0x0

    .line 95
    invoke-virtual {v1, v0, v3, v3, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/camera/z/a/b;->t:J

    .line 97
    invoke-direct {p0, p3, v0, v1}, Lcn/nubia/camera/z/a/b;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/z/a/b;->o:Ljava/lang/String;

    .line 98
    invoke-direct {p0, p3, p1, p2}, Lcn/nubia/camera/z/a/b;->a(Ljava/lang/String;II)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/z/a/b;->r:Landroid/net/Uri;

    .line 99
    iget-object p1, p0, Lcn/nubia/camera/z/a/b;->n:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/camera/z/a/b;->r:Landroid/net/Uri;

    const-string p3, "rw"

    invoke-virtual {p1, p2, p3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/z/a/b;->s:Landroid/os/ParcelFileDescriptor;

    .line 100
    new-instance p1, Landroid/media/MediaMuxer;

    iget-object p2, p0, Lcn/nubia/camera/z/a/b;->s:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p2

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Landroid/media/MediaMuxer;-><init>(Ljava/io/FileDescriptor;I)V

    iput-object p1, p0, Lcn/nubia/camera/z/a/b;->e:Landroid/media/MediaMuxer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 103
    invoke-direct {p0}, Lcn/nubia/camera/z/a/b;->h()V

    const-string p2, "MyRecorder"

    const-string p3, "prepareEncoder fail"

    .line 104
    invoke-static {p2, p3, p1}, Lcn/nubia/camera/c/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private a(Landroid/net/Uri;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteFile "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MyRecorder"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v0, p0, Lcn/nubia/camera/z/a/b;->n:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/z/a/b;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcn/nubia/camera/z/a/b;->g()V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/z/a/b;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcn/nubia/camera/z/a/b;->a(Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 3

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 228
    :cond_0
    new-instance v0, Lcn/nubia/l/b/g;

    iget-object v1, p0, Lcn/nubia/camera/z/a/b;->n:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1}, Lcn/nubia/l/a/a;->a(Ljava/lang/String;)Z

    move-result p1

    invoke-direct {v0, v1, p2, v2, p1}, Lcn/nubia/l/b/g;-><init>(Landroid/content/Context;Landroid/net/Uri;IZ)V

    .line 229
    iget-object p1, p0, Lcn/nubia/camera/z/a/b;->n:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->h()Lcn/nubia/l/a/b;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcn/nubia/l/a/b;->a(Lcn/nubia/l/b/d;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic b(Lcn/nubia/camera/z/a/b;)Ljava/lang/String;
    .locals 0

    .line 34
    iget-object p0, p0, Lcn/nubia/camera/z/a/b;->o:Ljava/lang/String;

    return-object p0
.end method

.method private b(Z)V
    .locals 15

    move-object v0, p0

    const-string v1, "llw"

    const-string v2, "drainEncoder enter"

    .line 295
    invoke-static {v1, v2}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 297
    iget-object v2, v0, Lcn/nubia/camera/z/a/b;->c:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    .line 299
    :cond_0
    iget-object v2, v0, Lcn/nubia/camera/z/a/b;->c:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 301
    :cond_1
    :goto_0
    iget-object v3, v0, Lcn/nubia/camera/z/a/b;->c:Landroid/media/MediaCodec;

    iget-object v4, v0, Lcn/nubia/camera/z/a/b;->d:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v5, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    if-nez p1, :cond_1

    const-string v2, "drainEncoder break0"

    .line 304
    invoke-static {v1, v2}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_2
    const/4 v4, -0x3

    if-ne v3, v4, :cond_3

    .line 308
    iget-object v2, v0, Lcn/nubia/camera/z/a/b;->c:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v2

    goto :goto_0

    :cond_3
    const/4 v4, -0x2

    const/4 v5, 0x1

    if-ne v3, v4, :cond_5

    .line 310
    iget-boolean v3, v0, Lcn/nubia/camera/z/a/b;->g:Z

    if-nez v3, :cond_4

    .line 313
    iget-object v3, v0, Lcn/nubia/camera/z/a/b;->c:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v3

    .line 314
    iget-object v4, v0, Lcn/nubia/camera/z/a/b;->e:Landroid/media/MediaMuxer;

    invoke-virtual {v4, v3}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v3

    iput v3, v0, Lcn/nubia/camera/z/a/b;->f:I

    .line 315
    iget-object v3, v0, Lcn/nubia/camera/z/a/b;->e:Landroid/media/MediaMuxer;

    invoke-virtual {v3}, Landroid/media/MediaMuxer;->start()V

    .line 316
    iput-boolean v5, v0, Lcn/nubia/camera/z/a/b;->g:Z

    goto :goto_0

    .line 311
    :cond_4
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "format changed twice"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 318
    :cond_5
    aget-object v4, v2, v3

    if-eqz v4, :cond_9

    .line 322
    iget-object v6, v0, Lcn/nubia/camera/z/a/b;->d:Landroid/media/MediaCodec$BufferInfo;

    iget v6, v6, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v7, 0x2

    and-int/2addr v6, v7

    const/4 v8, 0x0

    if-eqz v6, :cond_6

    .line 323
    iget-object v6, v0, Lcn/nubia/camera/z/a/b;->d:Landroid/media/MediaCodec$BufferInfo;

    iput v8, v6, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 325
    :cond_6
    iget-object v6, v0, Lcn/nubia/camera/z/a/b;->d:Landroid/media/MediaCodec$BufferInfo;

    iget v6, v6, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v6, :cond_8

    .line 326
    iget-boolean v6, v0, Lcn/nubia/camera/z/a/b;->g:Z

    if-eqz v6, :cond_7

    .line 330
    iget-object v6, v0, Lcn/nubia/camera/z/a/b;->d:Landroid/media/MediaCodec$BufferInfo;

    iget v6, v6, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 331
    iget-object v6, v0, Lcn/nubia/camera/z/a/b;->d:Landroid/media/MediaCodec$BufferInfo;

    iget v6, v6, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget-object v9, v0, Lcn/nubia/camera/z/a/b;->d:Landroid/media/MediaCodec$BufferInfo;

    iget v9, v9, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v6, v9

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 335
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 336
    iget-object v6, v0, Lcn/nubia/camera/z/a/b;->d:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v11, v0, Lcn/nubia/camera/z/a/b;->j:J

    iput-wide v11, v6, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 337
    iget-wide v11, v0, Lcn/nubia/camera/z/a/b;->j:J

    const-wide/32 v13, 0xf4240

    iget v6, v0, Lcn/nubia/camera/z/a/b;->l:I

    int-to-long v7, v6

    div-long/2addr v13, v7

    add-long/2addr v11, v13

    iput-wide v11, v0, Lcn/nubia/camera/z/a/b;->j:J

    .line 338
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "drainEncoder mTime is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcn/nubia/camera/z/a/b;->d:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v7, v7, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mFPS is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcn/nubia/camera/z/a/b;->l:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-object v6, v0, Lcn/nubia/camera/z/a/b;->e:Landroid/media/MediaMuxer;

    iget v7, v0, Lcn/nubia/camera/z/a/b;->f:I

    iget-object v8, v0, Lcn/nubia/camera/z/a/b;->d:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v6, v7, v4, v8}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 340
    iget v4, v0, Lcn/nubia/camera/z/a/b;->m:I

    add-int/2addr v4, v5

    iput v4, v0, Lcn/nubia/camera/z/a/b;->m:I

    .line 341
    iget-wide v6, v0, Lcn/nubia/camera/z/a/b;->h:J

    iget-object v4, v0, Lcn/nubia/camera/z/a/b;->d:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    int-to-long v11, v4

    add-long/2addr v6, v11

    iput-wide v6, v0, Lcn/nubia/camera/z/a/b;->h:J

    .line 342
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v9

    const-wide/16 v8, 0x32

    cmp-long v4, v6, v8

    if-lez v4, :cond_8

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 344
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v4, v7

    iget-wide v6, v0, Lcn/nubia/camera/z/a/b;->h:J

    long-to-float v6, v6

    const/high16 v7, 0x44800000    # 1024.0f

    div-float/2addr v6, v7

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v5, "XXX: dt=%d, size=%.2f"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "DEBUG"

    invoke-static {v5, v4}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 327
    :cond_7
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "muxer hasn\'t started"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 350
    :cond_8
    :goto_1
    iget-object v4, v0, Lcn/nubia/camera/z/a/b;->c:Landroid/media/MediaCodec;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 351
    iget-object v3, v0, Lcn/nubia/camera/z/a/b;->d:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_1

    const-string v2, "drainEncoder break1"

    .line 352
    invoke-static {v1, v2}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    const-string v2, "drainEncoder exit"

    .line 357
    invoke-static {v1, v2}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 320
    :cond_9
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "encoderOutputBuffer "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " was null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic c(Lcn/nubia/camera/z/a/b;)Landroid/net/Uri;
    .locals 0

    .line 34
    iget-object p0, p0, Lcn/nubia/camera/z/a/b;->r:Landroid/net/Uri;

    return-object p0
.end method

.method private e()V
    .locals 5

    .line 162
    iget-object v0, p0, Lcn/nubia/camera/z/a/b;->n:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->v()Lcn/nubia/e/a;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/e/a;->b()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v1, p0, Lcn/nubia/camera/z/a/b;->e:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    double-to-float v0, v3

    invoke-virtual {v1, v2, v0}, Landroid/media/MediaMuxer;->setLocation(FF)V

    :cond_0
    return-void
.end method

.method private f()Z
    .locals 1

    .line 169
    iget-object v0, p0, Lcn/nubia/camera/z/a/b;->c:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/camera/z/a/b;->i:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private g()V
    .locals 6

    .line 183
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "is_pending"

    const/4 v2, 0x0

    .line 184
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "duration"

    const-wide/16 v2, 0x3e8

    .line 185
    iget v4, p0, Lcn/nubia/camera/z/a/b;->m:I

    int-to-long v4, v4

    mul-long/2addr v4, v2

    iget v2, p0, Lcn/nubia/camera/z/a/b;->l:I

    int-to-long v2, v2

    div-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 187
    iget-object v1, p0, Lcn/nubia/camera/z/a/b;->n:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/z/a/b;->r:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MyRecorder"

    const-string v2, "updateContentResolver fail"

    .line 189
    invoke-static {v1, v2, v0}, Lcn/nubia/camera/c/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private h()V
    .locals 5

    const-string v0, "MyRecorder"

    const-string v1, "llw"

    .line 247
    iget-object v2, p0, Lcn/nubia/camera/z/a/b;->c:Landroid/media/MediaCodec;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 248
    invoke-virtual {v2}, Landroid/media/MediaCodec;->stop()V

    .line 249
    iget-object v2, p0, Lcn/nubia/camera/z/a/b;->c:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V

    .line 250
    iput-object v3, p0, Lcn/nubia/camera/z/a/b;->c:Landroid/media/MediaCodec;

    .line 252
    :cond_0
    iget-object v2, p0, Lcn/nubia/camera/z/a/b;->v:Landroid/view/Surface;

    if-eqz v2, :cond_1

    .line 253
    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    .line 254
    iput-object v3, p0, Lcn/nubia/camera/z/a/b;->v:Landroid/view/Surface;

    .line 257
    :cond_1
    :try_start_0
    iget-boolean v2, p0, Lcn/nubia/camera/z/a/b;->g:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcn/nubia/camera/z/a/b;->e:Landroid/media/MediaMuxer;

    if-eqz v2, :cond_3

    const-string v2, "mMediaMuxer.stop()"

    .line 258
    invoke-static {v1, v2}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v2, p0, Lcn/nubia/camera/z/a/b;->e:Landroid/media/MediaMuxer;

    invoke-virtual {v2}, Landroid/media/MediaMuxer;->stop()V

    .line 260
    iget-object v2, p0, Lcn/nubia/camera/z/a/b;->e:Landroid/media/MediaMuxer;

    invoke-virtual {v2}, Landroid/media/MediaMuxer;->release()V

    .line 261
    iput-object v3, p0, Lcn/nubia/camera/z/a/b;->e:Landroid/media/MediaMuxer;

    .line 263
    iget-boolean v2, p0, Lcn/nubia/camera/z/a/b;->w:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcn/nubia/camera/z/a/b;->m:I

    iget v4, p0, Lcn/nubia/camera/z/a/b;->l:I

    if-ge v2, v4, :cond_2

    .line 264
    iget-object v2, p0, Lcn/nubia/camera/z/a/b;->r:Landroid/net/Uri;

    invoke-direct {p0, v2}, Lcn/nubia/camera/z/a/b;->a(Landroid/net/Uri;)V

    .line 265
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Del: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcn/nubia/camera/z/a/b;->m:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " < "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcn/nubia/camera/z/a/b;->l:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 267
    :cond_2
    iget-object v2, p0, Lcn/nubia/camera/z/a/b;->u:Lcn/nubia/camera/z/a/b$a;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcn/nubia/camera/z/a/b$a;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 271
    iget-object v4, p0, Lcn/nubia/camera/z/a/b;->r:Landroid/net/Uri;

    invoke-direct {p0, v4}, Lcn/nubia/camera/z/a/b;->a(Landroid/net/Uri;)V

    const-string v4, "mMediaMuxer.stop() failed"

    .line 272
    invoke-static {v1, v4}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 276
    :cond_3
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcn/nubia/camera/z/a/b;->s:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 277
    iput-object v3, p0, Lcn/nubia/camera/z/a/b;->s:Landroid/os/ParcelFileDescriptor;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v2, "close fd fail"

    .line 279
    invoke-static {v0, v2, v1}, Lcn/nubia/camera/c/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 173
    invoke-direct {p0}, Lcn/nubia/camera/z/a/b;->f()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/z/a/b;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 177
    :try_start_0
    invoke-direct {p0, v1}, Lcn/nubia/camera/z/a/b;->b(Z)V

    .line 178
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public a(I)V
    .locals 1

    .line 118
    iget-object v0, p0, Lcn/nubia/camera/z/a/b;->e:Landroid/media/MediaMuxer;

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {v0, p1}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 134
    iput-boolean p1, p0, Lcn/nubia/camera/z/a/b;->w:Z

    return-void
.end method

.method public a(IILjava/lang/String;I)Z
    .locals 4

    .line 138
    iget-object v0, p0, Lcn/nubia/camera/z/a/b;->v:Landroid/view/Surface;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "llw"

    const-string v2, "firstTimeSetup is ok "

    .line 141
    invoke-static {v0, v2}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    .line 143
    :try_start_0
    iget-object v3, p0, Lcn/nubia/camera/z/a/b;->c:Landroid/media/MediaCodec;

    if-nez v3, :cond_1

    .line 144
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/camera/z/a/b;->a(IILjava/lang/String;)V

    .line 146
    :cond_1
    invoke-virtual {p0, p4}, Lcn/nubia/camera/z/a/b;->a(I)V

    .line 147
    invoke-direct {p0}, Lcn/nubia/camera/z/a/b;->e()V

    .line 148
    iget-object p1, p0, Lcn/nubia/camera/z/a/b;->c:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/z/a/b;->v:Landroid/view/Surface;

    .line 149
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "firstTimeSetup mSurface is :"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/camera/z/a/b;->v:Landroid/view/Surface;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object p1, p0, Lcn/nubia/camera/z/a/b;->c:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->start()V

    .line 151
    iput-boolean v2, p0, Lcn/nubia/camera/z/a/b;->i:Z

    const-wide/16 p1, 0x0

    .line 152
    iput-wide p1, p0, Lcn/nubia/camera/z/a/b;->j:J

    .line 153
    iput-wide p1, p0, Lcn/nubia/camera/z/a/b;->h:J

    .line 154
    iput v1, p0, Lcn/nubia/camera/z/a/b;->m:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 156
    :catch_0
    invoke-direct {p0}, Lcn/nubia/camera/z/a/b;->h()V

    :goto_0
    return v2
.end method

.method public b()V
    .locals 2

    .line 233
    invoke-direct {p0}, Lcn/nubia/camera/z/a/b;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcn/nubia/camera/z/a/b;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 235
    :try_start_0
    invoke-direct {p0, v1}, Lcn/nubia/camera/z/a/b;->b(Z)V

    .line 236
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    invoke-direct {p0}, Lcn/nubia/camera/z/a/b;->h()V

    const/4 v0, 0x0

    .line 238
    iput-boolean v0, p0, Lcn/nubia/camera/z/a/b;->i:Z

    .line 239
    iput-boolean v0, p0, Lcn/nubia/camera/z/a/b;->g:Z

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 236
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method public b(I)V
    .locals 1

    .line 129
    iput p1, p0, Lcn/nubia/camera/z/a/b;->l:I

    .line 130
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setFPS mFPS is: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcn/nubia/camera/z/a/b;->l:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "llw"

    invoke-static {v0, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public c()Landroid/view/Surface;
    .locals 1

    .line 361
    iget-object v0, p0, Lcn/nubia/camera/z/a/b;->v:Landroid/view/Surface;

    return-object v0
.end method

.method public d()J
    .locals 2

    .line 365
    iget-object v0, p0, Lcn/nubia/camera/z/a/b;->o:Ljava/lang/String;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 368
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcn/nubia/camera/z/a/b;->o:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 369
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method
