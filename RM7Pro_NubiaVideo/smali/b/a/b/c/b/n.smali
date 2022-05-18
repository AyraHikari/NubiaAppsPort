.class public Lb/a/b/c/b/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:J


# instance fields
.field protected a:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized b()J
    .locals 5

    const-class v0, Lb/a/b/c/b/n;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-wide v1, Lb/a/b/c/b/n;->b:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    sput-wide v1, Lb/a/b/c/b/n;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lb/a/b/c/b/n;->a:J

    return-wide v0
.end method
