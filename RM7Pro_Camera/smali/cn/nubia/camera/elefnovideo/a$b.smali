.class Lcn/nubia/camera/elefnovideo/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/elefnovideo/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/elefnovideo/a;

.field private b:Lcn/nubia/camera/elefnovideo/a$c;

.field private c:Lcn/nubia/camera/elefnovideo/a$c;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/elefnovideo/a;Lcn/nubia/camera/elefnovideo/a$c;Lcn/nubia/camera/elefnovideo/a$c;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcn/nubia/camera/elefnovideo/a$b;->a:Lcn/nubia/camera/elefnovideo/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-object p2, p0, Lcn/nubia/camera/elefnovideo/a$b;->b:Lcn/nubia/camera/elefnovideo/a$c;

    .line 144
    iput-object p3, p0, Lcn/nubia/camera/elefnovideo/a$b;->c:Lcn/nubia/camera/elefnovideo/a$c;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/16 v0, 0x9

    new-array v6, v0, [F

    .line 149
    fill-array-data v6, :array_0

    .line 154
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 155
    iget-object v2, p0, Lcn/nubia/camera/elefnovideo/a$b;->a:Lcn/nubia/camera/elefnovideo/a;

    invoke-static {v2}, Lcn/nubia/camera/elefnovideo/a;->f(Lcn/nubia/camera/elefnovideo/a;)Z

    move-result v2

    const/16 v7, 0xa

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcn/nubia/camera/elefnovideo/a$b;->a:Lcn/nubia/camera/elefnovideo/a;

    invoke-static {v2}, Lcn/nubia/camera/elefnovideo/a;->g(Lcn/nubia/camera/elefnovideo/a;)I

    move-result v2

    if-gt v2, v7, :cond_0

    .line 156
    new-instance v2, Lcn/nubia/algorithm/utils/a;

    iget-object v3, p0, Lcn/nubia/camera/elefnovideo/a$b;->c:Lcn/nubia/camera/elefnovideo/a$c;

    iget-object v3, v3, Lcn/nubia/camera/elefnovideo/a$c;->b:[B

    invoke-direct {v2, v3}, Lcn/nubia/algorithm/utils/a;-><init>([B)V

    .line 157
    iget-object v3, p0, Lcn/nubia/camera/elefnovideo/a$b;->c:Lcn/nubia/camera/elefnovideo/a$c;

    iget v3, v3, Lcn/nubia/camera/elefnovideo/a$c;->c:I

    iget-object v4, p0, Lcn/nubia/camera/elefnovideo/a$b;->c:Lcn/nubia/camera/elefnovideo/a$c;

    iget v4, v4, Lcn/nubia/camera/elefnovideo/a$c;->d:I

    iget-object v5, p0, Lcn/nubia/camera/elefnovideo/a$b;->c:Lcn/nubia/camera/elefnovideo/a$c;

    iget v5, v5, Lcn/nubia/camera/elefnovideo/a$c;->c:I

    div-int/lit8 v5, v5, 0x4

    iget-object v8, p0, Lcn/nubia/camera/elefnovideo/a$b;->c:Lcn/nubia/camera/elefnovideo/a$c;

    iget v8, v8, Lcn/nubia/camera/elefnovideo/a$c;->d:I

    div-int/lit8 v8, v8, 0x4

    invoke-static {v2, v3, v4, v5, v8}, Lcn/nubia/algorithm/utils/YUVAlgorithm;->a(Lcn/nubia/algorithm/utils/a;IIII)Lcn/nubia/algorithm/utils/a;

    move-result-object v3

    .line 159
    invoke-virtual {v2}, Lcn/nubia/algorithm/utils/a;->a()V

    .line 160
    invoke-virtual {v3}, Lcn/nubia/algorithm/utils/a;->b()[B

    move-result-object v2

    .line 161
    invoke-virtual {v3}, Lcn/nubia/algorithm/utils/a;->a()V

    .line 162
    new-instance v3, Lcn/nubia/algorithm/utils/a;

    iget-object v4, p0, Lcn/nubia/camera/elefnovideo/a$b;->b:Lcn/nubia/camera/elefnovideo/a$c;

    iget-object v4, v4, Lcn/nubia/camera/elefnovideo/a$c;->b:[B

    invoke-direct {v3, v4}, Lcn/nubia/algorithm/utils/a;-><init>([B)V

    .line 163
    iget-object v4, p0, Lcn/nubia/camera/elefnovideo/a$b;->b:Lcn/nubia/camera/elefnovideo/a$c;

    iget v4, v4, Lcn/nubia/camera/elefnovideo/a$c;->c:I

    iget-object v5, p0, Lcn/nubia/camera/elefnovideo/a$b;->b:Lcn/nubia/camera/elefnovideo/a$c;

    iget v5, v5, Lcn/nubia/camera/elefnovideo/a$c;->d:I

    iget-object v8, p0, Lcn/nubia/camera/elefnovideo/a$b;->b:Lcn/nubia/camera/elefnovideo/a$c;

    iget v8, v8, Lcn/nubia/camera/elefnovideo/a$c;->c:I

    div-int/lit8 v8, v8, 0x4

    iget-object v9, p0, Lcn/nubia/camera/elefnovideo/a$b;->b:Lcn/nubia/camera/elefnovideo/a$c;

    iget v9, v9, Lcn/nubia/camera/elefnovideo/a$c;->d:I

    div-int/lit8 v9, v9, 0x4

    invoke-static {v3, v4, v5, v8, v9}, Lcn/nubia/algorithm/utils/YUVAlgorithm;->a(Lcn/nubia/algorithm/utils/a;IIII)Lcn/nubia/algorithm/utils/a;

    move-result-object v4

    .line 165
    invoke-virtual {v3}, Lcn/nubia/algorithm/utils/a;->a()V

    .line 166
    invoke-virtual {v4}, Lcn/nubia/algorithm/utils/a;->b()[B

    move-result-object v3

    .line 167
    invoke-virtual {v4}, Lcn/nubia/algorithm/utils/a;->a()V

    .line 168
    iget-object v4, p0, Lcn/nubia/camera/elefnovideo/a$b;->c:Lcn/nubia/camera/elefnovideo/a$c;

    iget v4, v4, Lcn/nubia/camera/elefnovideo/a$c;->c:I

    div-int/lit8 v4, v4, 0x4

    iget-object v5, p0, Lcn/nubia/camera/elefnovideo/a$b;->c:Lcn/nubia/camera/elefnovideo/a$c;

    iget v5, v5, Lcn/nubia/camera/elefnovideo/a$c;->d:I

    div-int/lit8 v5, v5, 0x4

    invoke-static {v2, v3, v4, v5, v6}, Lcn/nubia/algorithm/camera/MatchAlgorithm;->imageMatch([B[BII[F)V

    .line 171
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "EleFnoVideo"

    .line 172
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "match "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long/2addr v2, v0

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcn/nubia/camera/c/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/a$b;->a:Lcn/nubia/camera/elefnovideo/a;

    invoke-static {v0}, Lcn/nubia/camera/elefnovideo/a;->h(Lcn/nubia/camera/elefnovideo/a;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 182
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/elefnovideo/a$b;->a:Lcn/nubia/camera/elefnovideo/a;

    invoke-static {v1}, Lcn/nubia/camera/elefnovideo/a;->h(Lcn/nubia/camera/elefnovideo/a;)Ljava/util/ArrayList;

    move-result-object v8

    new-instance v9, Lcn/nubia/camera/elefnovideo/a$a;

    iget-object v1, p0, Lcn/nubia/camera/elefnovideo/a$b;->b:Lcn/nubia/camera/elefnovideo/a$c;

    iget-wide v2, v1, Lcn/nubia/camera/elefnovideo/a$c;->a:J

    iget-object v1, p0, Lcn/nubia/camera/elefnovideo/a$b;->c:Lcn/nubia/camera/elefnovideo/a$c;

    iget-wide v4, v1, Lcn/nubia/camera/elefnovideo/a$c;->a:J

    move-object v1, v9

    invoke-direct/range {v1 .. v6}, Lcn/nubia/camera/elefnovideo/a$a;-><init>(JJ[F)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "EleFnoVideo"

    .line 183
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add AffineData "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/elefnovideo/a$b;->b:Lcn/nubia/camera/elefnovideo/a$c;

    iget-wide v3, v3, Lcn/nubia/camera/elefnovideo/a$c;->a:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/elefnovideo/a$b;->c:Lcn/nubia/camera/elefnovideo/a$c;

    iget-wide v3, v3, Lcn/nubia/camera/elefnovideo/a$c;->a:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/camera/c/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :goto_0
    iget-object v1, p0, Lcn/nubia/camera/elefnovideo/a$b;->a:Lcn/nubia/camera/elefnovideo/a;

    invoke-static {v1}, Lcn/nubia/camera/elefnovideo/a;->h(Lcn/nubia/camera/elefnovideo/a;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcn/nubia/camera/elefnovideo/a$b;->a:Lcn/nubia/camera/elefnovideo/a;

    invoke-static {v2}, Lcn/nubia/camera/elefnovideo/a;->i(Lcn/nubia/camera/elefnovideo/a;)I

    move-result v2

    mul-int/2addr v2, v7

    if-le v1, v2, :cond_1

    .line 185
    iget-object v1, p0, Lcn/nubia/camera/elefnovideo/a$b;->a:Lcn/nubia/camera/elefnovideo/a;

    invoke-static {v1}, Lcn/nubia/camera/elefnovideo/a;->h(Lcn/nubia/camera/elefnovideo/a;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/elefnovideo/a$a;

    const-string v2, "EleFnoVideo"

    .line 186
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remove AffineData "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v1, Lcn/nubia/camera/elefnovideo/a$a;->a:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v1, Lcn/nubia/camera/elefnovideo/a$a;->b:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcn/nubia/camera/c/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v1, "EleFnoVideo"

    .line 188
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "matrix queue size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/elefnovideo/a$b;->a:Lcn/nubia/camera/elefnovideo/a;

    invoke-static {v3}, Lcn/nubia/camera/elefnovideo/a;->h(Lcn/nubia/camera/elefnovideo/a;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/camera/c/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 190
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/a$b;->a:Lcn/nubia/camera/elefnovideo/a;

    invoke-static {v0}, Lcn/nubia/camera/elefnovideo/a;->d(Lcn/nubia/camera/elefnovideo/a;)Landroid/os/Handler;

    move-result-object v1

    monitor-enter v1

    .line 191
    :try_start_1
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/a$b;->a:Lcn/nubia/camera/elefnovideo/a;

    invoke-static {v0}, Lcn/nubia/camera/elefnovideo/a;->j(Lcn/nubia/camera/elefnovideo/a;)I

    .line 192
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 189
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
