.class Lcn/nubia/camera/bb/y$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/q/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/bb/y;->ah()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/bb/y;


# direct methods
.method constructor <init>(Lcn/nubia/camera/bb/y;)V
    .locals 0

    .line 826
    iput-object p1, p0, Lcn/nubia/camera/bb/y$2;->a:Lcn/nubia/camera/bb/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 3

    .line 829
    iget-object v0, p0, Lcn/nubia/camera/bb/y$2;->a:Lcn/nubia/camera/bb/y;

    invoke-static {v0}, Lcn/nubia/camera/bb/y;->w(Lcn/nubia/camera/bb/y;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/nubia/camera/ba/g;->a(Landroid/os/Bundle;Lcn/nubia/camera/ad/a;)V

    .line 830
    iget-object v0, p0, Lcn/nubia/camera/bb/y$2;->a:Lcn/nubia/camera/bb/y;

    invoke-static {v0}, Lcn/nubia/camera/bb/y;->x(Lcn/nubia/camera/bb/y;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/bb/y$2;->a:Lcn/nubia/camera/bb/y;

    invoke-static {v1}, Lcn/nubia/camera/bb/y;->y(Lcn/nubia/camera/bb/y;)Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/ba/g;->a(Lcom/android/preference/c;Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cam_effect"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    iget-object v0, p0, Lcn/nubia/camera/bb/y$2;->a:Lcn/nubia/camera/bb/y;

    invoke-static {v0}, Lcn/nubia/camera/bb/y;->z(Lcn/nubia/camera/bb/y;)Lcom/android/preference/c;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/bb/y$2;->a:Lcn/nubia/camera/bb/y;

    const v2, 0x7f0f025d

    invoke-virtual {v1, v2}, Lcn/nubia/camera/bb/y;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_movie_mode_key"

    invoke-virtual {v0, v2, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "vid_movie"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
