.class public Lcom/loc/ba;
.super Ljava/lang/Object;
.source "OfflineLocManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loc/ba$a;
    }
.end annotation


# static fields
.field static a:I

.field static b:Z

.field static c:I

.field static d:I

.field private static e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/loc/ax;",
            ">;"
        }
    .end annotation
.end field

.field private static f:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/16 v0, 0x3e8

    sput v0, Lcom/loc/ba;->a:I

    sput-boolean v1, Lcom/loc/ba;->b:Z

    const/16 v0, 0x14

    sput v0, Lcom/loc/ba;->c:I

    const/16 v0, 0xa

    sput v0, Lcom/loc/ba;->f:I

    sput v1, Lcom/loc/ba;->d:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/lang/ref/WeakReference;
    .locals 1

    sget-object v0, Lcom/loc/ba;->e:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public static declared-synchronized a(IZII)V
    .locals 3

    const-class v1, Lcom/loc/ba;

    monitor-enter v1

    :try_start_0
    sput p0, Lcom/loc/ba;->a:I

    sput-boolean p1, Lcom/loc/ba;->b:Z

    const/16 v0, 0xa

    if-lt p2, v0, :cond_0

    const/16 v0, 0x64

    if-le p2, v0, :cond_1

    :cond_0
    const/16 p2, 0x14

    :cond_1
    sput p2, Lcom/loc/ba;->c:I

    div-int/lit8 v0, p2, 0x5

    sget v2, Lcom/loc/ba;->f:I

    if-le v0, v2, :cond_2

    sget v0, Lcom/loc/ba;->c:I

    div-int/lit8 v0, v0, 0x5

    sput v0, Lcom/loc/ba;->f:I

    :cond_2
    sput p3, Lcom/loc/ba;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    invoke-static {}, Lcom/loc/ab;->d()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/loc/ba$a;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/loc/ba$a;-><init>(Landroid/content/Context;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public static declared-synchronized a(Lcom/loc/az;Landroid/content/Context;)V
    .locals 3

    const-class v1, Lcom/loc/ba;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/loc/ab;->d()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v2, Lcom/loc/ba$a;

    invoke-direct {v2, p1, p0}, Lcom/loc/ba$a;-><init>(Landroid/content/Context;Lcom/loc/az;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic b()I
    .locals 1

    sget v0, Lcom/loc/ba;->f:I

    return v0
.end method
