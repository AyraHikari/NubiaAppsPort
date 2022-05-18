.class public abstract Lcn/nubia/camera/bb/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaRecorder$OnErrorListener;
.implements Landroid/media/MediaRecorder$OnInfoListener;
.implements Lcn/nubia/camera/bb/d;
.implements Lcn/nubia/camera/k/ab$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/bb/b$a;,
        Lcn/nubia/camera/bb/b$c;,
        Lcn/nubia/camera/bb/b$b;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Lcn/nubia/camera/ad/a;

.field private c:Lcn/nubia/camera/bb/b$c;

.field private d:Lcn/nubia/camera/bb/z;

.field private e:Lcn/nubia/k/a/a;

.field private f:Landroid/content/Context;

.field private g:Lcn/nubia/camera/bb/ac;

.field private h:J

.field private i:J

.field private j:J

.field private k:I

.field private l:Landroid/media/MediaRecorder;

.field private m:Landroid/media/CamcorderProfile;

.field private n:Lcn/nubia/camera/bb/b$b;

.field private o:Lcn/nubia/camera/bb/u;

.field private p:Z

.field private q:Lcn/nubia/camera/bb/a;

.field private r:Z

.field private s:Z

.field private t:Ljava/lang/Thread;

.field private u:I

.field private final v:Landroid/media/MediaPlayer$OnCompletionListener;

.field private w:Lcn/nubia/camera/bb/d$a;

.field private x:Ljava/text/SimpleDateFormat;

.field private y:Landroid/hardware/camera2/TotalCaptureResult;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/nubia/camera/ad/a;Lcn/nubia/k/a/a;Lcn/nubia/camera/bb/ac;)V
    .locals 2

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 70
    iput v0, p0, Lcn/nubia/camera/bb/b;->a:I

    .line 88
    iput-boolean v0, p0, Lcn/nubia/camera/bb/b;->p:Z

    .line 90
    new-instance v1, Lcn/nubia/camera/bb/a;

    invoke-direct {v1}, Lcn/nubia/camera/bb/a;-><init>()V

    iput-object v1, p0, Lcn/nubia/camera/bb/b;->q:Lcn/nubia/camera/bb/a;

    .line 92
    iput-boolean v0, p0, Lcn/nubia/camera/bb/b;->r:Z

    .line 93
    iput-boolean v0, p0, Lcn/nubia/camera/bb/b;->s:Z

    const/4 v1, 0x0

    .line 94
    iput-object v1, p0, Lcn/nubia/camera/bb/b;->t:Ljava/lang/Thread;

    .line 95
    iput v0, p0, Lcn/nubia/camera/bb/b;->u:I

    .line 97
    new-instance v0, Lcn/nubia/camera/bb/b$1;

    invoke-direct {v0, p0}, Lcn/nubia/camera/bb/b$1;-><init>(Lcn/nubia/camera/bb/b;)V

    iput-object v0, p0, Lcn/nubia/camera/bb/b;->v:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 110
    iput-object p1, p0, Lcn/nubia/camera/bb/b;->f:Landroid/content/Context;

    .line 111
    iput-object p2, p0, Lcn/nubia/camera/bb/b;->b:Lcn/nubia/camera/ad/a;

    .line 112
    iput-object p3, p0, Lcn/nubia/camera/bb/b;->e:Lcn/nubia/k/a/a;

    .line 113
    iput-object p4, p0, Lcn/nubia/camera/bb/b;->g:Lcn/nubia/camera/bb/ac;

    .line 114
    new-instance p1, Lcn/nubia/camera/bb/b$c;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcn/nubia/camera/bb/b$c;-><init>(Lcn/nubia/camera/bb/b;Landroid/os/Looper;)V

    iput-object p1, p0, Lcn/nubia/camera/bb/b;->c:Lcn/nubia/camera/bb/b$c;

    .line 115
    invoke-virtual {p0}, Lcn/nubia/camera/bb/b;->s()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->r()Lcn/nubia/j/a;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcn/nubia/j/a;->c(I)V

    .line 116
    invoke-virtual {p0}, Lcn/nubia/camera/bb/b;->s()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->r()Lcn/nubia/j/a;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lcn/nubia/j/a;->a(I)V

    return-void
.end method

.method private D()V
    .locals 1

    .line 172
    iget-boolean v0, p0, Lcn/nubia/camera/bb/b;->r:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcn/nubia/camera/bb/b;->s:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 173
    iput-boolean v0, p0, Lcn/nubia/camera/bb/b;->r:Z

    .line 174
    iput-boolean v0, p0, Lcn/nubia/camera/bb/b;->s:Z

    .line 176
    iget v0, p0, Lcn/nubia/camera/bb/b;->u:I

    if-eqz v0, :cond_1

    .line 177
    invoke-virtual {p0, v0}, Lcn/nubia/camera/bb/b;->c(I)V

    .line 178
    iget-object v0, p0, Lcn/nubia/camera/bb/b;->w:Lcn/nubia/camera/bb/d$a;

    if-eqz v0, :cond_0

    .line 179
    invoke-interface {v0}, Lcn/nubia/camera/bb/d$a;->a()V

    :cond_0
    return-void

    .line 185
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/bb/b;->l:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_2

    .line 186
    invoke-direct {p0}, Lcn/nubia/camera/bb/b;->E()V

    :cond_2
    return-void
.end method

