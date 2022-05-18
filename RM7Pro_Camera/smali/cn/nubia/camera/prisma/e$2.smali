.class Lcn/nubia/camera/prisma/e$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/q/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/prisma/e;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/prisma/e;


# direct methods
.method constructor <init>(Lcn/nubia/camera/prisma/e;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcn/nubia/camera/prisma/e$2;->a:Lcn/nubia/camera/prisma/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 3

    .line 235
    iget-object v0, p0, Lcn/nubia/camera/prisma/e$2;->a:Lcn/nubia/camera/prisma/e;

    invoke-static {v0}, Lcn/nubia/camera/prisma/e;->b(Lcn/nubia/camera/prisma/e;)Lcom/android/preference/c;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/prisma/e$2;->a:Lcn/nubia/camera/prisma/e;

    const v2, 0x7f0f01fd

    invoke-virtual {v1, v2}, Lcn/nubia/camera/prisma/e;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_online_camera_prisma_key"

    invoke-virtual {v0, v2, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cam_effect"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcn/nubia/camera/prisma/e$2;->a:Lcn/nubia/camera/prisma/e;

    invoke-virtual {v0}, Lcn/nubia/camera/prisma/e;->P()Lcn/nubia/camera/z/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/prisma/e$2;->a:Lcn/nubia/camera/prisma/e;

    invoke-virtual {v0}, Lcn/nubia/camera/prisma/e;->P()Lcn/nubia/camera/z/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/z/b;->b()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    const-string v1, "cam_interval"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
