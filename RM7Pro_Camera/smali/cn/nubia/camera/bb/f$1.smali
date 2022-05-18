.class Lcn/nubia/camera/bb/f$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/v/b$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/bb/f;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/bb/f;


# direct methods
.method constructor <init>(Lcn/nubia/camera/bb/f;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcn/nubia/camera/bb/f$1;->a:Lcn/nubia/camera/bb/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 76
    iget-object v0, p0, Lcn/nubia/camera/bb/f$1;->a:Lcn/nubia/camera/bb/f;

    invoke-virtual {v0}, Lcn/nubia/camera/bb/f;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Lcn/nubia/camera/bb/f$1;->a:Lcn/nubia/camera/bb/f;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/camera/bb/f;->a(Lcn/nubia/camera/bb/f;Z)Z

    .line 78
    iget-object v0, p0, Lcn/nubia/camera/bb/f$1;->a:Lcn/nubia/camera/bb/f;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/camera/bb/f;->b(Lcn/nubia/camera/bb/f;Z)Z

    .line 79
    iget-object v0, p0, Lcn/nubia/camera/bb/f$1;->a:Lcn/nubia/camera/bb/f;

    invoke-virtual {v0}, Lcn/nubia/camera/bb/f;->start()V

    :cond_0
    return-void
.end method
