.class public Lcn/nubia/camera/prisma/g;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/prisma/g$b;,
        Lcn/nubia/camera/prisma/g$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "g"


# instance fields
.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Lcn/nubia/camera/prisma/g$a;

.field private e:Lcn/nubia/camera/prisma/b;

.field private f:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcn/nubia/camera/prisma/g;->b:Z

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcn/nubia/camera/prisma/g;->d:Lcn/nubia/camera/prisma/g$a;

    .line 199
    new-instance v0, Lcn/nubia/camera/prisma/g$1;

    invoke-direct {v0, p0}, Lcn/nubia/camera/prisma/g$1;-><init>(Lcn/nubia/camera/prisma/g;)V

    iput-object v0, p0, Lcn/nubia/camera/prisma/g;->f:Landroid/os/Handler;

    .line 32
    invoke-virtual {p0}, Lcn/nubia/camera/prisma/g;->start()V

    return-void
.end method

.method private a(Lcn/nubia/camera/prisma/b;Lcn/nubia/camera/prisma/g$a;)V
    .locals 10

    .line 152
    sget-object v0, Lcn/nubia/camera/prisma/g;->a:Ljava/lang/String;

    const-string v1, "process"

    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_4

    .line 154
    invoke-virtual {p1}, Lcn/nubia/camera/prisma/b;->a()Lcn/nubia/algorithm/utils/a;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_3

    .line 156
    iget-object v1, p2, Lcn/nubia/camera/prisma/g$a;->b:Lcn/nubia/algorithm/camera/c;

    if-nez v1, :cond_1

    goto :goto_0

    .line 160
    :cond_1
    iget-object p2, p2, Lcn/nubia/camera/prisma/g$a;->b:Lcn/nubia/algorithm/camera/c;

    invoke-virtual {p1}, Lcn/nubia/camera/prisma/b;->a()Lcn/nubia/algorithm/utils/a;

    move-result-object v0

    invoke-virtual {p1}, Lcn/nubia/camera/prisma/b;->b()I

    move-result v1

    invoke-virtual {p1}, Lcn/nubia/camera/prisma/b;->c()I

    move-result v2

    invoke-virtual {p2, v0, v1, v2}, Lcn/nubia/algorithm/camera/c;->a(Lcn/nubia/algorithm/utils/a;II)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 161
    invoke-virtual {p1}, Lcn/nubia/camera/prisma/b;->a()Lcn/nubia/algorithm/utils/a;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/algorithm/utils/a;->a()V

    .line 163
    iget-boolean p2, p0, Lcn/nubia/camera/prisma/g;->b:Z

    if-nez p2, :cond_5

    .line 164
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 165
    invoke-virtual {p1}, Lcn/nubia/camera/prisma/b;->e()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v8, p2, v0, v1}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 166
    invoke-virtual {p1}, Lcn/nubia/camera/prisma/b;->d()I

    move-result p2

    if-nez p2, :cond_2

    const/high16 p2, -0x40800000    # -1.0f

    const/high16 v0, 0x3f800000    # 1.0f

    .line 167
    invoke-virtual {v8, p2, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    :cond_2
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 169
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p2

    goto :goto_3

    :cond_3
    :goto_0
    const-string p2, "effect is null!"

    .line 157
    invoke-static {v0, p2}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-virtual {p1}, Lcn/nubia/camera/prisma/b;->a()Lcn/nubia/algorithm/utils/a;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/algorithm/utils/a;->a()V

    goto :goto_2

    :cond_4
    :goto_1
    const-string p2, "job is null!"

    .line 155
    invoke-static {v0, p2}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_2
    const/4 p2, 0x0

    :goto_3
    if-eqz p1, :cond_6

    .line 173
    invoke-virtual {p1}, Lcn/nubia/camera/prisma/b;->f()Lcn/nubia/camera/prisma/b$a;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 174
    iget-object v0, p0, Lcn/nubia/camera/prisma/g;->f:Landroid/os/Handler;

    const/4 v1, 0x1

    new-instance v2, Lcn/nubia/camera/prisma/g$b;

    invoke-virtual {p1}, Lcn/nubia/camera/prisma/b;->f()Lcn/nubia/camera/prisma/b$a;

    move-result-object p1

    invoke-direct {v2, p0, p1, p2}, Lcn/nubia/camera/prisma/g$b;-><init>(Lcn/nubia/camera/prisma/g;Lcn/nubia/camera/prisma/b$a;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_6
    return-void
.end method

.method private a(Lcn/nubia/camera/prisma/g$a;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 145
    iget-object v0, p1, Lcn/nubia/camera/prisma/g$a;->b:Lcn/nubia/algorithm/camera/c;

    if-eqz v0, :cond_0

    .line 146
    sget-object v0, Lcn/nubia/camera/prisma/g;->a:Ljava/lang/String;

    const-string v1, "release Effect"

    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object p1, p1, Lcn/nubia/camera/prisma/g$a;->b:Lcn/nubia/algorithm/camera/c;

    invoke-virtual {p1}, Lcn/nubia/algorithm/camera/c;->a()V

    :cond_0
    return-void
.end method

.method private c(Ljava/lang/String;)Lcn/nubia/algorithm/camera/c;
    .locals 3

    .line 127
    sget-object v0, Lcn/nubia/camera/prisma/g;->a:Ljava/lang/String;

    const-string v1, "init Effect"

    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v1

    new-array v1, v1, [B

    .line 131
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    .line 132
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 135
    new-instance v0, Lcn/nubia/algorithm/camera/c;

    invoke-direct {v0, v1}, Lcn/nubia/algorithm/camera/c;-><init>([B)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 139
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 137
    :catch_1
    sget-object v0, Lcn/nubia/camera/prisma/g;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " not found.."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 111
    :try_start_0
    iput-boolean v0, p0, Lcn/nubia/camera/prisma/g;->b:Z

    .line 112
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcn/nubia/camera/prisma/b;)V
    .locals 1

    monitor-enter p0

    .line 116
    :try_start_0
    iget-boolean v0, p0, Lcn/nubia/camera/prisma/g;->b:Z

    if-eqz v0, :cond_0

    .line 117
    iget-object p1, p0, Lcn/nubia/camera/prisma/g;->e:Lcn/nubia/camera/prisma/b;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcn/nubia/camera/prisma/b;->a()Lcn/nubia/algorithm/utils/a;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 118
    iget-object p1, p0, Lcn/nubia/camera/prisma/g;->e:Lcn/nubia/camera/prisma/b;

    invoke-virtual {p1}, Lcn/nubia/camera/prisma/b;->a()Lcn/nubia/algorithm/utils/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/algorithm/utils/a;->a()V

    goto :goto_0

    .line 121
    :cond_0
    iput-object p1, p0, Lcn/nubia/camera/prisma/g;->e:Lcn/nubia/camera/prisma/b;

    .line 122
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;)Z
    .locals 1

    monitor-enter p0

    .line 96
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/prisma/g;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/prisma/g;->d:Lcn/nubia/camera/prisma/g$a;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcn/nubia/camera/prisma/g$a;->b:Lcn/nubia/algorithm/camera/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/prisma/g;->d:Lcn/nubia/camera/prisma/g$a;

    iget-object v0, v0, Lcn/nubia/camera/prisma/g$a;->a:Ljava/lang/String;

    .line 97
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 99
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    :cond_1
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 105
    :try_start_0
    sget-object v0, Lcn/nubia/camera/prisma/g;->a:Ljava/lang/String;

    const-string v1, "switchPrisma"

    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iput-object p1, p0, Lcn/nubia/camera/prisma/g;->c:Ljava/lang/String;

    .line 107
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public run()V
    .locals 4

    .line 37
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 39
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcn/nubia/camera/prisma/g;->b:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 43
    monitor-enter p0

    .line 44
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/prisma/g;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcn/nubia/camera/prisma/g;->d:Lcn/nubia/camera/prisma/g$a;

    if-eqz v2, :cond_1

    iget-object v2, v2, Lcn/nubia/camera/prisma/g$a;->a:Ljava/lang/String;

    .line 45
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 46
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/prisma/g;->c:Ljava/lang/String;

    .line 47
    iget-object v2, p0, Lcn/nubia/camera/prisma/g;->d:Lcn/nubia/camera/prisma/g$a;

    .line 48
    iput-object v1, p0, Lcn/nubia/camera/prisma/g;->d:Lcn/nubia/camera/prisma/g$a;

    goto :goto_1

    :cond_2
    move-object v0, v1

    move-object v2, v0

    .line 50
    :goto_1
    iput-object v1, p0, Lcn/nubia/camera/prisma/g;->c:Ljava/lang/String;

    .line 51
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 52
    invoke-direct {p0, v2}, Lcn/nubia/camera/prisma/g;->a(Lcn/nubia/camera/prisma/g$a;)V

    if-eqz v0, :cond_3

    .line 54
    invoke-direct {p0, v0}, Lcn/nubia/camera/prisma/g;->c(Ljava/lang/String;)Lcn/nubia/algorithm/camera/c;

    move-result-object v2

    .line 55
    monitor-enter p0

    .line 56
    :try_start_1
    new-instance v3, Lcn/nubia/camera/prisma/g$a;

    invoke-direct {v3, p0, v0, v2}, Lcn/nubia/camera/prisma/g$a;-><init>(Lcn/nubia/camera/prisma/g;Ljava/lang/String;Lcn/nubia/algorithm/camera/c;)V

    iput-object v3, p0, Lcn/nubia/camera/prisma/g;->d:Lcn/nubia/camera/prisma/g$a;

    .line 57
    monitor-exit p0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 61
    :cond_3
    :goto_2
    :try_start_2
    monitor-enter p0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 62
    :try_start_3
    iget-boolean v0, p0, Lcn/nubia/camera/prisma/g;->b:Z

    if-eqz v0, :cond_4

    .line 63
    monitor-exit p0

    goto :goto_4

    .line 66
    :cond_4
    iget-object v0, p0, Lcn/nubia/camera/prisma/g;->e:Lcn/nubia/camera/prisma/b;

    if-nez v0, :cond_5

    .line 67
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 69
    :cond_5
    monitor-exit p0

    goto :goto_3

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .line 71
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 76
    :goto_3
    monitor-enter p0

    .line 77
    :try_start_5
    iget-object v0, p0, Lcn/nubia/camera/prisma/g;->e:Lcn/nubia/camera/prisma/b;

    .line 78
    iput-object v1, p0, Lcn/nubia/camera/prisma/g;->e:Lcn/nubia/camera/prisma/b;

    .line 79
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v0, :cond_0

    .line 81
    iget-object v1, p0, Lcn/nubia/camera/prisma/g;->d:Lcn/nubia/camera/prisma/g$a;

    invoke-direct {p0, v0, v1}, Lcn/nubia/camera/prisma/g;->a(Lcn/nubia/camera/prisma/b;Lcn/nubia/camera/prisma/g$a;)V

    goto :goto_0

    :catchall_2
    move-exception v0

    .line 79
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    :catchall_3
    move-exception v0

    .line 51
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    .line 86
    :cond_6
    :goto_4
    iget-object v0, p0, Lcn/nubia/camera/prisma/g;->e:Lcn/nubia/camera/prisma/b;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcn/nubia/camera/prisma/b;->a()Lcn/nubia/algorithm/utils/a;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 87
    iget-object v0, p0, Lcn/nubia/camera/prisma/g;->e:Lcn/nubia/camera/prisma/b;

    invoke-virtual {v0}, Lcn/nubia/camera/prisma/b;->a()Lcn/nubia/algorithm/utils/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/algorithm/utils/a;->a()V

    .line 88
    iput-object v1, p0, Lcn/nubia/camera/prisma/g;->e:Lcn/nubia/camera/prisma/b;

    .line 90
    :cond_7
    iget-object v0, p0, Lcn/nubia/camera/prisma/g;->d:Lcn/nubia/camera/prisma/g$a;

    invoke-direct {p0, v0}, Lcn/nubia/camera/prisma/g;->a(Lcn/nubia/camera/prisma/g$a;)V

    .line 92
    iget-object v0, p0, Lcn/nubia/camera/prisma/g;->f:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
