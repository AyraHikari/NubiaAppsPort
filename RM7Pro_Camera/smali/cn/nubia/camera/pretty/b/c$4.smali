.class Lcn/nubia/camera/pretty/b/c$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/pretty/b/c;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/pretty/b/c;


# direct methods
.method constructor <init>(Lcn/nubia/camera/pretty/b/c;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcn/nubia/camera/pretty/b/c$4;->a:Lcn/nubia/camera/pretty/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/nubia/b/a/f;Lcn/nubia/b/d;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 134
    :cond_0
    invoke-static {}, Lcn/nubia/camera/pretty/b/a;->a()Lcn/nubia/camera/pretty/b/a;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/camera/pretty/b/a;->c()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 135
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object p2

    iget-object v0, p0, Lcn/nubia/camera/pretty/b/c$4;->a:Lcn/nubia/camera/pretty/b/c;

    invoke-static {v0}, Lcn/nubia/camera/pretty/b/c;->a(Lcn/nubia/camera/pretty/b/c;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcn/nubia/b/e;->a(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p2

    iget-object v0, p0, Lcn/nubia/camera/pretty/b/c$4;->a:Lcn/nubia/camera/pretty/b/c;

    .line 136
    invoke-static {v0}, Lcn/nubia/camera/pretty/b/c;->a(Lcn/nubia/camera/pretty/b/c;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->q()Lcn/nubia/camera/al/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/al/c;->c()I

    move-result v0

    .line 135
    invoke-static {p2, v0}, Lcn/nubia/camera/aq/f;->a(Landroid/hardware/camera2/CameraCharacteristics;I)I

    move-result p2

    rsub-int p2, p2, 0x168

    .line 137
    rem-int/lit16 p2, p2, 0x168

    .line 138
    invoke-interface {p1}, Lcn/nubia/b/a/f;->g()Landroid/media/Image;

    move-result-object v0

    invoke-static {v0, p2}, Lcn/nubia/algorithm/camera/SingleBokeh;->a(Landroid/media/Image;I)V

    .line 140
    :cond_1
    invoke-interface {p1}, Lcn/nubia/b/a/f;->close()V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcn/nubia/b/d;)V
    .locals 0

    .line 128
    check-cast p1, Lcn/nubia/b/a/f;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/camera/pretty/b/c$4;->a(Lcn/nubia/b/a/f;Lcn/nubia/b/d;)V

    return-void
.end method
