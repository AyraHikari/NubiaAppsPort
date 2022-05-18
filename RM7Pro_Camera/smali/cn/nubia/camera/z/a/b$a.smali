.class public Lcn/nubia/camera/z/a/b$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/z/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/z/a/b;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/z/a/b;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcn/nubia/camera/z/a/b$a;->a:Lcn/nubia/camera/z/a/b;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 76
    iget-object p1, p0, Lcn/nubia/camera/z/a/b$a;->a:Lcn/nubia/camera/z/a/b;

    invoke-static {p1}, Lcn/nubia/camera/z/a/b;->a(Lcn/nubia/camera/z/a/b;)V

    .line 77
    iget-object p1, p0, Lcn/nubia/camera/z/a/b$a;->a:Lcn/nubia/camera/z/a/b;

    invoke-static {p1}, Lcn/nubia/camera/z/a/b;->b(Lcn/nubia/camera/z/a/b;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/z/a/b$a;->a:Lcn/nubia/camera/z/a/b;

    invoke-static {v1}, Lcn/nubia/camera/z/a/b;->c(Lcn/nubia/camera/z/a/b;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcn/nubia/camera/z/a/b;->a(Lcn/nubia/camera/z/a/b;Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method
