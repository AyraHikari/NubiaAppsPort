.class Lcn/nubia/camera/q/j$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/m/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/q/j;
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

    .line 959
    iput-object p1, p0, Lcn/nubia/camera/q/j$7;->a:Lcn/nubia/camera/q/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 962
    iget-object v0, p0, Lcn/nubia/camera/q/j$7;->a:Lcn/nubia/camera/q/j;

    invoke-static {v0}, Lcn/nubia/camera/q/j;->i(Lcn/nubia/camera/q/j;)Lcn/nubia/camera/q/p;

    move-result-object v0

    if-nez v0, :cond_0

    .line 963
    iget-object v0, p0, Lcn/nubia/camera/q/j$7;->a:Lcn/nubia/camera/q/j;

    new-instance v1, Lcn/nubia/camera/q/p;

    iget-object v2, p0, Lcn/nubia/camera/q/j$7;->a:Lcn/nubia/camera/q/j;

    invoke-static {v2}, Lcn/nubia/camera/q/j;->a(Lcn/nubia/camera/q/j;)Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/nubia/camera/q/p;-><init>(Lcn/nubia/camera/ad/a;)V

    invoke-static {v0, v1}, Lcn/nubia/camera/q/j;->a(Lcn/nubia/camera/q/j;Lcn/nubia/camera/q/p;)Lcn/nubia/camera/q/p;

    .line 965
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/q/j$7;->a:Lcn/nubia/camera/q/j;

    invoke-static {v0}, Lcn/nubia/camera/q/j;->i(Lcn/nubia/camera/q/j;)Lcn/nubia/camera/q/p;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/q/p;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 968
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/q/j$7;->a:Lcn/nubia/camera/q/j;

    invoke-static {v0}, Lcn/nubia/camera/q/j;->i(Lcn/nubia/camera/q/j;)Lcn/nubia/camera/q/p;

    move-result-object v0

    new-instance v1, Lcn/nubia/camera/q/j$7$1;

    invoke-direct {v1, p0}, Lcn/nubia/camera/q/j$7$1;-><init>(Lcn/nubia/camera/q/j$7;)V

    invoke-virtual {v0, v1}, Lcn/nubia/camera/q/p;->a(Lcn/nubia/camera/q/p$b;)V

    const-string v0, "MoreSetting"

    const-string v1, "onWaterMarkWriteStart"

    .line 979
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    iget-object v0, p0, Lcn/nubia/camera/q/j$7;->a:Lcn/nubia/camera/q/j;

    invoke-static {v0}, Lcn/nubia/camera/q/j;->i(Lcn/nubia/camera/q/j;)Lcn/nubia/camera/q/p;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/q/p;->b()V

    return-void
.end method

.method public a([B[BLjava/lang/String;)V
    .locals 1

    .line 985
    iget-object v0, p0, Lcn/nubia/camera/q/j$7;->a:Lcn/nubia/camera/q/j;

    invoke-static {v0}, Lcn/nubia/camera/q/j;->i(Lcn/nubia/camera/q/j;)Lcn/nubia/camera/q/p;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 988
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/q/j$7;->a:Lcn/nubia/camera/q/j;

    invoke-static {v0}, Lcn/nubia/camera/q/j;->i(Lcn/nubia/camera/q/j;)Lcn/nubia/camera/q/p;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcn/nubia/camera/q/p;->a([B[BLjava/lang/String;)V

    return-void
.end method
