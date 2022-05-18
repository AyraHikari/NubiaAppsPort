.class public final Lcn/nubia/b/a/c;
.super Lcn/nubia/b/a/e;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/b/a/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/b/a/c$a;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String; = "CloseWhenDoneImageReader"


# instance fields
.field private final b:Ljava/lang/Object;

.field private c:Z

.field private d:Z

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcn/nubia/b/a/h;)V
    .locals 1

    .line 68
    invoke-direct {p0, p1}, Lcn/nubia/b/a/e;-><init>(Lcn/nubia/b/a/h;)V

    .line 69
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "create closeImageReaderProxy: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/nubia/b/a/c;->a(Ljava/lang/String;)V

    .line 70
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/nubia/b/a/c;->b:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 71
    iput-boolean p1, p0, Lcn/nubia/b/a/c;->d:Z

    .line 72
    iput p1, p0, Lcn/nubia/b/a/c;->e:I

    return-void
.end method

.method private a()V
    .locals 4

    .line 76
    iget-object v0, p0, Lcn/nubia/b/a/c;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 77
    :try_start_0
    iget v1, p0, Lcn/nubia/b/a/c;->e:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lcn/nubia/b/a/c;->e:I

    .line 78
    iget-boolean v3, p0, Lcn/nubia/b/a/c;->c:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcn/nubia/b/a/c;->d:Z

    if-nez v3, :cond_0

    if-nez v1, :cond_0

    .line 79
    iput-boolean v2, p0, Lcn/nubia/b/a/c;->d:Z

    .line 80
    invoke-super {p0}, Lcn/nubia/b/a/e;->close()V

    .line 82
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic a(Lcn/nubia/b/a/c;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcn/nubia/b/a/c;->a()V

    return-void
.end method

.method static synthetic a(Lcn/nubia/b/a/c;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcn/nubia/b/a/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .line 131
    invoke-static {}, Lcn/nubia/b/g;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    sget-object v0, Lcn/nubia/b/a/c;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DEBUG] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 117
    iget-object v0, p0, Lcn/nubia/b/a/c;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 118
    :try_start_0
    iget-boolean v1, p0, Lcn/nubia/b/a/c;->d:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcn/nubia/b/a/c;->c:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 121
    iput-boolean v1, p0, Lcn/nubia/b/a/c;->c:Z

    .line 122
    iget v2, p0, Lcn/nubia/b/a/c;->e:I

    if-nez v2, :cond_1

    .line 123
    iput-boolean v1, p0, Lcn/nubia/b/a/c;->d:Z

    .line 124
    invoke-super {p0}, Lcn/nubia/b/a/e;->close()V

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close closeImageReaderProxy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcn/nubia/b/a/c;->a(Ljava/lang/String;)V

    .line 127
    :cond_1
    monitor-exit v0

    return-void

    .line 119
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 127
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public e()Lcn/nubia/b/a/f;
    .locals 3

    .line 103
    iget-object v0, p0, Lcn/nubia/b/a/c;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 104
    :try_start_0
    iget-boolean v1, p0, Lcn/nubia/b/a/c;->c:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcn/nubia/b/a/c;->d:Z

    if-nez v1, :cond_0

    .line 105
    invoke-super {p0}, Lcn/nubia/b/a/e;->e()Lcn/nubia/b/a/f;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 107
    iget v2, p0, Lcn/nubia/b/a/c;->e:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcn/nubia/b/a/c;->e:I

    .line 108
    new-instance v2, Lcn/nubia/b/a/c$a;

    invoke-direct {v2, p0, v1}, Lcn/nubia/b/a/c$a;-><init>(Lcn/nubia/b/a/c;Lcn/nubia/b/a/f;)V

    monitor-exit v0

    return-object v2

    .line 111
    :cond_0
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public f()Lcn/nubia/b/a/f;
    .locals 3

    .line 88
    iget-object v0, p0, Lcn/nubia/b/a/c;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 89
    :try_start_0
    iget-boolean v1, p0, Lcn/nubia/b/a/c;->c:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcn/nubia/b/a/c;->d:Z

    if-nez v1, :cond_0

    .line 90
    invoke-super {p0}, Lcn/nubia/b/a/e;->f()Lcn/nubia/b/a/f;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 92
    iget v2, p0, Lcn/nubia/b/a/c;->e:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcn/nubia/b/a/c;->e:I

    .line 93
    new-instance v2, Lcn/nubia/b/a/c$a;

    invoke-direct {v2, p0, v1}, Lcn/nubia/b/a/c$a;-><init>(Lcn/nubia/b/a/c;Lcn/nubia/b/a/f;)V

    monitor-exit v0

    return-object v2

    .line 96
    :cond_0
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
