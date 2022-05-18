.class public Lcn/nubia/camera/aj/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[I>;"
        }
    .end annotation
.end field

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/aj/l;->a:Ljava/util/ArrayList;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/aj/l;->b:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcn/nubia/camera/aj/l;->c:Z

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 14
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcn/nubia/camera/aj/l;->d:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        -0x6
        0x6
    .end array-data
.end method


# virtual methods
.method public declared-synchronized a([IJ)V
    .locals 4

    monitor-enter p0

    if-nez p1, :cond_0

    .line 18
    monitor-exit p0

    return-void

    .line 20
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/aj/l;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object p1, p0, Lcn/nubia/camera/aj/l;->b:Ljava/util/ArrayList;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object p1, p0, Lcn/nubia/camera/aj/l;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 p3, 0x1

    sub-int/2addr p2, p3

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iget-object v0, p0, Lcn/nubia/camera/aj/l;->b:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr p1, v2

    const-wide/16 v2, 0x1f4

    cmp-long p1, p1, v2

    if-lez p1, :cond_1

    .line 24
    iget-object p1, p0, Lcn/nubia/camera/aj/l;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 25
    iget-object p1, p0, Lcn/nubia/camera/aj/l;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 28
    :cond_1
    iget-boolean p1, p0, Lcn/nubia/camera/aj/l;->c:Z

    if-nez p1, :cond_5

    .line 29
    iput-boolean p3, p0, Lcn/nubia/camera/aj/l;->c:Z

    .line 30
    iget-object p1, p0, Lcn/nubia/camera/aj/l;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, p3

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iget-object v0, p0, Lcn/nubia/camera/aj/l;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr p1, v2

    const-wide/16 v2, 0x12c

    cmp-long p1, p1, v2

    if-gez p1, :cond_2

    .line 31
    iput-boolean v1, p0, Lcn/nubia/camera/aj/l;->c:Z

    goto :goto_1

    .line 34
    :cond_2
    iget-object p1, p0, Lcn/nubia/camera/aj/l;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, p3

    :goto_0
    if-ltz p1, :cond_4

    .line 35
    iget-object p2, p0, Lcn/nubia/camera/aj/l;->a:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [I

    aget p2, p2, v1

    if-gtz p2, :cond_3

    .line 36
    iput-boolean v1, p0, Lcn/nubia/camera/aj/l;->c:Z

    .line 37
    iget-object p2, p0, Lcn/nubia/camera/aj/l;->a:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput-object p1, p0, Lcn/nubia/camera/aj/l;->d:[I

    goto :goto_1

    :cond_3
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 42
    :cond_4
    :goto_1
    iget-boolean p1, p0, Lcn/nubia/camera/aj/l;->c:Z

    if-eqz p1, :cond_8

    .line 43
    iget-object p1, p0, Lcn/nubia/camera/aj/l;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, p3

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput-object p1, p0, Lcn/nubia/camera/aj/l;->d:[I

    goto :goto_4

    .line 47
    :cond_5
    iput-boolean v1, p0, Lcn/nubia/camera/aj/l;->c:Z

    .line 48
    iget-object p1, p0, Lcn/nubia/camera/aj/l;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, p3

    :goto_2
    if-ltz p1, :cond_7

    .line 49
    iget-object p2, p0, Lcn/nubia/camera/aj/l;->a:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [I

    aget p2, p2, v1

    if-lez p2, :cond_6

    .line 50
    iput-boolean p3, p0, Lcn/nubia/camera/aj/l;->c:Z

    .line 51
    iget-object p2, p0, Lcn/nubia/camera/aj/l;->a:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput-object p1, p0, Lcn/nubia/camera/aj/l;->d:[I

    goto :goto_3

    :cond_6
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    .line 55
    :cond_7
    :goto_3
    iget-boolean p1, p0, Lcn/nubia/camera/aj/l;->c:Z

    if-nez p1, :cond_8

    .line 56
    iget-object p1, p0, Lcn/nubia/camera/aj/l;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, p3

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput-object p1, p0, Lcn/nubia/camera/aj/l;->d:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    :cond_8
    :goto_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a()[I
    .locals 1

    monitor-enter p0

    .line 62
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/aj/l;->d:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
