.class final Lcn/nubia/collage/o/a/j$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/collage/o/a/j;->k(Ljava/lang/String;Lcn/nubia/collage/o/a/j$c;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:D

.field final synthetic b:D

.field final synthetic c:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic d:Lcn/nubia/collage/o/a/j$c;


# direct methods
.method constructor <init>(DDLjava/util/concurrent/atomic/AtomicInteger;Lcn/nubia/collage/o/a/j$c;)V
    .locals 0

    iput-wide p1, p0, Lcn/nubia/collage/o/a/j$a;->a:D

    iput-wide p3, p0, Lcn/nubia/collage/o/a/j$a;->b:D

    iput-object p5, p0, Lcn/nubia/collage/o/a/j$a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p6, p0, Lcn/nubia/collage/o/a/j$a;->d:Lcn/nubia/collage/o/a/j$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    :try_start_0
    invoke-static {}, Lcn/nubia/collage/o/a/j;->a()Landroid/location/Geocoder;

    move-result-object v0

    iget-wide v1, p0, Lcn/nubia/collage/o/a/j$a;->a:D

    iget-wide v3, p0, Lcn/nubia/collage/o/a/j$a;->b:D

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    iget-object v1, p0, Lcn/nubia/collage/o/a/j$a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/location/Address;->getSubAdminArea()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/collage/o/a/j;->c(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcn/nubia/collage/o/a/j$a;->d:Lcn/nubia/collage/o/a/j$c;

    invoke-static {}, Lcn/nubia/collage/o/a/j;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/nubia/collage/o/a/j$c;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
