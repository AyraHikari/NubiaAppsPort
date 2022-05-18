.class public Lcn/nubia/camera/elefnovideo/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaRecorder$OnErrorListener;
.implements Landroid/media/MediaRecorder$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/elefnovideo/g$b;,
        Lcn/nubia/camera/elefnovideo/g$a;
    }
.end annotation


# instance fields
.field private a:Lcn/nubia/camera/ad/a;

.field private b:Landroid/media/MediaRecorder;

.field private c:Landroid/media/CamcorderProfile;

.field private d:Lcn/nubia/camera/bb/u;

.field private e:Lcn/nubia/camera/k/ah;

.field private f:I

.field private g:I

.field private h:I

.field private i:J

.field private j:J

.field private k:J

.field private l:Lcn/nubia/camera/bb/t;

.field private m:Lcn/nubia/camera/bb/z;

.field private n:Lcn/nubia/camera/elefnovideo/g$b;

.field private o:Lcn/nubia/camera/bb/a;

.field private p:Lcn/nubia/camera/elefnovideo/g$a;

.field private q:Lcn/nubia/camera/elefnovideo/l;

.field private final r:Landroid/media/MediaPlayer$OnCompletionListener;

.field private s:Ljava/text/SimpleDateFormat;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;)V
    .locals 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lcn/nubia/camera/elefnovideo/g$b;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/nubia/camera/elefnovideo/g$b;-><init>(Lcn/nubia/camera/elefnovideo/g;Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/camera/elefnovideo/g;->n:Lcn/nubia/camera/elefnovideo/g$b;

    .line 60
    new-instance v0, Lcn/nubia/camera/bb/a;

    invoke-direct {v0}, Lcn/nubia/camera/bb/a;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/elefnovideo/g;->o:Lcn/nubia/camera/bb/a;

    .line 63
    sget-object v0, Lcn/nubia/camera/elefnovideo/l;->a:Lcn/nubia/camera/elefnovideo/l;

    iput-object v0, p0, Lcn/nubia/camera/elefnovideo/g;->q:Lcn/nubia/camera/elefnovideo/l;

    .line 101
    new-instance v0, Lcn/nubia/camera/elefnovideo/g$1;

    invoke-direct {v0, p0}, Lcn/nubia/camera/elefnovideo/g$1;-><init>(Lcn/nubia/camera/elefnovideo/g;)V

    iput-object v0, p0, Lcn/nubia/camera/elefnovideo/g;->r:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 66
    iput-object p1, p0, Lcn/nubia/camera/elefnovideo/g;->a:Lcn/nubia/camera/ad/a;

    .line 67
    iput-object p2, p0, Lcn/nubia/camera/elefnovideo/g;->e:Lcn/nubia/camera/k/ah;

    .line 68
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->r()Lcn/nubia/j/a;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcn/nubia/j/a;->c(I)V

    .line 69
    iget-object p1, p0, Lcn/nubia/camera/elefnovideo/g;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->r()Lcn/nubia/j/a;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lcn/nubia/j/a;->a(I)V

    return-void
.end method

.method private a(Landroid/location/Location;Lcn/nubia/camera/bb/u;J)Landroid/content/ContentValues;
    .locals 2

    .line 662
    new-instance p3, Landroid/content/ContentValues;

    const/16 p4, 0xa

    invoke-direct {p3, p4}, Landroid/content/ContentValues;-><init>(I)V

    .line 664
    iget-object p4, p2, Lcn/nubia/camera/bb/u;->a:Ljava/lang/String;

    const-string v0, "title"

    invoke-virtual {p3, v0, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    iget-object p4, p2, Lcn/nubia/camera/bb/u;->c:Ljava/lang/String;

    const-string v0, "_display_name"

    invoke-virtual {p3, v0, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    iget-wide v0, p2, Lcn/nubia/camera/bb/u;->e:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    const-string v0, "datetaken"

    invoke-virtual {p3, v0, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 667
    iget-object p4, p2, Lcn/nubia/camera/bb/u;->d:Ljava/lang/String;

    const-string v0, "mime_type"

    invoke-virtual {p3, v0, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    iget-object p4, p2, Lcn/nubia/camera/bb/u;->b:Ljava/lang/String;

    invoke-static {p4}, Lcn/nubia/camera/ba/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const-string v0, "relative_path"

    invoke-virtual {p3, v0, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p2, Lcn/nubia/camera/bb/u;->b:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v0, "/"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    iget-object v0, p2, Lcn/nubia/camera/bb/u;->c:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "_data"

    invoke-virtual {p3, v0, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    iget p4, p2, Lcn/nubia/camera/bb/u;->h:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const-string v0, "width"

    invoke-virtual {p3, v0, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 671
    iget p4, p2, Lcn/nubia/camera/bb/u;->i:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const-string v0, "height"

    invoke-virtual {p3, v0, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 672
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

    .line 674
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const-string p4, "latitude"

    invoke-virtual {p3, p4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 675
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string p2, "longitude"

    invoke-virtual {p3, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    :cond_0
    return-object p3
.end method

.method static synthetic a(Lcn/nubia/camera/elefnovideo/g;)Landroid/media/MediaRecorder;
    .locals 0

    .line 45
    iget-object p0, p0, Lcn/nubia/camera/elefnovideo/g;->b:Landroid/media/MediaRecorder;

    return-object p0
.end method

.method private a(IIIIZI)Lcn/nubia/camera/bb/u;
    .locals 4

    .line 682
    new-instance v0, Lcn/nubia/camera/bb/u;

    invoke-direct {v0}, Lcn/nubia/camera/bb/u;-><init>()V

    .line 683
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 684
    invoke-direct {p0, p1}, Lcn/nubia/camera/elefnovideo/g;->e(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcn/nubia/camera/bb/u;->d:Ljava/lang/String;

    .line 685
    iput-wide v1, v0, Lcn/nubia/camera/bb/u;->e:J

    .line 686
    iput p2, v0, Lcn/nubia/camera/bb/u;->h:I

    .line 687
    iput p3, v0, Lcn/nubia/camera/bb/u;->i:I

    .line 688
    iput p4, v0, Lcn/nubia/camera/bb/u;->g:I

    .line 689
    iput p6, v0, Lcn/nubia/camera/bb/u;->j:I

    if-eqz p5, :cond_0

    .line 691
    invoke-direct {p0, v1, v2}, Lcn/nubia/camera/elefnovideo/g;->a(J)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcn/nubia/camera/bb/u;->a:Ljava/lang/String;

    .line 692
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, v0, Lcn/nubia/camera/bb/u;->a:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-direct {p0, p1}, Lcn/nubia/camera/elefnovideo/g;->d(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcn/nubia/camera/bb/u;->c:Ljava/lang/String;

    .line 693
    iget-object p1, p0, Lcn/nubia/camera/elefnovideo/g;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->y()Lcn/nubia/k/a/a;

    move-result-object p1

    sget-object p2, Lcn/nubia/camera/af/a;->S:Lcn/nubia/camera/af/a;

    invoke-virtual {p2}, Lcn/nubia/camera/af/a;->a()I

    move-result p2

    invoke-static {p1, p2}, Lcn/nubia/camera/av/c;->a(Lcn/nubia/k/a/a;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcn/nubia/camera/bb/u;->b:Ljava/lang/String;

    .line 694
    iget-object p1, p0, Lcn/nubia/camera/elefnovideo/g;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->v()Lcn/nubia/e/a;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/e/a;->b()Landroid/location/Location;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcn/nubia/camera/elefnovideo/g;->a(Landroid/location/Location;Lcn/nubia/camera/bb/u;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, v0, Lcn/nubia/camera/bb/u;->k:Landroid/net/Uri;

    .line 695
    iget-object p1, v0, Lcn/nubia/camera/bb/u;->k:Landroid/net/Uri;

    if-eqz p1, :cond_0

    .line 697
    :try_start_0
    iget-object p1, p0, Lcn/nubia/camera/elefnovideo/g;->a:Lcn/nubia/camera/ad/a;

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

    .line 699
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v0
.end method

.method private a(Landroid/media/CamcorderProfile;Landroid/media/MediaRecorder;J)Lcn/nubia/camera/bb/u;
    .locals 9

    .line 153
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/g;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->q()Lcn/nubia/camera/al/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/al/c;->d()I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/elefnovideo/g;->h:I

    if-eqz v0, :cond_1

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 159
    :cond_0
    iget v0, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iput v0, p0, Lcn/nubia/camera/elefnovideo/g;->f:I

    .line 160
    iget v0, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iput v0, p0, Lcn/nubia/camera/elefnovideo/g;->g:I

    goto :goto_1

    .line 155
    :cond_1
    :goto_0
    iget v0, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iput v0, p0, Lcn/nubia/camera/elefnovideo/g;->f:I

    .line 156
    iget v0, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iput v0, p0, Lcn/nubia/camera/elefnovideo/g;->g:I

    :goto_1
    const/4 v0, 0x2

    .line 163
    iput v0, p1, Landroid/media/CamcorderProfile;->videoCodec:I

    const/4 v1, 0x3

    .line 164
    iput v1, p1, Landroid/media/CamcorderProfile;->audioCodec:I

    const/4 v1, 0x0

    .line 165
    iput v1, p1, Landroid/media/CamcorderProfile;->duration:I

    .line 167
    iget v3, p1, Landroid/media/CamcorderProfile;->fileFormat:I

    iget v4, p0, Lcn/nubia/camera/elefnovideo/g;->f:I

    iget v5, p0, Lcn/nubia/camera/elefnovideo/g;->g:I

    iget v6, p1, Landroid/media/CamcorderProfile;->duration:I

    const/4 v7, 0x1

    const/16 v8, 0x1e

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcn/nubia/camera/elefnovideo/g;->a(IIIIZI)Lcn/nubia/camera/bb/u;

    move-result-object v2

    .line 169
    invoke-virtual {p2, v0}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    const/4 v0, 0x5

    .line 170
    invoke-virtual {p2, v0}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 171
    invoke-virtual {p2, p1}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 172
    iget p1, p0, Lcn/nubia/camera/elefnovideo/g;->f:I

    iget v0, p0, Lcn/nubia/camera/elefnovideo/g;->g:I

    invoke-virtual {p2, p1, v0}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 174
    iget-object p1, p0, Lcn/nubia/camera/elefnovideo/g;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->v()Lcn/nubia/e/a;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/e/a;->b()Landroid/location/Location;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 176
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    double-to-float v0, v3

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    double-to-float p1, v3

    invoke-virtual {p2, v0, p1}, Landroid/media/MediaRecorder;->setLocation(FF)V

    .line 178
    :cond_2
    iget-object p1, v2, Lcn/nubia/camera/bb/u;->l:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    .line 181
    :try_start_0
    invoke-virtual {p2, p3, p4}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :catch_0
    invoke-virtual {p2, v1}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    return-object v2
.end method

.method static synthetic a(Lcn/nubia/camera/elefnovideo/g;Lcn/nubia/camera/elefnovideo/g$a;)Lcn/nubia/camera/elefnovideo/g$a;
    .locals 0

    .line 45
    iput-object p1, p0, Lcn/nubia/camera/elefnovideo/g;->p:Lcn/nubia/camera/elefnovideo/g$a;

    return-object p1
.end method

.method private a(J)Ljava/lang/String;
    .locals 3

    .line 708
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/g;->s:Ljava/text/SimpleDateFormat;

    if-nez v0, :cond_0

    .line 709
    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcn/nubia/camera/elefnovideo/g;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0f03dc

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/camera/elefnovideo/g;->s:Ljava/text/SimpleDateFormat;

    .line 711
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 712
    iget-object p1, p0, Lcn/nubia/camera/elefnovideo/g;->s:Ljava/text/SimpleDateFormat;

    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static a(JZ)Ljava/lang/String;
    .locals 15

    const-wide/16 v0, 0x3e8

    .line 575
    div-long v2, p0, v0

    const-wide/16 v4, 0x3c

    .line 576
    div-long v6, v2, v4

    .line 577
    div-long v8, v6, v4

    mul-long v10, v8, v4

    sub-long v10, v6, v10

    mul-long/2addr v6, v4

    sub-long v4, v2, v6

    .line 581
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v12, 0xa

    cmp-long v7, v8, v12

    const/16 v14, 0x30

    if-gez v7, :cond_0

    .line 585
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 587
    :cond_0
    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v7, 0x3a

    .line 589
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    cmp-long v8, v10, v12

    if-gez v8, :cond_1

    .line 593
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 595
    :cond_1
    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 596
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    cmp-long v7, v4, v12

    if-gez v7, :cond_2

    .line 600
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 602
    :cond_2
    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_4

    const/16 v4, 0x2e

    .line 606
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    mul-long/2addr v2, v0

    sub-long v0, p0, v2

    .line 607
    div-long/2addr v0, v12

    cmp-long v2, v0, v12

    if-gez v2, :cond_3

    .line 609
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 611
    :cond_3
    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 614
    :cond_4
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(I)V
    .locals 1

    .line 440
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/g;->m:Lcn/nubia/camera/bb/z;

    invoke-interface {v0, p1}, Lcn/nubia/camera/bb/z;->d(I)V

    return-void
.end method

.method private a(II)V
    .locals 7

    .line 384
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/g;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->q()Lcn/nubia/camera/al/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/al/c;->d()I

    .line 385
    sget-object v0, Lcn/nubia/camera/bb/t$a;->a:Lcn/nubia/camera/bb/t$a;

    .line 386
    invoke-direct {p0}, Lcn/nubia/camera/elefnovideo/g;->q()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 387
    invoke-direct {p0}, Lcn/nubia/camera/elefnovideo/g;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    sget-object v0, Lcn/nubia/camera/bb/t$a;->a:Lcn/nubia/camera/bb/t$a;

    goto :goto_0

    .line 390
    :cond_0
    sget-object v0, Lcn/nubia/camera/bb/t$a;->b:Lcn/nubia/camera/bb/t$a;

    :cond_1
    :goto_0
    move-object v5, v0

    .line 393
    new-instance v1, Lcn/nubia/camera/bb/t;

    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/g;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v1, v0}, Lcn/nubia/camera/bb/t;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/nubia/camera/elefnovideo/g;->l:Lcn/nubia/camera/bb/t;

    .line 394
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/g;->b:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    iget v6, p0, Lcn/nubia/camera/elefnovideo/g;->h:I

    move v3, p1

    move v4, p2

    invoke-virtual/range {v1 .. v6}, Lcn/nubia/camera/bb/t;->a(Landroid/view/Surface;IILcn/nubia/camera/bb/t$a;I)V

    .line 395
    invoke-direct {p0}, Lcn/nubia/camera/elefnovideo/g;->r()Lcom/android/common/c/e;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/camera/elefnovideo/g;->l:Lcn/nubia/camera/bb/t;

    invoke-virtual {p1, p2}, Lcom/android/common/c/e;->a(Lcom/android/common/c/f$a;)V

    return-void
.end method

.method private a(Lcn/nubia/camera/bb/w;)V
    .locals 2

    .line 494
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 495
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/g;->m:Lcn/nubia/camera/bb/z;

    if-eqz v0, :cond_1

    .line 496
    invoke-interface {v0, p1}, Lcn/nubia/camera/bb/z;->a(Lcn/nubia/camera/bb/w;)V

    goto :goto_0

    .line 499
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/g;->n:Lcn/nubia/camera/elefnovideo/g$b;

    new-instance v1, Lcn/nubia/camera/elefnovideo/g$4;

    invoke-direct {v1, p0, p1}, Lcn/nubia/camera/elefnovideo/g$4;-><init>(Lcn/nubia/camera/elefnovideo/g;Lcn/nubia/camera/bb/w;)V

    invoke-virtual {v0, v1}, Lcn/nubia/camera/elefnovideo/g$b;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/elefnovideo/g;I)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcn/nubia/camera/elefnovideo/g;->c(I)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/elefnovideo/g;Lcn/nubia/camera/elefnovideo/l;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcn/nubia/camera/elefnovideo/g;->a(Lcn/nubia/camera/elefnovideo/l;)V

    return-void
.end method

.method private a(Lcn/nubia/camera/elefnovideo/l;)V
    .locals 0

    .line 432
    iput-object p1, p0, Lcn/nubia/camera/elefnovideo/g;->q:Lcn/nubia/camera/elefnovideo/l;

    return-void
.end method

.method private a(ZZLjava/lang/String;)V
    .locals 1

    .line 444
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/g;->m:Lcn/nubia/camera/bb/z;

    invoke-interface {v0, p1, p2, p3}, Lcn/nubia/camera/bb/z;->a(ZZLjava/lang/String;)V

    return-void
.end method

.method private b(I)V
    .locals 1

    .line 452
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/g;->m:Lcn/nubia/camera/bb/z;

    invoke-interface {v0, p1}, Lcn/nubia/camera/bb/z;->b(I)V

    return-void
.end method

.method private b(Lcn/nubia/camera/bb/u;)V
    .locals 2

    .line 651
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/g;->m:Lcn/nubia/camera/bb/z;

    if-eqz v0, :cond_0

    .line 652
    new-instance v0, Lcn/nubia/camera/bb/w;

    invoke-direct {v0}, Lcn/nubia/camera/bb/w;-><init>()V

    .line 653
    iget-object v1, p1, Lcn/nubia/camera/bb/u;->l:Landroid/os/ParcelFileDescriptor;

    iput-object v1, v0, Lcn/nubia/camera/bb/w;->a:Landroid/os/ParcelFileDescriptor;

    .line 654
    iget-object v1, p1, Lcn/nubia/camera/bb/u;->k:Landroid/net/Uri;

    iput-object v1, v0, Lcn/nubia/camera/bb/w;->b:Landroid/net/Uri;

    .line 655
    iget-object v1, p1, Lcn/nubia/camera/bb/u;->d:Ljava/lang/String;

    iput-object v1, v0, Lcn/nubia/camera/bb/w;->c:Ljava/lang/String;

    .line 656
    iget p1, p1, Lcn/nubia/camera/bb/u;->h:I

    iput p1, v0, Lcn/nubia/camera/bb/w;->d:I

    .line 657
    invoke-direct {p0, v0}, Lcn/nubia/camera/elefnovideo/g;->a(Lcn/nubia/camera/bb/w;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcn/nubia/camera/elefnovideo/g;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcn/nubia/camera/elefnovideo/g;->h()V

    return-void
.end method

.method static synthetic c(Lcn/nubia/camera/elefnovideo/g;)Lcn/nubia/camera/bb/u;
    .locals 0

    .line 45
    iget-object p0, p0, Lcn/nubia/camera/elefnovideo/g;->d:Lcn/nubia/camera/bb/u;

    return-object p0
.end method

.method private c(I)V
    .locals 2

    .line 477
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 478
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/g;->m:Lcn/nubia/camera/bb/z;

    if-eqz v0, :cond_1

    .line 479
    invoke-interface {v0, p1}, Lcn/nubia/camera/bb/z;->c(I)V

    goto :goto_0

    .line 482
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/g;->n:Lcn/nubia/camera/elefnovideo/g$b;

    new-instance v1, Lcn/nubia/camera/elefnovideo/g$3;

    invoke-direct {v1, p0, p1}, Lcn/nubia/camera/elefnovideo/g$3;-><init>(Lcn/nubia/camera/elefnovideo/g;I)V

    invoke-virtual {v0, v1}, Lcn/nubia/camera/elefnovideo/g$b;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic d(Lcn/nubia/camera/elefnovideo/g;)J
    .locals 2

    .line 45
    iget-wide v0, p0, Lcn/nubia/camera/elefnovideo/g;->i:J

    return-wide v0
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

.method static synthetic e(Lcn/nubia/camera/elefnovideo/g;)J
    .locals 2

    .line 45
    iget-wide v0, p0, Lcn/nubia/camera/elefnovideo/g;->k:J

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

.method static synthetic f(Lcn/nubia/camera/elefnovideo/g;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 45
    iget-object p0, p0, Lcn/nubia/camera/elefnovideo/g;->a:Lcn/nubia/camera/ad/a;

    return-object p0
.end method

.method private declared-synchronized g()I
    .locals 8

    monitor-enter p0

    .line 113
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/g;->b:Landroid/media/MediaRecorder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 114
    monitor-exit p0

    return v1

    .line 117
    :cond_0
    :try_start_1
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/camera/elefnovideo/g;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/nubia/b/e;->c(Ljava/lang/String;)Lcn/nubia/b/d;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "EleFnoVideoRecordManager"

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CameraDevice "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/elefnovideo/g;->a:Lcn/nubia/camera/ad/a;

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

    .line 119
    monitor-exit p0

    return v0

    .line 123
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/g;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->y()Lcn/nubia/k/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/k/a/a;->f()J

    .line 124
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/g;->a:Lcn/nubia/camera/ad/a;

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

    .line 126
    monitor-exit p0

    return v0

    .line 129
    :cond_2
    :try_start_3
    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/elefnovideo/g;->b:Landroid/media/MediaRecorder;

    .line 131
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/g;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->v()Lcn/nubia/e/a;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/e/a;->b()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 133
    iget-object v4, p0, Lcn/nubia/camera/elefnovideo/g;->b:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    double-to-float v5, v5

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    double-to-float v0, v6

    invoke-virtual {v4, v5, v0}, Landroid/media/MediaRecorder;->setLocation(FF)V

    .line 135
    :cond_3
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/g;->e:Lcn/nubia/camera/k/ah;

    invoke-virtual {v0}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->e()Landroid/media/CamcorderProfile;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/elefnovideo/g;->c:Landroid/media/CamcorderProfile;

    .line 137
    iget-object v4, p0, Lcn/nubia/camera/elefnovideo/g;->b:Landroid/media/MediaRecorder;

    invoke-direct {p0, v0, v4, v2, v3}, Lcn/nubia/camera/elefnovideo/g;->a(Landroid/media/CamcorderProfile;Landroid/media/MediaRecorder;J)Lcn/nubia/camera/bb/u;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/elefnovideo/g;->d:Lcn/nubia/camera/bb/u;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 140
    :try_start_4
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/g;->b:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 147
    :try_start_5
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/g;->b:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p0}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 148
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/g;->b:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p0}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 149
    monitor-exit p0

    return v1

    :catch_0
    move-exception v0

    :try_start_6
    const-string v1, "EleFnoVideoRecordManager"

    .line 142
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepare failed for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/elefnovideo/g;->d:Lcn/nubia/camera/bb/u;

    iget-object v3, v3, Lcn/nubia/camera/bb/u;->k:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcn/nubia/camera/c/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 143
    invoke-direct {p0}, Lcn/nubia/camera/elefnovideo/g;->i()V

    .line 144
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

.method static synthetic g(Lcn/nubia/camera/elefnovideo/g;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcn/nubia/camera/elefnovideo/g;->i()V

    return-void
.end method

.method private h()V
    .locals 4

    const-string v0, "EleFnoVideoRecordManager"

    const-string v1, "startRecording"

    .line 199
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v1, 0x0

    .line 200
    iput-wide v1, p0, Lcn/nubia/camera/elefnovideo/g;->j:J

    .line 201
    iput-wide v1, p0, Lcn/nubia/camera/elefnovideo/g;->k:J

    .line 203
    iget-object v1, p0, Lcn/nubia/camera/elefnovideo/g;->o:Lcn/nubia/camera/bb/a;

    iget-object v2, p0, Lcn/nubia/camera/elefnovideo/g;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/camera/bb/a;->a(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 206
    :try_start_0
    invoke-direct {p0}, Lcn/nubia/camera/elefnovideo/g;->k()V

    .line 207
    iget-object v2, p0, Lcn/nubia/camera/elefnovideo/g;->b:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->start()V

    .line 208
    iget-object v2, p0, Lcn/nubia/camera/elefnovideo/g;->d:Lcn/nubia/camera/bb/u;

    iget v2, v2, Lcn/nubia/camera/bb/u;->h:I

    iget-object v3, p0, Lcn/nubia/camera/elefnovideo/g;->d:Lcn/nubia/camera/bb/u;

    iget v3, v3, Lcn/nubia/camera/bb/u;->i:I

    invoke-direct {p0, v2, v3}, Lcn/nubia/camera/elefnovideo/g;->a(II)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/g;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/a/a;->a(Z)V

    .line 227
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/camera/elefnovideo/g;->i:J

    .line 228
    sget-object v0, Lcn/nubia/camera/elefnovideo/l;->b:Lcn/nubia/camera/elefnovideo/l;

    invoke-direct {p0, v0}, Lcn/nubia/camera/elefnovideo/g;->a(Lcn/nubia/camera/elefnovideo/l;)V

    const/4 v0, 0x0

    .line 229
    invoke-direct {p0, v0}, Lcn/nubia/camera/elefnovideo/g;->b(I)V

    .line 230
    invoke-direct {p0}, Lcn/nubia/camera/elefnovideo/g;->m()V

    return-void

    :catch_0
    const-string v1, "MediaRecorder has not been initialized.."

    .line 218
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x5

    .line 219
    invoke-direct {p0, v0}, Lcn/nubia/camera/elefnovideo/g;->b(I)V

    .line 220
    sget-object v0, Lcn/nubia/camera/elefnovideo/l;->a:Lcn/nubia/camera/elefnovideo/l;

    invoke-direct {p0, v0}, Lcn/nubia/camera/elefnovideo/g;->a(Lcn/nubia/camera/elefnovideo/l;)V

    .line 221
    invoke-direct {p0}, Lcn/nubia/camera/elefnovideo/g;->o()V

    .line 222
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/g;->n:Lcn/nubia/camera/elefnovideo/g$b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/elefnovideo/g$b;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void

    :catch_1
    move-exception v0

    .line 210
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 211
    invoke-direct {p0}, Lcn/nubia/camera/elefnovideo/g;->i()V

    .line 212
    invoke-direct {p0, v1}, Lcn/nubia/camera/elefnovideo/g;->b(I)V

    .line 213
    invoke-direct {p0}, Lcn/nubia/camera/elefnovideo/g;->j()V

    .line 214
    sget-object v0, Lcn/nubia/camera/elefnovideo/l;->a:Lcn/nubia/camera/elefnovideo/l;

    invoke-direct {p0, v0}, Lcn/nubia/camera/elefnovideo/g;->a(Lcn/nubia/camera/elefnovideo/l;)V

    .line 215
    invoke-direct {p0}, Lcn/nubia/camera/elefnovideo/g;->o()V

    return-void
.end method

.method static synthetic h(Lcn/nubia/camera/elefnovideo/g;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcn/nubia/camera/elefnovideo/g;->o()V

    return-void
.end method

.method static synthetic i(Lcn/nubia/camera/elefnovideo/g;)Lcn/nubia/camera/elefnovideo/g$b;
    .locals 0

    .line 45
    iget-object p0, p0, Lcn/nubia/camera/elefnovideo/g;->n:Lcn/nubia/camera/elefnovideo/g$b;

    return-object p0
.end method

.method private declared-synchronized i()V
    .locals 3

    monitor-enter p0

    .line 328
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/g;->b:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_2

    const-string v0, "EleFnoVideoRecordManager"

    const-string v1, "Releasing media recorder."

    .line 329
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/g;->d:Lcn/nubia/camera/bb/u;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 331
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/g;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/camera/elefnovideo/g;->d:Lcn/nubia/camera/bb/u;

    invoke-static {v0, v2}, Lcn/nubia/camera/bb/ad;->a(Landroid/content/Context;Lcn/nubia/camera/bb/u;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/g;->d:Lcn/nubia/camera/bb/u;

    iput-object v1, v0, Lcn/nubia/camera/bb/u;->k:Landroid/net/Uri;

    .line 334
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/g;->d:Lcn/nubia/camera/bb/u;

    invoke-virtual {v0}, Lcn/nubia/camera/bb/u;->a()V

    .line 337
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/g;->b:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 338
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/g;->b:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 339
    iput-object v1, p0, Lcn/nubia/camera/elefnovideo/g;->b:Landroid/media/MediaRecorder;

    goto :goto_0

    :cond_2
    const-string v0, "EleFnoVideoRecordManager"

    const-string v1, "Media recorder already is null"

    .line 341
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic j(Lcn/nubia/camera/elefnovideo/g;)Lcn/nubia/camera/bb/z;
    .locals 0

    .line 45
    iget-object p0, p0, Lcn/nubia/camera/elefnovideo/g;->m:Lcn/nubia/camera/bb/z;

    return-object p0
.end method

.method private j()V
    .locals 1

    .line 399
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/g;->l:Lcn/nubia/camera/bb/t;

    invoke-virtual {v0}, Lcn/nubia/camera/bb/t;->a()V

    return-void
.end method

.method private k()V
    .locals 1

    .line 448
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/g;->m:Lcn/nubia/camera/bb/z;

    invoke-interface {v0}, Lcn/nubia/camera/bb/z;->d()V

    return-void
.end method

.method static synthetic k(Lcn/nubia/camera/elefnovideo/g;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcn/nubia/camera/elefnovideo/g;->m()V

    return-void
.end method

.method private l()V
    .locals 2

    .line 460
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 461
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/g;->m:Lcn/nubia/camera/bb/z;

    if-eqz v0, :cond_1

    .line 462
    invoke-interface {v0}, Lcn/nubia/camera/bb/z;->e()V

    goto :goto_0

    .line 465
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/g;->n:Lcn/nubia/camera/elefnovideo/g$b;

    new-instance v1, Lcn/nubia/camera/elefnovideo/g$2;

    invoke-direct {v1, p0}, Lcn/nubia/camera/elefnovideo/g$2;-><init>(Lcn/nubia/camera/elefnovideo/g;)V

    invoke-virtual {v0, v1}, Lcn/nubia/camera/elefnovideo/g$b;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private m()V
    .locals 9

    .line 511
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/g;->q:Lcn/nubia/camera/elefnovideo/l;

    sget-object v1, Lcn/nubia/camera/elefnovideo/l;->b:Lcn/nubia/camera/elefnovideo/l;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/g;->q:Lcn/nubia/camera/elefnovideo/l;

    sget-object v1, Lcn/nubia/camera/elefnovideo/l;->d:Lcn/nubia/camera/elefnovideo/l;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 530
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/g;->q:Lcn/nubia/camera/elefnovideo/l;

    sget-object v1, Lcn/nubia/camera/elefnovideo/l;->c:Lcn/nubia/camera/elefnovideo/l;

    if-ne v0, v1, :cond_4

    .line 531
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/g;->n:Lcn/nubia/camera/elefnovideo/g$b;

    invoke-virtual {v0, v3}, Lcn/nubia/camera/elefnovideo/g$b;->removeMessages(I)V

    .line 532
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/g;->n:Lcn/nubia/camera/elefnovideo/g$b;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v3, v4, v5}, Lcn/nubia/camera/elefnovideo/g$b;->sendEmptyMessageDelayed(IJ)Z

    const/4 v0, 0x0

    .line 533
    invoke-direct {p0, v3, v2, v0}, Lcn/nubia/camera/elefnovideo/g;->a(ZZLjava/lang/String;)V

    goto :goto_3

    .line 512
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 513
    iget-wide v4, p0, Lcn/nubia/camera/elefnovideo/g;->i:J

    sub-long/2addr v0, v4

    iget-wide v4, p0, Lcn/nubia/camera/elefnovideo/g;->k:J

    sub-long/2addr v0, v4

    .line 515
    iget-object v4, p0, Lcn/nubia/camera/elefnovideo/g;->d:Lcn/nubia/camera/bb/u;

    iget v4, v4, Lcn/nubia/camera/bb/u;->g:I

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcn/nubia/camera/elefnovideo/g;->d:Lcn/nubia/camera/bb/u;

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

    .line 518
    iget-object v7, p0, Lcn/nubia/camera/elefnovideo/g;->d:Lcn/nubia/camera/bb/u;

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

    .line 522
    :goto_2
    invoke-static {v5, v6, v2}, Lcn/nubia/camera/elefnovideo/g;->a(JZ)Ljava/lang/String;

    move-result-object v5

    .line 523
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "millisecondToTimeString "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "EleFnoVideoRecordManager"

    invoke-static {v7, v6}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v6, 0x3e8

    .line 525
    rem-long/2addr v0, v6

    sub-long/2addr v6, v0

    .line 526
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/g;->n:Lcn/nubia/camera/elefnovideo/g$b;

    invoke-virtual {v0, v3}, Lcn/nubia/camera/elefnovideo/g$b;->removeMessages(I)V

    .line 527
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/g;->n:Lcn/nubia/camera/elefnovideo/g$b;

    invoke-virtual {v0, v3}, Lcn/nubia/camera/elefnovideo/g$b;->removeMessages(I)V

    .line 528
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/g;->n:Lcn/nubia/camera/elefnovideo/g$b;

    invoke-virtual {v0, v3, v6, v7}, Lcn/nubia/camera/elefnovideo/g$b;->sendEmptyMessageDelayed(IJ)Z

    .line 529
    invoke-direct {p0, v2, v4, v5}, Lcn/nubia/camera/elefnovideo/g;->a(ZZLjava/lang/String;)V

    :cond_4
    :goto_3
    return-void
.end method

.method private n()V
    .locals 1

    .line 558
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/g;->m:Lcn/nubia/camera/bb/z;

    if-eqz v0, :cond_0

    .line 559
    invoke-interface {v0}, Lcn/nubia/camera/bb/z;->l()V

    :cond_0
    return-void
.end method

.method private o()V
    .locals 1

    .line 564
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/g;->m:Lcn/nubia/camera/bb/z;

    if-eqz v0, :cond_0

    .line 565
    invoke-interface {v0}, Lcn/nubia/camera/bb/z;->r_()V

    :cond_0
    return-void
.end method

.method private p()V
    .locals 2

    .line 570
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/g;->n:Lcn/nubia/camera/elefnovideo/g$b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/elefnovideo/g$b;->removeMessages(I)V

    return-void
.end method

.method private q()Z
    .locals 1

    .line 730
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/g;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private r()Lcom/android/common/c/e;
    .locals 1

    .line 734
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/g;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    invoke-virtual {v0}, Lcn/nubia/camera/a/a;->C()Lcom/android/common/c/e;

    move-result-object v0

    return-object v0
.end method

.method private s()Z
    .locals 3

    .line 738
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/g;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/g;->a:Lcn/nubia/camera/ad/a;

    .line 740
    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/elefnovideo/g;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0f0251

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_mirror_mode_key"

    invoke-virtual {v0, v2, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/elefnovideo/g;->a:Lcn/nubia/camera/ad/a;

    .line 741
    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0f0255

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 739
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

    .line 618
    invoke-direct {p0, p1, p2, v0, v1}, Lcn/nubia/camera/elefnovideo/g;->a(Landroid/location/Location;Lcn/nubia/camera/bb/u;J)Landroid/content/ContentValues;

    move-result-object p1

    const/4 p2, 0x1

    .line 619
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "is_pending"

    invoke-virtual {p1, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 620
    sget-object p2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 621
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/g;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p2

    .line 622
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "creatVideoUri mCurrentVideoUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "EleFnoVideoRecordManager"

    invoke-static {v0, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2
.end method

.method public declared-synchronized a()V
    .locals 4

    monitor-enter p0

    .line 77
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/g;->a:Lcn/nubia/camera/ad/a;

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

    .line 79
    invoke-direct {p0, v0}, Lcn/nubia/camera/elefnovideo/g;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    monitor-exit p0

    return-void

    .line 82
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcn/nubia/camera/elefnovideo/g;->g()I

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    invoke-direct {p0, v0}, Lcn/nubia/camera/elefnovideo/g;->b(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    monitor-exit p0

    return-void

    .line 87
    :cond_1
    :try_start_2
    sget-object v0, Lcn/nubia/camera/elefnovideo/l;->f:Lcn/nubia/camera/elefnovideo/l;

    invoke-direct {p0, v0}, Lcn/nubia/camera/elefnovideo/g;->a(Lcn/nubia/camera/elefnovideo/l;)V

    .line 88
    invoke-direct {p0}, Lcn/nubia/camera/elefnovideo/g;->n()V

    .line 90
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/g;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    const-string v1, "pref_camera_shutter_sound_key"

    iget-object v2, p0, Lcn/nubia/camera/elefnovideo/g;->a:Lcn/nubia/camera/ad/a;

    .line 91
    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0f0209

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "EleFnoVideoRecordManager"

    .line 92
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

    .line 93
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "EleFnoVideoRecordManager"

    const-string v1, "playWithMediaPlayer"

    .line 94
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/g;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->r()Lcn/nubia/j/a;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcn/nubia/camera/elefnovideo/g;->r:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1, v2}, Lcn/nubia/j/a;->a(ILandroid/media/MediaPlayer$OnCompletionListener;)V

    goto :goto_0

    .line 97
    :cond_2
    invoke-direct {p0}, Lcn/nubia/camera/elefnovideo/g;->h()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 99
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected a(Lcn/nubia/camera/bb/u;)V
    .locals 6

    const-string v0, "EleFnoVideoRecordManager"

    const-string v1, "onVideoFileSave"

    .line 627
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x0

    .line 629
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "is_pending"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 630
    iget-object v2, p0, Lcn/nubia/camera/elefnovideo/g;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x1d

    if-gt v2, v3, :cond_0

    .line 631
    iget-object v2, p0, Lcn/nubia/camera/elefnovideo/g;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p1, Lcn/nubia/camera/bb/u;->k:Landroid/net/Uri;

    invoke-static {v2, v3}, Lcn/nubia/camera/ba/a;->b(Landroid/content/ContentResolver;Landroid/net/Uri;)I

    move-result v2

    .line 632
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "_size"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 633
    iget-wide v2, p1, Lcn/nubia/camera/bb/u;->f:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 634
    iget-wide v2, p1, Lcn/nubia/camera/bb/u;->f:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "duration"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 637
    :cond_0
    iget-object v2, p0, Lcn/nubia/camera/elefnovideo/g;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p1, Lcn/nubia/camera/bb/u;->k:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 640
    new-instance v0, Lcn/nubia/l/b/g;

    iget-object v2, p0, Lcn/nubia/camera/elefnovideo/g;->a:Lcn/nubia/camera/ad/a;

    .line 641
    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p1, Lcn/nubia/camera/bb/u;->k:Landroid/net/Uri;

    invoke-direct {v0, v2, v3, v1, v1}, Lcn/nubia/l/b/g;-><init>(Landroid/content/Context;Landroid/net/Uri;IZ)V

    .line 645
    iget-object v1, p0, Lcn/nubia/camera/elefnovideo/g;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->h()Lcn/nubia/l/a/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/nubia/l/a/b;->a(Lcn/nubia/l/b/d;)V

    .line 647
    invoke-direct {p0, p1}, Lcn/nubia/camera/elefnovideo/g;->b(Lcn/nubia/camera/bb/u;)V

    return-void
.end method

.method public a(Lcn/nubia/camera/bb/z;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcn/nubia/camera/elefnovideo/g;->m:Lcn/nubia/camera/bb/z;

    return-void
.end method

.method protected a(Z)V
    .locals 1

    .line 456
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/g;->m:Lcn/nubia/camera/bb/z;

    invoke-interface {v0, p1}, Lcn/nubia/camera/bb/z;->b(Z)V

    return-void
.end method

.method public declared-synchronized b()V
    .locals 4

    monitor-enter p0

    .line 234
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/g;->q:Lcn/nubia/camera/elefnovideo/l;

    sget-object v1, Lcn/nubia/camera/elefnovideo/l;->e:Lcn/nubia/camera/elefnovideo/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "EleFnoVideoRecordManager"

    const-string v1, "stopVideoRecording"

    .line 235
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/g;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/a/a;->a(Z)V

    .line 238
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/g;->o:Lcn/nubia/camera/bb/a;

    iget-object v1, p0, Lcn/nubia/camera/elefnovideo/g;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/bb/a;->b(Landroid/content/Context;)V

    .line 240
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/g;->q:Lcn/nubia/camera/elefnovideo/l;

    sget-object v1, Lcn/nubia/camera/elefnovideo/l;->b:Lcn/nubia/camera/elefnovideo/l;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/g;->q:Lcn/nubia/camera/elefnovideo/l;

    sget-object v1, Lcn/nubia/camera/elefnovideo/l;->c:Lcn/nubia/camera/elefnovideo/l;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/g;->q:Lcn/nubia/camera/elefnovideo/l;

    sget-object v1, Lcn/nubia/camera/elefnovideo/l;->d:Lcn/nubia/camera/elefnovideo/l;

    if-eq v0, v1, :cond_2

    const-string v0, "EleFnoVideoRecordManager"

    const-string v1, "VideoRecording is not started!!!"

    .line 243
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x6

    .line 244
    invoke-direct {p0, v0}, Lcn/nubia/camera/elefnovideo/g;->c(I)V

    .line 246
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/g;->q:Lcn/nubia/camera/elefnovideo/l;

    sget-object v1, Lcn/nubia/camera/elefnovideo/l;->f:Lcn/nubia/camera/elefnovideo/l;

    if-ne v0, v1, :cond_1

    .line 247
    sget-object v0, Lcn/nubia/camera/elefnovideo/l;->a:Lcn/nubia/camera/elefnovideo/l;

    invoke-direct {p0, v0}, Lcn/nubia/camera/elefnovideo/g;->a(Lcn/nubia/camera/elefnovideo/l;)V

    .line 248
    invoke-direct {p0}, Lcn/nubia/camera/elefnovideo/g;->o()V

    .line 249
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/g;->n:Lcn/nubia/camera/elefnovideo/g$b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/elefnovideo/g$b;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 251
    :cond_1
    monitor-exit p0

    return-void

    .line 253
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lcn/nubia/camera/elefnovideo/g;->f()Lcn/nubia/camera/elefnovideo/l;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/elefnovideo/l;->c:Lcn/nubia/camera/elefnovideo/l;

    if-ne v0, v1, :cond_3

    .line 254
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/nubia/camera/elefnovideo/g;->j:J

    sub-long/2addr v0, v2

    .line 255
    iget-wide v2, p0, Lcn/nubia/camera/elefnovideo/g;->k:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcn/nubia/camera/elefnovideo/g;->k:J

    .line 257
    :cond_3
    sget-object v0, Lcn/nubia/camera/elefnovideo/l;->e:Lcn/nubia/camera/elefnovideo/l;

    invoke-direct {p0, v0}, Lcn/nubia/camera/elefnovideo/g;->a(Lcn/nubia/camera/elefnovideo/l;)V

    .line 258
    invoke-direct {p0}, Lcn/nubia/camera/elefnovideo/g;->l()V

    .line 259
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/g;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->r()Lcn/nubia/j/a;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcn/nubia/j/a;->b(I)V

    .line 260
    invoke-direct {p0}, Lcn/nubia/camera/elefnovideo/g;->p()V

    .line 261
    invoke-direct {p0}, Lcn/nubia/camera/elefnovideo/g;->j()V

    .line 263
    new-instance v0, Lcn/nubia/camera/elefnovideo/g$a;

    invoke-direct {v0, p0}, Lcn/nubia/camera/elefnovideo/g$a;-><init>(Lcn/nubia/camera/elefnovideo/g;)V

    iput-object v0, p0, Lcn/nubia/camera/elefnovideo/g;->p:Lcn/nubia/camera/elefnovideo/g$a;

    .line 264
    invoke-virtual {v0}, Lcn/nubia/camera/elefnovideo/g$a;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 265
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()V
    .locals 3

    const-string v0, "EleFnoVideoRecordManager"

    .line 315
    iget-object v1, p0, Lcn/nubia/camera/elefnovideo/g;->p:Lcn/nubia/camera/elefnovideo/g$a;

    if-eqz v1, :cond_0

    :try_start_0
    const-string v2, "wait StopRecordThread"

    .line 318
    invoke-static {v0, v2}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    const-string v1, "StopRecordThread finish"

    .line 320
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 322
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public d()V
    .locals 4

    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPauseButtonClick. curState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/elefnovideo/g;->q:Lcn/nubia/camera/elefnovideo/l;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EleFnoVideoRecordManager"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    sget-object v0, Lcn/nubia/camera/elefnovideo/g$5;->a:[I

    iget-object v2, p0, Lcn/nubia/camera/elefnovideo/g;->q:Lcn/nubia/camera/elefnovideo/l;

    invoke-virtual {v2}, Lcn/nubia/camera/elefnovideo/l;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error state for pause recording, state is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/camera/elefnovideo/g;->q:Lcn/nubia/camera/elefnovideo/l;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 356
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/g;->l:Lcn/nubia/camera/bb/t;

    invoke-virtual {v0}, Lcn/nubia/camera/bb/t;->e()V

    .line 358
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/g;->b:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->resume()V

    .line 359
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/nubia/camera/elefnovideo/g;->j:J

    sub-long/2addr v0, v2

    .line 360
    iget-wide v2, p0, Lcn/nubia/camera/elefnovideo/g;->k:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcn/nubia/camera/elefnovideo/g;->k:J

    .line 361
    sget-object v0, Lcn/nubia/camera/elefnovideo/l;->b:Lcn/nubia/camera/elefnovideo/l;

    invoke-direct {p0, v0}, Lcn/nubia/camera/elefnovideo/g;->a(Lcn/nubia/camera/elefnovideo/l;)V

    const/4 v0, 0x0

    .line 362
    invoke-virtual {p0, v0}, Lcn/nubia/camera/elefnovideo/g;->a(Z)V

    goto :goto_0

    .line 349
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/g;->l:Lcn/nubia/camera/bb/t;

    invoke-virtual {v0}, Lcn/nubia/camera/bb/t;->d()V

    .line 350
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/g;->b:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->pause()V

    .line 351
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/camera/elefnovideo/g;->j:J

    .line 352
    sget-object v0, Lcn/nubia/camera/elefnovideo/l;->c:Lcn/nubia/camera/elefnovideo/l;

    invoke-direct {p0, v0}, Lcn/nubia/camera/elefnovideo/g;->a(Lcn/nubia/camera/elefnovideo/l;)V

    .line 353
    invoke-virtual {p0, v2}, Lcn/nubia/camera/elefnovideo/g;->a(Z)V

    .line 368
    :goto_0
    invoke-direct {p0}, Lcn/nubia/camera/elefnovideo/g;->m()V

    return-void
.end method

.method public e()V
    .locals 2

    .line 373
    invoke-virtual {p0}, Lcn/nubia/camera/elefnovideo/g;->f()Lcn/nubia/camera/elefnovideo/l;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/elefnovideo/l;->f:Lcn/nubia/camera/elefnovideo/l;

    if-ne v0, v1, :cond_0

    .line 374
    invoke-direct {p0}, Lcn/nubia/camera/elefnovideo/g;->i()V

    .line 375
    sget-object v0, Lcn/nubia/camera/elefnovideo/l;->a:Lcn/nubia/camera/elefnovideo/l;

    invoke-direct {p0, v0}, Lcn/nubia/camera/elefnovideo/g;->a(Lcn/nubia/camera/elefnovideo/l;)V

    goto :goto_0

    .line 377
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/elefnovideo/g;->f()Lcn/nubia/camera/elefnovideo/l;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/elefnovideo/l;->a:Lcn/nubia/camera/elefnovideo/l;

    if-eq v0, v1, :cond_1

    .line 378
    invoke-virtual {p0}, Lcn/nubia/camera/elefnovideo/g;->b()V

    .line 379
    invoke-virtual {p0}, Lcn/nubia/camera/elefnovideo/g;->c()V

    :cond_1
    :goto_0
    return-void
.end method

.method public f()Lcn/nubia/camera/elefnovideo/l;
    .locals 1

    .line 436
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/g;->q:Lcn/nubia/camera/elefnovideo/l;

    return-object v0
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 1

    .line 404
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

    const-string p2, "EleFnoVideoRecordManager"

    invoke-static {p2, p1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    invoke-virtual {p0}, Lcn/nubia/camera/elefnovideo/g;->b()V

    return-void
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 2

    .line 410
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

    const-string p3, "EleFnoVideoRecordManager"

    invoke-static {p3, p1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x320

    if-ne p2, p1, :cond_0

    const-string p1, "onInfo MEDIA_RECORDER_INFO_MAX_DURATION_REACHED"

    .line 412
    invoke-static {p3, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-object p1, p0, Lcn/nubia/camera/elefnovideo/g;->q:Lcn/nubia/camera/elefnovideo/l;

    sget-object p2, Lcn/nubia/camera/elefnovideo/l;->b:Lcn/nubia/camera/elefnovideo/l;

    if-ne p1, p2, :cond_2

    .line 414
    invoke-virtual {p0}, Lcn/nubia/camera/elefnovideo/g;->b()V

    goto :goto_1

    :cond_0
    const/16 p1, 0x321

    if-ne p2, p1, :cond_2

    const-string p1, "onInfo MEDIA_RECORDER_INFO_MAX_FILESIZE_REACHED"

    .line 417
    invoke-static {p3, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget-object p1, p0, Lcn/nubia/camera/elefnovideo/g;->a:Lcn/nubia/camera/ad/a;

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

    .line 424
    :goto_0
    invoke-direct {p0, p1}, Lcn/nubia/camera/elefnovideo/g;->a(I)V

    .line 425
    iget-object p1, p0, Lcn/nubia/camera/elefnovideo/g;->q:Lcn/nubia/camera/elefnovideo/l;

    sget-object p2, Lcn/nubia/camera/elefnovideo/l;->b:Lcn/nubia/camera/elefnovideo/l;

    if-ne p1, p2, :cond_2

    .line 426
    invoke-virtual {p0}, Lcn/nubia/camera/elefnovideo/g;->b()V

    :cond_2
    :goto_1
    return-void
.end method