.method private E()V
    .locals 4

    .line 865
    iget-object v0, p0, Lcn/nubia/camera/bb/b;->w:Lcn/nubia/camera/bb/d$a;

    if-eqz v0, :cond_0

    .line 866
    invoke-interface {v0}, Lcn/nubia/camera/bb/d$a;->a()V

    :cond_0
    const-wide/16 v0, 0x0

    .line 869
    iput-wide v0, p0, Lcn/nubia/camera/bb/b;->i:J

    .line 870
    iput-wide v0, p0, Lcn/nubia/camera/bb/b;->j:J

    .line 872
    iget-object v0, p0, Lcn/nubia/camera/bb/b;->q:Lcn/nubia/camera/bb/a;

    iget-object v1, p0, Lcn/nubia/camera/bb/b;->f:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/bb/a;->a(Landroid/content/Context;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 875
    :try_start_0
    iget-object v2, p0, Lcn/nubia/camera/bb/b;->l:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->start()V

    .line 876
    iget-object v2, p0, Lcn/nubia/camera/bb/b;->o:Lcn/nubia/camera/bb/u;

    iget v2, v2, Lcn/nubia/camera/bb/u;->h:I

    iget-object v3, p0, Lcn/nubia/camera/bb/b;->o:Lcn/nubia/camera/bb/u;

    iget v3, v3, Lcn/nubia/camera/bb/u;->i:I

    invoke-virtual {p0, v2, v3}, Lcn/nubia/camera/bb/b;->a(II)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 894
    invoke-virtual {p0}, Lcn/nubia/camera/bb/b;->t()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcn/nubia/camera/a/a;

    invoke-virtual {v2, v1}, Lcn/nubia/camera/a/a;->a(Z)V

    .line 895
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcn/nubia/camera/bb/b;->c(J)V

    .line 896
    invoke-virtual {p0, v1}, Lcn/nubia/camera/bb/b;->a(I)V

    .line 897
    invoke-virtual {p0, v0}, Lcn/nubia/camera/bb/b;->c(I)V

    .line 898
    invoke-virtual {p0}, Lcn/nubia/camera/bb/b;->r()V

    .line 899
    iget-object v0, p0, Lcn/nubia/camera/bb/b;->g:Lcn/nubia/camera/bb/ac;

    invoke-virtual {v0, p0}, Lcn/nubia/camera/bb/ac;->a(Lcn/nubia/camera/k/ab$a;)V

    return-void

    :catch_0
    const-string v1, "BaseVideoRecordManagerImpl"

    const-string v2, "MediaRecorder has not been initialized.."

    .line 886
    invoke-static {v1, v2}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x5

    .line 887
    invoke-virtual {p0, v1}, Lcn/nubia/camera/bb/b;->c(I)V

    .line 888
    invoke-virtual {p0, v0}, Lcn/nubia/camera/bb/b;->a(I)V

    .line 889
    invoke-direct {p0}, Lcn/nubia/camera/bb/b;->G()V

    .line 890
    iget-object v0, p0, Lcn/nubia/camera/bb/b;->c:Lcn/nubia/camera/bb/b$c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/bb/b$c;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void

    :catch_1
    move-exception v2

    .line 878
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 879
    invoke-virtual {p0}, Lcn/nubia/camera/bb/b;->k()V

    .line 880
    invoke-virtual {p0, v1}, Lcn/nubia/camera/bb/b;->c(I)V

    .line 881
    invoke-virtual {p0}, Lcn/nubia/camera/bb/b;->B()V

    .line 882
    invoke-virtual {p0, v0}, Lcn/nubia/camera/bb/b;->a(I)V

    .line 883
    invoke-direct {p0}, Lcn/nubia/camera/bb/b;->G()V

    return-void
.end method

.method private F()V
    .locals 1

    .line 1061
    iget-object v0, p0, Lcn/nubia/camera/bb/b;->d:Lcn/nubia/camera/bb/z;

    if-eqz v0, :cond_0

    .line 1062
    invoke-interface {v0}, Lcn/nubia/camera/bb/z;->l()V

    :cond_0
    return-void
.end method

.method private G()V
    .locals 1

    .line 1067
    iget-object v0, p0, Lcn/nubia/camera/bb/b;->d:Lcn/nubia/camera/bb/z;

    if-eqz v0, :cond_0

    .line 1068
    invoke-interface {v0}, Lcn/nubia/camera/bb/z;->r_()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/bb/b;I)I
    .locals 0

    .line 60
    iput p1, p0, Lcn/nubia/camera/bb/b;->u:I

    return p1
.end method

.method static synthetic a(Lcn/nubia/camera/bb/b;Lcn/nubia/camera/bb/b$b;)Lcn/nubia/camera/bb/b$b;
    .locals 0

    .line 60
    iput-object p1, p0, Lcn/nubia/camera/bb/b;->n:Lcn/nubia/camera/bb/b$b;

    return-object p1
.end method

.method static synthetic a(Lcn/nubia/camera/bb/b;Lcn/nubia/camera/bb/u;)Lcn/nubia/camera/bb/u;
    .locals 0

    .line 60
    iput-object p1, p0, Lcn/nubia/camera/bb/b;->o:Lcn/nubia/camera/bb/u;

    return-object p1
.end method

.method private static a(JZ)Ljava/lang/String;
    .locals 15

    const-wide/16 v0, 0x3e8

    .line 549
    div-long v2, p0, v0

    const-wide/16 v4, 0x3c

    .line 550
    div-long v6, v2, v4

    .line 551
    div-long v8, v6, v4

    mul-long v10, v8, v4

    sub-long v10, v6, v10

    mul-long/2addr v6, v4

    sub-long v4, v2, v6

    .line 555
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v12, 0xa

    cmp-long v7, v8, v12

    const/16 v14, 0x30

    if-gez v7, :cond_0

    .line 559
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 561
    :cond_0
    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v7, 0x3a

    .line 563
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    cmp-long v8, v10, v12

    if-gez v8, :cond_1

    .line 567
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 569
    :cond_1
    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 570
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    cmp-long v7, v4, v12

    if-gez v7, :cond_2

    .line 574
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 576
    :cond_2
    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_4

    const/16 v4, 0x2e

    .line 580
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    mul-long/2addr v2, v0

    sub-long v0, p0, v2

    .line 581
    div-long/2addr v0, v12

    cmp-long v2, v0, v12

    if-gez v2, :cond_3

    .line 583
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 585
    :cond_3
    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 588
    :cond_4
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcn/nubia/camera/bb/b;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    .line 60
    iput-object p1, p0, Lcn/nubia/camera/bb/b;->t:Ljava/lang/Thread;

    return-object p1
.end method

