.class Lcn/nubia/camera/pretty/b/a$b;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/pretty/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/pretty/b/a;


# direct methods
.method private constructor <init>(Lcn/nubia/camera/pretty/b/a;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcn/nubia/camera/pretty/b/a$b;->a:Lcn/nubia/camera/pretty/b/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/camera/pretty/b/a;Lcn/nubia/camera/pretty/b/a$1;)V
    .locals 0

    .line 92
    invoke-direct {p0, p1}, Lcn/nubia/camera/pretty/b/a$b;-><init>(Lcn/nubia/camera/pretty/b/a;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 95
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 97
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/data/com.android.camera/FacePlusBokeh_cache"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 99
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 102
    :cond_0
    :try_start_0
    invoke-static {}, Lcn/nubia/camera/CameraApplication;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0029

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 103
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v3

    new-array v3, v3, [B

    .line 104
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    .line 105
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    const-string v2, "/data/data/com.android.camera/FacePlusBokeh_cache"

    const/4 v4, 0x1

    .line 106
    invoke-static {v3, v2, v4}, Lcn/nubia/algorithm/camera/SingleBokeh;->init([BLjava/lang/String;I)V

    const-string v2, "FacePlusEnv"

    .line 107
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "init in thread: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v0, p0, Lcn/nubia/camera/pretty/b/a$b;->a:Lcn/nubia/camera/pretty/b/a;

    invoke-static {v0}, Lcn/nubia/camera/pretty/b/a;->a(Lcn/nubia/camera/pretty/b/a;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :try_start_1
    iget-object v1, p0, Lcn/nubia/camera/pretty/b/a$b;->a:Lcn/nubia/camera/pretty/b/a;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcn/nubia/camera/pretty/b/a;->a(Lcn/nubia/camera/pretty/b/a;Z)Z

    .line 110
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 111
    :try_start_2
    iget-object v0, p0, Lcn/nubia/camera/pretty/b/a$b;->a:Lcn/nubia/camera/pretty/b/a;

    invoke-static {v0}, Lcn/nubia/camera/pretty/b/a;->a(Lcn/nubia/camera/pretty/b/a;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 112
    :try_start_3
    iget-object v1, p0, Lcn/nubia/camera/pretty/b/a$b;->a:Lcn/nubia/camera/pretty/b/a;

    invoke-static {v1, v4}, Lcn/nubia/camera/pretty/b/a;->b(Lcn/nubia/camera/pretty/b/a;Z)Z

    .line 113
    iget-object v1, p0, Lcn/nubia/camera/pretty/b/a$b;->a:Lcn/nubia/camera/pretty/b/a;

    invoke-static {v1}, Lcn/nubia/camera/pretty/b/a;->b(Lcn/nubia/camera/pretty/b/a;)Lcn/nubia/camera/pretty/b/a$a;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 114
    iget-object v1, p0, Lcn/nubia/camera/pretty/b/a$b;->a:Lcn/nubia/camera/pretty/b/a;

    invoke-static {v1}, Lcn/nubia/camera/pretty/b/a;->b(Lcn/nubia/camera/pretty/b/a;)Lcn/nubia/camera/pretty/b/a$a;

    move-result-object v1

    invoke-interface {v1}, Lcn/nubia/camera/pretty/b/a$a;->a()V

    .line 116
    :cond_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 117
    :try_start_4
    iget-object v0, p0, Lcn/nubia/camera/pretty/b/a$b;->a:Lcn/nubia/camera/pretty/b/a;

    invoke-static {v0}, Lcn/nubia/camera/pretty/b/a;->a(Lcn/nubia/camera/pretty/b/a;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 118
    :try_start_5
    iget-object v1, p0, Lcn/nubia/camera/pretty/b/a$b;->a:Lcn/nubia/camera/pretty/b/a;

    invoke-static {v1}, Lcn/nubia/camera/pretty/b/a;->c(Lcn/nubia/camera/pretty/b/a;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 120
    invoke-static {}, Lcn/nubia/algorithm/camera/SingleBokeh;->release()V

    const-string v1, "FacePlusEnv"

    .line 121
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "release in thread: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v3

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v1, p0, Lcn/nubia/camera/pretty/b/a$b;->a:Lcn/nubia/camera/pretty/b/a;

    invoke-static {v1, v2}, Lcn/nubia/camera/pretty/b/a;->c(Lcn/nubia/camera/pretty/b/a;Z)Z

    .line 123
    iget-object v1, p0, Lcn/nubia/camera/pretty/b/a$b;->a:Lcn/nubia/camera/pretty/b/a;

    invoke-static {v1, v2}, Lcn/nubia/camera/pretty/b/a;->b(Lcn/nubia/camera/pretty/b/a;Z)Z

    const-string v1, "FacePlusEnv"

    const-string v2, "release in pending"

    .line 124
    invoke-static {v1, v2}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :catchall_1
    move-exception v1

    .line 116
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :catchall_2
    move-exception v1

    .line 110
    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    :catch_0
    move-exception v0

    .line 128
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
