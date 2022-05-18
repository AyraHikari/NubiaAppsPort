.class Lcn/nubia/camera/a/a$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/a/a$6;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/a/a$6;


# direct methods
.method constructor <init>(Lcn/nubia/camera/a/a$6;)V
    .locals 0

    .line 795
    iput-object p1, p0, Lcn/nubia/camera/a/a$6$1;->a:Lcn/nubia/camera/a/a$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "ActivityBase"

    const-string v1, "gts assist voice test performShutterButtonClick"

    .line 798
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    iget-object v0, p0, Lcn/nubia/camera/a/a$6$1;->a:Lcn/nubia/camera/a/a$6;

    iget-object v0, v0, Lcn/nubia/camera/a/a$6;->a:Lcn/nubia/camera/a/a;

    invoke-virtual {v0}, Lcn/nubia/camera/a/a;->B()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->e()Lcn/nubia/camera/aw/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/aw/a;->e()Z

    return-void
.end method
