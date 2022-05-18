.class Lcn/nubia/camera/ag/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/g/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/ag/c;-><init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/ag/h;Lcn/nubia/camera/z/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/ag/c;


# direct methods
.method constructor <init>(Lcn/nubia/camera/ag/c;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcn/nubia/camera/ag/c$1;->a:Lcn/nubia/camera/ag/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .line 33
    iget-object p1, p0, Lcn/nubia/camera/ag/c$1;->a:Lcn/nubia/camera/ag/c;

    invoke-static {p1}, Lcn/nubia/camera/ag/c;->a(Lcn/nubia/camera/ag/c;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    sget-object v0, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/b;)V

    .line 34
    iget-object p1, p0, Lcn/nubia/camera/ag/c$1;->a:Lcn/nubia/camera/ag/c;

    invoke-static {p1}, Lcn/nubia/camera/ag/c;->b(Lcn/nubia/camera/ag/c;)Lcn/nubia/camera/aj/i;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 35
    iget-object p1, p0, Lcn/nubia/camera/ag/c$1;->a:Lcn/nubia/camera/ag/c;

    invoke-static {p1}, Lcn/nubia/camera/ag/c;->a(Lcn/nubia/camera/ag/c;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p1

    new-instance v0, Lcn/nubia/camera/ag/c$1$1;

    invoke-direct {v0, p0}, Lcn/nubia/camera/ag/c$1$1;-><init>(Lcn/nubia/camera/ag/c$1;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
