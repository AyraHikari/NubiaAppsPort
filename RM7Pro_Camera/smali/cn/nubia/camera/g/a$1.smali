.class Lcn/nubia/camera/g/a$1;
.super Lcn/nubia/camera/f/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/g/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/g/a;


# direct methods
.method constructor <init>(Lcn/nubia/camera/g/a;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcn/nubia/camera/g/a$1;->a:Lcn/nubia/camera/g/a;

    invoke-direct {p0}, Lcn/nubia/camera/f/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0x64

    return v0
.end method

.method public b()V
    .locals 2

    .line 78
    iget-object v0, p0, Lcn/nubia/camera/g/a$1;->a:Lcn/nubia/camera/g/a;

    invoke-static {v0}, Lcn/nubia/camera/g/a;->a(Lcn/nubia/camera/g/a;)Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/c;->e:Lcn/nubia/camera/d/c;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/d;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    invoke-static {}, Lcn/nubia/camera/f/b;->a()Lcn/nubia/camera/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/f/b;->d()V

    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/g/a$1;->a:Lcn/nubia/camera/g/a;

    invoke-static {v0}, Lcn/nubia/camera/g/a;->b(Lcn/nubia/camera/g/a;)Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->H:Lcn/nubia/camera/af/a;

    if-eq v0, v1, :cond_2

    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->ap()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 86
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/g/a$1;->a:Lcn/nubia/camera/g/a;

    invoke-static {v0}, Lcn/nubia/camera/g/a;->d(Lcn/nubia/camera/g/a;)Lcn/nubia/camera/ap/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ap/b;->a()V

    goto :goto_1

    .line 84
    :cond_2
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/g/a$1;->a:Lcn/nubia/camera/g/a;

    invoke-static {v0}, Lcn/nubia/camera/g/a;->c(Lcn/nubia/camera/g/a;)V

    :goto_1
    return-void
.end method
