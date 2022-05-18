.class Lcn/nubia/camera/ao/f$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/ao/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/ao/f;

.field private b:Z

.field private c:Z

.field private d:[I


# direct methods
.method public constructor <init>(Lcn/nubia/camera/ao/f;)V
    .locals 1

    .line 101
    iput-object p1, p0, Lcn/nubia/camera/ao/f$a;->a:Lcn/nubia/camera/ao/f;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x0

    .line 97
    iput-boolean p1, p0, Lcn/nubia/camera/ao/f$a;->b:Z

    .line 98
    iput-boolean p1, p0, Lcn/nubia/camera/ao/f$a;->c:Z

    const/16 v0, 0x300

    new-array v0, v0, [I

    .line 99
    iput-object v0, p0, Lcn/nubia/camera/ao/f$a;->d:[I

    .line 102
    invoke-static {v0, p1}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method

.method private a([BIII)V
    .locals 6

    .line 155
    iget-object v0, p0, Lcn/nubia/camera/ao/f$a;->d:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    const/4 v0, 0x3

    if-ne p4, v0, :cond_1

    :goto_0
    mul-int p4, p2, p3

    mul-int/lit8 p4, p4, 0x4

    if-ge v1, p4, :cond_2

    .line 159
    aget-byte p4, p1, v1

    and-int/lit16 p4, p4, 0xff

    add-int/lit8 v0, v1, 0x1

    .line 160
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v2, v1, 0x2

    .line 161
    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    const v3, 0x3e991687    # 0.299f

    int-to-float p4, p4

    mul-float/2addr p4, v3

    const v3, 0x3f1645a2    # 0.587f

    int-to-float v0, v0

    mul-float/2addr v0, v3

    add-float/2addr p4, v0

    const v0, 0x3de978d5    # 0.114f

    int-to-float v2, v2

    mul-float/2addr v2, v0

    add-float/2addr p4, v2

    float-to-int p4, p4

    if-ltz p4, :cond_0

    .line 163
    iget-object v0, p0, Lcn/nubia/camera/ao/f$a;->d:[I

    array-length v2, v0

    if-ge p4, v2, :cond_0

    .line 164
    aget v2, v0, p4

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, p4

    :cond_0
    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    :cond_1
    const/16 p4, 0x100

    const/16 v0, 0x200

    move v2, v1

    :goto_1
    mul-int v3, p2, p3

    mul-int/lit8 v3, v3, 0x4

    if-ge v2, v3, :cond_2

    .line 172
    iget-object v3, p0, Lcn/nubia/camera/ao/f$a;->d:[I

    aget-byte v4, p1, v2

    add-int/2addr v4, v1

    and-int/lit16 v4, v4, 0xff

    aget v5, v3, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v3, v4

    add-int/lit8 v4, v2, 0x1

    .line 173
    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v4, p4

    aget v5, v3, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v3, v4

    add-int/lit8 v4, v2, 0x2

    .line 174
    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v4, v0

    aget v5, v3, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v3, v4

    add-int/lit8 v2, v2, 0x4

    goto :goto_1

    .line 177
    :cond_2
    iget-object p1, p0, Lcn/nubia/camera/ao/f$a;->a:Lcn/nubia/camera/ao/f;

    invoke-static {p1}, Lcn/nubia/camera/ao/f;->d(Lcn/nubia/camera/ao/f;)Lcn/nubia/camera/ao/f$b;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 178
    iget-object p1, p0, Lcn/nubia/camera/ao/f$a;->a:Lcn/nubia/camera/ao/f;

    invoke-static {p1}, Lcn/nubia/camera/ao/f;->d(Lcn/nubia/camera/ao/f;)Lcn/nubia/camera/ao/f$b;

    move-result-object p1

    iget-object p4, p0, Lcn/nubia/camera/ao/f$a;->d:[I

    iget-object v0, p0, Lcn/nubia/camera/ao/f$a;->a:Lcn/nubia/camera/ao/f;

    invoke-static {v0}, Lcn/nubia/camera/ao/f;->c(Lcn/nubia/camera/ao/f;)I

    move-result v0

    mul-int/2addr p2, p3

    invoke-interface {p1, p4, v0, p2}, Lcn/nubia/camera/ao/f$b;->a([III)V

    :cond_3
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x1

    .line 106
    iput-boolean v0, p0, Lcn/nubia/camera/ao/f$a;->b:Z

    .line 107
    iget-object v0, p0, Lcn/nubia/camera/ao/f$a;->a:Lcn/nubia/camera/ao/f;

    invoke-static {v0}, Lcn/nubia/camera/ao/f;->a(Lcn/nubia/camera/ao/f;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 108
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/ao/f$a;->a:Lcn/nubia/camera/ao/f;

    invoke-static {v1}, Lcn/nubia/camera/ao/f;->a(Lcn/nubia/camera/ao/f;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 109
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x0

    .line 113
    iput-boolean v0, p0, Lcn/nubia/camera/ao/f$a;->b:Z

    .line 114
    iget-object v0, p0, Lcn/nubia/camera/ao/f$a;->a:Lcn/nubia/camera/ao/f;

    invoke-static {v0}, Lcn/nubia/camera/ao/f;->a(Lcn/nubia/camera/ao/f;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 115
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/ao/f$a;->a:Lcn/nubia/camera/ao/f;

    invoke-static {v1}, Lcn/nubia/camera/ao/f;->a(Lcn/nubia/camera/ao/f;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 116
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public c()V
    .locals 2

    const/4 v0, 0x1

    .line 120
    iput-boolean v0, p0, Lcn/nubia/camera/ao/f$a;->c:Z

    .line 121
    iget-object v0, p0, Lcn/nubia/camera/ao/f$a;->a:Lcn/nubia/camera/ao/f;

    invoke-static {v0}, Lcn/nubia/camera/ao/f;->a(Lcn/nubia/camera/ao/f;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 122
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/ao/f$a;->a:Lcn/nubia/camera/ao/f;

    invoke-static {v1}, Lcn/nubia/camera/ao/f;->a(Lcn/nubia/camera/ao/f;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 123
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public run()V
    .locals 6

    .line 128
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 129
    :goto_0
    iget-boolean v0, p0, Lcn/nubia/camera/ao/f$a;->c:Z

    if-nez v0, :cond_3

    .line 130
    iget-object v0, p0, Lcn/nubia/camera/ao/f$a;->a:Lcn/nubia/camera/ao/f;

    invoke-static {v0}, Lcn/nubia/camera/ao/f;->a(Lcn/nubia/camera/ao/f;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 132
    :try_start_0
    iget-boolean v1, p0, Lcn/nubia/camera/ao/f$a;->b:Z

    if-nez v1, :cond_0

    .line 133
    iget-object v1, p0, Lcn/nubia/camera/ao/f$a;->a:Lcn/nubia/camera/ao/f;

    invoke-static {v1}, Lcn/nubia/camera/ao/f;->a(Lcn/nubia/camera/ao/f;)Ljava/lang/Object;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    goto :goto_1

    .line 134
    :cond_0
    iget-boolean v1, p0, Lcn/nubia/camera/ao/f$a;->c:Z

    if-nez v1, :cond_1

    .line 135
    iget-object v1, p0, Lcn/nubia/camera/ao/f$a;->a:Lcn/nubia/camera/ao/f;

    invoke-static {v1}, Lcn/nubia/camera/ao/f;->a(Lcn/nubia/camera/ao/f;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 138
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 141
    :cond_1
    :goto_1
    iget-object v1, p0, Lcn/nubia/camera/ao/f$a;->a:Lcn/nubia/camera/ao/f;

    invoke-static {v1}, Lcn/nubia/camera/ao/f;->b(Lcn/nubia/camera/ao/f;)Lcn/nubia/camera/v/d;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 142
    iget-object v1, p0, Lcn/nubia/camera/ao/f$a;->a:Lcn/nubia/camera/ao/f;

    invoke-static {v1}, Lcn/nubia/camera/ao/f;->b(Lcn/nubia/camera/ao/f;)Lcn/nubia/camera/v/d;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/v/d;->d()Lcom/android/common/a;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 144
    iget-object v2, v1, Lcom/android/common/a;->a:[B

    if-eqz v2, :cond_2

    .line 145
    array-length v3, v2

    iget v4, v1, Lcom/android/common/a;->c:I

    iget v5, v1, Lcom/android/common/a;->d:I

    mul-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x4

    if-ne v3, v4, :cond_2

    .line 146
    iget v3, v1, Lcom/android/common/a;->c:I

    iget v1, v1, Lcom/android/common/a;->d:I

    iget-object v4, p0, Lcn/nubia/camera/ao/f$a;->a:Lcn/nubia/camera/ao/f;

    invoke-static {v4}, Lcn/nubia/camera/ao/f;->c(Lcn/nubia/camera/ao/f;)I

    move-result v4

    invoke-direct {p0, v2, v3, v1, v4}, Lcn/nubia/camera/ao/f$a;->a([BIII)V

    .line 150
    :cond_2
    monitor-exit v0

    goto :goto_0

    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_3
    return-void
.end method
