.class Lcn/nubia/camera/q/j$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/c/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/q/j;->a(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/h;Lcom/android/common/c/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/q/j;


# direct methods
.method constructor <init>(Lcn/nubia/camera/q/j;)V
    .locals 0

    .line 896
    iput-object p1, p0, Lcn/nubia/camera/q/j$4;->a:Lcn/nubia/camera/q/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "MoreSetting"

    const-string v1, "Video reopen camera end, firstFrameAvailable"

    .line 899
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    iget-object v0, p0, Lcn/nubia/camera/q/j$4;->a:Lcn/nubia/camera/q/j;

    invoke-static {v0}, Lcn/nubia/camera/q/j;->a(Lcn/nubia/camera/q/j;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/c;->e:Lcn/nubia/camera/d/c;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->b(Lcn/nubia/camera/d/c;)V

    .line 901
    invoke-static {}, Lcn/nubia/camera/f/b;->a()Lcn/nubia/camera/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/f/b;->d()V

    return-void
.end method
