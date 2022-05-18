.class Lcn/nubia/camera/aj/a/g$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/aj/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/aj/a/g;


# direct methods
.method constructor <init>(Lcn/nubia/camera/aj/a/g;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcn/nubia/camera/aj/a/g$3;->a:Lcn/nubia/camera/aj/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 230
    iget-object v0, p0, Lcn/nubia/camera/aj/a/g$3;->a:Lcn/nubia/camera/aj/a/g;

    invoke-static {v0}, Lcn/nubia/camera/aj/a/g;->a(Lcn/nubia/camera/aj/a/g;)Lcn/nubia/camera/aj/a/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcn/nubia/camera/aj/a/g$3;->a:Lcn/nubia/camera/aj/a/g;

    invoke-static {v0}, Lcn/nubia/camera/aj/a/g;->a(Lcn/nubia/camera/aj/a/g;)Lcn/nubia/camera/aj/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/aj/a/b;->b()V

    :cond_0
    return-void
.end method
