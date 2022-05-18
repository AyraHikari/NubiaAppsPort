.class Lcn/nubia/camera/aimoon/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/aimoon/b;->f(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/aimoon/b;


# direct methods
.method constructor <init>(Lcn/nubia/camera/aimoon/b;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcn/nubia/camera/aimoon/b$1;->a:Lcn/nubia/camera/aimoon/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 152
    iget-object v0, p0, Lcn/nubia/camera/aimoon/b$1;->a:Lcn/nubia/camera/aimoon/b;

    invoke-static {v0}, Lcn/nubia/camera/aimoon/b;->a(Lcn/nubia/camera/aimoon/b;)Lcom/android/preference/c;

    move-result-object v0

    const-string v1, "pref_camera_exposure_compensation"

    const/16 v2, -0xc

    invoke-virtual {v0, v1, v2}, Lcom/android/preference/c;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 153
    iget-object v1, p0, Lcn/nubia/camera/aimoon/b$1;->a:Lcn/nubia/camera/aimoon/b;

    invoke-virtual {v1}, Lcn/nubia/camera/aimoon/b;->getParentFragment()Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/q/i;

    invoke-virtual {v1}, Lcn/nubia/camera/q/i;->Q()Lcn/nubia/camera/three_a/ui/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/nubia/camera/three_a/ui/h;->c(I)V

    return-void
.end method
