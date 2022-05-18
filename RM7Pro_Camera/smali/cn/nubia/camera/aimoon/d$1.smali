.class Lcn/nubia/camera/aimoon/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/q/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/aimoon/d;->af()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/aimoon/d;


# direct methods
.method constructor <init>(Lcn/nubia/camera/aimoon/d;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcn/nubia/camera/aimoon/d$1;->a:Lcn/nubia/camera/aimoon/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 2

    .line 199
    iget-object v0, p0, Lcn/nubia/camera/aimoon/d$1;->a:Lcn/nubia/camera/aimoon/d;

    invoke-static {v0}, Lcn/nubia/camera/aimoon/d;->a(Lcn/nubia/camera/aimoon/d;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/g;->a(Lcn/nubia/camera/ad/a;)I

    move-result v0

    const-string v1, "cam_ev"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
