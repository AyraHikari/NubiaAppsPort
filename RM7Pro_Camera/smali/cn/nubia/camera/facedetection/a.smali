.class public Lcn/nubia/camera/facedetection/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/k;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/camera/k/k;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcn/nubia/camera/ad/a;

.field private c:[Lcn/nubia/camera/k/k;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/ad/a;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/facedetection/a;->a:Ljava/util/List;

    .line 26
    iput-object p1, p0, Lcn/nubia/camera/facedetection/a;->b:Lcn/nubia/camera/ad/a;

    return-void
.end method


# virtual methods
.method public a(Lcn/nubia/camera/k/k;)V
    .locals 2

    .line 30
    iget-object v0, p0, Lcn/nubia/camera/facedetection/a;->a:Ljava/util/List;

    monitor-enter v0

    .line 31
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/facedetection/a;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 32
    iget-object v1, p0, Lcn/nubia/camera/facedetection/a;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    iget-object p1, p0, Lcn/nubia/camera/facedetection/a;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcn/nubia/camera/k/k;

    iput-object p1, p0, Lcn/nubia/camera/facedetection/a;->c:[Lcn/nubia/camera/k/k;

    .line 34
    iget-object v1, p0, Lcn/nubia/camera/facedetection/a;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 36
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a([Lcn/nubia/camera/k/j;Landroid/graphics/Rect;Ljava/lang/Float;)V
    .locals 4

    .line 58
    iget-object v0, p0, Lcn/nubia/camera/facedetection/a;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/facedetection/a;->a()[Lcn/nubia/camera/k/k;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 66
    :cond_1
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    if-eqz v3, :cond_2

    .line 68
    invoke-interface {v3, p1, p2, p3}, Lcn/nubia/camera/k/k;->a([Lcn/nubia/camera/k/j;Landroid/graphics/Rect;Ljava/lang/Float;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public a()[Lcn/nubia/camera/k/k;
    .locals 2

    .line 51
    iget-object v0, p0, Lcn/nubia/camera/facedetection/a;->a:Ljava/util/List;

    monitor-enter v0

    .line 52
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/facedetection/a;->c:[Lcn/nubia/camera/k/k;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 53
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public b(Lcn/nubia/camera/k/k;)V
    .locals 2

    .line 40
    iget-object v0, p0, Lcn/nubia/camera/facedetection/a;->a:Ljava/util/List;

    monitor-enter v0

    .line 41
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/facedetection/a;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    iget-object v1, p0, Lcn/nubia/camera/facedetection/a;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 43
    iget-object p1, p0, Lcn/nubia/camera/facedetection/a;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcn/nubia/camera/k/k;

    iput-object p1, p0, Lcn/nubia/camera/facedetection/a;->c:[Lcn/nubia/camera/k/k;

    .line 44
    iget-object v1, p0, Lcn/nubia/camera/facedetection/a;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 47
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
