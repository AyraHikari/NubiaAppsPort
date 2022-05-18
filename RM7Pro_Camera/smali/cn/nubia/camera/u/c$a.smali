.class Lcn/nubia/camera/u/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/u/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Lcn/nubia/camera/k/ab$a;

.field final synthetic b:Lcn/nubia/camera/u/c;

.field private c:I

.field private d:Lcn/nubia/camera/am/a;

.field private e:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcn/nubia/camera/u/c;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcn/nubia/camera/u/c$a;->b:Lcn/nubia/camera/u/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 124
    iput p1, p0, Lcn/nubia/camera/u/c$a;->c:I

    const/4 p1, 0x0

    .line 134
    iput-object p1, p0, Lcn/nubia/camera/u/c$a;->d:Lcn/nubia/camera/am/a;

    .line 136
    new-instance p1, Lcn/nubia/camera/u/c$a$1;

    invoke-direct {p1, p0}, Lcn/nubia/camera/u/c$a$1;-><init>(Lcn/nubia/camera/u/c$a;)V

    iput-object p1, p0, Lcn/nubia/camera/u/c$a;->e:Landroid/os/Handler;

    .line 154
    new-instance p1, Lcn/nubia/camera/u/c$a$2;

    invoke-direct {p1, p0}, Lcn/nubia/camera/u/c$a$2;-><init>(Lcn/nubia/camera/u/c$a;)V

    iput-object p1, p0, Lcn/nubia/camera/u/c$a;->a:Lcn/nubia/camera/k/ab$a;

    return-void
.end method

.method private a(I)Lcn/nubia/camera/am/a;
    .locals 3

    .line 194
    iget-object v0, p0, Lcn/nubia/camera/u/c$a;->d:Lcn/nubia/camera/am/a;

    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {v0}, Lcn/nubia/camera/am/a;->dismiss()V

    .line 197
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/u/c$a;->b:Lcn/nubia/camera/u/c;

    invoke-virtual {v0}, Lcn/nubia/camera/u/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0f00d3

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Lcn/nubia/camera/ba/a;->a(Landroid/app/Activity;IIZ)Lcn/nubia/camera/am/a;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/u/c$a;->d:Lcn/nubia/camera/am/a;

    return-object p1
.end method

.method static synthetic a(Lcn/nubia/camera/u/c$a;)V
    .locals 0

    .line 123
    invoke-direct {p0}, Lcn/nubia/camera/u/c$a;->c()V

    return-void
.end method

.method static synthetic b(Lcn/nubia/camera/u/c$a;)Landroid/os/Handler;
    .locals 0

    .line 123
    iget-object p0, p0, Lcn/nubia/camera/u/c$a;->e:Landroid/os/Handler;

    return-object p0
.end method

.method private c()V
    .locals 8

    .line 176
    invoke-direct {p0}, Lcn/nubia/camera/u/c$a;->d()I

    move-result v0

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gyro state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OISGyroOffsetMemberFragment"

    invoke-static {v2, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/32 v3, 0xea60

    const/4 v1, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v0, v6, :cond_0

    const v0, 0x7f0f00d1

    .line 179
    invoke-direct {p0, v0}, Lcn/nubia/camera/u/c$a;->a(I)Lcn/nubia/camera/am/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/am/a;->show()V

    .line 180
    iget-object v0, p0, Lcn/nubia/camera/u/c$a;->e:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 181
    iget-object v0, p0, Lcn/nubia/camera/u/c$a;->e:Landroid/os/Handler;

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 182
    :cond_0
    iget v0, p0, Lcn/nubia/camera/u/c$a;->c:I

    const/4 v7, 0x3

    if-gt v0, v7, :cond_1

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gyro state count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/camera/u/c$a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget v0, p0, Lcn/nubia/camera/u/c$a;->c:I

    add-int/2addr v0, v6

    iput v0, p0, Lcn/nubia/camera/u/c$a;->c:I

    .line 185
    iget-object v0, p0, Lcn/nubia/camera/u/c$a;->e:Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v6, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_1
    const v0, 0x7f0f00d0

    .line 187
    invoke-direct {p0, v0}, Lcn/nubia/camera/u/c$a;->a(I)Lcn/nubia/camera/am/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/am/a;->show()V

    .line 188
    iget-object v0, p0, Lcn/nubia/camera/u/c$a;->e:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 189
    iget-object v0, p0, Lcn/nubia/camera/u/c$a;->e:Landroid/os/Handler;

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void
.end method

.method private d()I
    .locals 5

    const/4 v0, 0x0

    .line 205
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    const-string v3, "/sys/kernel/camera/ois_switch"

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x100

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 206
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 207
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 212
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception v1

    .line 214
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-object v0, v1

    goto :goto_2

    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_0
    if-eqz v1, :cond_0

    .line 212
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception v1

    .line 214
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 217
    :cond_0
    :goto_1
    throw v0

    :catch_3
    :goto_2
    if-eqz v0, :cond_1

    .line 212
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_3

    :catch_4
    move-exception v0

    .line 214
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_3
    const/4 v0, 0x0

    :goto_4
    return v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 164
    iget-object v0, p0, Lcn/nubia/camera/u/c$a;->b:Lcn/nubia/camera/u/c;

    invoke-virtual {v0}, Lcn/nubia/camera/u/c;->e()Lcn/nubia/camera/k/ah;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/u/c$a;->a:Lcn/nubia/camera/k/ab$a;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/k/ah;->a(Lcn/nubia/camera/k/ab$a;)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 168
    iget-object v0, p0, Lcn/nubia/camera/u/c$a;->b:Lcn/nubia/camera/u/c;

    invoke-virtual {v0}, Lcn/nubia/camera/u/c;->e()Lcn/nubia/camera/k/ah;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/u/c$a;->a:Lcn/nubia/camera/k/ab$a;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/k/ah;->b(Lcn/nubia/camera/k/ab$a;)V

    .line 169
    iget-object v0, p0, Lcn/nubia/camera/u/c$a;->d:Lcn/nubia/camera/am/a;

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {v0}, Lcn/nubia/camera/am/a;->dismiss()V

    const/4 v0, 0x0

    .line 171
    iput-object v0, p0, Lcn/nubia/camera/u/c$a;->d:Lcn/nubia/camera/am/a;

    :cond_0
    return-void
.end method
