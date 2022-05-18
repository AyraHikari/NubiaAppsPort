.class Lcn/nubia/camera/clone/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/clone/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/clone/d;


# direct methods
.method constructor <init>(Lcn/nubia/camera/clone/d;)V
    .locals 0

    .line 441
    iput-object p1, p0, Lcn/nubia/camera/clone/d$a;->a:Lcn/nubia/camera/clone/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 1

    .line 450
    iget-object v0, p0, Lcn/nubia/camera/clone/d$a;->a:Lcn/nubia/camera/clone/d;

    invoke-virtual {v0}, Lcn/nubia/camera/clone/d;->m()Z

    move-result v0

    if-nez v0, :cond_0

    .line 451
    iget-object v0, p0, Lcn/nubia/camera/clone/d$a;->a:Lcn/nubia/camera/clone/d;

    invoke-virtual {v0}, Lcn/nubia/camera/clone/d;->l()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method
