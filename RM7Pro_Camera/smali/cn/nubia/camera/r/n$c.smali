.class Lcn/nubia/camera/r/n$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/r/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field a:Lcn/nubia/camera/r/n$a;

.field final synthetic b:Lcn/nubia/camera/r/n;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/r/n;Lcn/nubia/camera/r/n$a;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcn/nubia/camera/r/n$c;->b:Lcn/nubia/camera/r/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p2, p0, Lcn/nubia/camera/r/n$c;->a:Lcn/nubia/camera/r/n$a;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const/16 v0, 0x9

    new-array v0, v0, [D

    .line 122
    fill-array-data v0, :array_0

    const/4 v1, 0x1

    new-array v8, v1, [I

    const/4 v1, 0x0

    aput v1, v8, v1

    .line 128
    iget-object v1, p0, Lcn/nubia/camera/r/n$c;->b:Lcn/nubia/camera/r/n;

    iget-object v1, v1, Lcn/nubia/camera/r/n;->e:Lcn/nubia/algorithm/camera/FreezeVideoJni;

    iget-object v2, p0, Lcn/nubia/camera/r/n$c;->a:Lcn/nubia/camera/r/n$a;

    iget-object v2, v2, Lcn/nubia/camera/r/n$a;->a:Lcn/nubia/algorithm/utils/a;

    iget-object v3, p0, Lcn/nubia/camera/r/n$c;->a:Lcn/nubia/camera/r/n$a;

    iget v3, v3, Lcn/nubia/camera/r/n$a;->b:I

    iget-object v4, p0, Lcn/nubia/camera/r/n$c;->a:Lcn/nubia/camera/r/n$a;

    iget v4, v4, Lcn/nubia/camera/r/n$a;->c:I

    iget-object v5, p0, Lcn/nubia/camera/r/n$c;->a:Lcn/nubia/camera/r/n$a;

    iget v5, v5, Lcn/nubia/camera/r/n$a;->d:I

    move-object v6, v0

    move-object v7, v8

    invoke-virtual/range {v1 .. v7}, Lcn/nubia/algorithm/camera/FreezeVideoJni;->a(Lcn/nubia/algorithm/utils/a;III[D[I)F

    move-result v4

    .line 129
    iget-object v1, p0, Lcn/nubia/camera/r/n$c;->a:Lcn/nubia/camera/r/n$a;

    iget-object v1, v1, Lcn/nubia/camera/r/n$a;->a:Lcn/nubia/algorithm/utils/a;

    invoke-virtual {v1}, Lcn/nubia/algorithm/utils/a;->a()V

    .line 131
    iget-object v9, p0, Lcn/nubia/camera/r/n$c;->b:Lcn/nubia/camera/r/n;

    new-instance v10, Lcn/nubia/camera/r/n$b;

    iget-object v1, p0, Lcn/nubia/camera/r/n$c;->a:Lcn/nubia/camera/r/n$a;

    iget v2, v1, Lcn/nubia/camera/r/n$a;->b:I

    iget-object v1, p0, Lcn/nubia/camera/r/n$c;->a:Lcn/nubia/camera/r/n$a;

    iget v3, v1, Lcn/nubia/camera/r/n$a;->c:I

    iget-object v1, p0, Lcn/nubia/camera/r/n$c;->a:Lcn/nubia/camera/r/n$a;

    iget v6, v1, Lcn/nubia/camera/r/n$a;->d:I

    move-object v1, v10

    move-object v5, v0

    invoke-direct/range {v1 .. v7}, Lcn/nubia/camera/r/n$b;-><init>(IIF[DI[I)V

    invoke-static {v9, v10}, Lcn/nubia/camera/r/n;->a(Lcn/nubia/camera/r/n;Lcn/nubia/camera/r/n$b;)V

    .line 132
    iget-object v0, p0, Lcn/nubia/camera/r/n$c;->b:Lcn/nubia/camera/r/n;

    monitor-enter v0

    .line 133
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/r/n$c;->b:Lcn/nubia/camera/r/n;

    invoke-static {v1}, Lcn/nubia/camera/r/n;->a(Lcn/nubia/camera/r/n;)I

    .line 134
    iget-object v1, p0, Lcn/nubia/camera/r/n$c;->b:Lcn/nubia/camera/r/n;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 135
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :array_0
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
    .end array-data
.end method
