.class public Lcn/nubia/camera/multiRecord/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaRecorder$OnErrorListener;
.implements Landroid/media/MediaRecorder$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/multiRecord/h$c;,
        Lcn/nubia/camera/multiRecord/h$b;,
        Lcn/nubia/camera/multiRecord/h$a;
    }
.end annotation


# instance fields
.field private A:[Lcn/nubia/camera/multiRecord/h$b;

.field private B:Lcn/nubia/camera/multiRecord/a/a;

.field private final C:Landroid/media/MediaPlayer$OnCompletionListener;

.field private D:Ljava/text/SimpleDateFormat;

.field private a:Lcn/nubia/camera/ad/a;

.field private b:Landroid/media/MediaRecorder;

.field private c:Landroid/media/CamcorderProfile;

.field private d:Lcn/nubia/camera/bb/u;

.field private e:Lcn/nubia/camera/multiRecord/l;

.field private f:I

.field private g:I

.field private h:I

.field private i:J

.field private j:J

.field private k:J

.field private l:Lcn/nubia/camera/bb/t;

.field private m:Lcn/nubia/camera/bb/z;

.field private n:Lcn/nubia/camera/multiRecord/h$c;

.field private o:Lcn/nubia/camera/bb/a;

.field private p:Lcn/nubia/camera/multiRecord/h$a;

.field private q:Lcn/nubia/camera/elefnovideo/l;

.field private r:Z

.field private s:Z

.field private t:Ljava/lang/Thread;

.field private u:I

.field private v:Z

.field private w:[Landroid/media/MediaRecorder;

.field private x:[Landroid/graphics/SurfaceTexture;

.field private y:[I

.field private z:[Lcn/nubia/camera/bb/u;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/multiRecord/l;)V
    .locals 2

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Lcn/nubia/camera/multiRecord/h$c;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/nubia/camera/multiRecord/h$c;-><init>(Lcn/nubia/camera/multiRecord/h;Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/camera/multiRecord/h;->n:Lcn/nubia/camera/multiRecord/h$c;

    .line 64
    new-instance v0, Lcn/nubia/camera/bb/a;

    invoke-direct {v0}, Lcn/nubia/camera/bb/a;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/multiRecord/h;->o:Lcn/nubia/camera/bb/a;

    .line 67
    sget-object v0, Lcn/nubia/camera/elefnovideo/l;->a:Lcn/nubia/camera/elefnovideo/l;

    iput-object v0, p0, Lcn/nubia/camera/multiRecord/h;->q:Lcn/nubia/camera/elefnovideo/l;

    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Lcn/nubia/camera/multiRecord/h;->r:Z

    .line 70
    iput-boolean v0, p0, Lcn/nubia/camera/multiRecord/h;->s:Z

    const/4 v1, 0x0

    .line 71
    iput-object v1, p0, Lcn/nubia/camera/multiRecord/h;->t:Ljava/lang/Thread;

    .line 72
    iput v0, p0, Lcn/nubia/camera/multiRecord/h;->u:I

    .line 73
    iput-boolean v0, p0, Lcn/nubia/camera/multiRecord/h;->v:Z

    new-array v1, v0, [Landroid/media/MediaRecorder;

    .line 76
    iput-object v1, p0, Lcn/nubia/camera/multiRecord/h;->w:[Landroid/media/MediaRecorder;

    new-array v1, v0, [Landroid/graphics/SurfaceTexture;

    .line 77
    iput-object v1, p0, Lcn/nubia/camera/multiRecord/h;->x:[Landroid/graphics/SurfaceTexture;

    new-array v1, v0, [I

    .line 78
    iput-object v1, p0, Lcn/nubia/camera/multiRecord/h;->y:[I

    new-array v1, v0, [Lcn/nubia/camera/bb/u;

    .line 79
    iput-object v1, p0, Lcn/nubia/camera/multiRecord/h;->z:[Lcn/nubia/camera/bb/u;

    new-array v0, v0, [Lcn/nubia/camera/multiRecord/h$b;

    .line 80
    iput-object v0, p0, Lcn/nubia/camera/multiRecord/h;->A:[Lcn/nubia/camera/multiRecord/h$b;

    .line 161
    new-instance v0, Lcn/nubia/camera/multiRecord/h$2;

    invoke-direct {v0, p0}, Lcn/nubia/camera/multiRecord/h$2;-><init>(Lcn/nubia/camera/multiRecord/h;)V

    iput-object v0, p0, Lcn/nubia/camera/multiRecord/h;->C:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 84
    iput-object p1, p0, Lcn/nubia/camera/multiRecord/h;->a:Lcn/nubia/camera/ad/a;

    .line 85
    iput-object p2, p0, Lcn/nubia/camera/multiRecord/h;->e:Lcn/nubia/camera/multiRecord/l;

    .line 86
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->r()Lcn/nubia/j/a;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcn/nubia/j/a;->c(I)V

    .line 87
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/h;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->r()Lcn/nubia/j/a;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lcn/nubia/j/a;->a(I)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/multiRecord/h;)I
    .locals 0

    .line 49
    invoke-direct {p0}, Lcn/nubia/camera/multiRecord/h;->j()I

    move-result p0

    return p0
.end method

.method static synthetic a(Lcn/nubia/camera/multiRecord/h;I)I
    .locals 0

    .line 49
    iput p1, p0, Lcn/nubia/camera/multiRecord/h;->u:I

    return p1
.end method

.method private a(Landroid/location/Location;Lcn/nubia/camera/bb/u;J)Landroid/content/ContentValues;
    .locals 2

    .line 857
    new-instance p3, Landroid/content/ContentValues;

    const/16 p4, 0xa

    invoke-direct {p3, p4}, Landroid/content/ContentValues;-><init>(I)V

    const/4 p4, 0x1

    .line 858
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const-string v0, "is_pending"

    invoke-virtual {p3, v0, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 860
    iget-object p4, p2, Lcn/nubia/camera/bb/u;->a:Ljava/lang/String;

    const-string v0, "title"

    invoke-virtual {p3, v0, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    iget-object p4, p2, Lcn/nubia/camera/bb/u;->c:Ljava/lang/String;

    const-string v0, "_display_name"

    invoke-virtual {p3, v0, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    iget-wide v0, p2, Lcn/nubia/camera/bb/u;->e:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    const-string v0, "datetaken"

    invoke-virtual {p3, v0, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 863
    iget-object p4, p2, Lcn/nubia/camera/bb/u;->d:Ljava/lang/String;

    const-string v0, "mime_type"

    invoke-virtual {p3, v0, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    iget-object p4, p2, Lcn/nubia/camera/bb/u;->b:Ljava/lang/String;

    invoke-static {p4}, Lcn/nubia/camera/ba/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const-string v0, "relative_path"

    invoke-virtual {p3, v0, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p2, Lcn/nubia/camera/bb/u;->b:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v0, "/"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    iget-object v1, p2, Lcn/nubia/camera/bb/u;->c:Ljava/lang/String;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v1, "_data"

    invoke-virtual {p3, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "jinrrong DATA\uff1a\u3000"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    iget-object v1, p2, Lcn/nubia/camera/bb/u;->b:Ljava/lang/String;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    iget-object v0, p2, Lcn/nubia/camera/bb/u;->c:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "MultiRecordManager"

    invoke-static {v0, p4}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p2, Lcn/nubia/camera/bb/u;->h:I

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v0, "x"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    iget p2, p2, Lcn/nubia/camera/bb/u;->i:I

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p4, "resolution"

    invoke-virtual {p3, p4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 869
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const-string p4, "latitude"

    invoke-virtual {p3, p4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 870
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string p2, "longitude"

    invoke-virtual {p3, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    :cond_0
    return-object p3
.end method

.method private a(Landroid/media/CamcorderProfile;Landroid/media/MediaRecorder;J)Lcn/nubia/camera/bb/u;
    .locals 19

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    .line 218
    iget-object v0, v10, Lcn/nubia/camera/multiRecord/h;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->q()Lcn/nubia/camera/al/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/al/c;->d()I

    move-result v0

    iput v0, v10, Lcn/nubia/camera/multiRecord/h;->h:I

    if-eqz v0, :cond_1

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 224
    :cond_0
    iget v0, v11, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iput v0, v10, Lcn/nubia/camera/multiRecord/h;->f:I

    .line 225
    iget v0, v11, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iput v0, v10, Lcn/nubia/camera/multiRecord/h;->g:I

    goto :goto_1

    .line 220
    :cond_1
    :goto_0
    iget v0, v11, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iput v0, v10, Lcn/nubia/camera/multiRecord/h;->f:I

    .line 221
    iget v0, v11, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iput v0, v10, Lcn/nubia/camera/multiRecord/h;->g:I

    :goto_1
    const/4 v0, 0x2

    .line 228
    iput v0, v11, Landroid/media/CamcorderProfile;->videoCodec:I

    const/4 v0, 0x3

    .line 229
    iput v0, v11, Landroid/media/CamcorderProfile;->audioCodec:I

    const/4 v12, 0x0

    .line 230
    iput v12, v11, Landroid/media/CamcorderProfile;->duration:I

    .line 232
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 233
    invoke-direct {v10, v13, v14}, Lcn/nubia/camera/multiRecord/h;->a(J)Ljava/lang/String;

    move-result-object v1

    .line 234
    iget v4, v11, Landroid/media/CamcorderProfile;->fileFormat:I

    iget v5, v10, Lcn/nubia/camera/multiRecord/h;->f:I

    iget v6, v10, Lcn/nubia/camera/multiRecord/h;->g:I

    iget v7, v11, Landroid/media/CamcorderProfile;->duration:I

    const/4 v8, 0x1

    const/16 v9, 0x1e

    move-object/from16 v0, p0

    move-wide v2, v13

    invoke-direct/range {v0 .. v9}, Lcn/nubia/camera/multiRecord/h;->a(Ljava/lang/String;JIIIIZI)Lcn/nubia/camera/bb/u;

    move-result-object v15

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move-object v5, v15

    .line 236
    invoke-direct/range {v0 .. v5}, Lcn/nubia/camera/multiRecord/h;->a(Landroid/media/CamcorderProfile;Landroid/media/MediaRecorder;JLcn/nubia/camera/bb/u;)V

    .line 238
    iget-object v0, v10, Lcn/nubia/camera/multiRecord/h;->w:[Landroid/media/MediaRecorder;

    array-length v0, v0

    new-array v0, v0, [Lcn/nubia/camera/bb/u;

    iput-object v0, v10, Lcn/nubia/camera/multiRecord/h;->z:[Lcn/nubia/camera/bb/u;

    .line 239
    :goto_2
    iget-object v0, v10, Lcn/nubia/camera/multiRecord/h;->w:[Landroid/media/MediaRecorder;

    array-length v0, v0

    if-ge v12, v0, :cond_2

    add-int/lit8 v9, v12, 0x1

    mul-int/lit16 v0, v9, 0x3e8

    int-to-long v0, v0

    add-long/2addr v0, v13

    .line 240
    invoke-direct {v10, v0, v1}, Lcn/nubia/camera/multiRecord/h;->a(J)Ljava/lang/String;

    move-result-object v1

    .line 241
    iget-object v8, v10, Lcn/nubia/camera/multiRecord/h;->z:[Lcn/nubia/camera/bb/u;

    iget v4, v11, Landroid/media/CamcorderProfile;->fileFormat:I

    iget v5, v10, Lcn/nubia/camera/multiRecord/h;->f:I

    iget v6, v10, Lcn/nubia/camera/multiRecord/h;->g:I

    iget v7, v11, Landroid/media/CamcorderProfile;->duration:I

    const/16 v16, 0x1

    const/16 v17, 0x1e

    move-object/from16 v0, p0

    move-wide v2, v13

    move-object/from16 v18, v8

    move/from16 v8, v16

    move/from16 v16, v9

    move/from16 v9, v17

    invoke-direct/range {v0 .. v9}, Lcn/nubia/camera/multiRecord/h;->a(Ljava/lang/String;JIIIIZI)Lcn/nubia/camera/bb/u;

    move-result-object v0

    aput-object v0, v18, v12

    .line 243
    iget-object v0, v10, Lcn/nubia/camera/multiRecord/h;->w:[Landroid/media/MediaRecorder;

    aget-object v2, v0, v12

    iget-object v0, v10, Lcn/nubia/camera/multiRecord/h;->z:[Lcn/nubia/camera/bb/u;

    aget-object v5, v0, v12

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v3, p3

    invoke-direct/range {v0 .. v5}, Lcn/nubia/camera/multiRecord/h;->a(Landroid/media/CamcorderProfile;Landroid/media/MediaRecorder;JLcn/nubia/camera/bb/u;)V

    move/from16 v12, v16

    goto :goto_2

    :cond_2
    return-object v15
.end method

.method private a(Ljava/lang/String;JIIIIZI)Lcn/nubia/camera/bb/u;
    .locals 2

    .line 877
    new-instance v0, Lcn/nubia/camera/bb/u;

    invoke-direct {v0}, Lcn/nubia/camera/bb/u;-><init>()V

    .line 878
    invoke-direct {p0, p4}, Lcn/nubia/camera/multiRecord/h;->e(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/camera/bb/u;->d:Ljava/lang/String;

    .line 879
    iput-wide p2, v0, Lcn/nubia/camera/bb/u;->e:J

    .line 880
    iput p5, v0, Lcn/nubia/camera/bb/u;->h:I

    .line 881
    iput p6, v0, Lcn/nubia/camera/bb/u;->i:I

    .line 882
    iput p7, v0, Lcn/nubia/camera/bb/u;->g:I

    .line 883
    iput p9, v0, Lcn/nubia/camera/bb/u;->j:I

    if-eqz p8, :cond_0

    .line 885
    iput-object p1, v0, Lcn/nubia/camera/bb/u;->a:Ljava/lang/String;

    .line 886
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, v0, Lcn/nubia/camera/bb/u;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-direct {p0, p4}, Lcn/nubia/camera/multiRecord/h;->d(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcn/nubia/camera/bb/u;->c:Ljava/lang/String;

    .line 887
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/h;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->y()Lcn/nubia/k/a/a;

    move-result-object p1

    sget-object p2, Lcn/nubia/camera/af/a;->X:Lcn/nubia/camera/af/a;

    invoke-virtual {p2}, Lcn/nubia/camera/af/a;->a()I

    move-result p2

    invoke-static {p1, p2}, Lcn/nubia/camera/av/c;->a(Lcn/nubia/k/a/a;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcn/nubia/camera/bb/u;->b:Ljava/lang/String;

    .line 888
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/h;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->v()Lcn/nubia/e/a;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/e/a;->b()Landroid/location/Location;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcn/nubia/camera/multiRecord/h;->a(Landroid/location/Location;Lcn/nubia/camera/bb/u;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, v0, Lcn/nubia/camera/bb/u;->k:Landroid/net/Uri;

    .line 889
    iget-object p1, v0, Lcn/nubia/camera/bb/u;->k:Landroid/net/Uri;

    if-eqz p1, :cond_0

    .line 891
    :try_start_0
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/h;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, v0, Lcn/nubia/camera/bb/u;->k:Landroid/net/Uri;

    const-string p3, "rw"

    invoke-virtual {p1, p2, p3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    iput-object p1, v0, Lcn/nubia/camera/bb/u;->l:Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 893
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v0
.end method

.method static synthetic a(Lcn/nubia/camera/multiRecord/h;Lcn/nubia/camera/multiRecord/h$a;)Lcn/nubia/camera/multiRecord/h$a;
    .locals 0

    .line 49
    iput-object p1, p0, Lcn/nubia/camera/multiRecord/h;->p:Lcn/nubia/camera/multiRecord/h$a;

    return-object p1
.end method

.method private a(J)Ljava/lang/String;
    .locals 3

    .line 902
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/h;->D:Ljava/text/SimpleDateFormat;

    if-nez v0, :cond_0

    .line 903
    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcn/nubia/camera/multiRecord/h;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0f03dc

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/camera/multiRecord/h;->D:Ljava/text/SimpleDateFormat;

    .line 905
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 906
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/h;->D:Ljava/text/SimpleDateFormat;

    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static a(JZ)Ljava/lang/String;
    .locals 15

    const-wide/16 v0, 0x3e8

    .line 774
    div-long v2, p0, v0

    const-wide/16 v4, 0x3c

    .line 775
    div-long v6, v2, v4

    .line 776
    div-long v8, v6, v4

    mul-long v10, v8, v4

    sub-long v10, v6, v10

    mul-long/2addr v6, v4

    sub-long v4, v2, v6

    .line 780
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v12, 0xa

    cmp-long v7, v8, v12

    const/16 v14, 0x30

    if-gez v7, :cond_0

    .line 784
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 786
    :cond_0
    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v7, 0x3a

    .line 788
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    cmp-long v8, v10, v12

    if-gez v8, :cond_1

    .line 792
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 794
    :cond_1
    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 795
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    cmp-long v7, v4, v12

    if-gez v7, :cond_2

    .line 799
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 801
    :cond_2
    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_4

    const/16 v4, 0x2e

    .line 805
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    mul-long/2addr v2, v0

    sub-long v0, p0, v2

    .line 806
    div-long/2addr v0, v12

    cmp-long v2, v0, v12

    if-gez v2, :cond_3

    .line 808
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 810
    :cond_3
    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 813
    :cond_4
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(I)V
    .locals 1

    .line 638
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/h;->m:Lcn/nubia/camera/bb/z;

    invoke-interface {v0, p1}, Lcn/nubia/camera/bb/z;->d(I)V

    return-void
.end method

.method private a(II)V
    .locals 9

    .line 563
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/h;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->q()Lcn/nubia/camera/al/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/al/c;->d()I

    .line 564
    sget-object v0, Lcn/nubia/camera/bb/t$a;->a:Lcn/nubia/camera/bb/t$a;

    .line 565
    invoke-direct {p0}, Lcn/nubia/camera/multiRecord/h;->t()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 566
    invoke-direct {p0}, Lcn/nubia/camera/multiRecord/h;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 567
    sget-object v0, Lcn/nubia/camera/bb/t$a;->a:Lcn/nubia/camera/bb/t$a;

    goto :goto_0

    .line 569
    :cond_0
    sget-object v0, Lcn/nubia/camera/bb/t$a;->b:Lcn/nubia/camera/bb/t$a;

    :cond_1
    :goto_0
    move-object v5, v0

    .line 572
    new-instance v1, Lcn/nubia/camera/bb/t;

    iget-object v0, p0, Lcn/nubia/camera/multiRecord/h;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v1, v0}, Lcn/nubia/camera/bb/t;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/nubia/camera/multiRecord/h;->l:Lcn/nubia/camera/bb/t;

    .line 573
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/h;->b:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    iget v6, p0, Lcn/nubia/camera/multiRecord/h;->h:I

    move v3, p1

    move v4, p2

    invoke-virtual/range {v1 .. v6}, Lcn/nubia/camera/bb/t;->a(Landroid/view/Surface;IILcn/nubia/camera/bb/t$a;I)V

    .line 574
    invoke-direct {p0}, Lcn/nubia/camera/multiRecord/h;->u()Lcom/android/common/c/e;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/multiRecord/h;->l:Lcn/nubia/camera/bb/t;

    invoke-virtual {v0, v1}, Lcom/android/common/c/e;->a(Lcom/android/common/c/f$a;)V

    .line 576
    new-instance v0, Lcn/nubia/camera/multiRecord/a/a;

    invoke-direct {v0}, Lcn/nubia/camera/multiRecord/a/a;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/multiRecord/h;->B:Lcn/nubia/camera/multiRecord/a/a;

    .line 577
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/h;->w:[Landroid/media/MediaRecorder;

    array-length v0, v0

    new-array v2, v0, [Landroid/view/Surface;

    const/4 v0, 0x0

    .line 578
    :goto_1
    iget-object v1, p0, Lcn/nubia/camera/multiRecord/h;->w:[Landroid/media/MediaRecorder;

    array-length v3, v1

    if-ge v0, v3, :cond_2

    .line 579
    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 581
    :cond_2
    iget-object v1, p0, Lcn/nubia/camera/multiRecord/h;->B:Lcn/nubia/camera/multiRecord/a/a;

    iget-object v5, p0, Lcn/nubia/camera/multiRecord/h;->x:[Landroid/graphics/SurfaceTexture;

    iget-object v6, p0, Lcn/nubia/camera/multiRecord/h;->y:[I

    const v7, 0x8d65

    iget v8, p0, Lcn/nubia/camera/multiRecord/h;->h:I

    move v3, p1

    move v4, p2

    invoke-virtual/range {v1 .. v8}, Lcn/nubia/camera/multiRecord/a/a;->a([Landroid/view/Surface;II[Landroid/graphics/SurfaceTexture;[III)V

    .line 583
    invoke-direct {p0}, Lcn/nubia/camera/multiRecord/h;->u()Lcom/android/common/c/e;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/camera/multiRecord/h;->B:Lcn/nubia/camera/multiRecord/a/a;

    invoke-virtual {p1, p2}, Lcom/android/common/c/e;->a(Lcom/android/common/c/f$a;)V

    return-void
.end method

.method private a(Landroid/media/CamcorderProfile;Landroid/media/MediaRecorder;JLcn/nubia/camera/bb/u;)V
    .locals 3

    const/4 v0, 0x2

    .line 250
    invoke-virtual {p2, v0}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    const/4 v0, 0x5

    .line 251
    invoke-virtual {p2, v0}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 252
    invoke-virtual {p2, p1}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 253
    iget p1, p0, Lcn/nubia/camera/multiRecord/h;->f:I

    iget v0, p0, Lcn/nubia/camera/multiRecord/h;->g:I

    invoke-virtual {p2, p1, v0}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 255
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/h;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->v()Lcn/nubia/e/a;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/e/a;->b()Landroid/location/Location;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 257
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    double-to-float p1, v1

    invoke-virtual {p2, v0, p1}, Landroid/media/MediaRecorder;->setLocation(FF)V

    .line 259
    :cond_0
    iget-object p1, p5, Lcn/nubia/camera/bb/u;->l:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    .line 262
    :try_start_0
    invoke-virtual {p2, p3, p4}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p1, 0x0

    .line 270
    invoke-virtual {p2, p1}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    return-void
.end method

.method private a(Lcn/nubia/camera/bb/w;)V
    .locals 2

    .line 692
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 693
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/h;->m:Lcn/nubia/camera/bb/z;

    if-eqz v0, :cond_1

    .line 694
    invoke-interface {v0, p1}, Lcn/nubia/camera/bb/z;->a(Lcn/nubia/camera/bb/w;)V

    goto :goto_0

    .line 697
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/h;->n:Lcn/nubia/camera/multiRecord/h$c;

    new-instance v1, Lcn/nubia/camera/multiRecord/h$5;

    invoke-direct {v1, p0, p1}, Lcn/nubia/camera/multiRecord/h$5;-><init>(Lcn/nubia/camera/multiRecord/h;Lcn/nubia/camera/bb/w;)V

    invoke-virtual {v0, v1}, Lcn/nubia/camera/multiRecord/h$c;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private a(Lcn/nubia/camera/elefnovideo/l;)V
    .locals 0

    .line 630
    iput-object p1, p0, Lcn/nubia/camera/multiRecord/h;->q:Lcn/nubia/camera/elefnovideo/l;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/multiRecord/h;Lcn/nubia/camera/bb/u;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcn/nubia/camera/multiRecord/h;->b(Lcn/nubia/camera/bb/u;)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/multiRecord/h;Lcn/nubia/camera/elefnovideo/l;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcn/nubia/camera/multiRecord/h;->a(Lcn/nubia/camera/elefnovideo/l;)V

    return-void
.end method

.method private a(ZZLjava/lang/String;)V
    .locals 1

    .line 642
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/h;->m:Lcn/nubia/camera/bb/z;

    invoke-interface {v0, p1, p2, p3}, Lcn/nubia/camera/bb/z;->a(ZZLjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/multiRecord/h;Z)Z
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcn/nubia/camera/multiRecord/h;->s:Z

    return p1
.end method

.method private b(I)V
    .locals 1

    .line 650
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/h;->m:Lcn/nubia/camera/bb/z;

    invoke-interface {v0, p1}, Lcn/nubia/camera/bb/z;->b(I)V

    return-void
.end method

.method private b(Lcn/nubia/camera/bb/u;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 594
    invoke-virtual {p0, p1}, Lcn/nubia/camera/multiRecord/h;->a(Lcn/nubia/camera/bb/u;)V

    .line 596
    invoke-direct {p0, p1}, Lcn/nubia/camera/multiRecord/h;->c(Lcn/nubia/camera/bb/u;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcn/nubia/camera/multiRecord/h;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcn/nubia/camera/multiRecord/h;->i()V

    return-void
.end method

.method static synthetic b(Lcn/nubia/camera/multiRecord/h;I)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcn/nubia/camera/multiRecord/h;->c(I)V

    return-void
.end method

.method static synthetic b(Lcn/nubia/camera/multiRecord/h;Z)Z
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcn/nubia/camera/multiRecord/h;->r:Z

    return p1
.end method

.method static synthetic c(Lcn/nubia/camera/multiRecord/h;)Lcn/nubia/camera/multiRecord/h$c;
    .locals 0

    .line 49
    iget-object p0, p0, Lcn/nubia/camera/multiRecord/h;->n:Lcn/nubia/camera/multiRecord/h$c;

    return-object p0
.end method

.method private c(I)V
    .locals 2

    .line 675
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 676
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/h;->m:Lcn/nubia/camera/bb/z;

    if-eqz v0, :cond_1

    .line 677
    invoke-interface {v0, p1}, Lcn/nubia/camera/bb/z;->c(I)V

    goto :goto_0

    .line 680
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/h;->n:Lcn/nubia/camera/multiRecord/h$c;

    new-instance v1, Lcn/nubia/camera/multiRecord/h$4;

    invoke-direct {v1, p0, p1}, Lcn/nubia/camera/multiRecord/h$4;-><init>(Lcn/nubia/camera/multiRecord/h;I)V

    invoke-virtual {v0, v1}, Lcn/nubia/camera/multiRecord/h$c;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private c(Lcn/nubia/camera/bb/u;)V
    .locals 2

    .line 846
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/h;->m:Lcn/nubia/camera/bb/z;

    if-eqz v0, :cond_0

    .line 847
    new-instance v0, Lcn/nubia/camera/bb/w;

    invoke-direct {v0}, Lcn/nubia/camera/bb/w;-><init>()V

    .line 848
    iget-object v1, p1, Lcn/nubia/camera/bb/u;->l:Landroid/os/ParcelFileDescriptor;

    iput-object v1, v0, Lcn/nubia/camera/bb/w;->a:Landroid/os/ParcelFileDescriptor;

    .line 849
    iget-object v1, p1, Lcn/nubia/camera/bb/u;->k:Landroid/net/Uri;

    iput-object v1, v0, Lcn/nubia/camera/bb/w;->b:Landroid/net/Uri;

    .line 850
    iget-object v1, p1, Lcn/nubia/camera/bb/u;->d:Ljava/lang/String;

    iput-object v1, v0, Lcn/nubia/camera/bb/w;->c:Ljava/lang/String;

    .line 851
    iget p1, p1, Lcn/nubia/camera/bb/u;->h:I

    iput p1, v0, Lcn/nubia/camera/bb/w;->d:I

    .line 852
    invoke-direct {p0, v0}, Lcn/nubia/camera/multiRecord/h;->a(Lcn/nubia/camera/bb/w;)V

    :cond_0
    return-void
.end method

.method static synthetic d(Lcn/nubia/camera/multiRecord/h;)Lcn/nubia/camera/bb/u;
    .locals 0

    .line 49
    iget-object p0, p0, Lcn/nubia/camera/multiRecord/h;->d:Lcn/nubia/camera/bb/u;

    return-object p0
.end method

.method private d(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const-string p1, ".mp4"

    return-object p1

    :cond_0
    const-string p1, ".3gp"

    return-object p1
.end method

.method static synthetic e(Lcn/nubia/camera/multiRecord/h;)J
    .locals 2

    .line 49
    iget-wide v0, p0, Lcn/nubia/camera/multiRecord/h;->i:J

    return-wide v0
.end method

.method private e(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const-string p1, "video/mp4"

    return-object p1

    :cond_0
    const-string p1, "video/3gpp"

    return-object p1
.end method

.method static synthetic f(Lcn/nubia/camera/multiRecord/h;)J
    .locals 2

    .line 49
    iget-wide v0, p0, Lcn/nubia/camera/multiRecord/h;->k:J

    return-wide v0
.end method

.method static synthetic g(Lcn/nubia/camera/multiRecord/h;)Landroid/media/MediaRecorder;
    .locals 0

    .line 49
    iget-object p0, p0, Lcn/nubia/camera/multiRecord/h;->b:Landroid/media/MediaRecorder;

    return-object p0
.end method

.method static synthetic h(Lcn/nubia/camera/multiRecord/h;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 49
    iget-object p0, p0, Lcn/nubia/camera/multiRecord/h;->a:Lcn/nubia/camera/ad/a;

    return-object p0
.end method

.method private i()V
    .locals 1

    .line 143
    iget-boolean v0, p0, Lcn/nubia/camera/multiRecord/h;->r:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcn/nubia/camera/multiRecord/h;->s:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 144
    iput-boolean v0, p0, Lcn/nubia/camera/multiRecord/h;->r:Z

    .line 145
    iput-boolean v0, p0, Lcn/nubia/camera/multiRecord/h;->s:Z

    .line 148
    iget-boolean v0, p0, Lcn/nubia/camera/multiRecord/h;->v:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/nubia/camera/multiRecord/h;->b:Landroid/media/MediaRecorder;

    if-nez v0, :cond_0

    goto :goto_0

    .line 152
    :cond_0
    iget v0, p0, Lcn/nubia/camera/multiRecord/h;->u:I

    if-eqz v0, :cond_1

    .line 153
    invoke-direct {p0, v0}, Lcn/nubia/camera/multiRecord/h;->b(I)V

    return-void

    .line 157
    :cond_1
    invoke-direct {p0}, Lcn/nubia/camera/multiRecord/h;->k()V

    nop

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic i(Lcn/nubia/camera/multiRecord/h;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcn/nubia/camera/multiRecord/h;->l()V

    return-void
.end method

.method private declared-synchronized j()I
    .locals 6

    monitor-enter p0

    .line 171
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/h;->b:Landroid/media/MediaRecorder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 172
    monitor-exit p0

    return v1

    .line 175
    :cond_0
    :try_start_1
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/camera/multiRecord/h;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/nubia/b/e;->c(Ljava/lang/String;)Lcn/nubia/b/d;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "MultiRecordManager"

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CameraDevice "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/multiRecord/h;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x5

    .line 177
    monitor-exit p0

    return v0

    .line 181
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/h;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->y()Lcn/nubia/k/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/k/a/a;->f()J

    .line 182
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/h;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->y()Lcn/nubia/k/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/k/a/a;->e()J

    move-result-wide v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-wide/32 v4, 0x3200000

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gez v0, :cond_2

    const/4 v0, 0x3

    .line 184
    monitor-exit p0

    return v0

    .line 187
    :cond_2
    :try_start_3
    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/multiRecord/h;->b:Landroid/media/MediaRecorder;

    .line 188
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/h;->y:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/media/MediaRecorder;

    iput-object v0, p0, Lcn/nubia/camera/multiRecord/h;->w:[Landroid/media/MediaRecorder;

    move v0, v1

    .line 189
    :goto_0
    iget-object v4, p0, Lcn/nubia/camera/multiRecord/h;->w:[Landroid/media/MediaRecorder;

    array-length v5, v4

    if-ge v0, v5, :cond_3

    .line 190
    new-instance v5, Landroid/media/MediaRecorder;

    invoke-direct {v5}, Landroid/media/MediaRecorder;-><init>()V

    aput-object v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 193
    :cond_3
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/h;->e:Lcn/nubia/camera/multiRecord/l;

    invoke-virtual {v0}, Lcn/nubia/camera/multiRecord/l;->e()Landroid/media/CamcorderProfile;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/multiRecord/h;->c:Landroid/media/CamcorderProfile;

    .line 195
    iget-object v4, p0, Lcn/nubia/camera/multiRecord/h;->b:Landroid/media/MediaRecorder;

    invoke-direct {p0, v0, v4, v2, v3}, Lcn/nubia/camera/multiRecord/h;->a(Landroid/media/CamcorderProfile;Landroid/media/MediaRecorder;J)Lcn/nubia/camera/bb/u;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/multiRecord/h;->d:Lcn/nubia/camera/bb/u;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 198
    :try_start_4
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/h;->b:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V

    .line 199
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/h;->w:[Landroid/media/MediaRecorder;

    array-length v2, v0

    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_4

    aget-object v4, v0, v3

    .line 200
    invoke-virtual {v4}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 208
    :cond_4
    :try_start_5
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/h;->b:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p0}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 209
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/h;->b:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p0}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 210
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/h;->w:[Landroid/media/MediaRecorder;

    array-length v2, v0

    move v3, v1

    :goto_2
    if-ge v3, v2, :cond_5

    aget-object v4, v0, v3

    .line 211
    invoke-virtual {v4, p0}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 212
    invoke-virtual {v4, p0}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 214
    :cond_5
    monitor-exit p0

    return v1

    :catch_0
    move-exception v0

    :try_start_6
    const-string v1, "MultiRecordManager"

    .line 203
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepare failed for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/multiRecord/h;->d:Lcn/nubia/camera/bb/u;

    iget-object v3, v3, Lcn/nubia/camera/bb/u;->k:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcn/nubia/camera/c/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 204
    invoke-direct {p0}, Lcn/nubia/camera/multiRecord/h;->l()V

    .line 205
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic j(Lcn/nubia/camera/multiRecord/h;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcn/nubia/camera/multiRecord/h;->r()V

    return-void
.end method

.method static synthetic k(Lcn/nubia/camera/multiRecord/h;)Lcn/nubia/camera/bb/z;
    .locals 0

    .line 49
    iget-object p0, p0, Lcn/nubia/camera/multiRecord/h;->m:Lcn/nubia/camera/bb/z;

    return-object p0
.end method

.method private k()V
    .locals 7

    const-string v0, "MultiRecordManager"

    const-string v1, "startRecording"

    .line 278
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v1, 0x0

    .line 279
    iput-wide v1, p0, Lcn/nubia/camera/multiRecord/h;->j:J

    .line 280
    iput-wide v1, p0, Lcn/nubia/camera/multiRecord/h;->k:J

    .line 282
    iget-object v1, p0, Lcn/nubia/camera/multiRecord/h;->o:Lcn/nubia/camera/bb/a;

    iget-object v2, p0, Lcn/nubia/camera/multiRecord/h;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/camera/bb/a;->a(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 285
    :try_start_0
    iget-object v2, p0, Lcn/nubia/camera/multiRecord/h;->b:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->start()V

    .line 286
    iget-object v2, p0, Lcn/nubia/camera/multiRecord/h;->w:[Landroid/media/MediaRecorder;

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_0

    aget-object v6, v2, v5

    .line 287
    invoke-virtual {v6}, Landroid/media/MediaRecorder;->start()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 289
    :cond_0
    iget-object v2, p0, Lcn/nubia/camera/multiRecord/h;->d:Lcn/nubia/camera/bb/u;

    iget v2, v2, Lcn/nubia/camera/bb/u;->h:I

    iget-object v3, p0, Lcn/nubia/camera/multiRecord/h;->d:Lcn/nubia/camera/bb/u;

    iget v3, v3, Lcn/nubia/camera/bb/u;->i:I

    invoke-direct {p0, v2, v3}, Lcn/nubia/camera/multiRecord/h;->a(II)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/h;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/a/a;->a(Z)V

    .line 308
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/camera/multiRecord/h;->i:J

    .line 309
    sget-object v0, Lcn/nubia/camera/elefnovideo/l;->b:Lcn/nubia/camera/elefnovideo/l;

    invoke-direct {p0, v0}, Lcn/nubia/camera/multiRecord/h;->a(Lcn/nubia/camera/elefnovideo/l;)V

    .line 310
    invoke-direct {p0, v4}, Lcn/nubia/camera/multiRecord/h;->b(I)V

    .line 311
    invoke-direct {p0}, Lcn/nubia/camera/multiRecord/h;->p()V

    return-void

    :catch_0
    const-string v1, "MediaRecorder has not been initialized.."

    .line 299
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x5

    .line 300
    invoke-direct {p0, v0}, Lcn/nubia/camera/multiRecord/h;->b(I)V

    .line 301
    sget-object v0, Lcn/nubia/camera/elefnovideo/l;->a:Lcn/nubia/camera/elefnovideo/l;

    invoke-direct {p0, v0}, Lcn/nubia/camera/multiRecord/h;->a(Lcn/nubia/camera/elefnovideo/l;)V

    .line 302
    invoke-direct {p0}, Lcn/nubia/camera/multiRecord/h;->r()V

    .line 303
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/h;->n:Lcn/nubia/camera/multiRecord/h$c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/multiRecord/h$c;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void

    :catch_1
    move-exception v0

    .line 291
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 292
    invoke-direct {p0}, Lcn/nubia/camera/multiRecord/h;->l()V

    .line 293
    invoke-direct {p0, v1}, Lcn/nubia/camera/multiRecord/h;->b(I)V

    .line 294
    invoke-direct {p0}, Lcn/nubia/camera/multiRecord/h;->m()V

    .line 295
    sget-object v0, Lcn/nubia/camera/elefnovideo/l;->a:Lcn/nubia/camera/elefnovideo/l;

    invoke-direct {p0, v0}, Lcn/nubia/camera/multiRecord/h;->a(Lcn/nubia/camera/elefnovideo/l;)V

    .line 296
    invoke-direct {p0}, Lcn/nubia/camera/multiRecord/h;->r()V

    return-void
.end method

.method private declared-synchronized l()V
    .locals 3

    monitor-enter p0

    .line 482
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/h;->b:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_2

    const-string v0, "MultiRecordManager"

    const-string v1, "Releasing media recorder."

    .line 483
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/h;->d:Lcn/nubia/camera/bb/u;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 485
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/h;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/camera/multiRecord/h;->d:Lcn/nubia/camera/bb/u;

    invoke-static {v0, v2}, Lcn/nubia/camera/bb/ad;->a(Landroid/content/Context;Lcn/nubia/camera/bb/u;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/h;->d:Lcn/nubia/camera/bb/u;

    iput-object v1, v0, Lcn/nubia/camera/bb/u;->k:Landroid/net/Uri;

    .line 488
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/h;->d:Lcn/nubia/camera/bb/u;

    invoke-virtual {v0}, Lcn/nubia/camera/bb/u;->a()V

    const-string v0, "MultiRecordManager"

    const-string v2, "jinrrong DATA closeFileDescriptor"

    .line 489
    invoke-static {v0, v2}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/h;->b:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 493
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/h;->b:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 494
    iput-object v1, p0, Lcn/nubia/camera/multiRecord/h;->b:Landroid/media/MediaRecorder;

    goto :goto_0

    :cond_2
    const-string v0, "MultiRecordManager"

    const-string v1, "Media recorder already is null"

    .line 496
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 498
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic l(Lcn/nubia/camera/multiRecord/h;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcn/nubia/camera/multiRecord/h;->p()V

    return-void
.end method

.method private m()V
    .locals 1

    .line 587
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/h;->l:Lcn/nubia/camera/bb/t;

    invoke-virtual {v0}, Lcn/nubia/camera/bb/t;->a()V

    .line 588
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/h;->B:Lcn/nubia/camera/multiRecord/a/a;

    invoke-virtual {v0}, Lcn/nubia/camera/multiRecord/a/a;->a()V

    .line 589
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/h;->B:Lcn/nubia/camera/multiRecord/a/a;

    invoke-virtual {v0}, Lcn/nubia/camera/multiRecord/a/a;->f()V

    return-void
.end method

.method private n()V
    .locals 1

    .line 646
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/h;->m:Lcn/nubia/camera/bb/z;

    invoke-interface {v0}, Lcn/nubia/camera/bb/z;->d()V

    return-void
.end method

.method private o()V
    .locals 2

    .line 658
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 659
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/h;->m:Lcn/nubia/camera/bb/z;

    if-eqz v0, :cond_1

    .line 660
    invoke-interface {v0}, Lcn/nubia/camera/bb/z;->e()V

    goto :goto_0

    .line 663
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/h;->n:Lcn/nubia/camera/multiRecord/h$c;

    new-instance v1, Lcn/nubia/camera/multiRecord/h$3;

    invoke-direct {v1, p0}, Lcn/nubia/camera/multiRecord/h$3;-><init>(Lcn/nubia/camera/multiRecord/h;)V

    invoke-virtual {v0, v1}, Lcn/nubia/camera/multiRecord/h$c;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private p()V
    .locals 9

    .line 709
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/h;->q:Lcn/nubia/camera/elefnovideo/l;

    sget-object v1, Lcn/nubia/camera/elefnovideo/l;->b:Lcn/nubia/camera/elefnovideo/l;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/multiRecord/h;->q:Lcn/nubia/camera/elefnovideo/l;

    sget-object v1, Lcn/nubia/camera/elefnovideo/l;->d:Lcn/nubia/camera/elefnovideo/l;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 728
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/h;->q:Lcn/nubia/camera/elefnovideo/l;

    sget-object v1, Lcn/nubia/camera/elefnovideo/l;->c:Lcn/nubia/camera/elefnovideo/l;

    if-ne v0, v1, :cond_4

    .line 729
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/h;->n:Lcn/nubia/camera/multiRecord/h$c;

    invoke-virtual {v0, v3}, Lcn/nubia/camera/multiRecord/h$c;->removeMessages(I)V

    .line 730
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/h;->n:Lcn/nubia/camera/multiRecord/h$c;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v3, v4, v5}, Lcn/nubia/camera/multiRecord/h$c;->sendEmptyMessageDelayed(IJ)Z

    const/4 v0, 0x0

    .line 731
    invoke-direct {p0, v3, v2, v0}, Lcn/nubia/camera/multiRecord/h;->a(ZZLjava/lang/String;)V

    goto :goto_3

    .line 710
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 711
    iget-wide v4, p0, Lcn/nubia/camera/multiRecord/h;->i:J

    sub-long/2addr v0, v4

    iget-wide v4, p0, Lcn/nubia/camera/multiRecord/h;->k:J

    sub-long/2addr v0, v4

    .line 713
    iget-object v4, p0, Lcn/nubia/camera/multiRecord/h;->d:Lcn/nubia/camera/bb/u;

    iget v4, v4, Lcn/nubia/camera/bb/u;->g:I

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcn/nubia/camera/multiRecord/h;->d:Lcn/nubia/camera/bb/u;

    iget v4, v4, Lcn/nubia/camera/bb/u;->g:I

    const v5, 0xea60

    if-ge v4, v5, :cond_2

    move v4, v3

    goto :goto_1

    :cond_2
    move v4, v2

    :goto_1
    if-eqz v4, :cond_3

    const-wide/16 v5, 0x0

    .line 716
    iget-object v7, p0, Lcn/nubia/camera/multiRecord/h;->d:Lcn/nubia/camera/bb/u;

    iget v7, v7, Lcn/nubia/camera/bb/u;->g:I

    int-to-long v7, v7

    sub-long/2addr v7, v0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    const-wide/16 v7, 0x3e7

    add-long/2addr v5, v7

    goto :goto_2

    :cond_3
    move-wide v5, v0

    .line 720
    :goto_2
    invoke-static {v5, v6, v2}, Lcn/nubia/camera/multiRecord/h;->a(JZ)Ljava/lang/String;

    move-result-object v5

    .line 721
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "millisecondToTimeString "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "MultiRecordManager"

    invoke-static {v7, v6}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v6, 0x3e8

    .line 723
    rem-long/2addr v0, v6

    sub-long/2addr v6, v0

    .line 724
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/h;->n:Lcn/nubia/camera/multiRecord/h$c;

    invoke-virtual {v0, v3}, Lcn/nubia/camera/multiRecord/h$c;->removeMessages(I)V

    .line 725
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/h;->n:Lcn/nubia/camera/multiRecord/h$c;

    invoke-virtual {v0, v3}, Lcn/nubia/camera/multiRecord/h$c;->removeMessages(I)V

    .line 726
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/h;->n:Lcn/nubia/camera/multiRecord/h$c;

    invoke-virtual {v0, v3, v6, v7}, Lcn/nubia/camera/multiRecord/h$c;->sendEmptyMessageDelayed(IJ)Z

    .line 727
    invoke-direct {p0, v2, v4, v5}, Lcn/nubia/camera/multiRecord/h;->a(ZZLjava/lang/String;)V

    :cond_4
    :goto_3
    return-void
.end method

.method private q()V
    .locals 1

    .line 757
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/h;->m:Lcn/nubia/camera/bb/z;

    if-eqz v0, :cond_0

    .line 758
    invoke-interface {v0}, Lcn/nubia/camera/bb/z;->l()V

    :cond_0
    return-void
.end method

.method private r()V
    .locals 1

    .line 763
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/h;->m:Lcn/nubia/camera/bb/z;

    if-eqz v0, :cond_0

    .line 764
    invoke-interface {v0}, Lcn/nubia/camera/bb/z;->r_()V

    :cond_0
    return-void
.end method

.method private s()V
    .locals 2

    .line 769
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/h;->n:Lcn/nubia/camera/multiRecord/h$c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/multiRecord/h$c;->removeMessages(I)V

    return-void
.end method

.method private t()Z
    .locals 1

    .line 924
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/h;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private u()Lcom/android/common/c/e;
    .locals 1

    .line 928
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/h;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    invoke-virtual {v0}, Lcn/nubia/camera/a/a;->C()Lcom/android/common/c/e;

    move-result-object v0

    return-object v0
.end method

.method private v()Z
    .locals 3

    .line 932
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/h;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/multiRecord/h;->a:Lcn/nubia/camera/ad/a;

    .line 934
    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/multiRecord/h;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0f0251

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_mirror_mode_key"

    invoke-virtual {v0, v2, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/multiRecord/h;->a:Lcn/nubia/camera/ad/a;

    .line 935
    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0f0255

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 933
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method protected a(Landroid/location/Location;Lcn/nubia/camera/bb/u;)Landroid/net/Uri;
    .locals 2

    const-wide/16 v0, 0x0

    .line 817
    invoke-direct {p0, p1, p2, v0, v1}, Lcn/nubia/camera/multiRecord/h;->a(Landroid/location/Location;Lcn/nubia/camera/bb/u;J)Landroid/content/ContentValues;

    move-result-object p1

    .line 818
    sget-object p2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 819
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/h;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p2

    .line 820
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "creatVideoUri mCurrentVideoUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MultiRecordManager"

    invoke-static {v0, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2
.end method

.method public declared-synchronized a()V
    .locals 4

    monitor-enter p0

    .line 100
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/h;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->y()Lcn/nubia/k/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/k/a/a;->e()J

    move-result-wide v0

    const-wide/32 v2, 0x3200000

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x100000

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x3

    .line 102
    invoke-direct {p0, v0}, Lcn/nubia/camera/multiRecord/h;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    monitor-exit p0

    return-void

    .line 105
    :cond_0
    :try_start_1
    sget-object v0, Lcn/nubia/camera/elefnovideo/l;->f:Lcn/nubia/camera/elefnovideo/l;

    invoke-direct {p0, v0}, Lcn/nubia/camera/multiRecord/h;->a(Lcn/nubia/camera/elefnovideo/l;)V

    .line 106
    invoke-direct {p0}, Lcn/nubia/camera/multiRecord/h;->n()V

    .line 107
    invoke-direct {p0}, Lcn/nubia/camera/multiRecord/h;->q()V

    const/4 v0, 0x0

    .line 110
    iput-boolean v0, p0, Lcn/nubia/camera/multiRecord/h;->r:Z

    .line 111
    iput-boolean v0, p0, Lcn/nubia/camera/multiRecord/h;->s:Z

    .line 113
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/h;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    const-string v1, "pref_camera_shutter_sound_key"

    iget-object v2, p0, Lcn/nubia/camera/multiRecord/h;->a:Lcn/nubia/camera/ad/a;

    .line 114
    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0f0209

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MultiRecordManager"

    .line 115
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "strShutterSound "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "on"

    .line 116
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "MultiRecordManager"

    const-string v1, "playWithMediaPlayer"

    .line 117
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/h;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->r()Lcn/nubia/j/a;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcn/nubia/camera/multiRecord/h;->C:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1, v2}, Lcn/nubia/j/a;->a(ILandroid/media/MediaPlayer$OnCompletionListener;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 120
    iput-boolean v0, p0, Lcn/nubia/camera/multiRecord/h;->r:Z

    .line 123
    :goto_0
    new-instance v0, Lcn/nubia/camera/multiRecord/h$1;

    invoke-direct {v0, p0}, Lcn/nubia/camera/multiRecord/h$1;-><init>(Lcn/nubia/camera/multiRecord/h;)V

    iput-object v0, p0, Lcn/nubia/camera/multiRecord/h;->t:Ljava/lang/Thread;

    .line 139
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected a(Lcn/nubia/camera/bb/u;)V
    .locals 6

    .line 825
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x0

    .line 826
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "is_pending"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 827
    iget-object v2, p0, Lcn/nubia/camera/multiRecord/h;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x1d

    if-gt v2, v3, :cond_0

    .line 828
    iget-object v2, p0, Lcn/nubia/camera/multiRecord/h;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p1, Lcn/nubia/camera/bb/u;->k:Landroid/net/Uri;

    invoke-static {v2, v3}, Lcn/nubia/camera/ba/a;->b(Landroid/content/ContentResolver;Landroid/net/Uri;)I

    move-result v2

    .line 829
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "_size"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 830
    iget-wide v2, p1, Lcn/nubia/camera/bb/u;->f:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 831
    iget-wide v2, p1, Lcn/nubia/camera/bb/u;->f:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "duration"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 834
    :cond_0
    iget-object v2, p0, Lcn/nubia/camera/multiRecord/h;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p1, Lcn/nubia/camera/bb/u;->k:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 837
    new-instance v0, Lcn/nubia/l/b/g;

    iget-object v2, p0, Lcn/nubia/camera/multiRecord/h;->a:Lcn/nubia/camera/ad/a;

    .line 838
    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v2

    iget-object p1, p1, Lcn/nubia/camera/bb/u;->k:Landroid/net/Uri;

    invoke-direct {v0, v2, p1, v1, v1}, Lcn/nubia/l/b/g;-><init>(Landroid/content/Context;Landroid/net/Uri;IZ)V

    .line 842
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/h;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->h()Lcn/nubia/l/a/b;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcn/nubia/l/a/b;->a(Lcn/nubia/l/b/d;)V

    return-void
.end method

.method public a(Lcn/nubia/camera/bb/z;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcn/nubia/camera/multiRecord/h;->m:Lcn/nubia/camera/bb/z;

    return-void
.end method

.method protected a(Z)V
    .locals 1

    .line 654
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/h;->m:Lcn/nubia/camera/bb/z;

    invoke-interface {v0, p1}, Lcn/nubia/camera/bb/z;->b(Z)V

    return-void
.end method

.method public a([Landroid/graphics/SurfaceTexture;[I)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcn/nubia/camera/multiRecord/h;->x:[Landroid/graphics/SurfaceTexture;

    .line 96
    iput-object p2, p0, Lcn/nubia/camera/multiRecord/h;->y:[I

    return-void
.end method

.method public declared-synchronized b()V
    .locals 6

    monitor-enter p0

    .line 315
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/h;->q:Lcn/nubia/camera/elefnovideo/l;

    sget-object v1, Lcn/nubia/camera/elefnovideo/l;->e:Lcn/nubia/camera/elefnovideo/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "MultiRecordManager"

    const-string v1, "stopVideoRecording"

    .line 316
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/h;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/a/a;->a(Z)V

    .line 319
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/h;->o:Lcn/nubia/camera/bb/a;

    iget-object v2, p0, Lcn/nubia/camera/multiRecord/h;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/nubia/camera/bb/a;->b(Landroid/content/Context;)V

    .line 321
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/h;->q:Lcn/nubia/camera/elefnovideo/l;

    sget-object v2, Lcn/nubia/camera/elefnovideo/l;->b:Lcn/nubia/camera/elefnovideo/l;

    if-eq v0, v2, :cond_4

    iget-object v0, p0, Lcn/nubia/camera/multiRecord/h;->q:Lcn/nubia/camera/elefnovideo/l;

    sget-object v2, Lcn/nubia/camera/elefnovideo/l;->c:Lcn/nubia/camera/elefnovideo/l;

    if-eq v0, v2, :cond_4

    iget-object v0, p0, Lcn/nubia/camera/multiRecord/h;->q:Lcn/nubia/camera/elefnovideo/l;

    sget-object v2, Lcn/nubia/camera/elefnovideo/l;->d:Lcn/nubia/camera/elefnovideo/l;

    if-eq v0, v2, :cond_4

    const-string v0, "MultiRecordManager"

    const-string v2, "VideoRecording is not started!!!"

    .line 324
    invoke-static {v0, v2}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x6

    .line 325
    invoke-direct {p0, v0}, Lcn/nubia/camera/multiRecord/h;->c(I)V

    .line 327
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/h;->q:Lcn/nubia/camera/elefnovideo/l;

    sget-object v2, Lcn/nubia/camera/elefnovideo/l;->f:Lcn/nubia/camera/elefnovideo/l;

    if-ne v0, v2, :cond_3

    .line 328
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/h;->t:Ljava/lang/Thread;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 330
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 332
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 334
    :goto_0
    iput-object v2, p0, Lcn/nubia/camera/multiRecord/h;->t:Ljava/lang/Thread;

    .line 336
    :cond_1
    invoke-direct {p0}, Lcn/nubia/camera/multiRecord/h;->l()V

    move v0, v1

    .line 337
    :goto_1
    iget-object v3, p0, Lcn/nubia/camera/multiRecord/h;->w:[Landroid/media/MediaRecorder;

    if-eqz v3, :cond_2

    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 338
    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->reset()V

    .line 339
    iget-object v3, p0, Lcn/nubia/camera/multiRecord/h;->w:[Landroid/media/MediaRecorder;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->release()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    new-array v0, v1, [Landroid/graphics/SurfaceTexture;

    .line 341
    iput-object v0, p0, Lcn/nubia/camera/multiRecord/h;->x:[Landroid/graphics/SurfaceTexture;

    new-array v0, v1, [I

    .line 342
    iput-object v0, p0, Lcn/nubia/camera/multiRecord/h;->y:[I

    .line 343
    sget-object v0, Lcn/nubia/camera/elefnovideo/l;->a:Lcn/nubia/camera/elefnovideo/l;

    invoke-direct {p0, v0}, Lcn/nubia/camera/multiRecord/h;->a(Lcn/nubia/camera/elefnovideo/l;)V

    .line 344
    invoke-direct {p0}, Lcn/nubia/camera/multiRecord/h;->r()V

    .line 345
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/h;->n:Lcn/nubia/camera/multiRecord/h$c;

    invoke-virtual {v0, v2}, Lcn/nubia/camera/multiRecord/h$c;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 347
    :cond_3
    monitor-exit p0

    return-void

    .line 349
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/h;->f()Lcn/nubia/camera/elefnovideo/l;

    move-result-object v0

    sget-object v2, Lcn/nubia/camera/elefnovideo/l;->c:Lcn/nubia/camera/elefnovideo/l;

    if-ne v0, v2, :cond_5

    .line 350
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcn/nubia/camera/multiRecord/h;->j:J

    sub-long/2addr v2, v4

    .line 351
    iget-wide v4, p0, Lcn/nubia/camera/multiRecord/h;->k:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcn/nubia/camera/multiRecord/h;->k:J

    .line 353
    :cond_5
    sget-object v0, Lcn/nubia/camera/elefnovideo/l;->e:Lcn/nubia/camera/elefnovideo/l;

    invoke-direct {p0, v0}, Lcn/nubia/camera/multiRecord/h;->a(Lcn/nubia/camera/elefnovideo/l;)V

    .line 354
    invoke-direct {p0}, Lcn/nubia/camera/multiRecord/h;->o()V

    .line 355
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/h;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->r()Lcn/nubia/j/a;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcn/nubia/j/a;->b(I)V

    .line 356
    invoke-direct {p0}, Lcn/nubia/camera/multiRecord/h;->s()V

    .line 357
    invoke-direct {p0}, Lcn/nubia/camera/multiRecord/h;->m()V

    .line 359
    new-instance v0, Lcn/nubia/camera/multiRecord/h$a;

    invoke-direct {v0, p0}, Lcn/nubia/camera/multiRecord/h$a;-><init>(Lcn/nubia/camera/multiRecord/h;)V

    iput-object v0, p0, Lcn/nubia/camera/multiRecord/h;->p:Lcn/nubia/camera/multiRecord/h$a;

    .line 360
    invoke-virtual {v0}, Lcn/nubia/camera/multiRecord/h$a;->start()V

    .line 361
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/h;->y:[I

    array-length v0, v0

    new-array v0, v0, [Lcn/nubia/camera/multiRecord/h$b;

    iput-object v0, p0, Lcn/nubia/camera/multiRecord/h;->A:[Lcn/nubia/camera/multiRecord/h$b;

    move v0, v1

    .line 362
    :goto_2
    iget-object v2, p0, Lcn/nubia/camera/multiRecord/h;->A:[Lcn/nubia/camera/multiRecord/h$b;

    array-length v3, v2

    if-ge v0, v3, :cond_6

    .line 363
    new-instance v3, Lcn/nubia/camera/multiRecord/h$b;

    iget-object v4, p0, Lcn/nubia/camera/multiRecord/h;->w:[Landroid/media/MediaRecorder;

    aget-object v4, v4, v0

    iget-object v5, p0, Lcn/nubia/camera/multiRecord/h;->z:[Lcn/nubia/camera/bb/u;

    aget-object v5, v5, v0

    invoke-direct {v3, p0, v4, v5}, Lcn/nubia/camera/multiRecord/h$b;-><init>(Lcn/nubia/camera/multiRecord/h;Landroid/media/MediaRecorder;Lcn/nubia/camera/bb/u;)V

    aput-object v3, v2, v0

    .line 364
    iget-object v2, p0, Lcn/nubia/camera/multiRecord/h;->A:[Lcn/nubia/camera/multiRecord/h$b;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcn/nubia/camera/multiRecord/h$b;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    new-array v0, v1, [I

    .line 366
    iput-object v0, p0, Lcn/nubia/camera/multiRecord/h;->y:[I

    new-array v0, v1, [Landroid/graphics/SurfaceTexture;

    .line 367
    iput-object v0, p0, Lcn/nubia/camera/multiRecord/h;->x:[Landroid/graphics/SurfaceTexture;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 368
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()V
    .locals 3

    const-string v0, "MultiRecordManager"

    .line 462
    iget-object v1, p0, Lcn/nubia/camera/multiRecord/h;->p:Lcn/nubia/camera/multiRecord/h$a;

    if-eqz v1, :cond_0

    :try_start_0
    const-string v2, "wait StopRecordThread"

    .line 465
    invoke-static {v0, v2}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    const-string v1, "StopRecordThread finish"

    .line 467
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 469
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 472
    :goto_1
    iget-object v1, p0, Lcn/nubia/camera/multiRecord/h;->A:[Lcn/nubia/camera/multiRecord/h$b;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 474
    :try_start_1
    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcn/nubia/camera/multiRecord/h$b;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    .line 476
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public d()V
    .locals 5

    .line 501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPauseButtonClick. curState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/multiRecord/h;->q:Lcn/nubia/camera/elefnovideo/l;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MultiRecordManager"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    sget-object v0, Lcn/nubia/camera/multiRecord/h$6;->a:[I

    iget-object v2, p0, Lcn/nubia/camera/multiRecord/h;->q:Lcn/nubia/camera/elefnovideo/l;

    invoke-virtual {v2}, Lcn/nubia/camera/elefnovideo/l;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    .line 528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error state for pause recording, state is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/camera/multiRecord/h;->q:Lcn/nubia/camera/elefnovideo/l;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 515
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/h;->l:Lcn/nubia/camera/bb/t;

    invoke-virtual {v0}, Lcn/nubia/camera/bb/t;->e()V

    .line 516
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/h;->B:Lcn/nubia/camera/multiRecord/a/a;

    invoke-virtual {v0}, Lcn/nubia/camera/multiRecord/a/a;->e()V

    .line 518
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/h;->b:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->resume()V

    .line 519
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/h;->w:[Landroid/media/MediaRecorder;

    array-length v1, v0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 520
    invoke-virtual {v4}, Landroid/media/MediaRecorder;->resume()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 522
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v3, p0, Lcn/nubia/camera/multiRecord/h;->j:J

    sub-long/2addr v0, v3

    .line 523
    iget-wide v3, p0, Lcn/nubia/camera/multiRecord/h;->k:J

    add-long/2addr v3, v0

    iput-wide v3, p0, Lcn/nubia/camera/multiRecord/h;->k:J

    .line 524
    sget-object v0, Lcn/nubia/camera/elefnovideo/l;->b:Lcn/nubia/camera/elefnovideo/l;

    invoke-direct {p0, v0}, Lcn/nubia/camera/multiRecord/h;->a(Lcn/nubia/camera/elefnovideo/l;)V

    .line 525
    invoke-virtual {p0, v2}, Lcn/nubia/camera/multiRecord/h;->a(Z)V

    goto :goto_2

    .line 504
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/h;->l:Lcn/nubia/camera/bb/t;

    invoke-virtual {v0}, Lcn/nubia/camera/bb/t;->d()V

    .line 505
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/h;->B:Lcn/nubia/camera/multiRecord/a/a;

    invoke-virtual {v0}, Lcn/nubia/camera/multiRecord/a/a;->d()V

    .line 506
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/h;->b:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->pause()V

    .line 507
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/h;->w:[Landroid/media/MediaRecorder;

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_3

    aget-object v4, v0, v2

    .line 508
    invoke-virtual {v4}, Landroid/media/MediaRecorder;->pause()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 510
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/camera/multiRecord/h;->j:J

    .line 511
    sget-object v0, Lcn/nubia/camera/elefnovideo/l;->c:Lcn/nubia/camera/elefnovideo/l;

    invoke-direct {p0, v0}, Lcn/nubia/camera/multiRecord/h;->a(Lcn/nubia/camera/elefnovideo/l;)V

    .line 512
    invoke-virtual {p0, v3}, Lcn/nubia/camera/multiRecord/h;->a(Z)V

    .line 531
    :goto_2
    invoke-direct {p0}, Lcn/nubia/camera/multiRecord/h;->p()V

    return-void
.end method

.method public e()V
    .locals 4

    .line 536
    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/h;->f()Lcn/nubia/camera/elefnovideo/l;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/elefnovideo/l;->f:Lcn/nubia/camera/elefnovideo/l;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 537
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/h;->t:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 539
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 541
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 543
    :goto_0
    iput-object v2, p0, Lcn/nubia/camera/multiRecord/h;->t:Ljava/lang/Thread;

    .line 545
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/h;->n:Lcn/nubia/camera/multiRecord/h$c;

    invoke-virtual {v0, v2}, Lcn/nubia/camera/multiRecord/h$c;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 546
    invoke-direct {p0}, Lcn/nubia/camera/multiRecord/h;->l()V

    const/4 v0, 0x0

    move v1, v0

    .line 547
    :goto_1
    iget-object v2, p0, Lcn/nubia/camera/multiRecord/h;->w:[Landroid/media/MediaRecorder;

    if-eqz v2, :cond_1

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 548
    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->reset()V

    .line 549
    iget-object v2, p0, Lcn/nubia/camera/multiRecord/h;->w:[Landroid/media/MediaRecorder;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->release()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    new-array v1, v0, [Landroid/graphics/SurfaceTexture;

    .line 551
    iput-object v1, p0, Lcn/nubia/camera/multiRecord/h;->x:[Landroid/graphics/SurfaceTexture;

    new-array v0, v0, [I

    .line 552
    iput-object v0, p0, Lcn/nubia/camera/multiRecord/h;->y:[I

    .line 553
    sget-object v0, Lcn/nubia/camera/elefnovideo/l;->a:Lcn/nubia/camera/elefnovideo/l;

    invoke-direct {p0, v0}, Lcn/nubia/camera/multiRecord/h;->a(Lcn/nubia/camera/elefnovideo/l;)V

    goto :goto_2

    .line 555
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/h;->f()Lcn/nubia/camera/elefnovideo/l;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/elefnovideo/l;->a:Lcn/nubia/camera/elefnovideo/l;

    if-eq v0, v1, :cond_3

    .line 556
    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/h;->b()V

    .line 557
    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/h;->c()V

    .line 558
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/h;->n:Lcn/nubia/camera/multiRecord/h$c;

    invoke-virtual {v0, v2}, Lcn/nubia/camera/multiRecord/h$c;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public f()Lcn/nubia/camera/elefnovideo/l;
    .locals 1

    .line 634
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/h;->q:Lcn/nubia/camera/elefnovideo/l;

    return-object v0
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x0

    .line 939
    iput-boolean v0, p0, Lcn/nubia/camera/multiRecord/h;->v:Z

    return-void
.end method

.method public h()V
    .locals 1

    const/4 v0, 0x1

    .line 943
    iput-boolean v0, p0, Lcn/nubia/camera/multiRecord/h;->v:Z

    return-void
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 1

    .line 602
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onError what "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", extra "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MultiRecordManager"

    invoke-static {p2, p1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/h;->b()V

    return-void
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 2

    .line 608
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onInfo what "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", extra "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "MultiRecordManager"

    invoke-static {p3, p1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x320

    if-ne p2, p1, :cond_0

    const-string p1, "onInfo MEDIA_RECORDER_INFO_MAX_DURATION_REACHED"

    .line 610
    invoke-static {p3, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/h;->q:Lcn/nubia/camera/elefnovideo/l;

    sget-object p2, Lcn/nubia/camera/elefnovideo/l;->b:Lcn/nubia/camera/elefnovideo/l;

    if-ne p1, p2, :cond_2

    .line 612
    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/h;->b()V

    goto :goto_1

    :cond_0
    const/16 p1, 0x321

    if-ne p2, p1, :cond_2

    const-string p1, "onInfo MEDIA_RECORDER_INFO_MAX_FILESIZE_REACHED"

    .line 615
    invoke-static {p3, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/h;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->y()Lcn/nubia/k/a/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/k/a/a;->e()J

    move-result-wide p1

    const-wide/32 v0, 0x3200000

    sub-long/2addr p1, v0

    const-wide/32 v0, 0x100000

    cmp-long p1, p1, v0

    if-gez p1, :cond_1

    const/4 p1, 0x3

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    .line 622
    :goto_0
    invoke-direct {p0, p1}, Lcn/nubia/camera/multiRecord/h;->a(I)V

    .line 623
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/h;->q:Lcn/nubia/camera/elefnovideo/l;

    sget-object p2, Lcn/nubia/camera/elefnovideo/l;->b:Lcn/nubia/camera/elefnovideo/l;

    if-ne p1, p2, :cond_2

    .line 624
    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/h;->b()V

    :cond_2
    :goto_1
    return-void
.end method