.method private a(Landroid/net/Uri;JI)V
    .locals 5

    const-string v0, "BaseVideoRecordManagerImpl"

    .line 662
    iget-object v1, p0, Lcn/nubia/camera/bb/b;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->B()Lcom/android/preference/PreferenceGroup;

    move-result-object v1

    const-string v2, "pref_motion_detection_key"

    invoke-virtual {v1, v2}, Lcom/android/preference/PreferenceGroup;->a(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/preference/ListPreference;->k()Ljava/lang/String;

    move-result-object v1

    const-string v2, "on"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    .line 678
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/camera/bb/b;->t()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wa"

    invoke-virtual {v3, p1, v4}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 679
    :try_start_1
    invoke-direct {p0, p2, p3}, Lcn/nubia/camera/bb/b;->d(J)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/FileOutputStream;->write([B)V

    const/4 p2, -0x1

    .line 680
    invoke-direct {p0, p2}, Lcn/nubia/camera/bb/b;->f(I)[B

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/FileOutputStream;->write([B)V

    .line 681
    invoke-direct {p0, p2}, Lcn/nubia/camera/bb/b;->f(I)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 682
    invoke-direct {p0, p4}, Lcn/nubia/camera/bb/b;->f(I)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/FileOutputStream;->write([B)V

    if-eqz v1, :cond_0

    const p2, -0x55c1aa48

    goto :goto_0

    :cond_0
    const p2, -0x55c1aa49

    .line 683
    :goto_0
    invoke-direct {p0, p2}, Lcn/nubia/camera/bb/b;->f(I)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/FileOutputStream;->write([B)V

    const/16 p2, 0x1c

    .line 684
    invoke-direct {p0, p2}, Lcn/nubia/camera/bb/b;->f(I)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/FileOutputStream;->write([B)V

    const-string p2, "add slomo flag success"

    .line 685
    invoke-static {v0, p2}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    .line 692
    :try_start_2
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catchall_0
    move-exception p2

    move-object v2, p1

    goto :goto_3

    :catch_0
    move-object v2, p1

    goto :goto_1

    :catchall_1
    move-exception p2

    goto :goto_3

    :catch_1
    :goto_1
    :try_start_3
    const-string p1, "add slomo flag failed "

    .line 688
    invoke-static {v0, p1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_1

    .line 692
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 694
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_2
    return-void

    :goto_3
    if-eqz v2, :cond_2

    .line 692
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :catch_3
    move-exception p1

    .line 694
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 697
    :cond_2
    :goto_4
    throw p2
.end method

.method static synthetic a(Lcn/nubia/camera/bb/b;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcn/nubia/camera/bb/b;->D()V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/bb/b;Z)Z
    .locals 0

    .line 60
    iput-boolean p1, p0, Lcn/nubia/camera/bb/b;->r:Z

    return p1
.end method

.method static synthetic b(Lcn/nubia/camera/bb/b;)Lcn/nubia/camera/bb/b$c;
    .locals 0

    .line 60
    iget-object p0, p0, Lcn/nubia/camera/bb/b;->c:Lcn/nubia/camera/bb/b$c;

    return-object p0
.end method

.method static synthetic b(Lcn/nubia/camera/bb/b;I)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcn/nubia/camera/bb/b;->e(I)V

    return-void
.end method

.method static synthetic b(Lcn/nubia/camera/bb/b;Z)Z
    .locals 0

    .line 60
    iput-boolean p1, p0, Lcn/nubia/camera/bb/b;->s:Z

    return p1
.end method

.method static synthetic c(Lcn/nubia/camera/bb/b;)Ljava/lang/Thread;
    .locals 0

    .line 60
    iget-object p0, p0, Lcn/nubia/camera/bb/b;->t:Ljava/lang/Thread;

    return-object p0
.end method

.method private c(J)V
    .locals 0

    .line 508
    iput-wide p1, p0, Lcn/nubia/camera/bb/b;->h:J

    return-void
.end method

.method static synthetic d(Lcn/nubia/camera/bb/b;)Lcn/nubia/camera/bb/u;
    .locals 0

    .line 60
    iget-object p0, p0, Lcn/nubia/camera/bb/b;->o:Lcn/nubia/camera/bb/u;

    return-object p0
.end method

.method private d(J)[B
    .locals 6

    const/16 v0, 0x8

    new-array v1, v0, [B

    const/16 v2, 0x38

    ushr-long v2, p1, v2

    long-to-int v2, v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    const/16 v2, 0x30

    ushr-long v4, p1, v2

    long-to-int v2, v4

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v4, 0x1

    aput-byte v2, v1, v4

    const/16 v2, 0x28

    ushr-long v4, p1, v2

    long-to-int v2, v4

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v4, 0x2

    aput-byte v2, v1, v4

    const/16 v2, 0x20

    ushr-long v4, p1, v2

    long-to-int v2, v4

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v4, 0x3

    aput-byte v2, v1, v4

    const/16 v2, 0x18

    ushr-long v4, p1, v2

    long-to-int v2, v4

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v4, 0x4

    aput-byte v2, v1, v4

    const/16 v2, 0x10

    ushr-long v4, p1, v2

    long-to-int v2, v4

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v4, 0x5

    aput-byte v2, v1, v4

    ushr-long v4, p1, v0

    long-to-int v0, v4

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v2, 0x6

    aput-byte v0, v1, v2

    ushr-long/2addr p1, v3

    long-to-int p1, p1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 p2, 0x7

    aput-byte p1, v1, p2

    return-object v1
.end method

.method static synthetic e(Lcn/nubia/camera/bb/b;)J
    .locals 2

    .line 60
    iget-wide v0, p0, Lcn/nubia/camera/bb/b;->h:J

    return-wide v0
.end method

.method private e(I)V
    .locals 2

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "videoStopEnd: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseVideoRecordManagerImpl"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    invoke-virtual {p0, p1}, Lcn/nubia/camera/bb/b;->b(I)V

    .line 286
    invoke-direct {p0}, Lcn/nubia/camera/bb/b;->G()V

    return-void
.end method

.method static synthetic f(Lcn/nubia/camera/bb/b;)Landroid/media/MediaRecorder;
    .locals 0

    .line 60
    iget-object p0, p0, Lcn/nubia/camera/bb/b;->l:Landroid/media/MediaRecorder;

    return-object p0
.end method

.method private f(I)[B
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [B

    ushr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    ushr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v3, 0x1

    aput-byte v1, v0, v3

    ushr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v3, 0x2

    aput-byte v1, v0, v3

    ushr-int/2addr p1, v2

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v1, 0x3

    aput-byte p1, v0, v1

    return-object v0
.end method

.method static synthetic g(Lcn/nubia/camera/bb/b;)Landroid/content/Context;
    .locals 0

    .line 60
    iget-object p0, p0, Lcn/nubia/camera/bb/b;->f:Landroid/content/Context;

    return-object p0
.end method

.method private g(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const-string p1, ".mp4"

    return-object p1

    :cond_0
    const-string p1, ".3gp"

    return-object p1
.end method

.method static synthetic h(Lcn/nubia/camera/bb/b;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 60
    iget-object p0, p0, Lcn/nubia/camera/bb/b;->b:Lcn/nubia/camera/ad/a;

    return-object p0
.end method

.method private h(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const-string p1, "video/mp4"

    return-object p1

    :cond_0
    const-string p1, "video/3gpp"

    return-object p1
.end method

.method static synthetic i(Lcn/nubia/camera/bb/b;)Lcn/nubia/k/a/a;
    .locals 0

    .line 60
    iget-object p0, p0, Lcn/nubia/camera/bb/b;->e:Lcn/nubia/k/a/a;

    return-object p0
.end method

.method static synthetic j(Lcn/nubia/camera/bb/b;)Lcn/nubia/camera/bb/z;
    .locals 0

    .line 60
    iget-object p0, p0, Lcn/nubia/camera/bb/b;->d:Lcn/nubia/camera/bb/z;

    return-object p0
.end method

.method static synthetic k(Lcn/nubia/camera/bb/b;)I
    .locals 0

    .line 60
    iget p0, p0, Lcn/nubia/camera/bb/b;->a:I

    return p0
.end method

.method static synthetic l(Lcn/nubia/camera/bb/b;)Landroid/hardware/camera2/TotalCaptureResult;
    .locals 0

    .line 60
    iget-object p0, p0, Lcn/nubia/camera/bb/b;->y:Landroid/hardware/camera2/TotalCaptureResult;

    return-object p0
.end method


# virtual methods
.method protected abstract A()V
.end method

.method protected abstract B()V
.end method

.method protected C()Z
    .locals 4

    .line 1050
    invoke-virtual {p0}, Lcn/nubia/camera/bb/b;->s()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    .line 1051
    invoke-virtual {p0}, Lcn/nubia/camera/bb/b;->t()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/camera/bb/b;->s()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v2

    invoke-virtual {p0}, Lcn/nubia/camera/bb/b;->s()Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->l()Z

    move-result v3

    .line 1050
    invoke-static {v0, v1, v2, v3}, Lcn/nubia/camera/bb/ad;->b(Lcom/android/preference/c;Landroid/content/res/Resources;Lcn/nubia/camera/af/a;Z)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1054
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/bb/b;->s()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1056
    invoke-virtual {p0}, Lcn/nubia/camera/bb/b;->s()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/bb/b;->s()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0f0251

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_mirror_mode_key"

    invoke-virtual {v0, v3, v2}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1057
    invoke-virtual {p0}, Lcn/nubia/camera/bb/b;->s()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0f0255

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1055
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method protected a(Landroid/location/Location;Lcn/nubia/camera/bb/u;)Landroid/net/Uri;
    .locals 2

    .line 592
    invoke-virtual {p0, p1, p2}, Lcn/nubia/camera/bb/b;->b(Landroid/location/Location;Lcn/nubia/camera/bb/u;)Landroid/content/ContentValues;

    move-result-object p1

    .line 593
    sget-object p2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    .line 594
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "is_pending"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 595
    iget-object v0, p0, Lcn/nubia/camera/bb/b;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p2

    .line 596
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "creatVideoUri mCurrentVideoUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BaseVideoRecordManagerImpl"

    invoke-static {v0, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2
.end method

.method protected a(Lcn/nubia/camera/bb/u;Z)Landroid/net/Uri;
    .locals 5

    if-eqz p2, :cond_0

    .line 602
    iget-object p2, p1, Lcn/nubia/camera/bb/u;->k:Landroid/net/Uri;

    iget-wide v0, p1, Lcn/nubia/camera/bb/u;->f:J

    iget v2, p1, Lcn/nubia/camera/bb/u;->j:I

    invoke-direct {p0, p2, v0, v1, v2}, Lcn/nubia/camera/bb/b;->a(Landroid/net/Uri;JI)V

    .line 604
    :cond_0
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    const/4 v0, 0x0

    .line 605
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "is_pending"

    invoke-virtual {p2, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 606
    iget-object v1, p0, Lcn/nubia/camera/bb/b;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x1d

    if-gt v1, v2, :cond_1

    .line 607
    invoke-virtual {p0}, Lcn/nubia/camera/bb/b;->t()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p1, Lcn/nubia/camera/bb/u;->k:Landroid/net/Uri;

    invoke-static {v1, v2}, Lcn/nubia/camera/ba/a;->b(Landroid/content/ContentResolver;Landroid/net/Uri;)I

    move-result v1

    .line 608
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "_size"

    invoke-virtual {p2, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 609
    iget-wide v1, p1, Lcn/nubia/camera/bb/u;->f:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    iget-object v1, p0, Lcn/nubia/camera/bb/b;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v1

    sget-object v2, Lcn/nubia/camera/af/a;->u:Lcn/nubia/camera/af/a;

    if-eq v1, v2, :cond_1

    .line 610
    iget-wide v1, p1, Lcn/nubia/camera/bb/u;->f:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "duration"

    invoke-virtual {p2, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 613
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/camera/bb/b;->t()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p1, Lcn/nubia/camera/bb/u;->k:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)I

    .line 616
    new-instance p2, Lcn/nubia/l/b/g;

    .line 617
    invoke-virtual {p0}, Lcn/nubia/camera/bb/b;->t()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p1, Lcn/nubia/camera/bb/u;->k:Landroid/net/Uri;

    invoke-direct {p2, v1, v2, v0, v0}, Lcn/nubia/l/b/g;-><init>(Landroid/content/Context;Landroid/net/Uri;IZ)V

    .line 621
    iget-object v0, p0, Lcn/nubia/camera/bb/b;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->h()Lcn/nubia/l/a/b;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcn/nubia/l/a/b;->a(Lcn/nubia/l/b/d;)V

    .line 623
    iget-object p2, p0, Lcn/nubia/camera/bb/b;->f:Landroid/content/Context;

    iget-object v0, p1, Lcn/nubia/camera/bb/u;->k:Landroid/net/Uri;

    invoke-static {p2, v0}, Lcn/nubia/camera/ba/a;->b(Landroid/content/Context;Landroid/net/Uri;)V

    .line 624
    invoke-virtual {p0, p1}, Lcn/nubia/camera/bb/b;->a(Lcn/nubia/camera/bb/u;)V

    .line 625
    iget-object p1, p1, Lcn/nubia/camera/bb/u;->k:Landroid/net/Uri;

    return-object p1
.end method

.method protected a(IIIIZI)Lcn/nubia/camera/bb/u;
    .locals 4

    .line 795
    new-instance v0, Lcn/nubia/camera/bb/u;

    invoke-direct {v0}, Lcn/nubia/camera/bb/u;-><init>()V

    .line 796
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 798
    invoke-direct {p0, p1}, Lcn/nubia/camera/bb/b;->h(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcn/nubia/camera/bb/u;->d:Ljava/lang/String;

    .line 799
    iput-wide v1, v0, Lcn/nubia/camera/bb/u;->e:J

    .line 800
    iput p2, v0, Lcn/nubia/camera/bb/u;->h:I

    .line 801
    iput p3, v0, Lcn/nubia/camera/bb/u;->i:I

    .line 802
    iput p4, v0, Lcn/nubia/camera/bb/u;->g:I

    .line 803
    iput p6, v0, Lcn/nubia/camera/bb/u;->j:I

    if-eqz p5, :cond_0

    .line 806
    invoke-virtual {p0, v1, v2}, Lcn/nubia/camera/bb/b;->b(J)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcn/nubia/camera/bb/u;->a:Ljava/lang/String;

    .line 807
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, v0, Lcn/nubia/camera/bb/u;->a:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-direct {p0, p1}, Lcn/nubia/camera/bb/b;->g(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcn/nubia/camera/bb/u;->c:Ljava/lang/String;

    .line 808
    iget-object p1, p0, Lcn/nubia/camera/bb/b;->e:Lcn/nubia/k/a/a;

    iget-object p2, p0, Lcn/nubia/camera/bb/b;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/camera/af/a;->a()I

    move-result p2

    invoke-static {p1, p2}, Lcn/nubia/camera/av/c;->a(Lcn/nubia/k/a/a;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcn/nubia/camera/bb/u;->b:Ljava/lang/String;

    .line 809
    iget-object p1, p0, Lcn/nubia/camera/bb/b;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->v()Lcn/nubia/e/a;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/e/a;->b()Landroid/location/Location;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcn/nubia/camera/bb/b;->a(Landroid/location/Location;Lcn/nubia/camera/bb/u;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, v0, Lcn/nubia/camera/bb/u;->k:Landroid/net/Uri;

    .line 810
    iget-object p1, v0, Lcn/nubia/camera/bb/u;->k:Landroid/net/Uri;

    if-eqz p1, :cond_0

    .line 812
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/camera/bb/b;->t()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

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

    .line 814
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v0
.end method

.method protected abstract a(Landroid/media/CamcorderProfile;Landroid/media/MediaRecorder;J)Lcn/nubia/camera/bb/u;
.end method

.method public declared-synchronized a()V
    .locals 7

    monitor-enter p0

    .line 193
    :try_start_0
    iget v0, p0, Lcn/nubia/camera/bb/b;->a:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcn/nubia/camera/bb/b;->n:Lcn/nubia/camera/bb/b$b;

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v0, "BaseVideoRecordManagerImpl"

    const-string v2, "stopVideoRecording"

    .line 194
    invoke-static {v0, v2}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-virtual {p0}, Lcn/nubia/camera/bb/b;->t()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcn/nubia/camera/a/a;->a(Z)V

    .line 196
    iget-object v0, p0, Lcn/nubia/camera/bb/b;->g:Lcn/nubia/camera/bb/ac;

    invoke-virtual {v0, p0}, Lcn/nubia/camera/bb/ac;->b(Lcn/nubia/camera/k/ab$a;)V

    .line 198
    iget-object v0, p0, Lcn/nubia/camera/bb/b;->q:Lcn/nubia/camera/bb/a;

    iget-object v3, p0, Lcn/nubia/camera/bb/b;->f:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcn/nubia/camera/bb/a;->b(Landroid/content/Context;)V

    .line 200
    iget v0, p0, Lcn/nubia/camera/bb/b;->a:I

    const/4 v3, 0x1

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eq v0, v3, :cond_2

    if-eq v0, v5, :cond_2

    if-eq v0, v4, :cond_2

    const-string v0, "BaseVideoRecordManagerImpl"

    const-string v1, "VideoRecording is not started!!!"

    .line 203
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-virtual {p0}, Lcn/nubia/camera/bb/b;->m()V

    const/4 v0, 0x6

    .line 205
    invoke-virtual {p0, v0}, Lcn/nubia/camera/bb/b;->b(I)V

    .line 207
    iget v0, p0, Lcn/nubia/camera/bb/b;->a:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 208
    invoke-virtual {p0, v2}, Lcn/nubia/camera/bb/b;->a(I)V

    .line 209
    invoke-direct {p0}, Lcn/nubia/camera/bb/b;->G()V

    .line 210
    iget-object v0, p0, Lcn/nubia/camera/bb/b;->c:Lcn/nubia/camera/bb/b$c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/bb/b$c;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    :cond_1
    monitor-exit p0

    return-void

    .line 214
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcn/nubia/camera/bb/b;->l()I

    move-result v0

    if-ne v0, v5, :cond_3

    .line 215
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v5, p0, Lcn/nubia/camera/bb/b;->i:J

    sub-long/2addr v2, v5

    .line 216
    invoke-virtual {p0}, Lcn/nubia/camera/bb/b;->p()J

    move-result-wide v5

    add-long/2addr v5, v2

    invoke-virtual {p0, v5, v6}, Lcn/nubia/camera/bb/b;->a(J)V

    .line 218
    :cond_3
    invoke-virtual {p0, v1}, Lcn/nubia/camera/bb/b;->a(I)V

    .line 220
    invoke-virtual {p0}, Lcn/nubia/camera/bb/b;->m()V

    .line 221
    invoke-virtual {p0}, Lcn/nubia/camera/bb/b;->s()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->r()Lcn/nubia/j/a;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcn/nubia/j/a;->b(I)V

    .line 222
    invoke-virtual {p0}, Lcn/nubia/camera/bb/b;->q()V

    .line 224
    invoke-virtual {p0}, Lcn/nubia/camera/bb/b;->B()V

    .line 226
    new-instance v0, Lcn/nubia/camera/bb/b$b;

    invoke-direct {v0, p0}, Lcn/nubia/camera/bb/b$b;-><init>(Lcn/nubia/camera/bb/b;)V

    iput-object v0, p0, Lcn/nubia/camera/bb/b;->n:Lcn/nubia/camera/bb/b$b;

    .line 227
    invoke-virtual {v0}, Lcn/nubia/camera/bb/b$b;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 228
    monitor-exit p0

    return-void

    .line 193
    :cond_4
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected a(I)V
    .locals 0

    .line 429
    iput p1, p0, Lcn/nubia/camera/bb/b;->a:I

    return-void
.end method

.method protected abstract a(II)V
.end method

.method protected a(J)V
    .locals 0

    .line 512
    iput-wide p1, p0, Lcn/nubia/camera/bb/b;->j:J

    return-void
.end method

.method public a(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 2

    .line 1076
    iget v0, p0, Lcn/nubia/camera/bb/b;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1077
    :cond_0
    iput-object p1, p0, Lcn/nubia/camera/bb/b;->y:Landroid/hardware/camera2/TotalCaptureResult;

    :cond_1
    return-void
.end method

.method public declared-synchronized a(Lcn/nubia/camera/bb/d$a;)V
    .locals 4

    monitor-enter p0

    .line 127
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/bb/b;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->l()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/bb/b;->b:Lcn/nubia/camera/ad/a;

    .line 128
    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->y()Lcn/nubia/k/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/k/a/a;->e()J

    move-result-wide v0

    const-wide/32 v2, 0x3200000

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x100000

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    const/4 v0, 0x3

    .line 130
    invoke-virtual {p0, v0}, Lcn/nubia/camera/bb/b;->d(I)V

    if-eqz p1, :cond_0

    .line 133
    invoke-interface {p1}, Lcn/nubia/camera/bb/d$a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    :cond_0
    monitor-exit p0

    return-void

    .line 137
    :cond_1
    :try_start_1
    iput-object p1, p0, Lcn/nubia/camera/bb/b;->w:Lcn/nubia/camera/bb/d$a;

    const/4 p1, 0x5

    .line 138
    invoke-virtual {p0, p1}, Lcn/nubia/camera/bb/b;->a(I)V

    .line 139
    invoke-virtual {p0}, Lcn/nubia/camera/bb/b;->n()V

    .line 140
    invoke-direct {p0}, Lcn/nubia/camera/bb/b;->F()V

    const/4 p1, 0x0

    .line 143
    iput-boolean p1, p0, Lcn/nubia/camera/bb/b;->r:Z

    .line 144
    iput-boolean p1, p0, Lcn/nubia/camera/bb/b;->s:Z

    .line 146
    invoke-virtual {p0}, Lcn/nubia/camera/bb/b;->s()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object p1

    const-string v0, "pref_camera_shutter_sound_key"

    iget-object v1, p0, Lcn/nubia/camera/bb/b;->f:Landroid/content/Context;

    const v2, 0x7f0f0209

    .line 147
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "on"

    .line 148
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 149
    invoke-virtual {p0}, Lcn/nubia/camera/bb/b;->s()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->r()Lcn/nubia/j/a;

    move-result-object p1

    const/4 v0, 0x2

    iget-object v1, p0, Lcn/nubia/camera/bb/b;->v:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {p1, v0, v1}, Lcn/nubia/j/a;->a(ILandroid/media/MediaPlayer$OnCompletionListener;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    .line 151
    iput-boolean p1, p0, Lcn/nubia/camera/bb/b;->r:Z

    .line 154
    :goto_0
    new-instance p1, Lcn/nubia/camera/bb/b$2;

    invoke-direct {p1, p0}, Lcn/nubia/camera/bb/b$2;-><init>(Lcn/nubia/camera/bb/b;)V

    iput-object p1, p0, Lcn/nubia/camera/bb/b;->t:Ljava/lang/Thread;

    .line 168
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 169
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected a(Lcn/nubia/camera/bb/u;)V
    .locals 2

    .line 629
    iget-object v0, p0, Lcn/nubia/camera/bb/b;->d:Lcn/nubia/camera/bb/z;

    if-eqz v0, :cond_0

    .line 630
    new-instance v0, Lcn/nubia/camera/bb/w;

    invoke-direct {v0}, Lcn/nubia/camera/bb/w;-><init>()V

    .line 631
    iget-object v1, p1, Lcn/nubia/camera/bb/u;->l:Landroid/os/ParcelFileDescriptor;

    iput-object v1, v0, Lcn/nubia/camera/bb/w;->a:Landroid/os/ParcelFileDescriptor;

    .line 632
    iget-object v1, p1, Lcn/nubia/camera/bb/u;->k:Landroid/net/Uri;

    iput-object v1, v0, Lcn/nubia/camera/bb/w;->b:Landroid/net/Uri;

    .line 633
    iget-object v1, p1, Lcn/nubia/camera/bb/u;->d:Ljava/lang/String;

    iput-object v1, v0, Lcn/nubia/camera/bb/w;->c:Ljava/lang/String;

    .line 634
    iget p1, p1, Lcn/nubia/camera/bb/u;->h:I

    iput p1, v0, Lcn/nubia/camera/bb/w;->d:I

    .line 635
    invoke-virtual {p0, v0}, Lcn/nubia/camera/bb/b;->a(Lcn/nubia/camera/bb/w;)V

    :cond_0
    return-void
.end method

.method protected a(Lcn/nubia/camera/bb/w;)V
    .locals 2

    .line 467
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 468
    iget-object v0, p0, Lcn/nubia/camera/bb/b;->d:Lcn/nubia/camera/bb/z;

    if-eqz v0, :cond_1

    .line 469
    invoke-interface {v0, p1}, Lcn/nubia/camera/bb/z;->a(Lcn/nubia/camera/bb/w;)V

    goto :goto_0

    .line 472
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/bb/b;->c:Lcn/nubia/camera/bb/b$c;

    new-instance v1, Lcn/nubia/camera/bb/b$5;

    invoke-direct {v1, p0, p1}, Lcn/nubia/camera/bb/b$5;-><init>(Lcn/nubia/camera/bb/b;Lcn/nubia/camera/bb/w;)V

    invoke-virtual {v0, v1}, Lcn/nubia/camera/bb/b$c;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcn/nubia/camera/bb/z;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcn/nubia/camera/bb/b;->d:Lcn/nubia/camera/bb/z;

    return-void
.end method

.method protected a(Z)V
    .locals 1

    .line 492
    iget-object v0, p0, Lcn/nubia/camera/bb/b;->d:Lcn/nubia/camera/bb/z;

    invoke-interface {v0, p1}, Lcn/nubia/camera/bb/z;->b(Z)V

    return-void
.end method

.method protected a(ZZLjava/lang/String;)V
    .locals 1

    .line 504
    iget-object v0, p0, Lcn/nubia/camera/bb/b;->d:Lcn/nubia/camera/bb/z;

    invoke-interface {v0, p1, p2, p3}, Lcn/nubia/camera/bb/z;->a(ZZLjava/lang/String;)V

    return-void
.end method

.method protected b(Landroid/location/Location;Lcn/nubia/camera/bb/u;)Landroid/content/ContentValues;
    .locals 3

    .line 640
    new-instance v0, Landroid/content/ContentValues;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 642
    iget-object v1, p2, Lcn/nubia/camera/bb/u;->a:Ljava/lang/String;

    const-string v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    iget-object v1, p2, Lcn/nubia/camera/bb/u;->c:Ljava/lang/String;

    const-string v2, "_display_name"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    iget-wide v1, p2, Lcn/nubia/camera/bb/u;->e:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "datetaken"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 645
    iget-object v1, p2, Lcn/nubia/camera/bb/u;->d:Ljava/lang/String;

    const-string v2, "mime_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    iget-object v1, p2, Lcn/nubia/camera/bb/u;->b:Ljava/lang/String;

    invoke-static {v1}, Lcn/nubia/camera/ba/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "relative_path"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    iget v1, p2, Lcn/nubia/camera/bb/u;->h:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "width"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 648
    iget v1, p2, Lcn/nubia/camera/bb/u;->i:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "height"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 649
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p2, Lcn/nubia/camera/bb/u;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget p2, p2, Lcn/nubia/camera/bb/u;->i:I

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "resolution"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 651
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const-string v1, "latitude"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 652
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string p2, "longitude"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    :cond_0
    return-object v0
.end method

.method protected b(J)Ljava/lang/String;
    .locals 3

    .line 822
    iget-object v0, p0, Lcn/nubia/camera/bb/b;->x:Ljava/text/SimpleDateFormat;

    if-nez v0, :cond_0

    .line 823
    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcn/nubia/camera/bb/b;->f:Landroid/content/Context;

    const v2, 0x7f0f03dc

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/camera/bb/b;->x:Ljava/text/SimpleDateFormat;

    .line 825
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 826
    iget-object p1, p0, Lcn/nubia/camera/bb/b;->x:Ljava/text/SimpleDateFormat;

    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .locals 3

    const-string v0, "BaseVideoRecordManagerImpl"

    .line 291
    iget-object v1, p0, Lcn/nubia/camera/bb/b;->n:Lcn/nubia/camera/bb/b$b;

    if-eqz v1, :cond_0

    :try_start_0
    const-string v2, "wait StopRecordThread"

    .line 294
    invoke-static {v0, v2}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    const-string v1, "StopRecordThread finish"

    .line 296
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 298
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method protected b(I)V
    .locals 2

    .line 450
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 451
    iget-object v0, p0, Lcn/nubia/camera/bb/b;->d:Lcn/nubia/camera/bb/z;

    if-eqz v0, :cond_1

    .line 452
    invoke-interface {v0, p1}, Lcn/nubia/camera/bb/z;->c(I)V

    goto :goto_0

    .line 455
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/bb/b;->c:Lcn/nubia/camera/bb/b$c;

    new-instance v1, Lcn/nubia/camera/bb/b$4;

    invoke-direct {v1, p0, p1}, Lcn/nubia/camera/bb/b$4;-><init>(Lcn/nubia/camera/bb/b;I)V

    invoke-virtual {v0, v1}, Lcn/nubia/camera/bb/b$c;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method protected abstract b(Lcn/nubia/camera/bb/u;)V
.end method

.method public c()V
    .locals 6

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPauseButtonClick: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/camera/bb/b;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseVideoRecordManagerImpl"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget v0, p0, Lcn/nubia/camera/bb/b;->a:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_0

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error state for pause recording, state is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcn/nubia/camera/bb/b;->a:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 316
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/bb/b;->z()V

    .line 318
    iget-object v0, p0, Lcn/nubia/camera/bb/b;->l:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->resume()V

    .line 319
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcn/nubia/camera/bb/b;->i:J

    sub-long/2addr v0, v4

    .line 320
    invoke-virtual {p0}, Lcn/nubia/camera/bb/b;->p()J

    move-result-wide v4

    add-long/2addr v4, v0

    invoke-virtual {p0, v4, v5}, Lcn/nubia/camera/bb/b;->a(J)V

    .line 321
    invoke-virtual {p0, v3}, Lcn/nubia/camera/bb/b;->a(I)V

    const/4 v0, 0x0

    .line 322
    invoke-virtual {p0, v0}, Lcn/nubia/camera/bb/b;->a(Z)V

    goto :goto_0

    .line 308
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/camera/bb/b;->y()V

    .line 310
    iget-object v0, p0, Lcn/nubia/camera/bb/b;->l:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->pause()V

    .line 311
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/camera/bb/b;->i:J

    .line 312
    iput v2, p0, Lcn/nubia/camera/bb/b;->a:I

    .line 313
    invoke-virtual {p0, v3}, Lcn/nubia/camera/bb/b;->a(Z)V

    .line 328
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/camera/bb/b;->r()V

    return-void
.end method

.method protected c(I)V
    .locals 1

    .line 488
    iget-object v0, p0, Lcn/nubia/camera/bb/b;->d:Lcn/nubia/camera/bb/z;

    invoke-interface {v0, p1}, Lcn/nubia/camera/bb/z;->b(I)V

    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    .line 333
    iput-boolean v0, p0, Lcn/nubia/camera/bb/b;->p:Z

    return-void
.end method

.method protected d(I)V
    .locals 1

    .line 500
    iget-object v0, p0, Lcn/nubia/camera/bb/b;->d:Lcn/nubia/camera/bb/z;

    invoke-interface {v0, p1}, Lcn/nubia/camera/bb/z;->d(I)V

    return-void
.end method

.method public f()V
    .locals 2

    const/4 v0, 0x1

    .line 338
    iput-boolean v0, p0, Lcn/nubia/camera/bb/b;->p:Z

    .line 339
    iget-object v0, p0, Lcn/nubia/camera/bb/b;->c:Lcn/nubia/camera/bb/b$c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/bb/b$c;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 340
    iget-object v0, p0, Lcn/nubia/camera/bb/b;->q:Lcn/nubia/camera/bb/a;

    iget-object v1, p0, Lcn/nubia/camera/bb/b;->f:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/bb/a;->b(Landroid/content/Context;)V

    return-void
.end method

.method public g()V
    .locals 0

    return-void
.end method

.method protected h()Z
    .locals 1

    .line 348
    iget-boolean v0, p0, Lcn/nubia/camera/bb/b;->p:Z

    return v0
.end method

.method public i()V
    .locals 3

    .line 353
    iget v0, p0, Lcn/nubia/camera/bb/b;->a:I

    const-string v1, "BaseVideoRecordManagerImpl"

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error state for taking picture, state is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcn/nubia/camera/bb/b;->a:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x3

    .line 357
    iput v0, p0, Lcn/nubia/camera/bb/b;->a:I

    const-string v0, "Video snapshot start"

    .line 358
    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-virtual {p0}, Lcn/nubia/camera/bb/b;->A()V

    return-void
.end method

.method protected declared-synchronized j()I
    .locals 8

    monitor-enter p0

    .line 364
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/bb/b;->l:Landroid/media/MediaRecorder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 365
    monitor-exit p0

    return v1

    .line 368
    :cond_0
    :try_start_1
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/bb/b;->s()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/nubia/b/e;->c(Ljava/lang/String;)Lcn/nubia/b/d;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "BaseVideoRecordManagerImpl"

    .line 369
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CameraDevice "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/camera/bb/b;->s()Lcn/nubia/camera/ad/a;

    move-result-object v2

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

    .line 370
    monitor-exit p0

    return v0

    .line 374
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcn/nubia/camera/bb/b;->e:Lcn/nubia/k/a/a;

    invoke-virtual {v0}, Lcn/nubia/k/a/a;->f()J

    .line 375
    iget-object v0, p0, Lcn/nubia/camera/bb/b;->e:Lcn/nubia/k/a/a;

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

    .line 377
    monitor-exit p0

    return v0

    .line 380
    :cond_2
    :try_start_3
    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/bb/b;->l:Landroid/media/MediaRecorder;

    .line 381
    invoke-virtual {p0}, Lcn/nubia/camera/bb/b;->s()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->v()Lcn/nubia/e/a;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/e/a;->b()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 383
    iget-object v4, p0, Lcn/nubia/camera/bb/b;->l:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    double-to-float v5, v5

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    double-to-float v0, v6

    invoke-virtual {v4, v5, v0}, Landroid/media/MediaRecorder;->setLocation(FF)V

    :cond_3
    const-string v0, "BaseVideoRecordManagerImpl"

    .line 385
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getParameterSetter: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/camera/bb/b;->g:Lcn/nubia/camera/bb/ac;

    invoke-virtual {v5}, Lcn/nubia/camera/bb/ac;->m()Lcn/nubia/camera/k/y;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; StreamController: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/camera/bb/b;->g:Lcn/nubia/camera/bb/ac;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iget-object v0, p0, Lcn/nubia/camera/bb/b;->g:Lcn/nubia/camera/bb/ac;

    invoke-virtual {v0}, Lcn/nubia/camera/bb/ac;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->e()Landroid/media/CamcorderProfile;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/bb/b;->m:Landroid/media/CamcorderProfile;

    .line 388
    iget-object v4, p0, Lcn/nubia/camera/bb/b;->l:Landroid/media/MediaRecorder;

    invoke-virtual {p0, v0, v4, v2, v3}, Lcn/nubia/camera/bb/b;->a(Landroid/media/CamcorderProfile;Landroid/media/MediaRecorder;J)Lcn/nubia/camera/bb/u;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/bb/b;->o:Lcn/nubia/camera/bb/u;

    .line 389
    iget v0, v0, Lcn/nubia/camera/bb/u;->g:I

    iput v0, p0, Lcn/nubia/camera/bb/b;->k:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 392
    :try_start_4
    iget-object v0, p0, Lcn/nubia/camera/bb/b;->l:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 399
    :try_start_5
    iget-object v0, p0, Lcn/nubia/camera/bb/b;->l:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p0}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 400
    iget-object v0, p0, Lcn/nubia/camera/bb/b;->l:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p0}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 401
    monitor-exit p0

    return v1

    :catch_0
    move-exception v0

    :try_start_6
    const-string v1, "BaseVideoRecordManagerImpl"

    .line 394
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepare failed for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/bb/b;->o:Lcn/nubia/camera/bb/u;

    iget-object v3, v3, Lcn/nubia/camera/bb/u;->k:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcn/nubia/camera/c/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 395
    invoke-virtual {p0}, Lcn/nubia/camera/bb/b;->k()V

    .line 396
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

.method public declared-synchronized k()V
    .locals 3

    monitor-enter p0

    .line 406
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/bb/b;->l:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_2

    const-string v0, "BaseVideoRecordManagerImpl"

    const-string v1, "Releasing media recorder."

    .line 407
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object v0, p0, Lcn/nubia/camera/bb/b;->o:Lcn/nubia/camera/bb/u;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 409
    invoke-virtual {p0}, Lcn/nubia/camera/bb/b;->s()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->l()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/bb/b;->f:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/camera/bb/b;->o:Lcn/nubia/camera/bb/u;

    invoke-static {v0, v2}, Lcn/nubia/camera/bb/ad;->a(Landroid/content/Context;Lcn/nubia/camera/bb/u;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcn/nubia/camera/bb/b;->o:Lcn/nubia/camera/bb/u;

    iput-object v1, v0, Lcn/nubia/camera/bb/u;->k:Landroid/net/Uri;

    .line 412
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/bb/b;->o:Lcn/nubia/camera/bb/u;

    invoke-virtual {v0}, Lcn/nubia/camera/bb/u;->a()V

    .line 415
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/bb/b;->l:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 416
    iget-object v0, p0, Lcn/nubia/camera/bb/b;->l:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 417
    iput-object v1, p0, Lcn/nubia/camera/bb/b;->l:Landroid/media/MediaRecorder;

    goto :goto_0

    :cond_2
    const-string v0, "BaseVideoRecordManagerImpl"

    const-string v1, "Media recorder already is null"

    .line 419
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 421
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public l()I
    .locals 1

    .line 425
    iget v0, p0, Lcn/nubia/camera/bb/b;->a:I

    return v0
.end method

.method protected m()V
    .locals 2

    .line 433
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 434
    iget-object v0, p0, Lcn/nubia/camera/bb/b;->d:Lcn/nubia/camera/bb/z;

    if-eqz v0, :cond_1

    .line 435
    invoke-interface {v0}, Lcn/nubia/camera/bb/z;->e()V

    goto :goto_0

    .line 438
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/bb/b;->c:Lcn/nubia/camera/bb/b$c;

    new-instance v1, Lcn/nubia/camera/bb/b$3;

    invoke-direct {v1, p0}, Lcn/nubia/camera/bb/b$3;-><init>(Lcn/nubia/camera/bb/b;)V

    invoke-virtual {v0, v1}, Lcn/nubia/camera/bb/b$c;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method protected n()V
    .locals 1

    .line 484
    iget-object v0, p0, Lcn/nubia/camera/bb/b;->d:Lcn/nubia/camera/bb/z;

    invoke-interface {v0}, Lcn/nubia/camera/bb/z;->d()V

    return-void
.end method

.method protected o()V
    .locals 1

    .line 496
    iget-object v0, p0, Lcn/nubia/camera/bb/b;->d:Lcn/nubia/camera/bb/z;

    invoke-interface {v0}, Lcn/nubia/camera/bb/z;->q_()V

    return-void
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 1

    .line 748
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onError... stopVideoRecording "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BaseVideoRecordManagerImpl"

    invoke-static {p2, p1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    invoke-virtual {p0}, Lcn/nubia/camera/bb/b;->a()V

    return-void
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 4

    const/4 p1, 0x1

    const-string p3, "BaseVideoRecordManagerImpl"

    const/16 v0, 0x320

    if-ne p2, v0, :cond_0

    const-string p2, "onInfo MEDIA_RECORDER_INFO_MAX_DURATION_REACHED"

    .line 755
    invoke-static {p3, p2}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    iget p2, p0, Lcn/nubia/camera/bb/b;->a:I

    if-ne p2, p1, :cond_3

    invoke-virtual {p0}, Lcn/nubia/camera/bb/b;->a()V

    goto :goto_1

    :cond_0
    const/16 v0, 0x321

    if-ne p2, v0, :cond_3

    const-string p2, "onInfo MEDIA_RECORDER_INFO_MAX_FILESIZE_REACHED"

    .line 758
    invoke-static {p3, p2}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    iget-object p2, p0, Lcn/nubia/camera/bb/b;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->l()Z

    move-result p2

    const/4 p3, 0x2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 763
    :cond_1
    iget-object p2, p0, Lcn/nubia/camera/bb/b;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->y()Lcn/nubia/k/a/a;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/k/a/a;->e()J

    move-result-wide v0

    const-wide/32 v2, 0x3200000

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x100000

    cmp-long p2, v0, v2

    if-gez p2, :cond_2

    const/4 p3, 0x3

    .line 769
    :cond_2
    :goto_0
    invoke-virtual {p0, p3}, Lcn/nubia/camera/bb/b;->d(I)V

    .line 770
    iget p2, p0, Lcn/nubia/camera/bb/b;->a:I

    if-ne p2, p1, :cond_3

    invoke-virtual {p0}, Lcn/nubia/camera/bb/b;->a()V

    :cond_3
    :goto_1
    return-void
.end method

.method protected p()J
    .locals 2

    .line 516
    iget-wide v0, p0, Lcn/nubia/camera/bb/b;->j:J

    return-wide v0
.end method

.method protected q()V
    .locals 2

    .line 520
    iget-object v0, p0, Lcn/nubia/camera/bb/b;->c:Lcn/nubia/camera/bb/b$c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/bb/b$c;->removeMessages(I)V

    return-void
.end method

.method protected r()V
    .locals 10

    .line 524
    iget v0, p0, Lcn/nubia/camera/bb/b;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    .line 542
    iget-object v0, p0, Lcn/nubia/camera/bb/b;->c:Lcn/nubia/camera/bb/b$c;

    invoke-virtual {v0, v2}, Lcn/nubia/camera/bb/b$c;->removeMessages(I)V

    .line 543
    iget-object v0, p0, Lcn/nubia/camera/bb/b;->c:Lcn/nubia/camera/bb/b$c;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v2, v3, v4}, Lcn/nubia/camera/bb/b$c;->sendEmptyMessageDelayed(IJ)Z

    const/4 v0, 0x0

    .line 544
    invoke-virtual {p0, v2, v1, v0}, Lcn/nubia/camera/bb/b;->a(ZZLjava/lang/String;)V

    goto :goto_3

    .line 525
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 526
    iget-wide v5, p0, Lcn/nubia/camera/bb/b;->h:J

    sub-long/2addr v3, v5

    iget-wide v5, p0, Lcn/nubia/camera/bb/b;->j:J

    sub-long/2addr v3, v5

    .line 527
    iget v0, p0, Lcn/nubia/camera/bb/b;->k:I

    if-eqz v0, :cond_2

    const v5, 0xea60

    if-ge v0, v5, :cond_2

    move v5, v2

    goto :goto_1

    :cond_2
    move v5, v1

    :goto_1
    if-eqz v5, :cond_3

    const-wide/16 v6, 0x0

    int-to-long v8, v0

    sub-long/2addr v8, v3

    .line 530
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    const-wide/16 v8, 0x3e7

    add-long/2addr v6, v8

    goto :goto_2

    :cond_3
    move-wide v6, v3

    .line 534
    :goto_2
    invoke-static {v6, v7, v1}, Lcn/nubia/camera/bb/b;->a(JZ)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v6, 0x3e8

    .line 536
    rem-long/2addr v3, v6

    sub-long/2addr v6, v3

    .line 537
    iget-object v3, p0, Lcn/nubia/camera/bb/b;->c:Lcn/nubia/camera/bb/b$c;

    invoke-virtual {v3, v2}, Lcn/nubia/camera/bb/b$c;->removeMessages(I)V

    .line 538
    iget-object v3, p0, Lcn/nubia/camera/bb/b;->c:Lcn/nubia/camera/bb/b$c;

    invoke-virtual {v3, v2}, Lcn/nubia/camera/bb/b$c;->removeMessages(I)V

    .line 539
    iget-object v3, p0, Lcn/nubia/camera/bb/b;->c:Lcn/nubia/camera/bb/b$c;

    invoke-virtual {v3, v2, v6, v7}, Lcn/nubia/camera/bb/b$c;->sendEmptyMessageDelayed(IJ)Z

    .line 540
    invoke-virtual {p0, v1, v5, v0}, Lcn/nubia/camera/bb/b;->a(ZZLjava/lang/String;)V

    :cond_4
    :goto_3
    return-void
.end method

.method protected s()Lcn/nubia/camera/ad/a;
    .locals 1

    .line 723
    iget-object v0, p0, Lcn/nubia/camera/bb/b;->b:Lcn/nubia/camera/ad/a;

    return-object v0
.end method

.method protected t()Landroid/content/Context;
    .locals 1

    .line 727
    iget-object v0, p0, Lcn/nubia/camera/bb/b;->f:Landroid/content/Context;

    return-object v0
.end method

.method protected u()Lcn/nubia/k/a/a;
    .locals 1

    .line 731
    iget-object v0, p0, Lcn/nubia/camera/bb/b;->e:Lcn/nubia/k/a/a;

    return-object v0
.end method

.method protected v()Lcn/nubia/camera/bb/ac;
    .locals 1

    .line 735
    iget-object v0, p0, Lcn/nubia/camera/bb/b;->g:Lcn/nubia/camera/bb/ac;

    return-object v0
.end method

.method protected w()Lcn/nubia/camera/bb/u;
    .locals 1

    .line 739
    iget-object v0, p0, Lcn/nubia/camera/bb/b;->o:Lcn/nubia/camera/bb/u;

    return-object v0
.end method

.method protected x()Landroid/media/MediaRecorder;
    .locals 1

    .line 743
    iget-object v0, p0, Lcn/nubia/camera/bb/b;->l:Landroid/media/MediaRecorder;

    return-object v0
.end method

.method protected y()V
    .locals 0

    return-void
.end method

.method protected z()V
    .locals 0

    return-void
.end method
